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
#[ 0 66 0 78 0 82] 
#[ 0 134 5 89] 
#[ 1 2 1 6] 
#[ 1 38 1 42] 
#[ 1 46 1 50 1 54 1 58 1 62] 
#[ 1 66 6 13] 
#[ 2 190 2 194] 
#[ 0 149 2 198] 
#[ 0 157 2 198] 
#[ 0 161 2 198] 
#[ 0 177 2 198] 
#[ 0 193 2 198] 
#[ 0 205 2 198] 
#[ 0 225 2 198] 
#[ 0 233 2 198] 
#[ 0 245 2 198] 
#[ 0 253 2 198] 
#[ 1 1 2 198] 
#[ 1 9 2 198] 
#[ 1 37 2 198] 
#[ 1 41 2 198] 
#[ 1 53 2 198] 
#[ 1 65 2 198] 
#[ 2 198 4 213] 
#[ 2 202 5 73] 
#[ 1 2 6 1] 
#[ 1 138 1 142] 
#[ 3 78 3 82 3 86 3 90] 
#[ 3 102 7 129] 
#[ 0 66 0 78 0 82 3 82] 
#[ 3 102 3 106 7 165] 
#[ 3 106 7 169] 
#[ 3 102 3 106] 
#[ 3 78 3 82 3 86 3 90 3 110] 
#[ 3 118 8 49] 
#[ 3 186 3 190 3 194 3 198 3 202] 
#[ 3 186 3 198 3 202] 
#[ 3 186 3 190 3 198 3 202] 
#[ 3 206 3 210 3 214 3 218 3 222] 
#[ 3 206 3 218 3 222] 
#[ 3 206 3 210 3 218 3 222] 
#[ 3 226 3 230 3 234 3 238 3 242] 
#[ 3 226 3 238 3 242] 
#[ 3 226 3 230 3 238 3 242] 
#[ 3 246 3 250 3 254 4 2 4 6] 
#[ 3 246 4 2 4 6] 
#[ 3 246 3 250 4 2 4 6] 
#[ 4 10 4 14 4 18 4 22 4 26] 
#[ 4 10 4 22 4 26] 
#[ 4 10 4 14 4 22 4 26] 
#[ 4 38 4 42 4 46 4 50] 
#[ 4 38 4 46 4 50] 
#[ 1 2 1 6 2 206] 
#[ 1 2 2 206] 
#[ 1 2 1 6 6 1] 
#[ 1 130 9 229] 
#[ 1 134 9 245] 
#[ 4 194 4 198] 
#[ 4 206 5 145] 
#[ 4 214 10 109] 
#[ 4 230 4 234] 
#[ 3 182 5 142 5 146 5 150 5 154] 
#[ 5 142 5 146 5 154] 
#[ 5 142 5 146 5 150 5 154] 
#[ 3 182 5 142] 
#[ 3 182 5 142 5 146 5 150] 
#[ 5 158 5 162 5 166 5 170] 
#[ 5 158 5 162 5 170 5 174] 
#[ 5 158 5 162 5 166 5 170 5 174 5 178] 
#[ 5 158 5 162 5 166 5 170 5 178] 
#[ 5 158 5 166 5 170 5 174 5 182] 
#[ 5 158 5 162 5 166 5 170 5 174 5 178 5 182] 
#[ 5 158 5 162 5 170 5 174 5 178] 
#[ 3 186 5 186 5 190 5 194 5 198] 
#[ 5 186 5 190 5 198 5 202] 
#[ 5 186 5 190 5 194 5 198 5 210] 
#[ 3 186 3 190 3 194 3 198 3 202 5 186 5 190 5 194 5 198 5 202 5 206 5 210] 
#[ 3 186 3 190 3 194 3 198 3 202 5 186 5 190 5 194 5 198 5 202 5 206] 
#[ 5 186 5 190 5 194 5 198] 
#[ 3 186 3 198 3 202 5 186] 
#[ 3 186 5 186 5 194 5 198 5 202] 
#[ 3 186 3 190 3 198 3 202 5 186 5 190 5 194 5 198 5 202 5 210] 
#[ 5 186 5 190 5 198 5 202 5 210] 
#[ 3 206 5 214 5 218 5 222 5 226] 
#[ 5 214 5 222 5 226 5 230] 
#[ 5 214 5 218 5 222 5 226] 
#[ 3 206 3 210 3 214 3 218 3 222 5 214 5 218 5 222 5 226 5 230 5 234] 
#[ 3 206 3 218 3 222 5 226] 
#[ 3 206 5 218 5 222 5 226 5 230] 
#[ 3 206 3 210 3 218 3 222 5 214 5 218 5 222 5 226 5 230] 
#[ 5 238 5 242 5 246 5 250] 
#[ 5 238 5 242 5 250] 
#[ 5 238 5 242 5 246] 
#[ 3 226 5 254 6 2 6 6 6 10] 
#[ 5 254 6 6 6 10 6 14] 
#[ 5 254 6 2 6 6 6 10 6 22] 
#[ 3 226 3 230 3 234 3 238 3 242 5 254 6 2 6 6 6 10 6 14 6 18 6 22] 
#[ 3 226 3 230 3 234 3 238 3 242 5 254 6 2 6 6 6 10 6 14 6 18] 
#[ 5 254 6 2 6 6 6 10] 
#[ 3 226 3 238 3 242 6 10] 
#[ 3 226 5 254 6 2 6 10 6 14] 
#[ 3 226 3 230 3 238 3 242 5 254 6 2 6 6 6 10 6 14 6 22] 
#[ 5 254 6 6 6 10 6 14 6 22] 
#[ 3 246 6 26 6 30 6 34 6 38] 
#[ 6 30 6 34 6 38 6 42] 
#[ 6 26 6 30 6 34 6 38 6 50] 
#[ 3 246 3 250 3 254 4 2 4 6 6 26 6 30 6 34 6 38 6 42 6 46 6 50] 
#[ 3 246 3 250 3 254 4 2 4 6 6 26 6 30 6 34 6 38 6 42 6 46] 
#[ 6 26 6 30 6 34 6 38] 
#[ 3 246 4 2 4 6 6 34] 
#[ 3 246 6 26 6 30 6 34 6 42] 
#[ 3 246 3 250 4 2 4 6 6 26 6 30 6 34 6 38 6 42 6 50] 
#[ 6 30 6 34 6 38 6 42 6 50] 
#[ 4 10 6 54 6 58 6 62 6 66] 
#[ 6 58 6 62 6 66 6 70 6 74] 
#[ 6 54 6 58 6 62 6 66 6 74 6 82] 
#[ 4 10 4 14 4 18 4 22 4 26 6 54 6 58 6 62 6 66 6 70 6 78 6 82] 
#[ 4 10 4 14 4 18 4 22 4 26 6 54 6 58 6 62 6 66 6 70 6 78] 
#[ 6 54 6 58 6 62 6 66] 
#[ 4 10 4 22 4 26 6 62] 
#[ 4 10 4 14 4 18 4 22 4 26 6 54 6 58 6 62 6 66 6 70 6 74 6 78 6 82] 
#[ 4 10 6 54 6 62 6 66 6 70 6 74] 
#[ 4 10 4 14 4 22 4 26 6 54 6 58 6 62 6 66 6 70 6 74 6 82] 
#[ 6 58 6 62 6 66 6 70 6 74 6 82] 
#[ 4 30 6 90 6 94 6 98 6 102] 
#[ 6 90 6 98 6 102] 
#[ 6 90 6 94 6 98 6 102] 
#[ 4 30 6 90] 
#[ 4 30 6 90 6 94 6 102] 
#[ 4 34 6 106 6 110 6 114] 
#[ 6 106 6 110 6 118 6 122] 
#[ 3 102 6 106 6 110 6 114 6 118 11 133] 
#[ 4 34 6 106 6 110 6 114 6 122] 
#[ 6 106 6 110 6 114] 
#[ 4 34 6 110] 
#[ 4 34 6 106 6 110 6 114 6 118 6 122] 
#[ 3 106 4 34 6 106 6 110 6 114 6 118 6 122 11 137] 
#[ 3 102 3 106 6 106 6 110 6 118 6 122] 
#[ 4 38 6 126 6 130 6 134 6 138] 
#[ 6 126 6 130 6 138 6 142 6 146] 
#[ 6 126 6 130 6 134 6 138 6 146 6 150 6 154] 
#[ 4 38 4 42 4 46 4 50 6 126 6 130 6 134 6 138 6 142 6 150] 
#[ 4 38 4 42 4 46 4 50 6 126 6 130 6 134 6 138 6 142] 
#[ 6 126 6 130 6 134 6 138] 
#[ 4 38 4 46 4 50 6 130] 
#[ 4 38 4 42 4 46 4 50 6 126 6 130 6 134 6 138 6 142 6 146 6 150] 
#[ 4 38 6 126 6 130 6 134 6 142 6 146 6 154] 
#[ 6 126 6 130 6 138 6 142 6 146 6 150] 
#[ 6 158 6 162 6 166 6 170] 
#[ 6 158 6 162 6 170] 
#[ 6 158 6 166 6 170] 
#[ 3 102 13 13] 
#[ 3 106 13 21] 
#[ 6 250 8 49] 
#[ 1 70 1 78] 
#[ 1 2 1 6 7 214] 
#[ 1 2 7 214] 
#[ 7 58 14 213] 
#[ 1 74 8 82] 
#[ 1 74 8 86] 
#[ 8 154 15 73] 
#[ 3 102 8 170] 
#[ 6 1 10 50] 
#[ 1 2 18 69] 
#[ 10 178 18 169] 
#[ 11 110 11 114] 
#[ 11 122 11 126] 
#[ 2 210 4 106] 
#[ 4 106 6 77] 
#[ 4 106 6 81] 
#[ 4 106 6 85] 
#[ 4 106 6 89] 
#[ 4 106 6 93] 
#[ 4 106 6 97] 
#[ 4 106 6 101] 
#[ 4 106 6 105] 
#[ 4 106 6 109] 
#[ 4 106 6 113] 
#[ 4 106 6 117] 
#[ 0 181 13 70] 
#[ 1 50 1 58] 
#[ 3 106 23 177] 
#[ 3 78 3 86 14 178] 
#[ 3 186 3 190 3 194 3 198 3 202 5 186 5 190 5 194 5 198 5 202 5 206 5 210 15 6] 
#[ 3 186 3 190 3 194 3 198 3 202 5 186 5 190 5 194 5 198 5 202 5 206 15 6] 
#[ 3 186 3 190 3 198 3 202 5 186 5 190 5 194 5 198 5 202 5 210 15 6] 
#[ 3 206 3 210 3 214 3 218 3 222 5 214 5 218 5 222 5 226 5 230 5 234 15 10] 
#[ 3 206 3 210 3 218 3 222 5 214 5 218 5 222 5 226 5 230 15 10] 
#[ 3 226 3 230 3 234 3 238 3 242 5 254 6 2 6 6 6 10 6 14 6 18 6 22 15 14] 
#[ 3 226 3 230 3 234 3 238 3 242 5 254 6 2 6 6 6 10 6 14 6 18 15 14] 
#[ 3 226 3 230 3 238 3 242 5 254 6 2 6 6 6 10 6 14 6 22 15 14] 
#[ 3 246 3 250 3 254 4 2 4 6 6 26 6 30 6 34 6 38 6 42 6 46 6 50 15 18] 
#[ 3 246 3 250 3 254 4 2 4 6 6 26 6 30 6 34 6 38 6 42 6 46 15 18] 
#[ 3 246 3 250 4 2 4 6 6 26 6 30 6 34 6 38 6 42 6 50 15 18] 
#[ 4 10 4 14 4 18 4 22 4 26 6 54 6 58 6 62 6 66 6 70 6 78 6 82 15 22] 
#[ 4 10 4 14 4 18 4 22 4 26 6 54 6 58 6 62 6 66 6 70 6 78 15 22] 
#[ 4 10 4 14 4 18 4 22 4 26 6 54 6 58 6 62 6 66 6 70 6 74 6 78 6 82 15 22] 
#[ 4 10 4 14 4 22 4 26 6 54 6 58 6 62 6 66 6 70 6 74 6 82 15 22] 
#[ 4 38 4 42 4 46 4 50 6 126 6 130 6 134 6 138 6 142 6 150 15 26] 
#[ 4 38 4 42 4 46 4 50 6 126 6 130 6 134 6 138 6 142 15 26] 
#[ 4 38 4 42 4 46 4 50 6 126 6 130 6 134 6 138 6 142 6 146 6 150 15 26] 
#[ 5 146 5 154] 
#[ 5 158 5 162] 
#[ 5 190 5 198] 
#[ 5 214 5 222] 
#[ 5 214 5 222 15 50] 
#[ 5 238 5 250] 
#[ 5 254 6 6] 
#[ 6 30 6 38] 
#[ 6 58 6 66] 
#[ 6 98 6 102] 
#[ 6 126 6 138] 
#[ 6 158 6 162]
	).
]

{ #category : #'generated-accessing' }
CSharpParser class >> cacheId [
	^'2019-11-14T08:03:47.881217-06:00'
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
	DestructorDeclaration
	EnumDeclaration
	EventDeclaration
	FieldDeclaration
	FixedSizeBufferDeclaration
	IndexerDeclaration
	InterfaceDeclaration
	InterfaceEventDeclaration
	InterfaceIndexerDeclaration
	InterfaceMethodDeclaration
	InterfacePropertyDeclaration
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
	NullConditionalExpression
	ObjectCreationExpression
	OutVariableDeclarationExpression
	PrefixExpression
	PointerElementAccess
	PointerMemberAccess
	PostExpression
	QueryExpression
	SimpleName
	SizeofExpression
	ThisAccess
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

%hierarchy ElementAccess (
	NullConditionalElementAccess
);
%hierarchy InvocationExpression (
	NullConditionalInvocationExpression
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
	: (<isLetter> | _) (<isLetter> | <isDigit> | _)*
	| \@ (<isLetter> | _) (<isLetter> | <isDigit> | _)*
	;
<IntegerSuffix>
	: [Uu]
	| [Ll]
	| [Uu][Ll]
	| [Ll][Uu]
	;
default <IntegerLiteral>
	: \d+ <IntegerSuffix>?
	| 0[Xx] [0-9A-Fa-f]+ <IntegerSuffix>?
	;
<ExponentPart>
	: [Ee] [\+\-]? \d+
	;
<RealSuffix>
	: [Ff]
	| [Dd]
	| [Mm]
	;
default <RealLiteral>
	: \d* \. \d+ <ExponentPart>? <RealSuffix>?
	| \d+ <ExponentPart>? <RealSuffix>?
	| \d+ <RealSuffix>
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
	: \\[Uu] ([0-9A-Fa-f]{4,4}){1,2}
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
	: [^\""\\\n]
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
	: \$\@\"" <InterpolatedVerbatimStringLiteralCharacter>* \{
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
	: \s+
	| \# [^\r\n]*
	;


<patternToken>
	: (\`  [^\`]* \`)+
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
	: struct_type
	| enum_type
	;
struct_type
	: type_name
	| simple_type
	| nullable_type
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
nullable_type
	: non_nullable_value_type 'type' ""?"" {{}}
	;
non_nullable_value_type
	: type
	;
enum_type
	: type_name
	;
reference_type
	: class_type
	| interface_type
	| array_type
	| delegate_type
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
	: type
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
	| ""ref"" variable_reference 'expression' 
	| ""out"" out_expression 'expression'
	;
out_expression
	: variable_reference
	| type 'type' <Identifier> 'name' {{OutVariableDeclarationExpression}}
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
	| member_access 
	| invocation_expression 
	| element_access 
	| this_access 
	| base_access 
	| post_increment_expression 
	| post_decrement_expression 
	| object_creation_expression 
	| delegate_creation_expression 
	| anonymous_object_creation_expression 
	| typeof_expression 
	| checked_expression 
	| unchecked_expression 
	| default_value_expression 
	| nameof_expression
	| anonymous_method_expression 
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
	| interpolation 'interpolation' <InterpolatedRegularStringMid> 'stringPart' interpolation 'interpolation'
	;
interpolation
	: expression 'expression' {{}}
	| expression 'expression' "","" constant_expression 'constant' {{}}
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
	| interpolation 'interpolation' <InterpolatedVerbatimStringMid> 'stringPart' interpolation 'interpolation'
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
member_access
	: primary_expression 'expression' ""."" <Identifier> 'identifier' _type_argument_list 'typeArguments' {{}}
	| predefined_type_expression 'expression' ""."" <Identifier> 'identifier' _type_argument_list 'typeArguments' {{}}
	| qualified_alias_member_expression 'expression' ""."" <Identifier> 'identifier' {{}}
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
	: ""base"" ""."" <Identifier> 'identifier' {{}}
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
	| base_access 'access' {{}}
	| null_conditional_member_access 'access' {{}}
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
	| unbound_type_name ""."" <Identifier> _generic_dimension_specifier {{}}
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
nameof_expression
	: ""nameof"" ""("" named_entity 'name' "")"" {{}}
	;
named_entity
	: simple_name
	| named_entity_target 'target' ""."" <Identifier> _type_argument_list 'typeArguments' {{}}
	;
named_entity_target 
	: ""this"" {{ThisAccess}}
	| ""base"" {{BaseExpression}}
	| named_entity
	| predefined_type_expression
	| qualified_alias_member_expression
	;
unary_expression
	: primary_expression
	| null_conditional_expression
	| ""+"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	| ""-"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	| ""!"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	| ""~"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	| pre_increment_expression
	| pre_decrement_expression
	| cast_expression
	| await_expression
	;
null_conditional_expression
	: primary_expression 'expression' null_conditional_operations 'nullConditionalOperation' {{}}
	;
_null_conditional_operations
	:
	| null_conditional_operations
	;
null_conditional_operations
	: _null_conditional_operations 'baseOperations' ""?"" ""."" <Identifier> _type_argument_list 'typeArguments' {{NullConditionalMemberAccess}}
	| _null_conditional_operations 'baseOperations' ""?"" ""["" argument_list ""]"" {{NullConditionalElementAccess}}
	| null_conditional_operations 'baseOperations' ""."" <Identifier> _type_argument_list 'typeArguments' {{NullConditionalMemberAccess}}
	| null_conditional_operations 'baseOperations' ""["" argument_list ""]"" {{NullConditionalElementAccess}}
	| null_conditional_operations 'baseOperations' ""("" _argument_list "")"" {{NullConditionalInvocationExpression}}
	;
null_conditional_member_access
	: primary_expression 'expression' _null_conditional_operations 'baseOperations' ""?"" ""."" <Identifier> _type_argument_list 'typeArguments' {{}}
	| primary_expression 'expression' null_conditional_operations 'baseOperations' ""."" <Identifier> _type_argument_list 'typeArguments' {{}}
	;
null_conditional_invocation_expression
	: primary_expression 'expression' null_conditional_operations 'baseOperations' ""("" _argument_list "")"" {{}}
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
	;
conditional_expression
	: null_coalescing_expression
	| null_coalescing_expression 'booleanExpression' ""?"" expression 'trueExpression' "":"" expression 'falseExpression' {{}}
	;
lambda_expression
	: anonymous_function_signature 'signature' ""=>"" anonymous_function_body 'body' {{}}
	;
anonymous_method_expression
	: ""delegate"" _explicit_anonymous_function_signature 'signature' block 'block' {{}}
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
	: ""("" _explicit_anonymous_function_paramenter_list "")"" {{}}
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
	;
implicit_anonymous_function_signature
	: ""("" _implicit_anonymous_function_parameter_list "")"" {{}}
	| implicit_anonymous_function_parameter 'name' {{}}
	;
_implicit_anonymous_function_parameter_list
	: 
	| implicit_anonymous_function_parameter_list
	;
implicit_anonymous_function_parameter_list
	: implicit_anonymous_function_parameter 'name'
	| implicit_anonymous_function_parameter_list "","" implicit_anonymous_function_parameter 'name'
	;
implicit_anonymous_function_parameter
	: <Identifier>
	;
anonymous_function_body
	: expression
	| block
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
	: unary_expression 'lhs' assignment_operator 'operator' expression 'rhs' {{}}
	;
assignment_operator
	: ""=""
	| ""+=""
	| ""-=""
	| ""*=""
	| ""/=""
	| ""%=""
	| ""&=""
	| ""|=""
	| ""^=""
	| ""<<=""
	| "">>=""
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
	: conditional_expression 
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
	;
local_variable_declaration
	: local_variable_type 'type' local_variable_declarators {{}}
	;
local_variable_type
	: type
	| ""var"" {{VarType}}
	;
local_variable_declarators
	: local_variable_declarator 'declarator'
	| local_variable_declarators "","" local_variable_declarator 'declarator'
	;
local_variable_declarator
#	: <Identifier> 'name' {{}}
#	| <Identifier> 'name' ""="" local_variable_initializer 'expression' {{}}
	: _local_variable_declarator_name 'name' {{}}
	| _local_variable_declarator_name 'name' ""="" local_variable_initializer 'expression' {{}}
	;
_local_variable_declarator_name	# Here to create a parse node
	: <Identifier> {{SimpleName}}
	;
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
	: <Identifier> 'name' ""="" constant_expression 'expression' {{}}
	;
expression_statement
	: statement_expression 'expression' "";"" {{}}
	;
statement_expression
	: invocation_expression
	| null_conditional_invocation_expression
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
	: ""case"" constant_expression 'expression' "":"" {{}}
	| ""default"" "":"" {{}}
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
	: ""foreach"" ""("" local_variable_type 'type' <Identifier> 'name' ""in"" expression 'expression' "")"" embedded_statement 'statement' {{}}
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
	: catch_clause 'clause'
	| catch_clauses catch_clause 'clause'
	;
catch_clause
	: ""catch"" _exception_specifier _exception_filter block 'block' {{}}
	;
_exception_specifier
	:
	| exception_specifier
	;
exception_specifier
	: ""("" type 'type' _identifier "")""
	;
_exception_filter
	:
	| exception_filter 'filter'
	;
exception_filter
	: ""when"" ""("" expression 'expression' "")"" {{}}
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
	: _attributes _class_modifiers _partial ""class"" <Identifier> 'name' _type_parameter_list _class_base _type_parameter_constraints_clauses class_body _semicolon {{}}
	;
_class_modifiers
	:
	| class_modifiers
	;
class_modifiers
	: class_modifier 'modifier'
	| class_modifiers class_modifier 'modifier'
	;
class_modifier
	: ""new"" 
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""abstract""
	| ""sealed""
	| ""static""
	;
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
	| "":"" interface_type_list
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
	| destructor_declaration
	| static_constructor_declaration
	| type_declaration
	;
constant_declaration
	: _attributes _constant_modifiers ""const"" type 'type' constant_declarators "";"" {{}}
	;
_constant_modifiers
	: 
	| constant_modifers
	;
constant_modifers
	: constant_modifer 'modifier'
	| constant_modifers constant_modifer 'modifier'
	;
constant_modifer
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	;
constant_declarators
	: constant_declarator 'declarator'
	| constant_declarators "","" constant_declarator 'declarator'
	;
constant_declarator
	: <Identifier> ""="" constant_expression 'expression' {{}}
	;
field_declaration
	: _attributes _field_modifiers type 'type' variable_declarators "";"" {{}}
	;
_field_modifiers
	: 
	| field_modifiers
	;
field_modifiers
	: field_modifier 'modifier'
	| field_modifiers field_modifier 'modifier'
	;
field_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""static""
	| ""readonly""
	| ""volatile""
	;
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
	;
method_header
	: _attributes _method_modifiers _partial return_type 'returnType' member_name _type_parameter_list ""("" _formal_parameters_list "")"" _type_parameter_constraints_clauses {{}}
	;
_method_modifiers
	: 
	| method_modifiers
	;
method_modifiers
	: method_modifier 'modifier'
	| method_modifiers method_modifier 'modifier'
	;
method_modifier
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
	;
return_type
	: type
	| void_type
	;
member_name
	: <Identifier> 'name'
	| interface_type 'interface' ""."" <Identifier> 'name'
	;
method_body
	: block 'block' {{}}
	| ""=>"" expression 'expression' "";"" {{}}
	| "";"" {{}}
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
	: ""ref"" 
	| ""out""
	| ""this""
	;
parameter_array
	: _attributes ""params"" 'paramsToken' array_type 'type' <Identifier> 'name' {{ArrayParameter}}
	;
property_declaration
	: _attributes _property_modifiers type 'type' member_name property_body {{}}
	;
_property_modifiers
	:
	| property_modifiers
	;
property_modifiers
	: property_modifier 'modifier'
	| property_modifiers property_modifier 'modifier'
	;
property_modifier
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
	;
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
	;
accessor_body
	: block 'body'
	| "";""
	;
event_declaration
	: _attributes _event_modifiers ""event"" type 'type' variable_declarators "";"" {{}}
	| _attributes _event_modifiers ""event"" type 'type' member_name ""{"" event_accessor_declarations <rightBrace> {{}}
	;
_event_modifiers
	:
	| event_modifiers
	;
event_modifiers
	: event_modifier 'modifier'
	| event_modifiers event_modifier 'modifier'
	;
event_modifier
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
	;
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
	: _attributes _indexer_modifiers indexer_declarator indexer_body {{}}
	;
_indexer_modifiers
	:
	| indexer_modifiers
	;
indexer_modifiers
	: indexer_modifier 'modifier'
	| indexer_modifiers indexer_modifier 'modifier'
	;
indexer_modifier
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
	;
indexer_declarator
	: type 'returnType' ""this"" ""["" formal_parameters_list ""]""
	| type 'returnType' interface_type 'type' ""."" ""this"" ""["" formal_parameters_list ""]""
	;
indexer_body
	: ""{"" accessor_declarations <rightBrace>
	| ""=>"" expression 'expression' "";""
	;
operator_declaration
	: _attributes operator_modifiers operator_declarator operator_body 'body' {{}}
	;
operator_modifiers
	: operator_modifier 'modifier'
	| operator_modifiers operator_modifier 'modifier'
	;
operator_modifier
	: ""public""
	| ""static""
	| ""extern""
	;
operator_declarator
	: unary_operator_declarator
	| binary_operator_declarator
	| conversion_operator_declarator
	;
unary_operator_declarator
	: type 'returnType' ""operator"" overloadable_unary_operator 'operator' ""("" type 'type' <Identifier> 'argument' "")""
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
	: type 'returnType' ""operator"" overloadable_binary_operator 'operator' ""("" type 'type' <Identifier> 'argument' "","" type 'type' <Identifier> 'argument' "")""
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
	: ""implicit"" ""operator"" type 'returnType' ""("" type 'type' <Identifier> 'argument' "")""
	| ""explicit"" ""operator"" type 'returnType' ""("" type 'type' <Identifier> 'argument' "")""
	;
operator_body
	: block 'block' {{MethodBody}}
	| ""=>"" expression 'expression' "";"" {{MethodBody}}
	| "";"" {{MethodBody}}
	;
constructor_declaration
	: _attributes _constructor_modifiers constructor_declarator constructor_body {{}}
	;
_constructor_modifiers
	: 
	| constructor_modifiers
	;
constructor_modifiers
	: constructor_modifier 'modifier'
	| constructor_modifiers constructor_modifier 'modifier'
	;
constructor_modifier
	: ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""extern""
	;
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
	: block 'block'
	| "";""
	;
static_constructor_declaration
	: _attributes static_constructor_modifiers <Identifier> ""("" "")"" static_constructor_body {{}}
	;
# redefined in the unsafe section
static_constructor_modifiers
	: _extern ""static""
	| ""static"" _extern
	;
static_constructor_body
	: block 'block'
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
	: _attributes _struct_modifiers _partial ""struct"" <Identifier> _type_parameter_list _struct_interfaces _type_parameter_constraints_clauses struct_body _semicolon {{}}
	;
_struct_modifiers
	: 
	| struct_modifiers
	;
struct_modifiers
	: struct_modifier 'modifier'
	| struct_modifiers struct_modifier 'modifier'
	;
struct_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	;
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
	: _attributes _interface_modifiers _partial ""interface"" 'interfaceToken' <Identifier> 'name' _variant_type_parameter_list _interface_base _type_parameter_constraints_clauses interface_body _semicolon {{}}
	;
_interface_modifiers
	:
	| interface_modifiers
	;
interface_modifiers
	: interface_modifier 'modifier'
	| interface_modifiers interface_modifier 'modifier'
	;
interface_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	;
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
	| property_declaration
	| interface_event_declaration
	| indexer_declaration
	;
interface_method_declaration
	: _attributes _new 'modifier' return_type 'type' <Identifier> 'name' _type_parameter_list ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' _type_parameter_constraints_clauses "";"" 'semicolon' {{}}
	;
interface_property_declaration
	: _attributes _new 'modifier' type 'type' <Identifier> 'name' ""{"" 'leftBrace' interface_accessors <rightBrace> 'rightBrace' {{}}
	;
interface_accessors	#This was changed to use the interface_(g/s)et_accessor
	: interface_get_accessor 'getAccessor'
	| interface_set_accessor 'setAccessor'
	| interface_get_accessor 'getAccessor' interface_set_accessor 'setAccessor'
	| interface_set_accessor 'setAccessor' interface_get_accessor 'getAccessor'
	;
interface_get_accessor
	: _attributes ""get"" 'accessorType' "";"" 'semicolon' {{InterfacePropertyAccessor}}
	;
interface_set_accessor
	: _attributes ""set"" 'accessorType' "";"" 'semicolon' {{InterfacePropertyAccessor}}
	;
interface_event_declaration
	: _attributes _new 'modifier' ""event"" 'eventToken' type 'type' <Identifier> 'name' "";"" 'semicolon' {{}}
	;
interface_indexer_declaration
	: _attributes _new 'modifier' type 'type' ""this"" 'thisToken' ""["" 'leftBracket' formal_parameters_list ""]"" 'rightBracket' ""{"" 'leftBrace' interface_accessors <rightBrace> 'rightBrace' {{}}
	;

# B.2.11 Enums
enum_declaration
	: _attributes _enum_modifers ""enum"" 'enumToken' <Identifier> 'name' _enum_base enum_body _semicolon {{}}
	;
_enum_base
	:
	| enum_base
	;
enum_base
	: "":"" integral_type 'typeToken'
	;
enum_body
	: ""{"" 'leftBrace' _enum_member_declarations <rightBrace> 'rightBrace'
	| ""{"" 'leftBrace' enum_member_declarations "","" 'comma' <rightBrace> 'rightBrace'
	;
_enum_modifers
	:
	| enum_modifers
	;
enum_modifers
	: enum_modifer 'modifier'
	| enum_modifers enum_modifer 'modifier'
	;
enum_modifer
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	;
_enum_member_declarations
	:
	| enum_member_declarations
	;
enum_member_declarations
	: enum_member_declaration 'declaration'
	| enum_member_declarations "","" 'comma' enum_member_declaration 'declaration'
	;
enum_member_declaration
	: _attributes <Identifier> 'name' {{EnumDeclaration}}
	| _attributes <Identifier> 'name' ""="" 'equal' constant_expression 'value' {{EnumDeclaration}}
	;

# B.2.12 Delegates
delegate_declaration
	: _attributes _delegate_modifiers ""delegate"" 'delegateToken' return_type 'type' <Identifier> 'name' _variant_type_parameter_list ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' _type_parameter_constraints_clauses "";"" 'semicolon' {{}}
	;
_delegate_modifiers
	:
	| delegate_modifiers
	;
delegate_modifiers
	: delegate_modifier 'modifier'
	| delegate_modifiers delegate_modifier 'modifier'
	;
delegate_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	;

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
	: ""assembly""
	| ""module""
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
attribute_target
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
	: attribute_argument_expression
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
class_modifier
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
	;
destructor_declaration	# Changed from destructor_body to method_body since they are the same
	: _attributes _extern _unsafe ""~"" <Identifier> ""("" "")"" method_body 'body' {{}}
	| _attributes _unsafe _extern ""~"" <Identifier> ""("" "")"" method_body 'body' {{}}
	;
_unsafe
	:
	| ""unsafe"" 'modifier'
	;
static_constructor_modifiers
	: _extern _unsafe ""static""
	| _unsafe _extern ""static""
	| _extern ""static"" ""unsafe""
	| _unsafe ""static"" _extern
	| ""static"" _extern _unsafe
	| ""static"" _unsafe _extern
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
	: unmanaged_type 'type' ""*"" {{}}
	| void_type 'type' ""*"" {{}}
	;
unmanaged_type
	: type
	;
primary_no_array_creation_expression
	: pointer_member_access
	| pointer_element_access
	| sizeof_expression
	;
unary_expression
	: pointer_indirection_expression
	| addressof_expression
	;
pointer_indirection_expression
	: ""*"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	;
pointer_member_access
	: primary_expression 'expression' ""->"" 'arrowToken' <Identifier> 'name' {{}}
	;
pointer_element_access
	: primary_no_array_creation_expression 'expression' ""["" expression 'indexExpression' ""]"" {{}}
	;
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
	: _attributes _fixed_size_buffer_modifiers ""fixed"" buffer_element_type 'type' fixed_size_buffer_declarators "";"" {{}}
	;
_fixed_size_buffer_modifiers
	: 
	| fixed_size_buffer_modifiers
	;
fixed_size_buffer_modifiers
	: fixed_size_buffer_modifier 'modifier'
	| fixed_size_buffer_modifiers fixed_size_buffer_modifier 'modifier'
	;
fixed_size_buffer_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""unsafe""
	;
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
	: ""stackalloc"" unmanaged_type 'type' ""["" expression 'expression' ""]"" {{}}
	;
# Additions
void_type
	: ""void"" {{}}
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
	#(178 0 #reduceActionFor_extern_alias_directives1: 6272001 false ) 
	#(565 0 #reduceActionFor_extern_alias_directives1: 49334273 false ) 
	#(232 0 #reduceActionForStartInterpolatedString1: 10966017 true ) 
	#(236 0 #reduceActionForStartInterpolatedVerbatimString1: 11569153 true ) 
	#(181 0 #reduceActionFor_extern_alias_directives1: 6531073 false ) 
	#(178 1 #reduceActionFor_extern_alias_directives2: 6272002 false ) 
	#(179 1 #reduceActionForextern_alias_directives1: 6331393 false ) 
	#(569 0 #reduceActionFor_attribute_target_specifier1: 49745921 false ) 
	#(189 1 #liftFirstValue: 7273473 false ) 
	#(189 1 #liftFirstValue: 7273474 false ) 
	#(190 1 #liftFirstValue: 7352321 false ) 
	#(190 1 #liftFirstValue: 7352322 false ) 
	#(190 1 #liftFirstValue: 7352323 false ) 
	#(190 1 #liftFirstValue: 7352324 false ) 
	#(190 1 #liftFirstValue: 7352325 false ) 
	#(408 0 #reduceActionFor_extern_alias_directives1: 31647745 false ) 
	#(556 0 #reduceActionFor_extern_alias_directives1: 48440321 false ) 
	#(549 0 #reduceActionFor_extern_alias_directives1: 47545345 false ) 
	#(524 0 #reduceActionFor_extern_alias_directives1: 44539905 false ) 
	#(510 0 #reduceActionFor_extern_alias_directives1: 42946561 false ) 
	#(565 1 #reduceActionFor_extern_alias_directives2: 49334274 false ) 
	#(566 1 #reduceActionFor_extern_alias_directives2: 49367041 false ) 
	#(567 1 #reduceActionForextern_alias_directives1: 49403905 false ) 
	#(352 1 #reduceActionForempty_statement1: 26350593 false ) 
	#(199 1 #reduceActionForsimple_type2: 8143874 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536833 false ) 
	#(201 1 #liftFirstValue: 8283138 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536834 false ) 
	#(201 1 #liftFirstValue: 8283145 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536835 false ) 
	#(200 1 #liftFirstValue: 8212483 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536836 false ) 
	#(279 1 #reduceActionFordefault_value_expression1: 16720897 false ) 
	#(308 0 #nil 22414337 false ) 
	#(202 1 #liftFirstValue: 8396802 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536837 false ) 
	#(584 1 #liftFirstValue: 51398658 false ) 
	#(202 1 #liftFirstValue: 8396801 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536838 false ) 
	#(201 1 #liftFirstValue: 8283141 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536839 false ) 
	#(201 1 #liftFirstValue: 8283143 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536840 false ) 
	#(207 1 #reduceActionForsimple_type2: 8650754 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536841 false ) 
	#(342 0 #nil 25510913 false ) 
	#(201 1 #liftFirstValue: 8283137 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536842 false ) 
	#(201 1 #liftFirstValue: 8283139 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536843 false ) 
	#(207 1 #reduceActionForsimple_type2: 8650755 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536844 false ) 
	#(248 1 #reduceActionForthis_access1: 13369345 false ) 
	#(584 1 #liftFirstValue: 51398657 false ) 
	#(201 1 #liftFirstValue: 8283142 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536845 false ) 
	#(201 1 #liftFirstValue: 8283144 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536846 false ) 
	#(201 1 #liftFirstValue: 8283140 false ) 
	#(244 1 #reduceActionForsimple_type2: 12536847 false ) 
	#(356 1 #reduceActionForlocal_variable_type2: 26680322 false ) 
	#(612 1 #reduceActionForvoid_type1: 54943745 false ) 
	#(350 0 #reduceActionFor_extern_alias_directives1: 26223617 false ) 
	#(239 0 #nil 11894785 false ) 
	#(414 1 #reduceActionFortype_parameter1: 32187393 false ) 
	#(583 1 #reduceActionForliteral2: 51048450 false ) 
	#(583 1 #reduceActionForliteral3: 51048451 false ) 
	#(583 1 #reduceActionForliteral4: 51048452 false ) 
	#(231 1 #reduceActionForinterpolated_regular_string1: 10730497 false ) 
	#(235 1 #reduceActionForinterpolated_regular_string1: 11318273 false ) 
	#(583 1 #reduceActionForliteral5: 51048453 false ) 
	#(583 1 #reduceActionForliteral6: 51048454 false ) 
	#(194 1 #liftFirstValue: 7701507 false ) 
	#(242 1 #reduceActionForqualified_alias_member_expression1: 12368897 false ) 
	#(198 1 #liftFirstValue: 8082433 false ) 
	#(208 1 #liftFirstValue: 8750081 false ) 
	#(216 1 #liftFirstValue: 9160705 false ) 
	#(207 1 #liftFirstValue: 8650753 false ) 
	#(205 1 #liftFirstValue: 8541185 false ) 
	#(193 1 #liftFirstValue: 7661569 false ) 
	#(594 1 #liftFirstValue: 52731905 false ) 
	#(204 1 #liftFirstValue: 8505345 false ) 
	#(210 1 #liftFirstValue: 8843265 false ) 
	#(356 1 #liftFirstValue: 26680321 false ) 
	#(196 1 #liftFirstValue: 7980033 false ) 
	#(197 1 #liftFirstValue: 8039425 false ) 
	#(198 1 #liftFirstValue: 8082434 false ) 
	#(199 1 #reduceActionForsimple_type2: 8143873 false ) 
	#(200 1 #liftFirstValue: 8212481 false ) 
	#(200 1 #liftFirstValue: 8212482 false ) 
	#(198 1 #liftFirstValue: 8082435 false ) 
	#(197 1 #liftFirstValue: 8039426 false ) 
	#(196 1 #liftFirstValue: 7980034 false ) 
	#(206 1 #liftFirstValue: 8567809 false ) 
	#(206 1 #liftFirstValue: 8567810 false ) 
	#(206 1 #liftFirstValue: 8567811 false ) 
	#(206 1 #liftFirstValue: 8567812 false ) 
	#(283 1 #liftFirstValue: 17147905 false ) 
	#(285 0 #nil 17731585 false ) 
	#(228 1 #liftFirstValue: 9971713 false ) 
	#(229 1 #liftFirstValue: 10064898 false ) 
	#(230 1 #reduceActionForinterpolated_string_expression1: 10620929 false ) 
	#(230 1 #reduceActionForinterpolated_string_expression1: 10620930 false ) 
	#(229 1 #liftFirstValue: 10064899 false ) 
	#(229 1 #liftFirstValue: 10064900 false ) 
	#(229 1 #liftFirstValue: 10064901 false ) 
	#(243 1 #reduceActionForqualified_alias_member_expression1: 12460033 false ) 
	#(229 1 #liftFirstValue: 10064902 false ) 
	#(365 1 #liftFirstValue: 27671553 false ) 
	#(229 1 #liftFirstValue: 10064903 false ) 
	#(229 1 #liftFirstValue: 10064904 false ) 
	#(229 1 #liftFirstValue: 10064905 false ) 
	#(229 1 #liftFirstValue: 10064906 false ) 
	#(365 1 #liftFirstValue: 27671557 false ) 
	#(229 1 #liftFirstValue: 10064907 false ) 
	#(365 1 #liftFirstValue: 27671558 false ) 
	#(229 1 #liftFirstValue: 10064908 false ) 
	#(365 1 #liftFirstValue: 27671555 false ) 
	#(228 1 #liftFirstValue: 9971714 false ) 
	#(229 1 #liftFirstValue: 10064909 false ) 
	#(229 1 #liftFirstValue: 10064910 false ) 
	#(229 1 #liftFirstValue: 10064911 false ) 
	#(229 1 #liftFirstValue: 10064912 false ) 
	#(229 1 #liftFirstValue: 10064913 false ) 
	#(229 1 #liftFirstValue: 10064914 false ) 
	#(229 1 #liftFirstValue: 10064915 false ) 
	#(283 1 #liftFirstValue: 17147906 false ) 
	#(365 1 #liftFirstValue: 27671554 false ) 
	#(283 1 #liftFirstValue: 17147911 false ) 
	#(365 1 #liftFirstValue: 27671559 false ) 
	#(283 1 #liftFirstValue: 17147912 false ) 
	#(365 1 #liftFirstValue: 27671560 false ) 
	#(283 1 #liftFirstValue: 17147913 false ) 
	#(283 1 #liftFirstValue: 17147914 false ) 
	#(365 1 #liftFirstValue: 27671561 false ) 
	#(229 1 #liftFirstValue: 10064916 false ) 
	#(365 1 #liftFirstValue: 27671556 false ) 
	#(347 1 #liftFirstValue: 25814019 false ) 
	#(348 1 #liftFirstValue: 25896961 false ) 
	#(348 1 #liftFirstValue: 25896962 false ) 
	#(347 1 #liftFirstValue: 25814017 false ) 
	#(347 1 #liftFirstValue: 25814018 false ) 
	#(348 1 #liftFirstValue: 25896963 false ) 
	#(348 1 #liftFirstValue: 25896964 false ) 
	#(366 1 #liftFirstValue: 27947009 false ) 
	#(366 1 #liftFirstValue: 27947010 false ) 
	#(348 1 #liftFirstValue: 25896965 false ) 
	#(375 1 #liftFirstValue: 28750849 false ) 
	#(375 1 #liftFirstValue: 28750850 false ) 
	#(375 1 #liftFirstValue: 28750851 false ) 
	#(375 1 #liftFirstValue: 28750852 false ) 
	#(348 1 #liftFirstValue: 25896966 false ) 
	#(387 1 #liftFirstValue: 29854721 false ) 
	#(387 1 #liftFirstValue: 29854722 false ) 
	#(387 1 #liftFirstValue: 29854723 false ) 
	#(387 1 #liftFirstValue: 29854724 false ) 
	#(387 1 #liftFirstValue: 29854725 false ) 
	#(348 1 #liftFirstValue: 25896967 false ) 
	#(348 1 #liftFirstValue: 25896968 false ) 
	#(348 1 #liftFirstValue: 25896969 false ) 
	#(348 1 #liftFirstValue: 25896970 false ) 
	#(348 1 #liftFirstValue: 25896971 false ) 
	#(348 1 #liftFirstValue: 25896972 false ) 
	#(196 1 #liftFirstValue: 7980035 false ) 
	#(229 1 #liftFirstValue: 10064897 false ) 
	#(583 1 #reduceActionForliteral1: 51048449 false ) 
	#(348 1 #liftFirstValue: 25896973 false ) 
	#(196 1 #liftFirstValue: 7980036 false ) 
	#(283 1 #liftFirstValue: 17147915 false ) 
	#(229 1 #liftFirstValue: 10064917 false ) 
	#(229 1 #liftFirstValue: 10064918 false ) 
	#(283 1 #liftFirstValue: 17147916 false ) 
	#(229 1 #liftFirstValue: 10064919 false ) 
	#(348 1 #liftFirstValue: 25896974 false ) 
	#(316 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 23385089 false ) 
	#(310 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 22606849 false ) 
	#(313 0 #nil 23066625 false ) 
	#(195 0 #nil 7952385 false ) 
	#(318 1 #liftFirstValue: 23677953 false ) 
	#(293 1 #liftFirstValue: 19261441 false ) 
	#(294 1 #liftFirstValue: 19609601 false ) 
	#(295 1 #liftFirstValue: 19867649 false ) 
	#(296 1 #liftFirstValue: 20102145 false ) 
	#(297 1 #liftFirstValue: 20700161 false ) 
	#(298 1 #liftFirstValue: 20947969 false ) 
	#(299 1 #liftFirstValue: 21081089 false ) 
	#(300 1 #liftFirstValue: 21222401 false ) 
	#(301 1 #liftFirstValue: 21382145 false ) 
	#(302 1 #liftFirstValue: 21549057 false ) 
	#(303 1 #liftFirstValue: 21720065 false ) 
	#(304 1 #liftFirstValue: 21891073 false ) 
	#(344 1 #liftFirstValue: 25617409 false ) 
	#(344 1 #liftFirstValue: 25617410 false ) 
	#(307 1 #liftFirstValue: 22297601 false ) 
	#(307 1 #liftFirstValue: 22297602 false ) 
	#(315 1 #reduceActionForimplicit_anonymous_function_signature2: 23227394 false ) 
	#(344 1 #liftFirstValue: 25617411 false ) 
	#(323 0 #reduceActionFor_query_body_clauses1: 23996417 false ) 
	#(343 1 #liftFirstValue: 25556994 false ) 
	#(343 1 #liftFirstValue: 25556993 false ) 
	#(429 1 #liftFirstValue: 34127883 false ) 
	#(429 1 #liftFirstValue: 34127873 false ) 
	#(429 1 #liftFirstValue: 34127874 false ) 
	#(429 1 #liftFirstValue: 34127875 false ) 
	#(429 1 #liftFirstValue: 34127876 false ) 
	#(429 1 #liftFirstValue: 34127877 false ) 
	#(429 1 #liftFirstValue: 34127878 false ) 
	#(429 1 #liftFirstValue: 34127879 false ) 
	#(429 1 #liftFirstValue: 34127880 false ) 
	#(429 1 #liftFirstValue: 34127882 false ) 
	#(461 0 #reduceActionFor_extern_alias_directives1: 37305345 false ) 
	#(445 0 #reduceActionFor_extern_alias_directives1: 35904513 false ) 
	#(483 0 #reduceActionFor_extern_alias_directives1: 39666689 false ) 
	#(437 0 #reduceActionFor_extern_alias_directives1: 35082241 false ) 
	#(431 0 #reduceActionFor_extern_alias_directives1: 34540545 false ) 
	#(476 0 #reduceActionFor_extern_alias_directives1: 38902785 false ) 
	#(591 0 #nil 52272129 false ) 
	#(588 0 #nil 51549185 false ) 
	#(499 0 #reduceActionFor_extern_alias_directives1: 41669633 false ) 
	#(429 1 #liftFirstValue: 34127881 false ) 
	#(559 0 #reduceActionFor_extern_alias_directives1: 48704513 false ) 
	#(181 1 #reduceActionFor_extern_alias_directives2: 6531074 false ) 
	#(182 1 #reduceActionForextern_alias_directives1: 6576129 false ) 
	#(183 1 #liftFirstValue: 6677505 false ) 
	#(183 1 #liftFirstValue: 6677506 false ) 
	#(183 1 #liftFirstValue: 6677507 false ) 
	#(179 2 #reduceActionForextern_alias_directives2: 6331394 false ) 
	#(571 1 #liftFirstValue: 49885186 false ) 
	#(571 1 #liftFirstValue: 49885185 false ) 
	#(571 1 #liftFirstValue: 49885187 false ) 
	#(571 1 #liftFirstValue: 49885188 false ) 
	#(571 1 #liftFirstValue: 49885189 false ) 
	#(571 1 #liftFirstValue: 49885190 false ) 
	#(571 1 #liftFirstValue: 49885191 false ) 
	#(569 1 #reduceActionFor_extern_alias_directives2: 49745922 false ) 
	#(176 1 #reduceActionForqualified_identifier1: 6049793 false ) 
	#(410 1 #liftFirstValue: 31785990 false ) 
	#(410 1 #liftFirstValue: 31785988 false ) 
	#(558 1 #liftFirstValue: 48596996 false ) 
	#(551 1 #liftFirstValue: 47671300 false ) 
	#(526 1 #liftFirstValue: 44702724 false ) 
	#(512 1 #liftFirstValue: 43091972 false ) 
	#(410 1 #liftFirstValue: 31785985 false ) 
	#(558 1 #liftFirstValue: 48596993 false ) 
	#(551 1 #liftFirstValue: 47671297 false ) 
	#(526 1 #liftFirstValue: 44702721 false ) 
	#(512 1 #liftFirstValue: 43091969 false ) 
	#(410 1 #liftFirstValue: 31785989 false ) 
	#(558 1 #liftFirstValue: 48596997 false ) 
	#(551 1 #liftFirstValue: 47671301 false ) 
	#(526 1 #liftFirstValue: 44702725 false ) 
	#(512 1 #liftFirstValue: 43091973 false ) 
	#(410 1 #liftFirstValue: 31785987 false ) 
	#(558 1 #liftFirstValue: 48596995 false ) 
	#(551 1 #liftFirstValue: 47671299 false ) 
	#(526 1 #liftFirstValue: 44702723 false ) 
	#(512 1 #liftFirstValue: 43091971 false ) 
	#(410 1 #liftFirstValue: 31785986 false ) 
	#(558 1 #liftFirstValue: 48596994 false ) 
	#(551 1 #liftFirstValue: 47671298 false ) 
	#(526 1 #liftFirstValue: 44702722 false ) 
	#(512 1 #liftFirstValue: 43091970 false ) 
	#(410 1 #liftFirstValue: 31785991 false ) 
	#(410 1 #liftFirstValue: 31785992 false ) 
	#(410 1 #liftFirstValue: 31785993 false ) 
	#(558 1 #liftFirstValue: 48596998 false ) 
	#(526 1 #liftFirstValue: 44702726 false ) 
	#(512 1 #liftFirstValue: 43091974 false ) 
	#(587 0 #nil 51505153 false ) 
	#(408 1 #reduceActionFor_extern_alias_directives2: 31647746 false ) 
	#(409 1 #reduceActionForextern_alias_directives1: 31690753 false ) 
	#(510 1 #reduceActionFor_extern_alias_directives2: 42946562 false ) 
	#(511 1 #reduceActionForextern_alias_directives1: 42992641 false ) 
	#(524 1 #reduceActionFor_extern_alias_directives2: 44539906 false ) 
	#(525 1 #reduceActionForextern_alias_directives1: 44591105 false ) 
	#(549 1 #reduceActionFor_extern_alias_directives2: 47545346 false ) 
	#(550 1 #reduceActionForextern_alias_directives1: 47584257 false ) 
	#(556 1 #reduceActionFor_extern_alias_directives2: 48440322 false ) 
	#(557 1 #reduceActionForextern_alias_directives1: 48489473 false ) 
	#(567 2 #reduceActionForextern_alias_directives2: 49403906 false ) 
	#(283 2 #reduceActionForunary_expression5: 17147909 false ) 
	#(598 2 #reduceActionForunary_expression5: 53287937 false ) 
	#(595 2 #reduceActionForunary_expression5: 52953089 false ) 
	#(283 2 #reduceActionForunary_expression5: 17147907 false ) 
	#(289 2 #reduceActionForunary_expression5: 18914305 false ) 
	#(283 2 #reduceActionForunary_expression5: 17147908 false ) 
	#(290 2 #reduceActionForunary_expression5: 19014657 false ) 
	#(292 2 #reduceActionForawait_expression1: 19193857 false ) 
	#(388 2 #reduceActionForbreak_statement1: 29973505 false ) 
	#(401 2 #reduceActionForchecked_statement1: 30945281 false ) 
	#(389 2 #reduceActionForcontinue_statement1: 30013441 false ) 
	#(308 1 #liftFirstValue: 22414338 false ) 
	#(379 0 #nil 29199361 false ) 
	#(214 0 #reduceActionFor_extern_alias_directives1: 9070593 false ) 
	#(268 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 15618049 false ) 
	#(266 2 #reduceActionForanonymous_object_creation_expression1: 15407105 false ) 
	#(342 1 #liftFirstValue: 25510914 false ) 
	#(402 2 #reduceActionForunchecked_statement1: 30999553 false ) 
	#(592 2 #reduceActionForunsafe_statement1: 52558849 false ) 
	#(351 1 #reduceActionForextern_alias_directives1: 26265601 false ) 
	#(350 1 #reduceActionFor_extern_alias_directives2: 26223618 false ) 
	#(283 2 #reduceActionForunary_expression5: 17147910 false ) 
	#(239 1 #liftFirstValue: 11894786 false ) 
	#(238 2 #reduceActionForsimple_name1: 11821057 false ) 
	#(194 2 #reduceActionFornamespace_or_type_name1: 7701505 false ) 
	#(203 2 #reduceActionFornullable_type1: 8443905 false ) 
	#(209 2 #reduceActionForarray_type1: 8781825 false ) 
	#(212 1 #reduceActionForextern_alias_directives1: 8913921 false ) 
	#(224 0 #reduceActionFor_attribute_target_specifier1: 9638913 false ) 
	#(221 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 9456641 false ) 
	#(250 2 #reduceActionForpost_increment_expression1: 13501441 false ) 
	#(251 2 #reduceActionForpost_increment_expression1: 13602817 false ) 
	#(284 2 #reduceActionFornull_conditional_expression1: 17602561 false ) 
	#(285 1 #liftFirstValue: 17731586 false ) 
	#(341 1 #liftFirstValue: 25396230 false ) 
	#(341 1 #liftFirstValue: 25396231 false ) 
	#(341 1 #liftFirstValue: 25396228 false ) 
	#(341 1 #liftFirstValue: 25396226 false ) 
	#(341 1 #liftFirstValue: 25396227 false ) 
	#(341 1 #liftFirstValue: 25396229 false ) 
	#(341 1 #liftFirstValue: 25396234 false ) 
	#(341 1 #liftFirstValue: 25396225 false ) 
	#(341 1 #liftFirstValue: 25396235 false ) 
	#(341 1 #liftFirstValue: 25396233 false ) 
	#(341 1 #liftFirstValue: 25396232 false ) 
	#(354 2 #reduceActionFordeclaration_statement1: 26451969 false ) 
	#(359 1 #reduceActionFor_local_variable_declarator_name1: 27157505 false ) 
	#(355 2 #reduceActionForlocal_variable_declaration1: 26586113 false ) 
	#(357 1 #reduceActionForinterpolated_regular_string1: 26733569 false ) 
	#(358 1 #reduceActionForlocal_variable_declarator1: 26882049 false ) 
	#(354 2 #reduceActionFordeclaration_statement1: 26451970 false ) 
	#(364 2 #reduceActionForexpression_statement1: 27599873 false ) 
	#(593 2 #reduceActionForpointer_type1: 52651009 false ) 
	#(593 2 #reduceActionForpointer_type1: 52651010 false ) 
	#(314 1 #liftFirstValue: 23166978 false ) 
	#(314 1 #liftFirstValue: 23166977 false ) 
	#(310 1 #reduceActionFor_extern_alias_directives2: 22606850 false ) 
	#(311 1 #reduceActionForinterpolated_regular_string1: 22708225 false ) 
	#(313 1 #liftFirstValue: 23066626 false ) 
	#(316 1 #reduceActionFor_extern_alias_directives2: 23385090 false ) 
	#(317 1 #reduceActionForinterpolated_regular_string1: 23484417 false ) 
	#(195 1 #liftFirstValue: 7952386 false ) 
	#(325 1 #reduceActionForquery_body_clause1: 24131585 false ) 
	#(320 2 #reduceActionForquery_expression1: 23787521 false ) 
	#(323 1 #reduceActionFor_extern_alias_directives2: 23996418 false ) 
	#(324 1 #reduceActionForquery_body_clauses1: 24046593 false ) 
	#(325 1 #reduceActionForquery_body_clause2: 24131586 false ) 
	#(325 1 #reduceActionForquery_body_clause3: 24131587 false ) 
	#(325 1 #reduceActionForquery_body_clause4: 24131588 false ) 
	#(325 1 #reduceActionForquery_body_clause5: 24131589 false ) 
	#(325 1 #reduceActionForquery_body_clause6: 24131590 false ) 
	#(450 1 #reduceActionFormethod_body3: 36343811 false ) 
	#(450 1 #reduceActionFormethod_body1: 36343809 false ) 
	#(443 2 #reduceActionFormethod_declaration1: 35636225 false ) 
	#(447 1 #liftFirstValue: 36049930 false ) 
	#(463 1 #liftFirstValue: 37462026 false ) 
	#(478 1 #liftFirstValue: 39041034 false ) 
	#(485 1 #liftFirstValue: 39817225 false ) 
	#(463 1 #liftFirstValue: 37462027 false ) 
	#(485 1 #liftFirstValue: 39817226 false ) 
	#(478 1 #liftFirstValue: 39041035 false ) 
	#(447 1 #liftFirstValue: 36049931 false ) 
	#(490 1 #liftFirstValue: 40449027 false ) 
	#(501 1 #liftFirstValue: 41845765 false ) 
	#(588 1 #liftFirstValue: 51549186 false ) 
	#(447 1 #liftFirstValue: 36049924 false ) 
	#(485 1 #liftFirstValue: 39817220 false ) 
	#(478 1 #liftFirstValue: 39041028 false ) 
	#(463 1 #liftFirstValue: 37462020 false ) 
	#(439 1 #liftFirstValue: 35221508 false ) 
	#(433 1 #liftFirstValue: 34693124 false ) 
	#(501 1 #liftFirstValue: 41845763 false ) 
	#(485 1 #liftFirstValue: 39817217 false ) 
	#(478 1 #liftFirstValue: 39041025 false ) 
	#(463 1 #liftFirstValue: 37462017 false ) 
	#(447 1 #liftFirstValue: 36049921 false ) 
	#(439 1 #liftFirstValue: 35221505 false ) 
	#(433 1 #liftFirstValue: 34693121 false ) 
	#(463 1 #liftFirstValue: 37462025 false ) 
	#(447 1 #liftFirstValue: 36049929 false ) 
	#(478 1 #liftFirstValue: 39041033 false ) 
	#(485 1 #liftFirstValue: 39817224 false ) 
	#(463 1 #liftFirstValue: 37462021 false ) 
	#(478 1 #liftFirstValue: 39041029 false ) 
	#(485 1 #liftFirstValue: 39817221 false ) 
	#(447 1 #liftFirstValue: 36049925 false ) 
	#(439 1 #liftFirstValue: 35221509 false ) 
	#(433 1 #liftFirstValue: 34693125 false ) 
	#(501 1 #liftFirstValue: 41845764 false ) 
	#(478 1 #liftFirstValue: 39041027 false ) 
	#(463 1 #liftFirstValue: 37462019 false ) 
	#(447 1 #liftFirstValue: 36049923 false ) 
	#(485 1 #liftFirstValue: 39817219 false ) 
	#(439 1 #liftFirstValue: 35221507 false ) 
	#(433 1 #liftFirstValue: 34693123 false ) 
	#(501 1 #liftFirstValue: 41845762 false ) 
	#(478 1 #liftFirstValue: 39041026 false ) 
	#(485 1 #liftFirstValue: 39817218 false ) 
	#(447 1 #liftFirstValue: 36049922 false ) 
	#(463 1 #liftFirstValue: 37462018 false ) 
	#(439 1 #liftFirstValue: 35221506 false ) 
	#(490 1 #liftFirstValue: 40449025 false ) 
	#(433 1 #liftFirstValue: 34693122 false ) 
	#(501 1 #liftFirstValue: 41845761 false ) 
	#(439 1 #liftFirstValue: 35221511 false ) 
	#(447 1 #liftFirstValue: 36049928 false ) 
	#(478 1 #liftFirstValue: 39041032 false ) 
	#(485 1 #liftFirstValue: 39817223 false ) 
	#(463 1 #liftFirstValue: 37462024 false ) 
	#(463 1 #liftFirstValue: 37462022 false ) 
	#(447 1 #liftFirstValue: 36049926 false ) 
	#(478 1 #liftFirstValue: 39041030 false ) 
	#(490 1 #liftFirstValue: 40449026 false ) 
	#(439 1 #liftFirstValue: 35221510 false ) 
	#(463 1 #liftFirstValue: 37462028 false ) 
	#(447 1 #liftFirstValue: 36049932 false ) 
	#(478 1 #liftFirstValue: 39041036 false ) 
	#(485 1 #liftFirstValue: 39817227 false ) 
	#(439 1 #liftFirstValue: 35221513 false ) 
	#(490 1 #liftFirstValue: 40449028 false ) 
	#(501 1 #liftFirstValue: 41845766 false ) 
	#(591 1 #liftFirstValue: 52272130 false ) 
	#(463 1 #liftFirstValue: 37462023 false ) 
	#(485 1 #liftFirstValue: 39817222 false ) 
	#(478 1 #liftFirstValue: 39041031 false ) 
	#(447 1 #liftFirstValue: 36049927 false ) 
	#(439 1 #liftFirstValue: 35221512 false ) 
	#(431 1 #reduceActionFor_extern_alias_directives2: 34540546 false ) 
	#(432 1 #reduceActionForextern_alias_directives1: 34589697 false ) 
	#(437 1 #reduceActionFor_extern_alias_directives2: 35082242 false ) 
	#(438 1 #reduceActionForextern_alias_directives1: 35126273 false ) 
	#(445 1 #reduceActionFor_extern_alias_directives2: 35904514 false ) 
	#(446 1 #reduceActionForextern_alias_directives1: 35950593 false ) 
	#(461 1 #reduceActionFor_extern_alias_directives2: 37305346 false ) 
	#(462 1 #reduceActionForextern_alias_directives1: 37354497 false ) 
	#(476 1 #reduceActionFor_extern_alias_directives2: 38902786 false ) 
	#(477 1 #reduceActionForextern_alias_directives1: 38945793 false ) 
	#(483 1 #reduceActionFor_extern_alias_directives2: 39666690 false ) 
	#(484 1 #reduceActionForextern_alias_directives1: 39713793 false ) 
	#(489 1 #reduceActionForextern_alias_directives1: 40341505 false ) 
	#(499 1 #reduceActionFor_extern_alias_directives2: 41669634 false ) 
	#(500 1 #reduceActionForextern_alias_directives1: 41725953 false ) 
	#(192 1 #liftFirstValue: 7616513 false ) 
	#(187 0 #reduceActionFor_extern_alias_directives1: 7042049 false ) 
	#(559 1 #reduceActionFor_extern_alias_directives2: 48704514 false ) 
	#(560 1 #reduceActionFor_extern_alias_directives2: 48751617 false ) 
	#(561 1 #reduceActionForextern_alias_directives1: 48802817 false ) 
	#(182 2 #reduceActionForextern_alias_directives2: 6576130 false ) 
	#(574 1 #liftFirstValue: 50176001 false ) 
	#(572 1 #reduceActionForinterpolated_regular_string1: 49988609 false ) 
	#(575 0 #reduceActionFor_attribute_arguments1: 50207745 false ) 
	#(570 2 #reduceActionForattribute_target_specifier1: 49812481 false ) 
	#(585 0 #nil 51447809 false ) 
	#(587 1 #liftFirstValue: 51505154 false ) 
	#(409 2 #reduceActionForextern_alias_directives2: 31690754 false ) 
	#(511 2 #reduceActionForextern_alias_directives2: 42992642 false ) 
	#(525 2 #reduceActionForextern_alias_directives2: 44591106 false ) 
	#(550 2 #reduceActionForextern_alias_directives2: 47584258 false ) 
	#(557 2 #reduceActionForextern_alias_directives2: 48489474 false ) 
	#(240 3 #reduceActionForparenthesized_expression1: 11944961 false ) 
	#(249 3 #reduceActionForbase_access1: 13400065 false ) 
	#(247 1 #reduceActionForinterpolated_regular_string1: 13274113 false ) 
	#(361 3 #reduceActionForlocal_constant_declaration1: 27322369 false ) 
	#(362 1 #reduceActionForinterpolated_regular_string1: 27400193 false ) 
	#(306 3 #reduceActionForanonymous_method_expression1: 22179841 false ) 
	#(380 1 #liftFirstValue: 29257729 false ) 
	#(385 1 #reduceActionForinterpolated_regular_string1: 29560833 false ) 
	#(379 1 #liftFirstValue: 29199362 false ) 
	#(380 1 #reduceActionForfor_initializer2: 29257730 false ) 
	#(345 1 #liftFirstValue: 25718785 false ) 
	#(390 3 #reduceActionForgoto_statement3: 30059523 false ) 
	#(390 3 #reduceActionForgoto_statement1: 30059521 false ) 
	#(346 1 #liftFirstValue: 25756673 false ) 
	#(282 1 #reduceActionFornamed_entity_target2: 16983042 false ) 
	#(282 1 #reduceActionForthis_access1: 16983041 false ) 
	#(281 1 #liftFirstValue: 16859137 false ) 
	#(282 1 #liftFirstValue: 16983045 false ) 
	#(282 1 #liftFirstValue: 16983044 false ) 
	#(282 1 #liftFirstValue: 16983043 false ) 
	#(215 1 #reduceActionForextern_alias_directives1: 9112577 false ) 
	#(214 1 #reduceActionFor_extern_alias_directives2: 9070594 false ) 
	#(270 1 #reduceActionFormember_declarator1: 15800321 false ) 
	#(270 1 #reduceActionFormember_declarator2: 15800322 false ) 
	#(270 1 #reduceActionFormember_declarator2: 15800323 false ) 
	#(268 1 #reduceActionFor_extern_alias_directives2: 15618050 false ) 
	#(269 1 #reduceActionForinterpolated_regular_string1: 15676417 false ) 
	#(270 1 #reduceActionFormember_declarator2: 15800324 false ) 
	#(256 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 14200833 false ) 
	#(252 3 #reduceActionForobject_creation_expression2: 13704194 false ) 
	#(254 1 #liftFirstValue: 13986817 false ) 
	#(254 1 #liftFirstValue: 13986818 false ) 
	#(521 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 44019713 false ) 
	#(264 3 #reduceActionForarray_creation_expression2: 15003650 false ) 
	#(264 3 #reduceActionForarray_creation_expression3: 15003651 false ) 
	#(391 3 #reduceActionForreturn_statement1: 30200833 false ) 
	#(392 3 #reduceActionForthrow_statement1: 30255105 false ) 
	#(396 0 #reduceActionFor_exception_specifier1: 30660609 false ) 
	#(393 3 #reduceActionFortry_statement1: 30307329 false ) 
	#(394 1 #reduceActionForextern_alias_directives1: 30490625 false ) 
	#(393 3 #reduceActionFortry_statement2: 30307330 false ) 
	#(273 0 #reduceActionFor_generic_dimension_specifier1: 16374785 false ) 
	#(405 1 #liftFirstValue: 31266818 false ) 
	#(405 1 #liftFirstValue: 31266817 false ) 
	#(406 3 #reduceActionForyield_statement2: 31336450 false ) 
	#(349 3 #reduceActionForblock1: 26158081 false ) 
	#(351 2 #reduceActionForextern_alias_directives2: 26265602 false ) 
	#(353 3 #reduceActionForlabeled_statement1: 26382337 false ) 
	#(219 1 #liftFirstValue: 9353217 false ) 
	#(218 1 #reduceActionForinterpolated_regular_string1: 9266177 false ) 
	#(212 2 #reduceActionForextern_alias_directives2: 8913922 false ) 
	#(221 1 #reduceActionFor_extern_alias_directives2: 9456642 false ) 
	#(222 1 #reduceActionForinterpolated_regular_string1: 9504769 false ) 
	#(224 1 #reduceActionFor_extern_alias_directives2: 9638914 false ) 
	#(596 3 #reduceActionForpointer_member_access1: 53058561 false ) 
	#(233 1 #reduceActionForinterpolated_regular_string_body1: 11019265 false ) 
	#(234 1 #reduceActionForinterpolation1: 11199489 false ) 
	#(237 1 #reduceActionForinterpolated_regular_string_body1: 11638785 false ) 
	#(241 3 #reduceActionFormember_access3: 12039171 false ) 
	#(340 3 #reduceActionForassignment1: 25300993 false ) 
	#(309 3 #reduceActionForexplicit_anonymous_function_signature1: 22502401 false ) 
	#(315 3 #reduceActionForimplicit_anonymous_function_signature1: 23227393 false ) 
	#(293 3 #reduceActionFormultiplicative_expression4: 19261444 false ) 
	#(293 3 #reduceActionFormultiplicative_expression4: 19261442 false ) 
	#(293 3 #reduceActionFormultiplicative_expression4: 19261443 false ) 
	#(294 3 #reduceActionFormultiplicative_expression4: 19609602 false ) 
	#(294 3 #reduceActionFormultiplicative_expression4: 19609603 false ) 
	#(295 3 #reduceActionFormultiplicative_expression4: 19867650 false ) 
	#(295 3 #reduceActionFormultiplicative_expression4: 19867651 false ) 
	#(296 3 #reduceActionFormultiplicative_expression4: 20102146 false ) 
	#(296 3 #reduceActionFormultiplicative_expression4: 20102148 false ) 
	#(296 3 #reduceActionFormultiplicative_expression4: 20102149 false ) 
	#(296 3 #reduceActionFormultiplicative_expression4: 20102151 false ) 
	#(296 3 #reduceActionFormultiplicative_expression4: 20102150 false ) 
	#(296 3 #reduceActionFormultiplicative_expression4: 20102147 false ) 
	#(297 3 #reduceActionFormultiplicative_expression4: 20700163 false ) 
	#(297 3 #reduceActionFormultiplicative_expression4: 20700162 false ) 
	#(298 3 #reduceActionFormultiplicative_expression4: 20947970 false ) 
	#(299 3 #reduceActionFormultiplicative_expression4: 21081090 false ) 
	#(300 3 #reduceActionFormultiplicative_expression4: 21222402 false ) 
	#(301 3 #reduceActionFormultiplicative_expression4: 21382146 false ) 
	#(303 3 #reduceActionFormultiplicative_expression4: 21720066 false ) 
	#(302 3 #reduceActionFormultiplicative_expression4: 21549058 false ) 
	#(305 3 #reduceActionForlambda_expression1: 22071297 false ) 
	#(319 1 #liftFirstValue: 23736321 false ) 
	#(319 1 #liftFirstValue: 23736322 false ) 
	#(330 2 #reduceActionFororderby_clause1: 24725505 false ) 
	#(331 1 #reduceActionFororderings1: 24767489 false ) 
	#(333 0 #reduceActionFor_attribute_target_specifier1: 24880129 false ) 
	#(327 2 #reduceActionForattribute_target_specifier1: 24318977 false ) 
	#(338 0 #reduceActionFor_query_continuation1: 25193473 false ) 
	#(335 1 #reduceActionForselect_or_group_clause1: 24984577 false ) 
	#(335 1 #reduceActionForselect_or_group_clause2: 24984578 false ) 
	#(324 2 #reduceActionForquery_body_clauses2: 24046594 false ) 
	#(507 2 #reduceActionForstatic_constructor_modifiers2: 42438658 false ) 
	#(432 2 #reduceActionForextern_alias_directives2: 34589698 false ) 
	#(438 2 #reduceActionForextern_alias_directives2: 35126274 false ) 
	#(446 2 #reduceActionForextern_alias_directives2: 35950594 false ) 
	#(462 2 #reduceActionForextern_alias_directives2: 37354498 false ) 
	#(477 2 #reduceActionForextern_alias_directives2: 38945794 false ) 
	#(484 2 #reduceActionForextern_alias_directives2: 39713794 false ) 
	#(489 2 #reduceActionForextern_alias_directives2: 40341506 false ) 
	#(491 1 #reduceActionForoperator_declarator1: 40507393 false ) 
	#(491 1 #reduceActionForoperator_declarator2: 40507394 false ) 
	#(491 1 #reduceActionForoperator_declarator3: 40507395 false ) 
	#(500 2 #reduceActionForextern_alias_directives2: 41725954 false ) 
	#(507 2 #reduceActionForstatic_constructor_modifiers1: 42438657 false ) 
	#(180 4 #reduceActionForextern_alias_directive1: 6461441 false ) 
	#(185 3 #reduceActionForusing_namespace_directive1: 6885377 false ) 
	#(564 1 #liftFirstValue: 49280001 false ) 
	#(564 1 #liftFirstValue: 49280002 false ) 
	#(174 4 #reduceActionForcompilation_unit1: 5818369 false ) 
	#(187 1 #reduceActionFor_extern_alias_directives2: 7042050 false ) 
	#(188 1 #reduceActionForextern_alias_directives1: 7114753 false ) 
	#(561 2 #reduceActionForextern_alias_directives2: 48802818 false ) 
	#(568 4 #reduceActionForattribute_section1: 49513473 false ) 
	#(577 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 50499585 false ) 
	#(573 2 #reduceActionForattribute1: 50096129 false ) 
	#(575 1 #reduceActionFor_attribute_arguments2: 50207746 false ) 
	#(176 3 #reduceActionForqualified_identifier2: 6049794 false ) 
	#(585 1 #liftFirstValue: 51447810 false ) 
	#(175 4 #reduceActionFornamespace_declaration1: 5942273 false ) 
	#(546 0 #reduceActionFor_attribute_target_specifier1: 47297537 false ) 
	#(448 1 #liftFirstValue: 36212737 false ) 
	#(448 1 #liftFirstValue: 36212738 false ) 
	#(291 4 #reduceActionForcast_expression1: 19115009 false ) 
	#(249 4 #reduceActionForbase_access2: 13400066 false ) 
	#(277 4 #reduceActionForchecked_expression1: 16569345 false ) 
	#(279 4 #reduceActionFordefault_value_expression2: 16720898 false ) 
	#(601 1 #reduceActionForinterpolated_regular_string1: 53617665 false ) 
	#(381 0 #nil 29356033 false ) 
	#(390 4 #reduceActionForgoto_statement2: 30059522 false ) 
	#(280 4 #reduceActionFornameof_expression1: 16791553 false ) 
	#(213 3 #reduceActionForrank_specifier1: 9019393 false ) 
	#(215 2 #reduceActionForextern_alias_directives2: 9112578 false ) 
	#(267 3 #reduceActionForanonymous_object_initializer1: 15492097 false ) 
	#(259 1 #reduceActionForinitializer_target1: 14472193 false ) 
	#(256 1 #reduceActionFor_extern_alias_directives2: 14200834 false ) 
	#(257 1 #reduceActionForinterpolated_regular_string1: 14261249 false ) 
	#(262 1 #reduceActionForinterpolated_regular_string1: 14755841 false ) 
	#(263 1 #reduceActionForelement_initializer1: 14889985 false ) 
	#(442 1 #liftFirstValue: 35575809 false ) 
	#(522 1 #reduceActionForinterpolated_regular_string1: 44083201 false ) 
	#(442 1 #liftFirstValue: 35575810 false ) 
	#(521 1 #reduceActionFor_extern_alias_directives2: 44019714 false ) 
	#(599 4 #reduceActionForsizeof_expression1: 53383169 false ) 
	#(398 0 #nil 30771201 false ) 
	#(396 1 #reduceActionFor_extern_alias_directives2: 30660610 false ) 
	#(400 2 #reduceActionForfinally_clause1: 30894081 false ) 
	#(394 2 #reduceActionForextern_alias_directives2: 30490626 false ) 
	#(393 4 #reduceActionFortry_statement3: 30307331 false ) 
	#(275 0 #reduceActionFor_extern_alias_directives1: 16495617 false ) 
	#(272 2 #reduceActionForunbound_type_name1: 16158721 false ) 
	#(273 1 #reduceActionFor_extern_alias_directives2: 16374786 false ) 
	#(271 4 #reduceActionFortypeof_expression1: 16005121 false ) 
	#(271 4 #reduceActionFortypeof_expression1: 16005122 false ) 
	#(271 4 #reduceActionFortypeof_expression1: 16005123 false ) 
	#(278 4 #reduceActionForunchecked_expression1: 16643073 false ) 
	#(406 4 #reduceActionForyield_statement1: 31336449 false ) 
	#(191 4 #reduceActionForqualified_alias_member1: 7487489 false ) 
	#(217 3 #reduceActionFortype_argument_list1: 9191425 false ) 
	#(194 4 #reduceActionFornamespace_or_type_name2: 7701506 false ) 
	#(225 2 #reduceActionForattribute_target_specifier1: 9677825 false ) 
	#(245 4 #reduceActionForinvocation_expression1: 13077505 false ) 
	#(223 2 #reduceActionForargument1: 9587713 false ) 
	#(226 1 #reduceActionForargument_value1: 9729025 false ) 
	#(241 4 #reduceActionFormember_access1: 12039169 false ) 
	#(246 4 #reduceActionForelement_access1: 13167617 false ) 
	#(597 4 #reduceActionForpointer_element_access1: 53164033 false ) 
	#(231 4 #reduceActionForinterpolated_regular_string2: 10730498 false ) 
	#(235 4 #reduceActionForinterpolated_regular_string2: 11318274 false ) 
	#(241 4 #reduceActionFormember_access1: 12039170 false ) 
	#(357 3 #reduceActionForlocal_variable_declarators2: 26733570 false ) 
	#(360 1 #liftFirstValue: 27255809 false ) 
	#(358 3 #reduceActionForlocal_variable_declarator2: 26882050 false ) 
	#(360 1 #liftFirstValue: 27255810 false ) 
	#(360 1 #liftFirstValue: 27255811 false ) 
	#(311 3 #reduceActionForlocal_variable_declarators2: 22708226 false ) 
	#(312 3 #reduceActionForexplicit_anonymous_function_paramenter1: 22916097 false ) 
	#(317 3 #reduceActionForlocal_variable_declarators2: 23484418 false ) 
	#(334 1 #reduceActionForordering_direction1: 24930305 false ) 
	#(334 1 #reduceActionForordering_direction2: 24930306 false ) 
	#(332 2 #reduceActionForordering1: 24819713 false ) 
	#(333 1 #reduceActionFor_extern_alias_directives2: 24880130 false ) 
	#(336 2 #reduceActionForattribute_target_specifier1: 25044993 false ) 
	#(322 3 #reduceActionForquery_body1: 23914497 false ) 
	#(338 1 #reduceActionFor_extern_alias_directives2: 25193474 false ) 
	#(450 3 #reduceActionFormethod_body2: 36343810 false ) 
	#(507 3 #reduceActionForstatic_constructor_modifiers7: 42438663 false ) 
	#(507 3 #reduceActionForstatic_constructor_modifiers7: 42438664 false ) 
	#(441 1 #reduceActionForvariable_declarator1: 35469313 false ) 
	#(440 1 #reduceActionForinterpolated_regular_string1: 35345409 false ) 
	#(449 1 #reduceActionForargument_value1: 36249601 false ) 
	#(482 4 #reduceActionForindexer_declaration1: 39570433 false ) 
	#(497 1 #reduceActionFormethod_body3: 41432067 false ) 
	#(497 1 #reduceActionFormethod_body1: 41432065 false ) 
	#(488 4 #reduceActionForoperator_declaration1: 40235009 false ) 
	#(451 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 36435969 false ) 
	#(505 1 #reduceActionForordering_direction2: 42227714 false ) 
	#(505 1 #reduceActionForordering_direction1: 42227713 false ) 
	#(498 4 #reduceActionForconstructor_declaration1: 41556993 false ) 
	#(507 3 #reduceActionForstatic_constructor_modifiers5: 42438661 false ) 
	#(507 3 #reduceActionForstatic_constructor_modifiers3: 42438659 false ) 
	#(507 3 #reduceActionForstatic_constructor_modifiers6: 42438662 false ) 
	#(507 3 #reduceActionForstatic_constructor_modifiers3: 42438660 false ) 
	#(186 4 #reduceActionForusing_static_directive1: 6963201 false ) 
	#(563 2 #reduceActionForattribute_target_specifier1: 49192961 false ) 
	#(188 2 #reduceActionForextern_alias_directives2: 7114754 false ) 
	#(568 5 #reduceActionForattribute_section2: 49513474 false ) 
	#(572 3 #reduceActionForlocal_variable_declarators2: 49988610 false ) 
	#(582 1 #liftFirstValue: 50981889 false ) 
	#(577 1 #reduceActionFor_extern_alias_directives2: 50499586 false ) 
	#(578 1 #reduceActionForinterpolated_regular_string1: 50561025 false ) 
	#(580 1 #reduceActionForinterpolated_regular_string1: 50754561 false ) 
	#(579 1 #liftFirstValue: 50697217 false ) 
	#(411 0 #nil 31908865 false ) 
	#(527 0 #nil 44789761 false ) 
	#(546 1 #reduceActionFor_extern_alias_directives2: 47297538 false ) 
	#(247 3 #reduceActionForlocal_variable_declarators2: 13274114 false ) 
	#(363 3 #reduceActionForconst_declarator1: 27512833 false ) 
	#(362 3 #reduceActionForlocal_variable_declarators2: 27400194 false ) 
	#(382 1 #liftFirstValue: 29407233 false ) 
	#(381 1 #liftFirstValue: 29356034 false ) 
	#(385 3 #reduceActionForlocal_variable_declarators2: 29560834 false ) 
	#(367 5 #reduceActionForif_statement1: 28007425 false ) 
	#(403 5 #reduceActionForlock_statement1: 31057921 false ) 
	#(270 3 #reduceActionFormember_declarator5: 15800325 false ) 
	#(267 4 #reduceActionForanonymous_object_initializer2: 15492098 false ) 
	#(269 3 #reduceActionForlocal_variable_declarators2: 15676418 false ) 
	#(253 0 #nil 13908993 false ) 
	#(255 3 #reduceActionForobject_initializer1: 14072833 false ) 
	#(261 3 #reduceActionForcollection_initializer1: 14622721 false ) 
	#(520 3 #reduceActionForarray_initializer1: 43888641 false ) 
	#(211 0 #reduceActionFor_extern_alias_directives1: 8869889 false ) 
	#(265 5 #reduceActionFordelegate_creation_expression1: 15305729 false ) 
	#(370 0 #reduceActionFor_extern_alias_directives1: 28385281 false ) 
	#(368 5 #reduceActionForswitch_statement1: 28247041 false ) 
	#(589 0 #nil 51587073 false ) 
	#(398 1 #liftFirstValue: 30771202 false ) 
	#(276 1 #reduceActionForextern_alias_directives1: 16521217 false ) 
	#(275 1 #reduceActionFor_extern_alias_directives2: 16495618 false ) 
	#(404 5 #reduceActionForusing_statement1: 31156225 false ) 
	#(376 5 #reduceActionForwhile_statement1: 28849153 false ) 
	#(218 3 #reduceActionForlocal_variable_declarators2: 9266178 false ) 
	#(222 3 #reduceActionForlocal_variable_declarators2: 9504770 false ) 
	#(227 1 #liftFirstValue: 9857025 false ) 
	#(226 2 #reduceActionForargument_value3: 9729027 false ) 
	#(220 1 #liftFirstValue: 9398273 false ) 
	#(226 2 #reduceActionForargument_value2: 9729026 false ) 
	#(286 4 #reduceActionFornull_conditional_operations5: 17799173 false ) 
	#(288 5 #reduceActionFornull_conditional_invocation_expression1: 18760705 false ) 
	#(286 4 #reduceActionFornull_conditional_operations3: 17799171 false ) 
	#(286 4 #reduceActionFornull_conditional_operations4: 17799172 false ) 
	#(233 3 #reduceActionForinterpolated_regular_string_body2: 11019266 false ) 
	#(234 3 #reduceActionForinterpolation2: 11199490 false ) 
	#(237 3 #reduceActionForinterpolated_regular_string_body2: 11638786 false ) 
	#(321 5 #reduceActionForfrom_clause1: 23839745 false ) 
	#(304 5 #reduceActionForconditional_expression2: 21891074 false ) 
	#(326 4 #reduceActionForlet_clause1: 24253441 false ) 
	#(331 3 #reduceActionFororderings2: 24767490 false ) 
	#(434 1 #reduceActionForinterpolated_regular_string1: 34778113 false ) 
	#(436 5 #reduceActionForfield_declaration1: 34984961 false ) 
	#(460 5 #reduceActionForproperty_declaration1: 37200897 false ) 
	#(470 0 #nil 38241281 false ) 
	#(468 0 #nil 38089729 false ) 
	#(472 0 #reduceActionFor_extern_alias_directives1: 38392833 false ) 
	#(493 1 #liftFirstValue: 40773635 false ) 
	#(495 1 #liftFirstValue: 41062412 false ) 
	#(495 1 #liftFirstValue: 41062405 false ) 
	#(495 1 #liftFirstValue: 41062406 false ) 
	#(495 1 #liftFirstValue: 41062403 false ) 
	#(495 1 #liftFirstValue: 41062401 false ) 
	#(493 1 #liftFirstValue: 40773633 false ) 
	#(493 1 #liftFirstValue: 40773637 false ) 
	#(493 1 #liftFirstValue: 40773634 false ) 
	#(495 1 #liftFirstValue: 41062402 false ) 
	#(493 1 #liftFirstValue: 40773638 false ) 
	#(495 1 #liftFirstValue: 41062404 false ) 
	#(495 1 #liftFirstValue: 41062414 false ) 
	#(495 1 #liftFirstValue: 41062409 false ) 
	#(495 1 #liftFirstValue: 41062416 false ) 
	#(495 1 #liftFirstValue: 41062411 false ) 
	#(495 1 #liftFirstValue: 41062415 false ) 
	#(495 1 #liftFirstValue: 41062408 false ) 
	#(493 1 #liftFirstValue: 40773640 false ) 
	#(493 1 #liftFirstValue: 40773639 false ) 
	#(495 1 #liftFirstValue: 41062407 false ) 
	#(493 1 #liftFirstValue: 40773636 false ) 
	#(495 1 #liftFirstValue: 41062413 false ) 
	#(495 1 #liftFirstValue: 41062410 false ) 
	#(451 1 #reduceActionFor_extern_alias_directives2: 36435970 false ) 
	#(452 1 #reduceActionFor_extern_alias_directives2: 36494337 false ) 
	#(453 1 #reduceActionForinterpolated_regular_string1: 36634625 false ) 
	#(452 1 #reduceActionForinterpolated_regular_string1: 36494339 false ) 
	#(457 0 #nil 36971521 false ) 
	#(184 5 #reduceActionForusing_alias_directive1: 6778881 false ) 
	#(562 4 #reduceActionForattribute_section1: 48941057 false ) 
	#(576 3 #reduceActionForanonymous_object_initializer1: 50259969 false ) 
	#(576 3 #reduceActionForanonymous_object_initializer1: 50259971 false ) 
	#(415 0 #reduceActionFor_class_base1: 32243713 false ) 
	#(411 1 #liftFirstValue: 31908866 false ) 
	#(513 0 #reduceActionFor_struct_interfaces1: 43175937 false ) 
	#(532 0 #reduceActionFor_struct_interfaces1: 45264897 false ) 
	#(527 1 #liftFirstValue: 44789762 false ) 
	#(547 2 #reduceActionForattribute_target_specifier1: 47328257 false ) 
	#(552 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 47752193 false ) 
	#(603 1 #reduceActionForordering_direction2: 53842946 false ) 
	#(602 3 #reduceActionForfixed_pointer_declarator1: 53762049 false ) 
	#(600 6 #reduceActionForfixed_statement1: 53494785 false ) 
	#(601 3 #reduceActionForlocal_variable_declarators2: 53617666 false ) 
	#(383 0 #nil 29447169 false ) 
	#(281 4 #reduceActionFornamed_entity2: 16859138 false ) 
	#(252 6 #reduceActionForobject_creation_expression1: 13704193 false ) 
	#(253 1 #liftFirstValue: 13908994 false ) 
	#(259 3 #reduceActionForinitializer_target2: 14472194 false ) 
	#(263 3 #reduceActionForelement_initializer2: 14889986 false ) 
	#(255 4 #reduceActionForobject_initializer2: 14072834 false ) 
	#(257 3 #reduceActionForlocal_variable_declarators2: 14261250 false ) 
	#(260 1 #liftFirstValue: 14550018 false ) 
	#(258 3 #reduceActionFormember_initializer1: 14391297 false ) 
	#(260 1 #liftFirstValue: 14550017 false ) 
	#(261 4 #reduceActionForcollection_initializer2: 14622722 false ) 
	#(262 3 #reduceActionForlocal_variable_declarators2: 14755842 false ) 
	#(520 4 #reduceActionForarray_initializer2: 43888642 false ) 
	#(522 3 #reduceActionForlocal_variable_declarators2: 44083202 false ) 
	#(519 0 #nil 43841537 false ) 
	#(211 1 #reduceActionFor_extern_alias_directives2: 8869890 false ) 
	#(370 1 #reduceActionFor_extern_alias_directives2: 28385282 false ) 
	#(371 1 #reduceActionForextern_alias_directives1: 28428289 false ) 
	#(373 1 #reduceActionForextern_alias_directives1: 28577793 false ) 
	#(589 1 #liftFirstValue: 51587074 false ) 
	#(395 4 #reduceActionForcatch_clause1: 30573569 false ) 
	#(272 4 #reduceActionForunbound_type_name2: 16158722 false ) 
	#(274 3 #reduceActionForgeneric_dimension_specifier1: 16443393 false ) 
	#(276 2 #reduceActionForextern_alias_directives2: 16521218 false ) 
	#(272 4 #reduceActionForunbound_type_name3: 16158723 false ) 
	#(227 2 #reduceActionForout_expression2: 9857026 false ) 
	#(286 5 #reduceActionFornull_conditional_operations1: 17799169 false ) 
	#(286 5 #reduceActionFornull_conditional_operations2: 17799170 false ) 
	#(337 4 #reduceActionForlet_clause1: 25099265 false ) 
	#(339 3 #reduceActionForquery_continuation1: 25243649 false ) 
	#(430 6 #reduceActionForconstant_declaration1: 34428929 false ) 
	#(441 3 #reduceActionForvariable_declarator2: 35469314 false ) 
	#(440 3 #reduceActionForlocal_variable_declarators2: 35345410 false ) 
	#(449 3 #reduceActionFormember_name2: 36249602 false ) 
	#(475 6 #reduceActionForevent_declaration1: 38680577 false ) 
	#(487 3 #reduceActionForindexer_body2: 40138754 false ) 
	#(487 3 #reduceActionForindexer_body1: 40138753 false ) 
	#(467 2 #reduceActionForattribute_target_specifier1: 37896193 false ) 
	#(470 1 #liftFirstValue: 38241282 false ) 
	#(467 2 #reduceActionForaccessor_declarations2: 37896194 false ) 
	#(468 1 #liftFirstValue: 38089730 false ) 
	#(473 1 #reduceActionForextern_alias_directives1: 38441986 false ) 
	#(473 1 #reduceActionForextern_alias_directives1: 38441987 false ) 
	#(473 1 #reduceActionForextern_alias_directives1: 38441985 false ) 
	#(472 1 #reduceActionFor_extern_alias_directives2: 38392834 false ) 
	#(497 3 #reduceActionFormethod_body2: 41432066 false ) 
	#(503 0 #nil 42039297 false ) 
	#(458 1 #liftFirstValue: 37031938 false ) 
	#(458 1 #liftFirstValue: 37031937 false ) 
	#(458 1 #liftFirstValue: 37031939 false ) 
	#(457 1 #liftFirstValue: 36971522 false ) 
	#(508 1 #reduceActionForordering_direction2: 42512386 false ) 
	#(508 1 #reduceActionForordering_direction1: 42512385 false ) 
	#(506 6 #reduceActionForstatic_constructor_declaration1: 42272769 false ) 
	#(562 5 #reduceActionForattribute_section2: 48941058 false ) 
	#(581 3 #reduceActionFornamed_argument1: 50870273 false ) 
	#(578 3 #reduceActionForlocal_variable_declarators2: 50561026 false ) 
	#(580 3 #reduceActionForlocal_variable_declarators2: 50754562 false ) 
	#(177 5 #reduceActionFornamespace_body1: 6157313 false ) 
	#(418 0 #reduceActionFor_extern_alias_directives1: 32523265 false ) 
	#(415 1 #reduceActionFor_extern_alias_directives2: 32243714 false ) 
	#(513 1 #reduceActionFor_extern_alias_directives2: 43175938 false ) 
	#(530 0 #nil 45159425 false ) 
	#(532 1 #reduceActionFor_extern_alias_directives2: 45264898 false ) 
	#(552 1 #reduceActionFor_extern_alias_directives2: 47752194 false ) 
	#(553 1 #reduceActionForinterpolated_regular_string1: 47813633 false ) 
	#(545 7 #reduceActionForenum_declaration1: 47168513 false ) 
	#(377 7 #reduceActionFordo_statement1: 28957697 false ) 
	#(603 2 #reduceActionForattribute_target_specifier1: 53842945 false ) 
	#(383 1 #liftFirstValue: 29447170 false ) 
	#(384 1 #reduceActionForfor_initializer2: 29496321 false ) 
	#(367 7 #reduceActionForif_statement2: 28007426 false ) 
	#(287 5 #reduceActionFornull_conditional_member_access2: 18438146 false ) 
	#(264 7 #reduceActionForarray_creation_expression1: 15003649 false ) 
	#(519 1 #liftFirstValue: 43841538 false ) 
	#(374 2 #reduceActionForswitch_label2: 28658690 false ) 
	#(369 3 #reduceActionForgeneric_dimension_specifier1: 28331009 false ) 
	#(371 2 #reduceActionForextern_alias_directives2: 28428290 false ) 
	#(372 2 #reduceActionForswitch_section1: 28521473 false ) 
	#(373 2 #reduceActionForextern_alias_directives2: 28577794 false ) 
	#(397 4 #reduceActionForlet_clause1: 30711809 false ) 
	#(435 3 #reduceActionForconstant_declarator1: 34902017 false ) 
	#(434 3 #reduceActionForlocal_variable_declarators2: 34778114 false ) 
	#(464 3 #reduceActionForproperty_body2: 37626882 false ) 
	#(465 0 #reduceActionFor_property_initializer1: 37758977 false ) 
	#(486 5 #reduceActionForindexer_declarator1: 39968769 false ) 
	#(473 2 #reduceActionForaccessor_modifiers5: 38441989 false ) 
	#(473 2 #reduceActionForaccessor_modifiers5: 38441988 false ) 
	#(502 5 #reduceActionForconstructor_declarator1: 41937921 false ) 
	#(503 1 #liftFirstValue: 42039298 false ) 
	#(453 3 #reduceActionForlocal_variable_declarators2: 36634626 false ) 
	#(452 3 #reduceActionForlocal_variable_declarators2: 36494338 false ) 
	#(576 5 #reduceActionForattribute_arguments2: 50259970 false ) 
	#(412 3 #reduceActionFortype_parameter_list1: 31978497 false ) 
	#(413 2 #reduceActionFortype_parameters1: 32061441 false ) 
	#(416 2 #reduceActionForclass_base1: 32277505 false ) 
	#(417 1 #reduceActionForinterpolated_regular_string1: 32405505 false ) 
	#(416 2 #reduceActionForclass_base2: 32277506 false ) 
	#(418 1 #reduceActionFor_extern_alias_directives2: 32523266 false ) 
	#(419 1 #reduceActionForextern_alias_directives1: 32606209 false ) 
	#(514 2 #reduceActionForstruct_interfaces1: 43223041 false ) 
	#(528 3 #reduceActionForvariant_type_parameter_list1: 44874753 false ) 
	#(531 1 #liftFirstValue: 45223937 false ) 
	#(531 1 #liftFirstValue: 45223938 false ) 
	#(530 1 #liftFirstValue: 45159426 false ) 
	#(533 2 #reduceActionForstruct_interfaces1: 45306881 false ) 
	#(548 3 #reduceActionForanonymous_object_initializer1: 47375361 false ) 
	#(554 2 #reduceActionForenum_member_declaration1: 47964161 false ) 
	#(386 8 #reduceActionForforeach_statement1: 29697025 false ) 
	#(287 6 #reduceActionFornull_conditional_member_access1: 18438145 false ) 
	#(374 3 #reduceActionForswitch_label1: 28658689 false ) 
	#(399 4 #reduceActionForexception_filter1: 30825473 false ) 
	#(611 5 #reduceActionForstackalloc_initializer1: 54828033 false ) 
	#(464 4 #reduceActionForproperty_body1: 37626881 false ) 
	#(465 1 #reduceActionFor_extern_alias_directives2: 37758978 false ) 
	#(475 8 #reduceActionForevent_declaration2: 38680578 false ) 
	#(479 2 #reduceActionForattribute_target_specifier1: 39202817 false ) 
	#(479 2 #reduceActionForaccessor_declarations2: 39202818 false ) 
	#(474 1 #reduceActionForordering_direction2: 38639618 false ) 
	#(474 1 #reduceActionForordering_direction1: 38639617 false ) 
	#(469 4 #reduceActionForget_accessor_declaration1: 38151169 false ) 
	#(471 4 #reduceActionForset_accessor_declaration1: 38302721 false ) 
	#(459 4 #reduceActionForparameter_array1: 37084161 false ) 
	#(455 0 #reduceActionFor_attribute_target_specifier1: 36874241 false ) 
	#(590 8 #reduceActionFordestructor_declaration1: 52009985 false ) 
	#(590 8 #reduceActionFordestructor_declaration1: 52009986 false ) 
	#(427 0 #reduceActionFor_extern_alias_directives1: 33921025 false ) 
	#(419 2 #reduceActionForextern_alias_directives2: 32606210 false ) 
	#(516 0 #reduceActionFor_extern_alias_directives1: 43336705 false ) 
	#(529 3 #reduceActionForvariant_type_parameters1: 44974081 false ) 
	#(535 0 #reduceActionFor_extern_alias_directives1: 45457409 false ) 
	#(548 4 #reduceActionForanonymous_object_initializer2: 47375362 false ) 
	#(553 3 #reduceActionForlocal_variable_declarators2: 47813634 false ) 
	#(378 9 #reduceActionForfor_statement1: 29072385 false ) 
	#(480 3 #reduceActionForadd_accessor_declaration1: 39425025 false ) 
	#(481 3 #reduceActionForremove_accessor_declaration1: 39494657 false ) 
	#(486 7 #reduceActionForindexer_declarator2: 39968770 false ) 
	#(496 7 #reduceActionForconversion_operator_declarator2: 41219074 false ) 
	#(496 7 #reduceActionForconversion_operator_declarator1: 41219073 false ) 
	#(492 7 #reduceActionForunary_operator_declarator1: 40626177 false ) 
	#(454 5 #reduceActionForfixed_parameter1: 36748289 false ) 
	#(455 1 #reduceActionFor_extern_alias_directives2: 36874242 false ) 
	#(413 4 #reduceActionFortype_parameters2: 32061442 false ) 
	#(416 4 #reduceActionForclass_base3: 32277507 false ) 
	#(417 3 #reduceActionForlocal_variable_declarators2: 32405506 false ) 
	#(427 1 #reduceActionFor_extern_alias_directives2: 33921026 false ) 
	#(428 1 #reduceActionForextern_alias_directives1: 33985537 false ) 
	#(407 10 #reduceActionForclass_declaration1: 31457281 false ) 
	#(518 1 #liftFirstValue: 43549706 false ) 
	#(518 1 #liftFirstValue: 43549697 false ) 
	#(518 1 #liftFirstValue: 43549698 false ) 
	#(518 1 #liftFirstValue: 43549699 false ) 
	#(518 1 #liftFirstValue: 43549700 false ) 
	#(518 1 #liftFirstValue: 43549701 false ) 
	#(518 1 #liftFirstValue: 43549702 false ) 
	#(518 1 #liftFirstValue: 43549703 false ) 
	#(518 1 #liftFirstValue: 43549704 false ) 
	#(518 1 #liftFirstValue: 43549705 false ) 
	#(516 1 #reduceActionFor_extern_alias_directives2: 43336706 false ) 
	#(517 1 #reduceActionForextern_alias_directives1: 43403265 false ) 
	#(605 0 #reduceActionFor_extern_alias_directives1: 54158337 false ) 
	#(518 1 #liftFirstValue: 43549707 false ) 
	#(509 10 #reduceActionForstruct_declaration1: 42752001 false ) 
	#(537 1 #liftFirstValue: 45687810 false ) 
	#(537 1 #liftFirstValue: 45687812 false ) 
	#(535 1 #reduceActionFor_extern_alias_directives2: 45457410 false ) 
	#(536 1 #reduceActionForextern_alias_directives1: 45529089 false ) 
	#(537 1 #liftFirstValue: 45687809 false ) 
	#(537 1 #liftFirstValue: 45687811 false ) 
	#(586 0 #nil 51484673 false ) 
	#(523 10 #reduceActionForinterface_declaration1: 44303361 false ) 
	#(554 4 #reduceActionForenum_member_declaration2: 47964162 false ) 
	#(328 9 #reduceActionForjoin_clause1: 24379393 false ) 
	#(444 10 #reduceActionFormethod_header1: 35709953 false ) 
	#(466 3 #reduceActionForproperty_initializer1: 37812225 false ) 
	#(456 2 #reduceActionForattribute_target_specifier1: 36919297 false ) 
	#(422 1 #reduceActionForprimary_constraint2: 33373186 false ) 
	#(422 1 #reduceActionForprimary_constraint3: 33373187 false ) 
	#(422 1 #reduceActionForprimary_constraint1: 33373185 false ) 
	#(424 1 #reduceActionForprimary_constraint1: 33734657 false ) 
	#(423 1 #reduceActionForinterpolated_regular_string1: 33470466 false ) 
	#(420 4 #reduceActionFortype_parameter_constraints_clause1: 32795649 false ) 
	#(421 1 #reduceActionForinterpolated_regular_string1: 32930817 false ) 
	#(421 1 #reduceActionFor_extern_alias_directives2: 32930818 false ) 
	#(423 1 #reduceActionForinterpolated_regular_string1: 33470465 false ) 
	#(421 1 #reduceActionForinterpolated_regular_string1: 32930819 false ) 
	#(426 3 #reduceActionForgeneric_dimension_specifier1: 33858561 false ) 
	#(428 2 #reduceActionForextern_alias_directives2: 33985538 false ) 
	#(515 3 #reduceActionForgeneric_dimension_specifier1: 43272193 false ) 
	#(517 2 #reduceActionForextern_alias_directives2: 43403266 false ) 
	#(607 1 #liftFirstValue: 54371332 false ) 
	#(607 1 #liftFirstValue: 54371329 false ) 
	#(607 1 #liftFirstValue: 54371333 false ) 
	#(607 1 #liftFirstValue: 54371331 false ) 
	#(607 1 #liftFirstValue: 54371330 false ) 
	#(607 1 #liftFirstValue: 54371334 false ) 
	#(605 1 #reduceActionFor_extern_alias_directives2: 54158338 false ) 
	#(606 1 #reduceActionForextern_alias_directives1: 54226945 false ) 
	#(529 5 #reduceActionForvariant_type_parameters2: 44974082 false ) 
	#(534 3 #reduceActionForgeneric_dimension_specifier1: 45361153 false ) 
	#(536 2 #reduceActionForextern_alias_directives2: 45529090 false ) 
	#(586 1 #liftFirstValue: 51484674 false ) 
	#(555 11 #reduceActionFordelegate_declaration1: 48165889 false ) 
	#(504 5 #reduceActionForconstructor_initializer1: 42114049 false ) 
	#(504 5 #reduceActionForconstructor_initializer2: 42114050 false ) 
	#(606 2 #reduceActionForextern_alias_directives2: 54226946 false ) 
	#(329 11 #reduceActionForjoin_into_clause1: 24539137 false ) 
	#(494 10 #reduceActionForbinary_operator_declarator1: 40871937 false ) 
	#(425 3 #reduceActionForconstructor_constraint1: 33809409 false ) 
	#(421 3 #reduceActionFortype_parameter_constraints4: 32930820 false ) 
	#(421 3 #reduceActionFortype_parameter_constraints5: 32930821 false ) 
	#(423 3 #reduceActionForlocal_variable_declarators2: 33470468 false ) 
	#(423 3 #reduceActionForlocal_variable_declarators2: 33470467 false ) 
	#(421 3 #reduceActionForlocal_variable_declarators2: 32930822 false ) 
	#(608 1 #liftFirstValue: 54478849 false ) 
	#(609 1 #reduceActionForextern_alias_directives1: 54510593 false ) 
	#(421 5 #reduceActionFortype_parameter_constraints7: 32930823 false ) 
	#(604 6 #reduceActionForfixed_size_buffer_declaration1: 54003713 false ) 
	#(609 2 #reduceActionForextern_alias_directives2: 54510594 false ) 
	#(543 6 #reduceActionForinterface_event_declaration1: 46785537 false ) 
	#(610 4 #reduceActionForfixed_size_buffer_declarator1: 54667265 false ) 
	#(538 10 #reduceActionForinterface_method_declaration1: 45833217 false )
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
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"="' '"=="' '"=>"' '">="' '">>="' '"?"' '"??"' '"["' '"]"' '"^"' '"^="' '"abstract"' '"add"' '"alias"' '"as"' '"ascending"' '"assembly"' '"await"' '"base"' '"bool"' '"break"' '"by"' '"byte"' '"case"' '"catch"' '"char"' '"checked"' '"class"' '"const"' '"continue"' '"decimal"' '"default"' '"delegate"' '"descending"' '"do"' '"double"' '"else"' '"enum"' '"equals"' '"event"' '"explicit"' '"extern"' '"false"' '"field"' '"finally"' '"fixed"' '"float"' '"for"' '"foreach"' '"from"' '"get"' '"goto"' '"group"' '"if"' '"implicit"' '"in"' '"int"' '"interface"' '"internal"' '"into"' '"is"' '"join"' '"let"' '"lock"' '"long"' '"method"' '"module"' '"nameof"' '"namespace"' '"new"' '"object"' '"on"' '"operator"' '"orderby"' '"out"' '"override"' '"param"' '"params"' '"partial"' '"private"' '"property"' '"protected"' '"public"' '"readonly"' '"ref"' '"remove"' '"return"' '"sbyte"' '"sealed"' '"select"' '"set"' '"short"' '"sizeof"' '"stackalloc"' '"static"' '"string"' '"struct"' '"switch"' '"this"' '"throw"' '"true"' '"try"' '"type"' '"typeof"' '"uint"' '"ulong"' '"unchecked"' '"unsafe"' '"ushort"' '"using"' '"var"' '"virtual"' '"void"' '"volatile"' '"when"' '"where"' '"while"' '"yield"' '"{"' '"|"' '"|="' '"||"' '"~"' '<gt>' '<gtgt>' '<rightBrace>' '<comment>' '<Identifier>' '<IntegerLiteral>' '<RealLiteral>' '<CharacterLiteral>' '<InterpolatedRegularStringWhole>' '<InterpolatedRegularStringStart>' '<InterpolatedRegularStringEnd>' '<InterpolatedRegularStringMid>' '<InterpolatedVerbatimStringLiteral>' '<InterpolatedVerbatimStringStart>' '<InterpolatedVerbatimStringEnd>' '<InterpolatedVerbatimStringMid>' '<StringLiteral>' '<NullLiteral>' '<whitespace>' '<patternToken>' 'B e g i n' 'compilation_unit' 'namespace_declaration' 'qualified_identifier' 'namespace_body' '_extern_alias_directives' 'extern_alias_directives' 'extern_alias_directive' '_using_directives' 'using_directives' 'using_directive' 'using_alias_directive' 'using_namespace_directive' 'using_static_directive' '_namespace_member_declarations' 'namespace_member_declarations' 'namespace_member_declaration' 'type_declaration' 'qualified_alias_member' 'namespace_name' 'type_name' 'namespace_or_type_name' '_type' 'type' 'value_type' 'struct_type' 'simple_type' 'numeric_type' 'integral_type' 'floating_point_type' 'nullable_type' 'non_nullable_value_type' 'enum_type' 'reference_type' 'class_type' 'interface_type' 'array_type' 'non_array_type' '_rank_specifiers' 'rank_specifiers' 'rank_specifier' '_dim_separators' 'dim_separators' 'delegate_type' 'type_argument_list' 'type_arguments' 'type_argument' 'variable_reference' '_argument_list' 'argument_list' 'argument' '_argument_name' 'argument_name' 'argument_value' 'out_expression' 'primary_expression' 'primary_no_array_creation_expression' 'interpolated_string_expression' 'interpolated_regular_string' 'StartInterpolatedString' 'interpolated_regular_string_body' 'interpolation' 'interpolated_verbatim_string' 'StartInterpolatedVerbatimString' 'interpolated_verbatim_string_body' 'simple_name' '_type_argument_list' 'parenthesized_expression' 'member_access' 'qualified_alias_member_expression' 'predefined_type_expression' 'predefined_type' 'invocation_expression' 'element_access' 'expression_list' 'this_access' 'base_access' 'post_increment_expression' 'post_decrement_expression' 'object_creation_expression' '_object_or_collection_initializer' 'object_or_collection_initializer' 'object_initializer' '_member_initializer_list' 'member_initializer_list' 'member_initializer' 'initializer_target' 'initializer_value' 'collection_initializer' 'element_initializer_list' 'element_initializer' 'array_creation_expression' 'delegate_creation_expression' 'anonymous_object_creation_expression' 'anonymous_object_initializer' '_member_declarator_list' 'member_declarator_list' 'member_declarator' 'typeof_expression' 'unbound_type_name' '_generic_dimension_specifier' 'generic_dimension_specifier' '_commas' 'commas' 'checked_expression' 'unchecked_expression' 'default_value_expression' 'nameof_expression' 'named_entity' 'named_entity_target' 'unary_expression' 'null_conditional_expression' '_null_conditional_operations' 'null_conditional_operations' 'null_conditional_member_access' 'null_conditional_invocation_expression' 'pre_increment_expression' 'pre_decrement_expression' 'cast_expression' 'await_expression' 'multiplicative_expression' 'additive_expression' 'shift_expression' 'relational_expression' 'equality_expression' 'and_expression' 'exclusive_or_expression' 'inclusive_or_expression' 'conditional_and_expression' 'conditional_or_expression' 'null_coalescing_expression' 'conditional_expression' 'lambda_expression' 'anonymous_method_expression' 'anonymous_function_signature' '_explicit_anonymous_function_signature' 'explicit_anonymous_function_signature' '_explicit_anonymous_function_paramenter_list' 'explicit_anonymous_function_paramenter_list' 'explicit_anonymous_function_paramenter' '_anonymous_function_parameter_modifier' 'anonymous_function_parameter_modifier' 'implicit_anonymous_function_signature' '_implicit_anonymous_function_parameter_list' 'implicit_anonymous_function_parameter_list' 'implicit_anonymous_function_parameter' 'anonymous_function_body' 'query_expression' 'from_clause' 'query_body' '_query_body_clauses' 'query_body_clauses' 'query_body_clause' 'let_clause' 'where_clause' 'join_clause' 'join_into_clause' 'orderby_clause' 'orderings' 'ordering' '_ordering_direction' 'ordering_direction' 'select_or_group_clause' 'select_clause' 'group_clause' '_query_continuation' 'query_continuation' 'assignment' 'assignment_operator' '_expression' 'expression' 'non_assignment_expression' 'constant_expression' 'boolean_expression' 'statement' 'embedded_statement' 'block' '_statement_list' 'statement_list' 'empty_statement' 'labeled_statement' 'declaration_statement' 'local_variable_declaration' 'local_variable_type' 'local_variable_declarators' 'local_variable_declarator' '_local_variable_declarator_name' 'local_variable_initializer' 'local_constant_declaration' 'const_declarators' 'const_declarator' 'expression_statement' 'statement_expression' 'selection_statement' 'if_statement' 'switch_statement' 'switch_block' '_switch_sections' 'switch_sections' 'switch_section' 'switch_labels' 'switch_label' 'iteration_statement' 'while_statement' 'do_statement' 'for_statement' '_for_initializer' 'for_initializer' '_for_condition' 'for_condition' '_for_iterator' 'for_iterator' 'statement_expression_list' 'foreach_statement' 'jump_statement' 'break_statement' 'continue_statement' 'goto_statement' 'return_statement' 'throw_statement' 'try_statement' 'catch_clauses' 'catch_clause' '_exception_specifier' 'exception_specifier' '_exception_filter' 'exception_filter' 'finally_clause' 'checked_statement' 'unchecked_statement' 'lock_statement' 'using_statement' 'resource_acquisition' 'yield_statement' 'class_declaration' '_class_modifiers' 'class_modifiers' 'class_modifier' '_type_parameter_list' 'type_parameter_list' 'type_parameters' 'type_parameter' '_class_base' 'class_base' 'interface_type_list' '_type_parameter_constraints_clauses' 'type_parameter_constraints_clauses' 'type_parameter_constraints_clause' 'type_parameter_constraints' 'primary_constraint' 'secondary_constraints' 'interface_type_constraint' 'constructor_constraint' 'class_body' '_class_member_declarations' 'class_member_declarations' 'class_member_declaration' 'constant_declaration' '_constant_modifiers' 'constant_modifers' 'constant_modifer' 'constant_declarators' 'constant_declarator' 'field_declaration' '_field_modifiers' 'field_modifiers' 'field_modifier' 'variable_declarators' 'variable_declarator' 'variable_initializer' 'method_declaration' 'method_header' '_method_modifiers' 'method_modifiers' 'method_modifier' 'return_type' 'member_name' 'method_body' '_formal_parameters_list' 'formal_parameters_list' 'fixed_parameters' 'fixed_parameter' '_default_argument' 'default_argument' '_parameter_modifier' 'parameter_modifier' 'parameter_array' 'property_declaration' '_property_modifiers' 'property_modifiers' 'property_modifier' 'property_body' '_property_initializer' 'property_initializer' 'accessor_declarations' '_get_accessor_declaration' 'get_accessor_declaration' '_set_accessor_declaration' 'set_accessor_declaration' '_accessor_modifiers' 'accessor_modifiers' 'accessor_body' 'event_declaration' '_event_modifiers' 'event_modifiers' 'event_modifier' 'event_accessor_declarations' 'add_accessor_declaration' 'remove_accessor_declaration' 'indexer_declaration' '_indexer_modifiers' 'indexer_modifiers' 'indexer_modifier' 'indexer_declarator' 'indexer_body' 'operator_declaration' 'operator_modifiers' 'operator_modifier' 'operator_declarator' 'unary_operator_declarator' 'overloadable_unary_operator' 'binary_operator_declarator' 'overloadable_binary_operator' 'conversion_operator_declarator' 'operator_body' 'constructor_declaration' '_constructor_modifiers' 'constructor_modifiers' 'constructor_modifier' 'constructor_declarator' '_constructor_initializer' 'constructor_initializer' 'constructor_body' 'static_constructor_declaration' 'static_constructor_modifiers' 'static_constructor_body' 'struct_declaration' '_struct_modifiers' 'struct_modifiers' 'struct_modifier' '_struct_interfaces' 'struct_interfaces' 'struct_body' '_struct_member_declarations' 'struct_member_declarations' 'struct_member_declaration' '_array_initializer' 'array_initializer' '_variable_initializer_list' 'variable_initializer_list' 'interface_declaration' '_interface_modifiers' 'interface_modifiers' 'interface_modifier' '_variant_type_parameter_list' 'variant_type_parameter_list' 'variant_type_parameters' '_variance_annotation' 'variance_annotation' '_interface_base' 'interface_base' 'interface_body' '_interface_member_declarations' 'interface_member_declarations' 'interface_member_declaration' 'interface_method_declaration' 'interface_property_declaration' 'interface_accessors' 'interface_get_accessor' 'interface_set_accessor' 'interface_event_declaration' 'interface_indexer_declaration' 'enum_declaration' '_enum_base' 'enum_base' 'enum_body' '_enum_modifers' 'enum_modifers' 'enum_modifer' '_enum_member_declarations' 'enum_member_declarations' 'enum_member_declaration' 'delegate_declaration' '_delegate_modifiers' 'delegate_modifiers' 'delegate_modifier' '_global_attributes' 'global_attributes' 'global_attribute_sections' 'global_attribute_section' 'global_attribute_target_specifier' 'global_attribute_target' '_attributes' 'attributes' 'attribute_sections' 'attribute_section' '_attribute_target_specifier' 'attribute_target_specifier' 'attribute_target' 'attribute_list' 'attribute' 'attribute_name' '_attribute_arguments' 'attribute_arguments' '_positional_argument_list' 'positional_argument_list' 'positional_argument' 'named_argument_list' 'named_argument' 'attribute_argument_expression' 'literal' 'boolean_literal' '_semicolon' '_new' '_partial' '_extern' '_identifier' 'destructor_declaration' '_unsafe' 'unsafe_statement' 'pointer_type' 'unmanaged_type' 'pointer_indirection_expression' 'pointer_member_access' 'pointer_element_access' 'addressof_expression' 'sizeof_expression' 'fixed_statement' 'fixed_pointer_declarators' 'fixed_pointer_declarator' 'fixed_pointer_initializer' 'fixed_size_buffer_declaration' '_fixed_size_buffer_modifiers' 'fixed_size_buffer_modifiers' 'fixed_size_buffer_modifier' 'buffer_element_type' 'fixed_size_buffer_declarators' 'fixed_size_buffer_declarator' 'stackalloc_initializer' 'void_type' 'E O F' 'error')
]

{ #category : #generated }
CSharpParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CSCompilationUnitNode #CSCompilationUnitNode #CSNamespaceDeclarationNode #CSQualifiedIdentifierNode #OrderedCollection #OrderedCollection #OrderedCollection #CSExternAliasDirectiveNode #OrderedCollection #OrderedCollection #CSUsingDirectiveNode #CSUsingAliasDirectiveNode #CSUsingNamespaceDirectiveNode #CSUsingStaticDirectiveNode #OrderedCollection #OrderedCollection #CSDeclarationNode #CSDeclarationNode #CSQualifiedAliasMemberNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSSimpleTypeNode #SmaCCToken #SmaCCToken #SmaCCToken #CSNullableTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSArrayTypeNode #CSTypeNode #OrderedCollection #OrderedCollection #CSRankSpecifierNode #OrderedCollection #OrderedCollection #CSTypeNode #CSTypeArgumentListNode #OrderedCollection #CSTypeNode #CSExpressionNode #OrderedCollection #OrderedCollection #CSArgumentNode #OrderedCollection #OrderedCollection #OrderedCollection #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSInterpolatedStringExpressionNode #OrderedCollection #ByteSymbol #OrderedCollection #CSInterpolationNode #OrderedCollection #ByteSymbol #OrderedCollection #CSSimpleNameNode #CSTypeArgumentListNode #CSExpressionNode #CSMemberAccessNode #CSTypeExpressionNode #CSTypeExpressionNode #CSSimpleTypeNode #CSInvocationExpressionNode #CSElementAccessNode #OrderedCollection #CSThisAccessNode #CSBaseAccessNode #CSPostExpressionNode #CSPostExpressionNode #CSObjectCreationExpressionNode #CSProgramNode #CSProgramNode #CSObjectInitializerNode #OrderedCollection #OrderedCollection #CSMemberInitializerNode #OrderedCollection #CSProgramNode #CSCollectionInitializerNode #OrderedCollection #CSElementInitializerNode #CSArrayCreationExpressionNode #CSDelegateCreationExpressionNode #CSAnonymousObjectCreationExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #CSMemberDeclaratorNode #CSTypeofExpressionNode #CSUnboundTypeNameNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSCheckedExpressionNode #CSUncheckedExpressionNode #CSDefaultValueExpressionNode #CSNameofExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSNullConditionalExpressionNode #CSExpressionNode #CSExpressionNode #CSNullConditionalMemberAccessNode #CSNullConditionalInvocationExpressionNode #CSPrefixExpressionNode #CSPrefixExpressionNode #CSCastExpressionNode #CSAwaitExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSLambdaExpressionNode #CSAnonymousMethodExpressionNode #CSProgramNode #CSExplicitAnonymousFunctionSignatureNode #CSExplicitAnonymousFunctionSignatureNode #OrderedCollection #OrderedCollection #CSAnonymousFunctionParameterNode #SmaCCToken #SmaCCToken #CSImplicitAnonymousFunctionSignatureNode #OrderedCollection #OrderedCollection #SmaCCToken #CSProgramNode #CSQueryExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSAssignmentNode #SmaCCToken #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSStatementNode #CSStatementNode #CSBlockStatementNode #OrderedCollection #OrderedCollection #CSEmptyStatementNode #CSLabeledStatementNode #CSDeclarationStatementNode #CSLocalVariableDeclarationNode #CSTypeNode #OrderedCollection #CSLocalVariableDeclaratorNode #CSSimpleNameNode #CSProgramNode #CSLocalConstantDeclarationNode #OrderedCollection #CSConstDeclaratorNode #CSExpressionStatementNode #CSExpressionNode #CSStatementNode #CSIfStatementNode #CSSwitchStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #CSSwitchSectionNode #OrderedCollection #CSSwitchLabelNode #CSStatementNode #CSWhileStatementNode #CSDoStatementNode #CSForStatementNode #CSProgramNode #CSProgramNode #CSExpressionNode #CSExpressionNode #CSStatementListNode #CSStatementListNode #OrderedCollection #CSForeachStatementNode #CSStatementNode #CSBreakStatementNode #CSContinueStatementNode #CSGotoStatementNode #CSReturnStatementNode #CSThrowStatementNode #CSTryStatementNode #OrderedCollection #CSCatchClauseNode #OrderedCollection #OrderedCollection #CSExceptionFilterNode #CSExceptionFilterNode #CSFinallyClauseNode #CSCheckedStatementNode #CSUncheckedStatementNode #CSLockStatementNode #CSUsingStatementNode #CSProgramNode #CSYieldStatementNode #CSClassDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #CSTypeParameterListNode #CSTypeParameterListNode #OrderedCollection #CSTypeNameNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSTypeParameterConstraintsClauseNode #OrderedCollection #CSProgramNode #OrderedCollection #CSTypeConstraintNode #CSConstructorConstraintNode #OrderedCollection #OrderedCollection #OrderedCollection #CSDeclarationNode #CSConstantDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSConstantDeclaratorNode #CSFieldDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSVariableDeclaratorNode #CSProgramNode #CSMethodDeclarationNode #CSMethodHeaderNode #OrderedCollection #OrderedCollection #SmaCCToken #CSTypeNode #OrderedCollection #CSMethodBodyNode #OrderedCollection #OrderedCollection #OrderedCollection #CSFixedParameterNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #CSArrayParameterNode #CSPropertyDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSGetAccessorDeclarationNode #CSGetAccessorDeclarationNode #CSSetAccessorDeclarationNode #CSSetAccessorDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #CSEventDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSAddAccessorDeclarationNode #CSRemoveAccessorDeclarationNode #CSIndexerDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #CSOperatorDeclarationNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #SmaCCToken #OrderedCollection #CSMethodBodyNode #CSConstructorDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSConstructorInitializerNode #CSConstructorInitializerNode #OrderedCollection #CSStaticConstructorDeclarationNode #OrderedCollection #OrderedCollection #CSStructDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSDeclarationNode #CSArrayInitializerNode #CSArrayInitializerNode #OrderedCollection #OrderedCollection #CSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #CSVariantTypeParameterListNode #CSVariantTypeParameterListNode #OrderedCollection #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSDeclarationNode #CSInterfaceMethodDeclarationNode #CSInterfacePropertyDeclarationNode #OrderedCollection #CSInterfacePropertyAccessorNode #CSInterfacePropertyAccessorNode #CSInterfaceEventDeclarationNode #CSInterfaceIndexerDeclarationNode #CSEnumDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #CSEnumDeclarationNode #CSDelegateDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #CSAttributeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #CSAttributeNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSAttributeValueNode #CSTypeNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSExpressionNode #OrderedCollection #CSNamedArgumentNode #CSExpressionNode #CSLiteralExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CSDestructorDeclarationNode #SmaCCToken #CSUnsafeStatementNode #CSPointerTypeNode #CSTypeNode #CSPrefixExpressionNode #CSPointerMemberAccessNode #CSPointerElementAccessNode #CSPrefixExpressionNode #CSSizeofExpressionNode #CSFixedStatementNode #OrderedCollection #CSFixedPointerDeclaratorNode #OrderedCollection #CSFixedSizeBufferDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #CSTypeNode #OrderedCollection #CSFixedSizeBufferDeclaratorNode #CSStackallocInitializerNode #CSVoidTypeNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
CSharpParser class >> transitionTable [
^#(
#[1 0 6 0 37 0 6 0 41 0 6 0 57 0 6 0 62 0 6 0 67 0 29 0 71 0 6 0 87 0 6 0 88 0 6 0 98 0 6 0 99 0 6 0 108 0 6 0 109 0 6 0 111 0 6 0 112 0 6 0 118 0 6 0 124 0 6 0 126 0 6 0 137 0 6 0 139 0 33 0 174 0 37 0 178 0 41 0 179 0 45 0 180 0 6 2 101] 
#[1 0 49 0 37 0 10 0 41 0 10 0 57 0 10 0 62 0 10 0 67 0 10 0 87 0 10 0 88 0 53 0 98 0 10 0 99 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 137 0 61 0 175 0 61 0 189 0 61 0 190 0 61 1 151 0 61 1 253 0 61 2 11 0 61 2 33 0 61 2 43 0 89 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 0 149 0 49 0 153 0 50 0 157 0 52 0 161 0 55 0 165 0 56 0 169 0 58 0 173 0 59 0 177 0 60 0 181 0 61 0 185 0 62 0 189 0 64 0 193 0 65 2 217 0 72 0 201 0 75 0 205 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 0 225 0 86 0 229 0 93 0 233 0 94 0 237 0 97 0 241 0 99 0 245 0 100 0 249 0 116 0 253 0 117 1 1 0 121 1 5 0 122 1 9 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 1 37 0 134 1 41 0 135 1 45 0 136 1 49 0 137 1 53 0 138 1 57 0 139 1 61 0 140 1 65 0 142 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 1 85 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 1 117 0 191 1 121 0 193 1 125 0 194 1 129 0 196 1 129 0 197 1 129 0 198 1 129 0 199 1 145 0 200 1 145 0 201 1 145 0 202 1 129 0 203 1 161 0 204 1 129 0 205 1 129 0 206 1 129 0 207 1 129 0 208 1 129 0 209 1 185 0 210 1 129 0 216 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 2 85 1 91 2 85 1 92 2 85 1 93 2 85 1 96 2 85 1 97 2 85 1 98 2 109 1 99 2 113 1 100 2 117 1 105 2 85 1 108 2 125 1 109 2 85 1 110 2 85 1 111 2 85 1 112 2 85 1 119 2 85 1 120 2 85 1 121 2 85 1 122 2 85 1 130 2 85 1 131 2 85 1 132 2 85 1 133 2 85 1 134 2 85 1 135 2 85 1 136 2 85 1 137 2 85 1 145 2 85 1 146 2 85 1 147 2 85 1 148 2 85 1 150 1 129 1 158 1 197 2 71 2 217 2 72 2 85 2 80 1 129 2 81 2 229 2 82 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 2 85 2 88 3 1 2 100] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 3 205 1 48 3 205 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 3 205 1 64 3 197 1 65 3 205 1 84 3 205 1 87 3 205 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 1 77 0 148 3 213 1 93] 
#[1 0 49 0 37 0 10 0 41 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 67 0 10 0 69 0 10 0 71 0 10 0 76 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 94 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 0 10 0 142 0 10 0 143 0 10 0 152 0 10 0 157 3 221 0 190 3 221 1 151 3 221 1 173 3 221 1 174 3 221 1 180 3 221 1 187 3 237 1 188 3 221 1 204 3 221 1 219 3 221 1 226 3 221 1 232 3 221 1 242 3 221 1 250 3 221 1 253 3 221 2 11 3 221 2 33 3 221 2 43 4 9 2 53 0 93 2 54 0 97 2 55 0 101 2 56 3 221 2 78] 
#[0 4 17 0 43] 
#[0 0 0 2 101] 
#[1 0 22 0 37 0 22 0 41 0 22 0 57 0 22 0 62 0 22 0 67 0 22 0 87 0 22 0 88 0 22 0 98 0 22 0 99 0 22 0 108 0 22 0 109 0 22 0 111 0 22 0 112 0 22 0 118 0 22 0 124 0 22 0 126 0 22 0 137 4 21 0 139 4 25 0 181 4 29 0 182 4 33 0 183 4 33 0 184 4 33 0 185 4 33 0 186 0 22 2 101] 
#[1 0 26 0 37 0 26 0 41 0 26 0 57 0 26 0 62 0 26 0 67 0 29 0 71 0 26 0 87 0 26 0 88 0 26 0 98 0 26 0 99 0 26 0 108 0 26 0 109 0 26 0 111 0 26 0 112 0 26 0 118 0 26 0 124 0 26 0 126 0 26 0 137 0 26 0 139 0 26 0 155 4 49 0 180 0 26 2 101] 
#[0 0 30 0 37 0 41 0 57 0 62 0 67 0 71 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 139 0 155 2 101] 
#[1 4 89 0 69 4 89 0 73 4 89 0 95 4 89 0 106 4 89 0 110 4 89 0 116 4 89 0 132 0 34 0 157 4 81 2 57 4 85 2 58 4 89 2 59] 
#[1 4 93 0 157 4 97 0 176] 
#[0 0 38 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 155 2 101] 
#[0 0 0 2 101] 
#[0 0 42 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 155 2 101] 
#[0 0 46 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 0 50 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 0 54 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 0 58 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 0 62 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 4 145 0 41 0 66 0 57 0 70 0 62 0 74 0 67 0 78 0 87 4 105 0 88 4 109 0 99 0 7 0 108 4 113 0 109 4 117 0 111 4 121 0 112 4 145 0 118 4 145 0 124 0 82 0 126 4 133 0 137 4 137 1 152 4 141 1 153 4 145 1 154 4 149 1 254 4 153 1 255 4 157 2 0 4 161 2 12 4 165 2 13 4 169 2 14 4 173 2 37 4 177 2 38 4 181 2 39 4 185 2 44 4 189 2 45 4 193 2 46] 
#[0 0 86 0 41 0 42 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 80 0 85 0 86 0 87 0 88 0 94 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 157] 
#[1 0 49 0 37 0 90 0 41 0 90 0 42 0 90 0 49 0 90 0 52 0 90 0 55 0 90 0 57 0 90 0 58 0 90 0 60 0 90 0 62 0 90 0 65 0 90 0 67 0 90 0 69 0 90 0 71 0 90 0 75 0 90 0 76 0 90 0 80 0 90 0 85 0 90 0 86 0 90 0 87 0 90 0 88 0 90 0 94 0 90 0 99 0 90 0 100 0 90 0 104 0 90 0 105 0 90 0 107 0 90 0 108 0 90 0 109 0 90 0 111 0 90 0 112 0 90 0 113 0 90 0 114 0 90 0 115 0 90 0 117 0 90 0 118 0 90 0 120 0 90 0 121 0 90 0 124 0 90 0 125 0 90 0 126 0 90 0 128 0 90 0 134 0 90 0 135 0 90 0 137 0 90 0 138 0 90 0 141 0 90 0 142 0 90 0 143 0 90 0 152 0 90 0 157 4 197 2 56] 
#[0 0 94 0 37 0 41 0 42 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 80 0 85 0 86 0 87 0 88 0 94 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 157] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 4 205 1 27 4 205 1 28 4 205 1 33 4 205 1 34 4 205 1 35 4 205 1 36 1 197 1 50 1 197 2 71 2 217 2 72 4 205 2 83 1 197 2 84 1 197 2 85 4 205 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 4 209 1 27 4 209 1 28 4 209 1 33 4 209 1 34 4 209 1 35 4 209 1 36 1 197 1 50 1 197 2 71 2 217 2 72 4 209 2 83 1 197 2 84 1 197 2 85 4 209 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 0 149 0 49 0 157 0 52 0 161 0 55 3 21 0 56 0 177 0 60 0 181 0 61 0 185 0 62 0 193 0 65 2 217 0 72 0 205 0 76 3 37 0 79 0 225 0 86 0 233 0 94 0 237 0 97 0 241 0 99 0 245 0 100 0 253 0 117 1 1 0 121 1 5 0 122 1 9 0 125 1 17 0 128 2 217 0 130 1 33 0 133 1 37 0 134 1 41 0 135 3 73 0 136 1 53 0 138 1 65 0 142 1 81 0 152 4 213 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 1 117 0 191 1 121 0 193 1 125 0 194 4 217 0 196 4 217 0 197 4 217 0 198 4 217 0 199 1 145 0 200 1 145 0 201 1 145 0 202 4 217 0 203 1 161 0 204 4 217 0 205 4 217 0 206 4 217 0 207 4 217 0 208 4 217 0 209 1 185 0 210 4 217 0 216 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 4 221 1 48 4 221 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 4 221 1 64 3 197 1 65 4 221 1 84 4 221 1 87 4 221 1 88 4 217 1 158 1 197 2 71 2 217 2 72 4 217 2 81 2 229 2 82 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87 3 1 2 100] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 4 225 1 27 4 225 1 28 4 225 1 33 4 225 1 34 4 225 1 35 4 225 1 36 1 197 1 50 1 197 2 71 2 217 2 72 4 225 2 83 1 197 2 84 1 197 2 85 4 225 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 4 229 1 27 4 229 1 28 4 229 1 33 4 229 1 34 4 229 1 35 4 229 1 36 1 197 1 50 1 197 2 71 2 217 2 72 4 229 2 83 1 197 2 84 1 197 2 85 4 229 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 4 233 1 27 4 233 1 28 4 233 1 33 4 233 1 34 4 233 1 35 4 233 1 36 1 197 1 50 1 197 2 71 2 217 2 72 4 233 2 83 1 197 2 84 1 197 2 85 4 233 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 4 237 1 27 4 237 1 28 4 237 1 33 4 237 1 34 4 237 1 35 4 237 1 36 1 197 1 50 1 197 2 71 2 217 2 72 4 237 2 83 1 197 2 84 1 197 2 85 4 237 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 4 241 1 27 4 241 1 28 4 241 1 33 4 241 1 34 4 241 1 35 4 241 1 36 1 197 1 50 1 197 2 71 2 217 2 72 4 241 2 83 1 197 2 84 1 197 2 85 4 241 2 86 1 197 2 87] 
#[0 0 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 4 245 1 27 4 245 1 28 4 245 1 33 4 245 1 34 4 245 1 35 4 245 1 36 1 197 1 50 1 197 2 71 2 217 2 72 4 245 2 83 1 197 2 84 1 197 2 85 4 245 2 86 1 197 2 87] 
#[1 4 249 0 20 4 253 0 37] 
#[1 0 102 0 9 0 102 0 10 0 106 0 20 0 102 0 35 0 102 0 37 0 102 0 157] 
#[0 5 1 0 25] 
#[1 0 110 0 9 0 110 0 10 0 114 0 20 0 110 0 35 0 110 0 37 0 110 0 157] 
#[1 0 118 0 9 0 118 0 10 0 122 0 20 0 118 0 35 0 118 0 37 0 118 0 157] 
#[1 5 5 0 8 1 77 0 148 5 9 1 93] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 5 81 0 196 5 81 0 197 5 81 0 198 5 81 0 199 1 145 0 200 1 145 0 201 1 145 0 202 5 81 0 203 1 161 0 204 5 81 0 205 5 81 0 206 5 81 0 207 5 81 0 208 5 81 0 209 1 185 0 210 5 81 0 216 5 81 1 158 5 81 2 81 2 229 2 82 3 1 2 100] 
#[0 5 85 0 25] 
#[1 0 126 0 9 0 126 0 10 0 130 0 20 0 126 0 35 0 126 0 37 0 126 0 157] 
#[1 0 134 0 2 0 134 0 3 0 134 0 4 0 134 0 5 0 134 0 6 0 134 0 7 0 11 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 18 0 134 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 39 0 134 0 40 0 134 0 44 0 134 0 45 0 134 0 51 0 134 0 63 0 134 0 68 0 134 0 79 0 134 0 82 0 134 0 89 0 134 0 90 0 134 0 91 0 134 0 92 0 134 0 101 0 134 0 103 0 134 0 119 0 134 0 145 0 134 0 149 0 134 0 150 0 134 0 151 0 134 0 153 0 134 0 154 0 134 0 155 0 134 0 163 0 134 0 164 0 134 0 167 0 134 0 168 0 134 2 101] 
#[1 5 93 0 8 0 138 0 148 5 97 1 52 5 97 1 53] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 3 9 0 49 0 153 0 50 3 13 0 52 3 17 0 55 0 165 0 56 0 173 0 59 3 25 0 60 0 181 0 61 0 185 0 62 0 189 0 64 3 29 0 65 2 217 0 72 0 201 0 75 3 33 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 3 41 0 86 0 229 0 93 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 0 249 0 116 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 3 65 0 134 3 69 0 135 1 45 0 136 1 49 0 137 3 77 0 138 1 57 0 139 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 5 105 1 92 5 105 1 93 5 105 1 96 5 105 1 108 2 125 1 109 5 105 1 110 5 105 1 111 5 105 1 112 5 105 1 119 5 105 1 120 5 105 1 121 5 105 1 122 5 105 1 130 5 105 1 131 5 105 1 132 5 105 1 133 5 105 1 134 5 105 1 135 5 105 1 136 5 105 1 137 5 105 1 145 5 105 1 146 5 105 1 147 5 105 1 148 5 105 1 150 1 197 2 71 2 217 2 72 5 105 2 80 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 5 105 2 88] 
#[1 0 142 0 9 0 142 0 10 0 146 0 20 0 142 0 35 0 142 0 37 0 142 0 157] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 5 109 0 8] 
#[1 0 154 0 9 0 154 0 10 0 158 0 20 0 154 0 35 0 154 0 37 0 154 0 157] 
#[0 5 113 0 8] 
#[0 5 117 0 8] 
#[1 5 121 0 53 5 125 0 61 5 129 0 157] 
#[0 5 133 0 8] 
#[1 0 162 0 9 0 162 0 10 0 166 0 20 0 162 0 35 0 162 0 37 0 162 0 157] 
#[0 5 137 0 8] 
#[1 0 170 0 9 0 170 0 10 0 174 0 20 0 170 0 35 0 170 0 37 0 170 0 157] 
#[0 5 141 0 8] 
#[1 5 145 0 37 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 149 0 148 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 5 153 0 196 5 153 0 197 5 153 0 198 5 153 0 199 1 145 0 200 1 145 0 201 1 145 0 202 5 153 0 203 1 161 0 204 5 153 0 205 5 153 0 206 5 153 0 207 5 153 0 208 5 157 0 209 5 161 0 210 5 165 0 213 5 169 0 216 5 173 1 11 5 153 1 158 5 153 2 81 2 229 2 82 3 1 2 100] 
#[1 0 178 0 9 0 178 0 10 0 182 0 20 0 178 0 35 0 178 0 37 0 178 0 157] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 186 0 25 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 5 177 1 48 5 177 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 5 177 1 64 3 197 1 65 5 177 1 84 5 177 1 86 5 177 1 87 5 177 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 190 0 9 0 190 0 10 0 194 0 20 0 190 0 35 0 190 0 37 0 190 0 157] 
#[1 0 198 0 9 0 198 0 10 0 202 0 20 0 198 0 35 0 198 0 37 0 198 0 157] 
#[0 5 185 0 8] 
#[1 0 206 0 9 0 206 0 10 0 210 0 20 0 206 0 35 0 206 0 37 0 206 0 157] 
#[0 5 189 0 8] 
#[0 0 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 186 0 25 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 5 193 1 48 5 193 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 5 193 1 64 3 197 1 65 5 193 1 84 5 193 1 86 5 193 1 87 5 193 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 0 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 1 77 0 148 5 197 1 93] 
#[0 5 201 0 8] 
#[1 0 222 0 9 0 222 0 10 0 226 0 20 0 222 0 35 0 222 0 37 0 222 0 157] 
#[1 0 230 0 9 0 230 0 10 0 234 0 20 0 230 0 35 0 230 0 37 0 230 0 157] 
#[1 5 205 0 8 1 77 0 148 5 209 1 93] 
#[1 1 77 0 148 5 213 1 93] 
#[1 0 238 0 9 0 238 0 10 0 242 0 20 0 238 0 35 0 238 0 37 0 238 0 157] 
#[0 5 217 0 8] 
#[0 0 246 0 157] 
#[0 0 250 0 9 0 10 0 157] 
#[0 5 221 0 8] 
#[1 5 225 0 50 5 229 0 116] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 0 149 0 49 0 153 0 50 0 157 0 52 0 161 0 55 0 165 0 56 0 169 0 58 0 173 0 59 0 177 0 60 0 181 0 61 0 185 0 62 0 189 0 64 0 193 0 65 2 217 0 72 0 201 0 75 0 205 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 0 225 0 86 0 229 0 93 0 233 0 94 0 237 0 97 0 241 0 99 0 245 0 100 0 249 0 116 0 253 0 117 1 1 0 121 1 5 0 122 1 9 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 1 37 0 134 1 41 0 135 1 45 0 136 1 49 0 137 1 53 0 138 1 57 0 139 1 61 0 140 1 65 0 142 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 0 254 0 155 1 85 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 1 117 0 191 1 121 0 193 1 125 0 194 1 129 0 196 1 129 0 197 1 129 0 198 1 129 0 199 1 145 0 200 1 145 0 201 1 145 0 202 1 129 0 203 1 161 0 204 1 129 0 205 1 129 0 206 1 129 0 207 1 129 0 208 1 129 0 209 1 185 0 210 1 129 0 216 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 5 233 1 91 5 233 1 92 5 233 1 93 5 237 1 94 5 241 1 95 5 233 1 96 5 233 1 97 5 233 1 98 2 109 1 99 2 113 1 100 2 117 1 105 5 233 1 108 2 125 1 109 5 233 1 110 5 233 1 111 5 233 1 112 5 233 1 119 5 233 1 120 5 233 1 121 5 233 1 122 5 233 1 130 5 233 1 131 5 233 1 132 5 233 1 133 5 233 1 134 5 233 1 135 5 233 1 136 5 233 1 137 5 233 1 145 5 233 1 146 5 233 1 147 5 233 1 148 5 233 1 150 1 129 1 158 1 197 2 71 2 217 2 72 5 233 2 80 1 129 2 81 2 229 2 82 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 5 233 2 88 3 1 2 100] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 5 245 1 27 5 245 1 28 5 245 1 33 5 245 1 34 5 245 1 35 5 245 1 36 1 197 1 50 1 197 2 71 2 217 2 72 5 245 2 83 1 197 2 84 1 197 2 85 5 245 2 86 1 197 2 87] 
#[1 1 2 0 4 1 2 0 7 1 2 0 8 0 15 0 10 1 2 0 11 1 2 0 13 1 2 0 14 1 2 0 17 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 22 5 249 0 23 5 253 0 24 6 1 0 26 1 2 0 28 1 2 0 30 1 2 0 34 0 15 0 35 0 15 0 37 1 2 0 40 1 2 0 150 0 15 0 157 6 9 0 217 6 9 0 239] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 1 38 0 9 1 38 0 10 0 19 0 20 1 38 0 35 1 38 0 37 1 38 0 157] 
#[0 0 23 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[1 1 66 0 2 1 66 0 5 1 66 0 6 1 66 0 8 1 66 0 9 1 66 0 10 1 66 0 15 0 27 0 20 1 66 0 23 1 66 0 25 1 66 0 26 1 66 0 29 1 66 0 31 1 66 0 32 1 66 0 33 1 66 0 35 1 66 0 36 1 66 0 37 1 66 0 38 1 66 0 39 1 66 0 44 1 66 0 45 1 66 0 51 1 66 0 63 1 66 0 68 1 66 0 79 1 66 0 82 1 66 0 89 1 66 0 90 1 66 0 91 1 66 0 92 1 66 0 101 1 66 0 102 1 66 0 103 1 66 0 119 1 66 0 128 1 66 0 145 1 66 0 148 1 66 0 149 1 66 0 151 1 66 0 153 1 66 0 155 1 66 0 157 1 66 0 163 1 66 0 164 1 66 0 167 1 66 0 168 1 66 2 101] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 1 82 0 157] 
#[0 1 86 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 1 90 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 1 94 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 1 98 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 1 102 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 1 106 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 1 110 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 6 17 0 35] 
#[0 1 114 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 1 118 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 1 122 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 1 126 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 1 130 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[1 5 145 0 37 6 21 0 212 6 25 0 213] 
#[0 1 134 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[1 1 138 0 4 1 138 0 7 6 29 0 8 1 138 0 11 6 33 0 13 1 138 0 14 6 37 0 17 1 138 0 18 6 41 0 19 6 45 0 20 1 138 0 22 1 138 0 28 1 138 0 30 1 138 0 34 1 142 0 35 1 138 0 40 1 138 0 150 6 49 1 29 6 53 1 30] 
#[1 1 146 0 2 1 146 0 3 1 146 0 4 1 146 0 5 1 146 0 6 1 146 0 7 1 146 0 8 1 146 0 9 1 146 0 10 1 146 0 11 1 146 0 12 1 146 0 13 1 146 0 14 1 146 0 15 1 146 0 16 1 146 0 17 1 146 0 18 1 146 0 19 1 146 0 20 1 146 0 21 1 146 0 22 1 146 0 23 1 146 0 25 1 146 0 26 1 146 0 27 1 146 0 28 1 146 0 29 1 146 0 30 1 146 0 31 1 146 0 33 1 146 0 34 1 146 0 35 1 146 0 36 6 57 0 37 1 146 0 38 1 146 0 39 1 146 0 40 1 146 0 44 1 146 0 45 1 146 0 51 1 146 0 63 1 146 0 68 1 146 0 79 1 146 0 82 1 146 0 89 1 146 0 90 1 146 0 91 1 146 0 92 1 146 0 101 1 146 0 103 1 146 0 119 1 146 0 145 1 146 0 149 1 146 0 150 1 146 0 151 1 146 0 153 1 146 0 154 1 146 0 155 1 146 0 163 1 146 0 164 1 146 0 167 1 146 0 168 1 146 2 101] 
#[0 1 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 6 61 0 162] 
#[0 1 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 6 65 0 166] 
#[0 1 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 6 69 0 20] 
#[0 6 73 0 20] 
#[0 1 174 0 20] 
#[1 1 178 0 4 1 178 0 7 1 178 0 8 1 182 0 9 1 178 0 11 1 178 0 13 1 178 0 14 1 182 0 15 1 178 0 17 1 178 0 18 1 178 0 19 1 178 0 20 1 178 0 22 1 182 0 25 1 178 0 28 1 178 0 30 1 178 0 34 1 178 0 35 1 178 0 37 1 178 0 40 1 178 0 150] 
#[0 1 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 1 198 0 4 1 198 0 7 1 198 0 8 1 202 0 9 1 198 0 11 1 198 0 13 1 198 0 14 1 202 0 15 1 198 0 17 1 198 0 18 1 198 0 19 1 198 0 20 1 198 0 22 1 202 0 25 1 198 0 28 1 198 0 30 1 198 0 34 1 198 0 35 1 198 0 37 1 198 0 40 1 198 0 150] 
#[1 1 206 0 4 1 206 0 7 1 206 0 8 1 210 0 9 1 206 0 11 1 206 0 13 1 206 0 14 1 210 0 15 1 206 0 17 1 206 0 18 1 206 0 19 1 206 0 20 1 206 0 22 1 210 0 25 1 206 0 28 1 206 0 30 1 206 0 34 1 206 0 35 1 206 0 37 1 206 0 40 1 206 0 150] 
#[1 1 214 0 4 1 214 0 7 1 214 0 8 1 218 0 9 1 214 0 11 1 214 0 13 1 214 0 14 1 218 0 15 1 214 0 17 1 214 0 18 1 214 0 19 1 214 0 20 1 214 0 22 1 218 0 25 1 214 0 28 1 214 0 30 1 214 0 34 1 214 0 35 1 214 0 37 1 214 0 40 1 214 0 150] 
#[0 1 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 6 121 0 4 0 7 0 11 0 14 0 18 0 22 0 28 0 30 0 34 0 40 0 150 1 85] 
#[0 1 254 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 2 2 0 9 0 15 0 25] 
#[1 2 6 0 4 2 6 0 7 2 10 0 9 2 6 0 11 2 6 0 14 2 10 0 15 2 6 0 18 2 6 0 22 2 10 0 25 2 6 0 28 2 6 0 30 2 6 0 34 2 6 0 40 2 6 0 150] 
#[1 2 14 0 4 2 14 0 7 2 18 0 9 2 14 0 11 2 14 0 14 2 18 0 15 2 14 0 18 2 14 0 22 2 18 0 25 2 14 0 28 2 14 0 30 2 14 0 34 2 14 0 40 2 14 0 150] 
#[0 2 22 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 2 26 0 4 2 26 0 7 2 30 0 9 2 26 0 11 2 26 0 14 2 30 0 15 2 26 0 18 2 26 0 22 2 30 0 25 2 26 0 28 2 26 0 30 2 26 0 34 2 26 0 40 2 26 0 150] 
#[0 2 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 2 38 0 9 0 15 0 25] 
#[0 0 0 2 101] 
#[0 2 42 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 46 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 50 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 54 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 58 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 6 125 0 25] 
#[1 6 129 0 157 6 133 1 101 6 137 1 102 6 141 1 103] 
#[0 6 145 0 25] 
#[0 2 62 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 6 149 0 25] 
#[0 2 66 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 70 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 74 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 78 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 82 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 86 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 90 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 102 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 110 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 114 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 118 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 142 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 146 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 2 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 2 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 2 158 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 2 162 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 6 153 0 10] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 2 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 2 186 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 6 157 0 10] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 31 0 9 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 0 35 0 49 0 39 0 52 0 43 0 55 3 21 0 56 0 47 0 60 0 181 0 61 0 185 0 62 0 51 0 65 2 217 0 72 0 55 0 76 3 37 0 79 0 59 0 86 0 63 0 94 0 237 0 97 0 241 0 99 0 67 0 100 6 181 0 104 6 181 0 114 0 71 0 117 0 75 0 121 1 5 0 122 0 79 0 125 1 17 0 128 2 217 0 130 1 33 0 133 0 83 0 134 0 87 0 135 3 73 0 136 0 91 0 138 0 95 0 142 1 81 0 152 0 99 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 1 117 0 191 1 121 0 193 1 125 0 194 4 217 0 196 4 217 0 197 4 217 0 198 4 217 0 199 1 145 0 200 1 145 0 201 1 145 0 202 4 217 0 203 1 161 0 204 4 217 0 205 4 217 0 206 4 217 0 207 4 217 0 208 4 217 0 209 1 185 0 210 4 217 0 216 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 4 221 1 48 4 221 1 49 1 197 1 50 3 177 1 51 3 177 1 53 6 169 1 54 6 173 1 55 6 177 1 56 6 181 1 57 6 181 1 58 3 177 1 59 6 189 1 60 6 193 1 61 6 197 1 62 4 221 1 64 3 197 1 65 4 221 1 84 4 221 1 87 4 221 1 88 4 217 1 158 1 197 2 71 2 217 2 72 4 217 2 81 2 229 2 82 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87 3 1 2 100] 
#[0 0 106 0 20] 
#[0 0 114 0 20] 
#[0 0 122 0 20] 
#[0 5 5 0 8] 
#[0 0 130 0 20] 
#[0 0 146 0 20] 
#[0 0 158 0 20] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 0 103 0 157 1 125 0 191 1 121 0 193 1 125 0 194 6 201 0 195 6 205 0 196 6 205 0 197 6 205 0 198 6 205 0 199 1 145 0 200 1 145 0 201 1 145 0 202 6 205 0 203 1 161 0 204 6 205 0 205 6 205 0 206 6 205 0 207 6 205 0 208 6 205 0 209 1 185 0 210 6 205 0 216 6 205 1 158 6 205 2 81 2 229 2 82 3 1 2 100] 
#[0 0 166 0 20] 
#[0 0 174 0 20] 
#[0 0 182 0 20] 
#[0 0 194 0 20] 
#[0 0 202 0 20] 
#[0 0 210 0 20] 
#[0 0 226 0 20] 
#[0 0 234 0 20] 
#[0 5 205 0 8] 
#[0 0 242 0 20] 
#[1 1 2 0 2 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 11 1 2 0 12 1 2 0 13 1 2 0 14 1 2 0 15 1 2 0 16 1 2 0 17 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 21 1 2 0 22 1 2 0 23 5 253 0 24 1 2 0 25 0 107 0 26 1 2 0 27 1 2 0 28 1 2 0 29 1 2 0 30 1 2 0 31 2 206 0 32 1 2 0 33 1 2 0 34 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 40 1 2 0 44 1 2 0 45 1 2 0 51 1 2 0 63 1 2 0 68 1 2 0 79 1 2 0 82 1 2 0 89 1 2 0 90 1 2 0 91 1 2 0 92 1 2 0 101 1 2 0 103 1 2 0 119 1 2 0 145 1 2 0 149 1 2 0 150 1 2 0 151 1 2 0 153 1 2 0 154 1 2 0 155 1 2 0 163 1 2 0 164 1 2 0 167 1 2 0 168 6 209 0 217 6 209 0 239 1 2 2 101] 
#[0 1 42 0 20] 
#[1 1 138 0 2 1 138 0 3 1 138 0 4 1 138 0 5 1 138 0 6 1 138 0 7 6 29 0 8 1 138 0 9 1 138 0 10 1 138 0 11 1 138 0 12 6 33 0 13 1 138 0 14 1 138 0 15 1 138 0 16 6 37 0 17 1 138 0 18 6 41 0 19 6 45 0 20 1 138 0 21 1 138 0 22 1 138 0 23 1 138 0 25 1 138 0 26 1 138 0 27 1 138 0 28 1 138 0 29 1 138 0 30 1 138 0 31 1 138 0 33 1 138 0 34 0 111 0 35 1 138 0 36 1 138 0 38 1 138 0 39 1 138 0 40 1 138 0 44 1 138 0 45 1 138 0 51 1 138 0 63 1 138 0 68 1 138 0 79 1 138 0 82 1 138 0 89 1 138 0 90 1 138 0 91 1 138 0 92 1 138 0 101 1 138 0 103 1 138 0 119 1 138 0 145 1 138 0 149 1 138 0 150 1 138 0 151 1 138 0 153 1 138 0 154 1 138 0 155 1 138 0 163 1 138 0 164 1 138 0 167 1 138 0 168 6 49 1 29 6 213 1 30 1 138 2 101] 
#[0 1 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 1 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 2 210 0 2 2 210 0 3 6 121 0 4 2 210 0 5 2 210 0 6 6 121 0 7 2 210 0 9 2 210 0 10 6 121 0 11 2 210 0 12 6 121 0 14 2 210 0 15 2 210 0 16 6 121 0 18 2 210 0 21 6 121 0 22 2 210 0 23 2 210 0 25 2 210 0 26 2 210 0 27 6 121 0 28 2 210 0 29 6 121 0 30 2 210 0 31 2 210 0 33 6 121 0 34 2 210 0 35 2 210 0 36 2 210 0 38 2 210 0 39 6 121 0 40 2 210 0 44 2 210 0 45 2 210 0 51 2 210 0 63 2 210 0 68 2 210 0 79 2 210 0 82 2 210 0 89 2 210 0 90 2 210 0 91 2 210 0 92 2 210 0 101 2 210 0 103 2 210 0 119 2 210 0 145 2 210 0 149 6 121 0 150 2 210 0 151 2 210 0 153 2 210 0 154 2 210 0 155 2 210 0 163 2 210 0 164 2 210 0 167 2 210 0 168 6 121 1 85 2 210 2 101] 
#[0 2 6 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 2 14 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 2 26 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 2 214 0 2 6 217 0 3 2 214 0 5 2 214 0 6 2 214 0 9 6 221 0 10 2 214 0 12 2 214 0 15 2 214 0 16 6 225 0 21 2 214 0 23 2 214 0 25 2 214 0 26 2 214 0 27 2 214 0 29 2 214 0 31 2 214 0 33 2 214 0 35 2 214 0 36 2 214 0 38 2 214 0 39 2 214 0 44 2 214 0 45 2 214 0 51 2 214 0 63 2 214 0 68 2 214 0 79 2 214 0 82 2 214 0 89 2 214 0 90 2 214 0 91 2 214 0 92 2 214 0 101 2 214 0 103 2 214 0 119 2 214 0 145 2 214 0 149 2 214 0 151 2 214 0 153 2 214 0 154 2 214 0 155 2 214 0 163 2 214 0 164 2 214 0 167 2 214 0 168 2 214 2 101] 
#[1 2 218 0 2 2 218 0 5 2 218 0 6 2 218 0 9 6 229 0 12 2 218 0 15 6 233 0 16 2 218 0 23 2 218 0 25 2 218 0 26 2 218 0 27 2 218 0 29 2 218 0 31 2 218 0 33 2 218 0 35 2 218 0 36 2 218 0 38 2 218 0 39 2 218 0 44 2 218 0 45 2 218 0 51 2 218 0 63 2 218 0 68 2 218 0 79 2 218 0 82 2 218 0 89 2 218 0 90 2 218 0 91 2 218 0 92 2 218 0 101 2 218 0 103 2 218 0 119 2 218 0 145 2 218 0 149 2 218 0 151 2 218 0 153 2 218 0 154 2 218 0 155 2 218 0 163 2 218 0 164 2 218 0 167 2 218 0 168 2 218 2 101] 
#[1 2 222 0 2 2 222 0 5 2 222 0 6 2 222 0 9 2 222 0 15 2 222 0 23 2 222 0 25 2 222 0 26 6 237 0 27 2 222 0 29 2 222 0 31 2 222 0 33 2 222 0 35 2 222 0 36 2 222 0 38 2 222 0 39 2 222 0 44 2 222 0 45 2 222 0 51 2 222 0 63 2 222 0 68 2 222 0 79 2 222 0 82 2 222 0 89 2 222 0 90 2 222 0 91 2 222 0 92 2 222 0 101 2 222 0 103 2 222 0 119 2 222 0 145 2 222 0 149 2 222 0 151 2 222 0 153 6 241 0 154 2 222 0 155 2 222 0 163 2 222 0 164 2 222 0 167 2 222 0 168 2 222 2 101] 
#[1 2 226 0 2 2 226 0 5 2 226 0 6 2 226 0 9 2 226 0 15 2 226 0 23 2 226 0 25 6 245 0 26 6 249 0 29 2 226 0 31 6 253 0 33 2 226 0 35 2 226 0 36 2 226 0 38 2 226 0 39 7 1 0 44 2 226 0 45 2 226 0 51 2 226 0 63 2 226 0 68 2 226 0 79 2 226 0 82 2 226 0 89 7 5 0 90 2 226 0 91 2 226 0 92 2 226 0 101 2 226 0 103 2 226 0 119 2 226 0 145 2 226 0 149 2 226 0 151 7 9 0 153 2 226 0 155 2 226 0 163 2 226 0 164 2 226 0 167 2 226 0 168 2 226 2 101] 
#[1 7 13 0 2 2 230 0 5 2 230 0 6 2 230 0 9 2 230 0 15 2 230 0 23 2 230 0 25 7 17 0 31 2 230 0 35 2 230 0 36 2 230 0 38 2 230 0 39 2 230 0 45 2 230 0 51 2 230 0 63 2 230 0 68 2 230 0 79 2 230 0 82 2 230 0 89 2 230 0 91 2 230 0 92 2 230 0 101 2 230 0 103 2 230 0 119 2 230 0 145 2 230 0 149 2 230 0 151 2 230 0 155 2 230 0 163 2 230 0 164 2 230 0 167 2 230 0 168 2 230 2 101] 
#[1 7 21 0 5 2 234 0 6 2 234 0 9 2 234 0 15 2 234 0 23 2 234 0 25 2 234 0 35 2 234 0 36 2 234 0 38 2 234 0 39 2 234 0 45 2 234 0 51 2 234 0 63 2 234 0 68 2 234 0 79 2 234 0 82 2 234 0 89 2 234 0 91 2 234 0 92 2 234 0 101 2 234 0 103 2 234 0 119 2 234 0 145 2 234 0 149 2 234 0 151 2 234 0 155 2 234 0 163 2 234 0 164 2 234 0 167 2 234 0 168 2 234 2 101] 
#[1 2 238 0 6 2 238 0 9 2 238 0 15 2 238 0 23 2 238 0 25 2 238 0 35 2 238 0 36 2 238 0 38 7 25 0 39 2 238 0 45 2 238 0 51 2 238 0 63 2 238 0 68 2 238 0 79 2 238 0 82 2 238 0 89 2 238 0 91 2 238 0 92 2 238 0 101 2 238 0 103 2 238 0 119 2 238 0 145 2 238 0 149 2 238 0 151 2 238 0 155 2 238 0 163 2 238 0 164 2 238 0 167 2 238 0 168 2 238 2 101] 
#[1 2 242 0 6 2 242 0 9 2 242 0 15 2 242 0 23 2 242 0 25 2 242 0 35 2 242 0 36 2 242 0 38 2 242 0 45 2 242 0 51 2 242 0 63 2 242 0 68 2 242 0 79 2 242 0 82 2 242 0 89 2 242 0 91 2 242 0 92 2 242 0 101 2 242 0 103 2 242 0 119 2 242 0 145 7 29 0 149 2 242 0 151 2 242 0 155 2 242 0 163 2 242 0 164 2 242 0 167 2 242 0 168 2 242 2 101] 
#[1 7 33 0 6 2 246 0 9 2 246 0 15 2 246 0 23 2 246 0 25 2 246 0 35 2 246 0 36 2 246 0 38 2 246 0 45 2 246 0 51 2 246 0 63 2 246 0 68 2 246 0 79 2 246 0 82 2 246 0 89 2 246 0 91 2 246 0 92 2 246 0 101 2 246 0 103 2 246 0 119 2 246 0 145 2 246 0 151 2 246 0 155 2 246 0 163 2 246 0 164 2 246 0 167 2 246 0 168 2 246 2 101] 
#[1 2 250 0 9 2 250 0 15 2 250 0 23 2 250 0 25 2 250 0 35 7 37 0 36 2 250 0 38 2 250 0 45 2 250 0 51 2 250 0 63 2 250 0 68 2 250 0 79 2 250 0 82 2 250 0 89 2 250 0 91 2 250 0 92 2 250 0 101 2 250 0 103 2 250 0 119 2 250 0 145 7 41 0 151 2 250 0 155 2 250 0 163 2 250 0 164 2 250 0 167 2 250 0 168 2 250 2 101] 
#[1 2 254 0 9 2 254 0 15 2 254 0 23 2 254 0 25 7 45 0 35 2 254 0 38 2 254 0 45 2 254 0 51 2 254 0 63 2 254 0 68 2 254 0 79 2 254 0 82 2 254 0 89 2 254 0 91 2 254 0 92 2 254 0 101 2 254 0 103 2 254 0 119 2 254 0 145 2 254 0 155 2 254 0 163 2 254 0 164 2 254 0 167 2 254 0 168 2 254 2 101] 
#[0 3 2 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 3 6 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 7 49 0 32] 
#[0 3 10 0 32] 
#[0 3 14 0 32] 
#[0 3 18 0 32] 
#[0 3 22 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 3 37 0 79 3 26 0 82 7 53 0 91 7 57 0 92 7 61 0 103 3 26 0 119 7 65 0 145 7 69 1 65 7 73 1 66 7 77 1 67 7 81 1 68 7 85 1 69 7 89 1 70 7 93 1 71 7 97 1 72 7 101 1 73 7 105 1 74] 
#[0 3 30 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 0 0 2 101] 
#[0 3 34 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 0 0 2 101] 
#[0 3 38 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 0 0 2 101] 
#[0 3 42 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 3 46 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 3 50 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 7 109 0 25 7 113 0 32 1 77 0 148 7 117 1 93 7 121 1 194] 
#[0 3 54 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 3 58 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 3 62 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 3 66 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 3 70 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 3 74 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 7 125 0 41 0 115 0 49 0 115 0 52 0 115 0 55 0 66 0 57 3 94 0 58 0 115 0 60 0 70 0 62 0 115 0 65 0 74 0 67 3 98 0 69 0 119 0 71 0 115 0 76 0 115 0 86 0 78 0 87 7 133 0 88 0 115 0 94 7 137 0 99 0 115 0 100 7 141 0 105 0 123 0 108 7 145 0 109 7 149 0 111 7 153 0 112 7 201 0 113 0 115 0 117 7 161 0 118 0 115 0 121 0 127 0 124 0 115 0 125 0 82 0 126 0 115 0 134 0 115 0 135 0 131 0 137 0 115 0 138 7 173 0 141 0 115 0 142 7 201 0 143 0 135 0 152 0 139 0 157 4 137 1 152 4 141 1 153 4 145 1 154 7 181 1 175 7 185 1 176 7 189 1 177 7 193 1 181 7 197 1 182 7 201 1 183 7 205 1 189 7 209 1 190 7 213 1 191 7 217 1 205 7 221 1 206 7 225 1 207 7 229 1 220 7 233 1 221 7 237 1 222 7 241 1 227 7 245 1 228 7 249 1 229 7 253 1 233 8 1 1 234 8 5 1 243 8 9 1 244 8 13 1 245 8 17 1 251 4 149 1 254 4 153 1 255 4 157 2 0 4 161 2 12 4 165 2 13 4 169 2 14 4 173 2 37 4 177 2 38 4 181 2 39 4 185 2 44 4 189 2 45 4 193 2 46 8 21 2 76 8 25 2 79] 
#[0 3 114 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 8 29 0 157] 
#[1 8 33 0 124 8 37 0 157 8 45 0 191 8 41 0 192 8 45 0 194] 
#[1 0 143 0 37 3 118 0 41 3 118 0 57 3 118 0 62 3 118 0 67 3 118 0 87 3 118 0 88 3 118 0 98 3 118 0 99 3 118 0 108 3 118 0 109 3 118 0 111 3 118 0 112 3 118 0 118 3 118 0 124 3 118 0 126 3 118 0 137 8 53 2 47 8 57 2 48 8 61 2 49 8 65 2 50 3 118 2 101] 
#[1 3 122 0 37 3 122 0 41 3 122 0 57 3 122 0 62 3 122 0 67 3 122 0 87 3 122 0 88 3 122 0 98 3 122 0 99 3 122 0 108 3 122 0 109 3 122 0 111 3 122 0 112 3 122 0 118 3 122 0 124 3 122 0 126 3 122 0 137 4 21 0 139 3 122 0 155 8 69 0 183 8 69 0 184 8 69 0 185 8 69 0 186 3 122 2 101] 
#[0 3 126 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 139 0 155 2 101] 
#[0 3 130 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 139 0 155 2 101] 
#[0 3 134 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 139 0 155 2 101] 
#[0 3 138 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 139 0 155 2 101] 
#[0 3 142 0 37 0 41 0 57 0 62 0 67 0 71 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 139 0 155 2 101] 
#[0 3 146 0 23] 
#[0 3 150 0 23] 
#[0 3 154 0 23] 
#[0 3 158 0 23] 
#[0 3 162 0 23] 
#[0 3 166 0 23] 
#[0 3 170 0 23] 
#[1 8 73 0 157 1 125 0 191 8 89 0 193 1 125 0 194 8 81 2 60 8 85 2 61 8 89 2 62] 
#[0 3 174 0 157] 
#[0 8 93 0 23] 
#[0 3 178 0 20 0 148] 
#[1 8 97 0 20 8 101 0 148 8 105 0 177] 
#[0 3 182 0 41 0 57 0 88 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 137] 
#[1 3 186 0 41 3 186 0 57 3 190 0 62 3 194 0 67 3 198 0 87 0 147 0 88 0 147 0 99 0 151 0 108 0 147 0 109 0 147 0 111 0 147 0 112 3 186 0 118 3 186 0 124 3 202 0 126 0 155 0 137] 
#[1 3 206 0 41 3 206 0 57 3 210 0 62 3 214 0 67 3 218 0 87 0 159 0 88 0 159 0 99 0 163 0 108 0 159 0 109 0 159 0 111 0 159 0 112 3 206 0 118 3 206 0 124 3 222 0 126 0 167 0 137] 
#[1 3 226 0 41 3 226 0 57 3 230 0 62 3 234 0 67 3 238 0 87 0 171 0 88 0 171 0 99 0 175 0 108 0 171 0 109 0 171 0 111 0 171 0 112 3 226 0 118 3 226 0 124 3 242 0 126 0 179 0 137] 
#[1 3 246 0 41 3 246 0 57 3 250 0 62 3 254 0 67 4 2 0 87 0 183 0 88 0 183 0 99 0 187 0 108 0 183 0 109 0 183 0 111 0 183 0 112 3 246 0 118 3 246 0 124 4 6 0 126 0 191 0 137] 
#[1 4 10 0 41 4 10 0 57 4 14 0 62 4 18 0 67 4 22 0 87 0 195 0 88 0 195 0 99 0 199 0 108 0 195 0 109 0 195 0 111 0 195 0 112 4 10 0 118 4 10 0 124 4 26 0 126 0 203 0 137] 
#[0 4 30 0 41 0 57 0 88 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 137] 
#[0 4 34 0 41 0 57 0 88 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 137] 
#[1 4 38 0 41 4 38 0 57 4 42 0 62 4 46 0 87 0 207 0 88 0 207 0 99 0 211 0 108 0 207 0 109 0 207 0 111 0 207 0 112 4 38 0 118 4 38 0 124 4 50 0 126 0 207 0 137] 
#[1 4 54 0 57 8 113 0 108 8 113 2 75] 
#[1 8 141 0 41 4 58 0 57 8 141 0 88 8 141 0 99 4 58 0 108 8 141 0 109 8 141 0 111 8 141 0 112 8 141 0 118 8 141 0 124 8 141 0 137 8 141 1 154] 
#[0 4 62 0 41 0 57 0 88 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 137] 
#[1 8 145 0 108 4 54 0 126 8 145 2 75] 
#[1 8 173 0 88 8 173 0 99 4 66 0 108 8 173 0 109 8 173 0 111 8 173 0 112 4 66 0 126 8 173 0 137 8 173 2 0] 
#[0 4 70 0 88 0 99 0 108 0 109 0 111 0 112 0 126 0 137] 
#[1 4 54 0 87 8 177 0 108 8 177 2 75] 
#[1 4 74 0 87 8 205 0 88 8 205 0 99 4 74 0 108 8 205 0 109 8 205 0 111 8 205 0 112 8 205 0 137 8 205 2 14] 
#[0 4 78 0 87 0 88 0 99 0 108 0 109 0 111 0 112 0 137] 
#[0 8 209 0 67] 
#[1 4 82 0 67 8 233 0 88 8 233 0 99 8 233 0 109 8 233 0 111 8 233 0 112 8 233 2 39] 
#[0 4 86 0 67 0 88 0 99 0 109 0 111 0 112] 
#[0 8 237 0 62] 
#[1 4 90 0 62 9 9 0 88 9 9 0 99 9 9 0 109 9 9 0 111 9 9 0 112 9 9 0 137 9 9 2 46] 
#[0 4 94 0 62 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 4 98 0 37 0 41 0 42 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 80 0 85 0 86 0 87 0 88 0 94 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 157] 
#[1 1 2 0 2 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 11 1 2 0 12 1 2 0 13 1 2 0 14 1 2 0 15 1 2 0 16 1 2 0 17 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 21 1 2 0 22 1 2 0 23 5 253 0 24 1 2 0 25 0 107 0 26 1 2 0 27 1 2 0 28 1 2 0 29 1 2 0 30 1 2 0 31 1 2 0 33 1 2 0 34 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 40 1 2 0 44 1 2 0 45 1 2 0 51 1 2 0 63 1 2 0 68 1 2 0 79 1 2 0 82 1 2 0 89 1 2 0 90 1 2 0 91 1 2 0 92 1 2 0 101 1 2 0 103 1 2 0 119 1 2 0 145 1 2 0 149 1 2 0 150 1 2 0 151 1 2 0 153 1 2 0 154 1 2 0 155 1 2 0 163 1 2 0 164 1 2 0 167 1 2 0 168 6 209 0 217 6 209 0 239 1 2 2 101] 
#[0 4 102 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 4 106 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 1 2 0 2 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 0 215 0 9 0 15 0 10 1 2 0 11 1 2 0 12 1 2 0 13 1 2 0 14 0 219 0 15 1 2 0 16 1 2 0 17 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 21 1 2 0 22 5 253 0 24 0 107 0 26 1 2 0 27 1 2 0 28 1 2 0 29 1 2 0 30 1 2 0 31 2 206 0 32 1 2 0 33 1 2 0 34 0 15 0 35 1 2 0 36 0 15 0 37 1 2 0 38 1 2 0 39 1 2 0 40 1 2 0 44 1 2 0 90 1 2 0 149 1 2 0 150 1 2 0 151 1 2 0 153 1 2 0 154 0 15 0 157 6 9 0 217 6 9 0 239] 
#[1 9 13 0 9 1 70 0 10 1 74 0 35 1 78 0 37] 
#[0 9 17 0 9] 
#[0 4 110 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 4 114 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 4 118 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 4 122 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 4 126 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 4 130 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 9 21 0 157] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 9 25 0 247 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 9 29 1 48 9 29 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 9 29 1 64 3 197 1 65 9 29 1 84 9 29 1 87 9 29 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 4 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 9 33 1 48 9 33 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 9 33 1 64 3 197 1 65 9 33 1 84 9 33 1 87 9 33 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 4 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 0 102 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 110 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 118 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 126 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 142 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 154 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 162 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 170 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 178 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 190 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 198 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 206 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 222 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 230 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 0 238 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[1 0 15 0 2 0 15 0 5 0 15 0 6 0 15 0 8 0 15 0 9 0 15 0 10 0 15 0 15 1 2 0 20 0 15 0 23 5 253 0 24 0 15 0 25 0 223 0 26 0 15 0 29 0 15 0 31 0 15 0 32 0 15 0 33 0 15 0 35 0 15 0 36 0 15 0 37 0 15 0 38 0 15 0 39 0 15 0 44 0 15 0 45 0 15 0 51 0 15 0 63 0 15 0 68 0 15 0 79 0 15 0 82 0 15 0 89 0 15 0 90 0 15 0 91 0 15 0 92 0 15 0 101 0 15 0 102 0 15 0 103 0 15 0 119 0 15 0 128 0 15 0 145 0 15 0 148 0 15 0 149 0 15 0 151 0 15 0 153 0 15 0 155 0 15 0 157 0 15 0 163 0 15 0 164 0 15 0 167 0 15 0 168 9 37 0 217 9 37 0 239 0 15 2 101] 
#[0 1 38 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 9 41 0 157 9 45 1 106 9 49 1 107] 
#[0 4 142 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 9 53 0 196 9 53 0 197 9 53 0 198 9 53 0 199 1 145 0 200 1 145 0 201 1 145 0 202 9 53 0 203 1 161 0 204 9 53 0 205 9 53 0 206 9 53 0 207 9 53 0 208 9 53 0 209 1 185 0 210 9 53 0 216 9 53 1 158 9 53 2 81 2 229 2 82 3 1 2 100] 
#[1 2 194 0 9 2 198 0 49 2 198 0 52 2 198 0 55 2 198 0 60 2 198 0 65 2 198 0 76 2 198 0 86 2 198 0 94 2 198 0 100 6 181 0 104 6 181 0 114 2 198 0 117 2 198 0 121 2 198 0 125 2 198 0 134 2 198 0 135 2 198 0 138 2 198 0 142 2 198 0 157 6 169 1 54 6 173 1 55 6 177 1 56 6 181 1 57 6 181 1 58] 
#[1 1 77 0 148 9 57 1 93] 
#[0 4 146 0 148] 
#[0 9 61 0 146] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 9 65 0 196 9 65 0 197 9 65 0 198 9 65 0 199 1 145 0 200 1 145 0 201 1 145 0 202 9 65 0 203 1 161 0 204 9 65 0 205 9 65 0 206 9 65 0 207 9 65 0 208 9 65 0 209 1 185 0 210 9 65 0 216 9 65 1 158 9 69 2 81 2 229 2 82 3 1 2 100] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 150 0 25 0 141 0 47 0 145 0 48 0 149 0 49 0 157 0 52 0 161 0 55 3 21 0 56 0 177 0 60 0 181 0 61 0 185 0 62 0 193 0 65 2 217 0 72 0 205 0 76 0 225 0 86 0 233 0 94 0 237 0 97 0 241 0 99 0 245 0 100 0 253 0 117 1 1 0 121 1 5 0 122 1 9 0 125 1 17 0 128 2 217 0 130 1 33 0 133 1 37 0 134 1 41 0 135 3 73 0 136 1 53 0 138 1 61 0 140 1 65 0 142 1 81 0 152 9 73 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 1 117 0 191 1 121 0 193 1 125 0 194 1 129 0 196 1 129 0 197 1 129 0 198 1 129 0 199 1 145 0 200 1 145 0 201 1 145 0 202 1 129 0 203 1 161 0 204 1 129 0 205 1 129 0 206 1 129 0 207 1 129 0 208 1 129 0 209 1 185 0 210 1 129 0 216 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 9 81 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 9 81 1 84 9 85 1 99 2 113 1 100 9 81 1 109 9 85 1 123 9 85 1 124 9 93 1 129 1 129 1 158 1 197 2 71 2 217 2 72 1 129 2 81 2 229 2 82 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 3 1 2 100] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 61 0 140 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 1 129 0 196 1 129 0 197 1 129 0 198 1 129 0 199 1 145 0 200 1 145 0 201 1 145 0 202 1 129 0 203 1 161 0 204 1 129 0 205 1 129 0 206 1 129 0 207 1 129 0 208 1 129 0 209 1 185 0 210 1 129 0 216 9 97 1 100 1 129 1 158 1 129 2 81 2 229 2 82 3 1 2 100] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 9 105 1 48 9 105 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 9 105 1 64 3 197 1 65 9 105 1 84 9 105 1 87 9 105 1 88 9 105 1 89 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 9 109 0 25] 
#[0 9 113 0 25] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 9 121 1 48 9 121 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 9 121 1 64 3 197 1 65 9 121 1 84 9 121 1 87 9 121 1 88 9 121 1 90 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 9 125 1 48 9 125 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 9 125 1 64 3 197 1 65 9 125 1 84 9 125 1 87 9 125 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 9 129 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 25 0 60 3 29 0 65 3 33 0 76 3 41 0 86 3 45 0 94 3 49 0 100 3 53 0 117 3 57 0 121 3 61 0 125 9 133 0 128 3 65 0 134 3 69 0 135 3 77 0 138 4 201 0 157 3 85 0 191 9 149 0 238 9 153 0 242 9 153 0 243 1 241 0 244 9 149 1 25 9 153 1 26] 
#[1 9 157 0 15 4 154 0 38 9 161 0 214 9 165 0 215] 
#[1 9 169 0 8 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 4 158 0 155 9 173 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 9 177 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 9 181 0 238 1 197 0 240 9 185 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 9 189 0 249 1 197 0 250 1 197 0 251 1 197 0 252 9 177 1 8 1 197 1 9 1 197 1 10 9 193 1 12 9 197 1 13 9 201 1 14 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 9 205 1 31 1 197 1 50 1 197 2 71 2 217 2 72 1 197 2 84 1 197 2 85 1 197 2 87] 
#[1 9 209 0 8 1 70 0 10 1 74 0 35 1 78 0 37 9 213 0 148 9 217 0 254 9 217 0 255 9 217 1 5] 
#[1 1 130 0 8 1 130 0 10 1 130 0 35 1 130 0 37 0 227 0 148 9 233 2 8] 
#[1 9 237 0 37 6 21 0 212 6 25 0 213] 
#[1 9 229 0 148 9 241 2 8] 
#[1 0 231 0 8 1 134 0 10 1 134 0 35 1 134 0 37 1 134 0 148] 
#[0 4 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 9 249 0 25] 
#[0 4 166 0 25] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 9 65 0 196 9 65 0 197 9 65 0 198 9 65 0 199 1 145 0 200 1 145 0 201 1 145 0 202 9 65 0 203 1 161 0 204 9 65 0 205 9 65 0 206 9 65 0 207 9 65 0 208 9 65 0 209 1 185 0 210 9 65 0 216 9 65 1 158 9 65 2 81 9 253 2 82 3 1 2 100] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 10 1 1 48 10 1 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 10 1 1 64 3 197 1 65 10 1 1 84 10 1 1 87 10 1 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 10 5 0 25] 
#[1 10 9 0 54 10 13 0 74 10 17 1 138 10 21 1 139 10 25 1 144] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 10 29 0 157 1 125 0 191 1 121 0 193 1 125 0 194 10 33 0 196 10 33 0 197 10 33 0 198 10 33 0 199 1 145 0 200 1 145 0 201 1 145 0 202 10 33 0 203 1 161 0 204 10 33 0 205 10 33 0 206 10 33 0 207 10 33 0 208 10 33 0 209 1 185 0 210 10 33 0 216 10 37 1 16 10 33 1 158 10 33 2 81 2 229 2 82 10 41 2 100] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 10 45 1 48 10 45 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 10 45 1 64 3 197 1 65 10 45 1 84 10 45 1 87 10 45 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 4 170 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 4 174 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 0 149 0 49 0 157 0 52 0 161 0 55 3 21 0 56 0 177 0 60 0 181 0 61 0 185 0 62 0 193 0 65 2 217 0 72 0 205 0 76 3 37 0 79 0 225 0 86 0 233 0 94 0 237 0 97 0 241 0 99 0 245 0 100 0 253 0 117 1 1 0 121 1 5 0 122 1 9 0 125 1 17 0 128 2 217 0 130 1 33 0 133 1 37 0 134 1 41 0 135 3 73 0 136 1 53 0 138 1 61 0 140 1 65 0 142 1 81 0 152 4 213 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 1 117 0 191 1 121 0 193 1 125 0 194 1 129 0 196 1 129 0 197 1 129 0 198 1 129 0 199 1 145 0 200 1 145 0 201 1 145 0 202 1 129 0 203 1 161 0 204 1 129 0 205 1 129 0 206 1 129 0 207 1 129 0 208 1 129 0 209 1 185 0 210 1 129 0 216 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 10 57 1 48 10 57 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 10 57 1 64 3 197 1 65 10 57 1 84 10 57 1 87 10 57 1 88 10 57 1 99 2 113 1 100 10 57 1 149 1 129 1 158 1 197 2 71 2 217 2 72 1 129 2 81 2 229 2 82 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87 3 1 2 100] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 10 61 1 48 10 61 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 10 61 1 64 3 197 1 65 10 61 1 84 10 61 1 87 10 61 1 88 10 61 1 90 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 10 65 0 25] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 10 69 1 48 10 69 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 10 69 1 64 3 197 1 65 10 69 1 84 10 69 1 87 10 69 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 4 178 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 10 73 0 155] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 0 149 0 49 0 153 0 50 0 157 0 52 0 161 0 55 0 165 0 56 0 169 0 58 0 173 0 59 0 177 0 60 0 181 0 61 0 185 0 62 0 189 0 64 0 193 0 65 2 217 0 72 0 201 0 75 0 205 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 0 225 0 86 0 229 0 93 0 233 0 94 0 237 0 97 0 241 0 99 0 245 0 100 0 249 0 116 0 253 0 117 1 1 0 121 1 5 0 122 1 9 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 1 37 0 134 1 41 0 135 1 45 0 136 1 49 0 137 1 53 0 138 1 57 0 139 1 61 0 140 1 65 0 142 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 4 182 0 155 1 85 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 1 117 0 191 1 121 0 193 1 125 0 194 1 129 0 196 1 129 0 197 1 129 0 198 1 129 0 199 1 145 0 200 1 145 0 201 1 145 0 202 1 129 0 203 1 161 0 204 1 129 0 205 1 129 0 206 1 129 0 207 1 129 0 208 1 129 0 209 1 185 0 210 1 129 0 216 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 10 77 1 91 10 77 1 92 10 77 1 93 10 77 1 96 10 77 1 97 10 77 1 98 2 109 1 99 2 113 1 100 2 117 1 105 10 77 1 108 2 125 1 109 10 77 1 110 10 77 1 111 10 77 1 112 10 77 1 119 10 77 1 120 10 77 1 121 10 77 1 122 10 77 1 130 10 77 1 131 10 77 1 132 10 77 1 133 10 77 1 134 10 77 1 135 10 77 1 136 10 77 1 137 10 77 1 145 10 77 1 146 10 77 1 147 10 77 1 148 10 77 1 150 1 129 1 158 1 197 2 71 2 217 2 72 10 77 2 80 1 129 2 81 2 229 2 82 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 10 77 2 88 3 1 2 100] 
#[0 4 186 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 0 149 0 49 0 153 0 50 0 157 0 52 0 161 0 55 0 165 0 56 0 169 0 58 0 173 0 59 0 177 0 60 0 181 0 61 0 185 0 62 0 189 0 64 0 193 0 65 2 217 0 72 0 201 0 75 0 205 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 0 225 0 86 0 229 0 93 0 233 0 94 0 237 0 97 0 241 0 99 0 245 0 100 0 249 0 116 0 253 0 117 1 1 0 121 1 5 0 122 1 9 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 1 37 0 134 1 41 0 135 1 45 0 136 1 49 0 137 1 53 0 138 1 57 0 139 1 61 0 140 1 65 0 142 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 1 85 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 1 117 0 191 1 121 0 193 1 125 0 194 1 129 0 196 1 129 0 197 1 129 0 198 1 129 0 199 1 145 0 200 1 145 0 201 1 145 0 202 1 129 0 203 1 161 0 204 1 129 0 205 1 129 0 206 1 129 0 207 1 129 0 208 1 129 0 209 1 185 0 210 1 129 0 216 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 10 81 1 91 10 81 1 92 10 81 1 93 10 81 1 96 10 81 1 97 10 81 1 98 2 109 1 99 2 113 1 100 2 117 1 105 10 81 1 108 2 125 1 109 10 81 1 110 10 81 1 111 10 81 1 112 10 81 1 119 10 81 1 120 10 81 1 121 10 81 1 122 10 81 1 130 10 81 1 131 10 81 1 132 10 81 1 133 10 81 1 134 10 81 1 135 10 81 1 136 10 81 1 137 10 81 1 145 10 81 1 146 10 81 1 147 10 81 1 148 10 81 1 150 1 129 1 158 1 197 2 71 2 217 2 72 10 81 2 80 1 129 2 81 2 229 2 82 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 10 81 2 88 3 1 2 100] 
#[0 10 85 0 157] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 10 89 0 196 10 89 0 197 10 89 0 198 10 89 0 199 1 145 0 200 1 145 0 201 1 145 0 202 10 89 0 203 1 161 0 204 10 89 0 205 10 89 0 206 10 89 0 207 10 89 0 208 10 89 0 209 1 185 0 210 10 89 0 216 10 93 0 218 10 97 0 219 10 89 1 158 10 89 2 81 2 229 2 82 3 1 2 100] 
#[0 4 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[1 4 194 0 2 4 194 0 3 4 194 0 4 4 194 0 5 4 194 0 6 4 194 0 7 4 194 0 8 0 235 0 9 0 235 0 10 4 194 0 11 4 194 0 12 4 194 0 13 4 194 0 14 4 194 0 15 4 194 0 16 4 194 0 17 4 194 0 18 4 194 0 19 0 235 0 20 4 194 0 21 4 194 0 22 4 194 0 26 4 194 0 27 4 194 0 28 4 194 0 29 4 194 0 30 4 194 0 31 4 194 0 33 4 194 0 34 0 235 0 35 4 194 0 36 0 235 0 37 4 194 0 38 4 194 0 39 4 194 0 40 4 194 0 44 4 194 0 90 4 194 0 149 4 194 0 150 4 194 0 151 4 194 0 153 4 194 0 154 4 198 0 157] 
#[0 10 101 0 157] 
#[0 4 202 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[1 4 206 0 2 4 206 0 5 4 206 0 6 4 206 0 8 4 206 0 9 4 206 0 10 4 206 0 15 4 206 0 23 4 206 0 25 4 206 0 26 4 206 0 29 4 206 0 31 4 206 0 33 4 206 0 35 4 206 0 36 0 239 0 37 4 206 0 38 4 206 0 39 4 206 0 44 4 206 0 45 4 206 0 51 4 206 0 63 4 206 0 68 4 206 0 79 4 206 0 82 4 206 0 89 4 206 0 90 4 206 0 91 4 206 0 92 4 206 0 101 4 206 0 102 4 206 0 103 4 206 0 119 4 206 0 128 4 206 0 145 4 206 0 148 4 206 0 149 4 206 0 151 4 206 0 153 4 206 0 155 4 206 0 157 4 206 0 163 4 206 0 164 4 206 0 167 4 206 0 168 10 105 0 213 4 206 2 101] 
#[0 4 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[1 4 214 0 1 4 214 0 5 4 214 0 8 4 218 0 9 4 214 0 10 4 214 0 12 4 214 0 13 4 214 0 16 4 214 0 17 4 214 0 47 4 214 0 48 4 214 0 49 4 214 0 52 4 214 0 55 4 214 0 56 4 214 0 60 4 214 0 61 4 214 0 62 4 214 0 65 4 214 0 72 4 214 0 76 4 214 0 79 4 214 0 86 4 214 0 94 4 214 0 97 4 214 0 99 4 214 0 100 4 214 0 104 4 214 0 114 4 214 0 117 4 214 0 121 4 214 0 122 4 214 0 125 4 214 0 128 4 214 0 130 4 214 0 133 4 214 0 134 4 214 0 135 4 214 0 136 4 214 0 138 4 214 0 152 0 243 0 157 4 214 0 158 4 214 0 159 4 214 0 160 4 214 0 161 4 214 0 162 4 214 0 165 4 214 0 166 4 214 0 169 4 214 0 170 10 113 0 221 10 117 0 222 10 121 0 223 10 125 0 224 10 129 0 225] 
#[0 4 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 4 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 10 133 0 157] 
#[0 10 137 0 157] 
#[0 10 141 0 35] 
#[1 4 230 0 4 4 230 0 7 10 145 0 8 4 230 0 11 4 230 0 14 4 230 0 18 10 149 0 20 4 230 0 22 4 230 0 28 4 230 0 30 4 230 0 34 4 234 0 35 10 153 0 37 4 230 0 40 4 230 0 150] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 10 157 0 247 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 10 161 1 48 10 161 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 10 161 1 64 3 197 1 65 10 161 1 84 10 161 1 87 10 161 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 10 165 0 233 10 169 0 234 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 10 173 1 48 10 173 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 10 173 1 64 3 197 1 65 10 173 1 84 10 173 1 87 10 173 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 10 177 0 234 1 213 0 235 1 217 0 236 10 181 0 237 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 10 173 1 48 10 173 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 10 173 1 64 3 197 1 65 10 173 1 84 10 173 1 87 10 173 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 10 185 0 157] 
#[0 10 189 0 157] 
#[0 4 238 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 4 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 4 246 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 4 250 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 4 254 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 5 2 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 5 6 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 5 10 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 5 14 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 5 18 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 5 22 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 10 193 1 48 10 193 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 10 193 1 64 3 197 1 65 10 193 1 84 10 193 1 87 10 193 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 5 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 5 30 0 9 0 15 0 25 0 30] 
#[1 5 34 0 9 10 197 0 15 5 34 0 25] 
#[0 5 38 0 9 0 15 0 25] 
#[1 5 42 0 9 5 42 0 15 5 42 0 25 10 201 0 30] 
#[0 5 46 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 5 50 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 5 54 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 5 58 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 5 62 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 94 0 100 0 117 0 121 0 125 0 134 0 135 0 138 0 142 0 157] 
#[0 5 66 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 94 0 100 0 117 0 121 0 125 0 134 0 135 0 138 0 142 0 157] 
#[0 10 205 0 9] 
#[1 5 70 0 9 10 209 0 15] 
#[0 5 74 0 9 0 15] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 10 213 0 196 10 213 0 197 10 213 0 198 10 213 0 199 1 145 0 200 1 145 0 201 1 145 0 202 10 213 0 203 1 161 0 204 10 213 0 205 10 213 0 206 10 213 0 207 10 213 0 208 10 213 0 209 1 185 0 210 10 213 0 216 10 213 1 158 10 213 2 81 2 229 2 82 3 1 2 100] 
#[0 5 78 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 94 0 100 0 117 0 121 0 125 0 134 0 135 0 138 0 142 0 157] 
#[0 10 217 0 9] 
#[1 5 82 0 9 10 221 0 15] 
#[1 5 86 0 9 5 86 0 15 3 18 0 32] 
#[0 10 225 0 157] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 5 90 0 157] 
#[0 4 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 4 230 0 2 4 230 0 3 4 230 0 4 4 230 0 5 4 230 0 6 4 230 0 7 10 229 0 8 4 230 0 9 4 230 0 10 4 230 0 11 4 230 0 12 4 230 0 14 4 230 0 15 4 230 0 16 4 230 0 18 10 149 0 20 4 230 0 21 4 230 0 22 4 230 0 23 4 230 0 25 4 230 0 26 4 230 0 27 4 230 0 28 4 230 0 29 4 230 0 30 4 230 0 31 4 230 0 33 4 230 0 34 0 247 0 35 4 230 0 36 10 153 0 37 4 230 0 38 4 230 0 39 4 230 0 40 4 230 0 44 4 230 0 45 4 230 0 51 4 230 0 63 4 230 0 68 4 230 0 79 4 230 0 82 4 230 0 89 4 230 0 90 4 230 0 91 4 230 0 92 4 230 0 101 4 230 0 103 4 230 0 119 4 230 0 145 4 230 0 149 4 230 0 150 4 230 0 151 4 230 0 153 4 230 0 154 4 230 0 155 4 230 0 163 4 230 0 164 4 230 0 167 4 230 0 168 4 230 2 101] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 10 233 1 27 10 233 1 28 10 233 1 33 10 233 1 34 10 233 1 35 10 233 1 36 1 197 1 50 1 197 2 71 2 217 2 72 10 233 2 83 1 197 2 84 1 197 2 85 10 233 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 10 237 1 27 10 237 1 28 10 237 1 33 10 237 1 34 10 237 1 35 10 237 1 36 1 197 1 50 1 197 2 71 2 217 2 72 10 237 2 83 1 197 2 84 1 197 2 85 10 237 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 10 241 1 27 10 241 1 28 10 241 1 33 10 241 1 34 10 241 1 35 10 241 1 36 1 197 1 50 1 197 2 71 2 217 2 72 10 241 2 83 1 197 2 84 1 197 2 85 10 241 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 10 249 1 27 10 249 1 28 10 249 1 33 10 249 1 34 10 249 1 35 10 249 1 36 10 249 1 37 1 197 1 50 1 197 2 71 2 217 2 72 10 249 2 83 1 197 2 84 1 197 2 85 10 249 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 10 253 1 27 10 253 1 28 10 253 1 33 10 253 1 34 10 253 1 35 10 253 1 36 10 253 1 37 1 197 1 50 1 197 2 71 2 217 2 72 10 253 2 83 1 197 2 84 1 197 2 85 10 253 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 11 1 1 38 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 11 5 1 38 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 11 9 1 39 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 11 13 1 39 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 11 17 1 39 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 11 21 0 196 11 21 0 197 11 21 0 198 11 21 0 199 1 145 0 200 1 145 0 201 1 145 0 202 11 21 0 203 1 161 0 204 11 21 0 205 11 21 0 206 11 21 0 207 11 21 0 208 11 21 0 209 1 185 0 210 11 21 0 216 11 21 1 158 11 21 2 81 2 229 2 82 3 1 2 100] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 11 25 0 196 11 25 0 197 11 25 0 198 11 25 0 199 1 145 0 200 1 145 0 201 1 145 0 202 11 25 0 203 1 161 0 204 11 25 0 205 11 25 0 206 11 25 0 207 11 25 0 208 11 25 0 209 1 185 0 210 11 25 0 216 11 25 1 158 11 25 2 81 2 229 2 82 3 1 2 100] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 11 29 1 39 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 3 133 1 39 11 33 1 40 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 3 133 1 39 11 37 1 40 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 11 41 1 41 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 11 45 1 42 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 11 49 1 43 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 11 53 1 44 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 11 57 1 47 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 11 61 1 45 1 197 1 50 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 11 65 1 48 11 65 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 11 65 1 64 3 197 1 65 11 65 1 84 11 65 1 87 11 65 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 77 0 148 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 11 69 1 48 11 69 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 11 69 1 63 11 69 1 64 3 197 1 65 11 69 1 84 11 69 1 87 11 69 1 88 11 69 1 93 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 0 103 0 157 1 125 0 191 1 121 0 193 1 125 0 194 11 81 0 195 6 205 0 196 6 205 0 197 6 205 0 198 6 205 0 199 1 145 0 200 1 145 0 201 1 145 0 202 6 205 0 203 1 161 0 204 6 205 0 205 6 205 0 206 6 205 0 207 6 205 0 208 6 205 0 209 1 185 0 210 6 205 0 216 6 205 1 158 6 205 2 81 2 229 2 82 3 1 2 100] 
#[0 11 85 0 157] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 11 97 1 48 11 97 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 11 97 1 64 3 197 1 65 11 89 1 75 11 93 1 76 11 97 1 84 11 97 1 87 11 97 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 11 101 1 48 11 101 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 11 101 1 64 3 197 1 65 11 101 1 84 11 101 1 87 11 101 1 88 11 101 1 90 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 5 94 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 5 98 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 11 105 0 82 11 109 0 119 11 113 1 79 11 117 1 80 11 121 1 81] 
#[1 3 37 0 79 5 102 0 82 7 53 0 91 7 57 0 92 7 61 0 103 5 102 0 119 7 65 0 145 7 69 1 65 11 125 1 69 7 89 1 70 7 93 1 71 7 97 1 72 7 101 1 73 7 105 1 74] 
#[0 5 106 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 5 110 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 5 114 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 5 118 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 5 122 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 5 126 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 5 130 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 11 129 1 48 11 129 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 11 129 1 64 3 197 1 65 11 129 1 84 11 129 1 87 11 129 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 5 134 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 5 138 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 0 251 0 41 0 255 0 49 0 255 0 52 0 255 0 55 3 182 0 57 0 255 0 60 0 255 0 65 5 150 0 69 1 3 0 71 0 255 0 76 0 255 0 86 0 251 0 88 0 255 0 94 0 251 0 99 0 255 0 100 1 3 0 105 1 7 0 108 0 251 0 109 0 251 0 111 0 251 0 112 0 255 0 117 0 251 0 118 0 255 0 121 1 11 0 124 0 255 0 125 0 255 0 134 0 255 0 135 0 251 0 137 0 255 0 138 1 3 0 141 0 255 0 142 0 255 0 157] 
#[1 1 15 0 41 1 19 0 49 1 19 0 52 1 19 0 55 1 19 0 60 1 19 0 65 5 166 0 69 5 174 0 70 1 23 0 71 1 19 0 76 5 174 0 84 1 19 0 86 1 27 0 88 1 19 0 94 1 15 0 99 1 19 0 100 1 15 0 105 5 170 0 108 1 27 0 109 1 27 0 111 1 23 0 112 1 19 0 117 1 15 0 118 1 19 0 121 1 31 0 124 1 19 0 125 1 19 0 134 1 19 0 135 1 35 0 137 1 19 0 138 1 15 0 141 1 19 0 142 5 182 0 152 1 39 0 157] 
#[1 1 43 0 41 1 47 0 49 1 47 0 52 1 47 0 55 3 186 0 57 5 206 0 58 1 47 0 60 3 190 0 62 1 47 0 65 3 194 0 67 5 194 0 69 1 51 0 71 1 47 0 76 1 47 0 86 3 198 0 87 1 55 0 88 1 47 0 94 1 59 0 99 1 47 0 100 1 63 0 105 1 67 0 108 1 55 0 109 1 55 0 111 1 55 0 112 5 202 0 113 1 47 0 117 1 43 0 118 1 47 0 121 1 71 0 124 1 47 0 125 3 202 0 126 1 47 0 134 1 47 0 135 1 75 0 137 1 47 0 138 1 63 0 141 1 47 0 142 5 202 0 143 1 79 0 157] 
#[1 1 83 0 41 1 87 0 49 1 87 0 52 1 87 0 55 3 206 0 57 5 234 0 58 1 87 0 60 3 210 0 62 1 87 0 65 3 214 0 67 5 218 0 69 1 91 0 71 1 87 0 76 1 87 0 86 3 218 0 87 1 95 0 88 1 87 0 94 1 95 0 99 1 87 0 100 1 91 0 105 1 99 0 108 1 95 0 109 1 95 0 111 1 95 0 112 5 230 0 113 1 87 0 117 1 83 0 118 1 87 0 121 1 103 0 124 1 87 0 125 3 222 0 126 1 87 0 134 1 87 0 135 1 107 0 137 1 87 0 138 1 91 0 141 1 87 0 142 5 230 0 143 1 87 0 157] 
#[1 1 111 0 41 1 115 0 49 1 115 0 52 1 115 0 55 1 115 0 60 1 115 0 65 5 246 0 69 1 111 0 71 1 115 0 76 1 115 0 86 1 111 0 88 1 115 0 94 1 111 0 99 1 115 0 100 1 111 0 105 5 242 0 108 1 111 0 109 1 111 0 111 1 111 0 112 1 115 0 117 1 111 0 118 1 115 0 121 1 119 0 124 1 115 0 125 1 115 0 134 1 115 0 135 1 111 0 137 1 115 0 138 1 111 0 141 1 115 0 142 1 115 0 157] 
#[1 1 123 0 41 1 127 0 49 1 127 0 52 1 127 0 55 3 226 0 57 6 18 0 58 1 127 0 60 3 230 0 62 1 127 0 65 3 234 0 67 6 2 0 69 1 131 0 71 1 127 0 76 1 127 0 86 3 238 0 87 1 135 0 88 1 127 0 94 1 139 0 99 1 127 0 100 1 143 0 105 1 147 0 108 1 135 0 109 1 135 0 111 1 135 0 112 6 14 0 113 1 127 0 117 1 123 0 118 1 127 0 121 1 151 0 124 1 127 0 125 3 242 0 126 1 127 0 134 1 127 0 135 1 155 0 137 1 127 0 138 1 143 0 141 1 127 0 142 6 14 0 143 1 159 0 157] 
#[1 1 163 0 41 1 167 0 49 1 167 0 52 1 167 0 55 3 246 0 57 6 46 0 58 1 167 0 60 3 250 0 62 1 167 0 65 3 254 0 67 6 26 0 69 1 171 0 71 1 167 0 76 1 167 0 86 4 2 0 87 1 175 0 88 1 167 0 94 1 179 0 99 1 167 0 100 1 183 0 105 1 187 0 108 1 175 0 109 1 175 0 111 1 175 0 112 6 42 0 113 1 167 0 117 1 163 0 118 1 167 0 121 1 191 0 124 1 167 0 125 4 6 0 126 1 167 0 134 1 167 0 135 1 195 0 137 1 167 0 138 1 183 0 141 1 167 0 142 6 42 0 143 1 199 0 157] 
#[1 1 203 0 41 1 207 0 49 1 207 0 52 1 207 0 55 4 10 0 57 6 78 0 58 1 207 0 60 4 14 0 62 1 207 0 65 4 18 0 67 6 54 0 69 6 74 0 70 1 211 0 71 1 207 0 76 6 74 0 84 1 207 0 86 4 22 0 87 1 215 0 88 1 207 0 94 1 219 0 99 1 207 0 100 1 223 0 105 1 227 0 108 1 215 0 109 1 215 0 111 1 231 0 112 6 70 0 113 1 207 0 117 1 203 0 118 1 207 0 121 1 235 0 124 1 207 0 125 4 26 0 126 1 207 0 134 1 207 0 135 1 239 0 137 1 207 0 138 1 223 0 141 1 207 0 142 6 70 0 143 1 243 0 157] 
#[0 6 86 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 88 0 94 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 143 0 157] 
#[1 1 247 0 41 1 251 0 49 1 251 0 52 1 251 0 55 4 30 0 57 1 251 0 60 1 251 0 65 6 94 0 69 1 255 0 71 1 251 0 76 1 251 0 86 1 247 0 88 1 251 0 94 1 247 0 99 1 251 0 100 1 255 0 105 2 3 0 108 1 247 0 109 1 247 0 111 1 247 0 112 1 251 0 117 1 247 0 118 1 251 0 121 2 7 0 124 1 251 0 125 1 251 0 134 1 251 0 135 1 247 0 137 1 251 0 138 1 255 0 141 1 251 0 142 1 251 0 157] 
#[1 2 11 0 41 2 15 0 49 2 15 0 52 2 15 0 55 4 34 0 57 2 15 0 60 2 15 0 65 6 114 0 69 6 118 0 70 2 19 0 71 2 15 0 76 6 118 0 84 2 15 0 86 2 23 0 88 2 15 0 94 2 23 0 99 2 15 0 100 2 27 0 105 2 31 0 108 2 23 0 109 2 23 0 111 2 35 0 112 6 122 0 113 2 15 0 117 2 11 0 118 2 15 0 121 2 35 0 124 2 15 0 125 2 15 0 134 2 15 0 135 2 39 0 137 2 15 0 138 2 27 0 141 2 15 0 142 6 122 0 143 2 43 0 157 11 141 2 76 11 145 2 79] 
#[1 2 47 0 41 2 51 0 49 2 51 0 52 2 51 0 55 4 38 0 57 2 51 0 60 4 42 0 62 2 51 0 65 6 134 0 69 6 146 0 70 2 55 0 71 2 51 0 76 6 146 0 84 2 51 0 86 4 46 0 87 2 59 0 88 2 51 0 94 2 63 0 99 2 51 0 100 2 67 0 105 2 71 0 108 2 59 0 109 2 59 0 111 2 75 0 112 6 142 0 113 2 51 0 117 2 47 0 118 2 51 0 121 2 79 0 124 2 51 0 125 4 50 0 126 2 51 0 134 2 51 0 135 2 75 0 137 2 51 0 138 2 67 0 141 2 51 0 142 6 142 0 143 6 154 0 152 2 83 0 157] 
#[1 2 87 0 41 2 91 0 49 2 91 0 52 2 91 0 55 2 91 0 60 2 91 0 65 6 166 0 69 2 87 0 71 2 91 0 76 2 91 0 86 2 87 0 88 2 91 0 94 2 87 0 99 2 91 0 100 2 87 0 105 6 170 0 108 2 87 0 109 2 87 0 111 2 87 0 112 2 91 0 117 2 87 0 118 2 91 0 121 2 95 0 124 2 91 0 125 2 91 0 134 2 91 0 135 2 87 0 137 2 91 0 138 2 87 0 141 2 91 0 142 2 91 0 157] 
#[0 6 174 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 88 0 94 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 143 0 157] 
#[0 11 149 0 58] 
#[1 6 178 0 58 11 173 0 88 11 173 0 99 11 173 0 109 11 173 0 111 11 173 0 112 11 173 1 177] 
#[0 6 182 0 58 0 88 0 99 0 109 0 111 0 112] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 11 177 0 196 11 177 0 197 11 177 0 198 11 177 0 199 1 145 0 200 1 145 0 201 1 145 0 202 11 177 0 203 1 161 0 204 11 177 0 205 11 177 0 206 11 177 0 207 11 177 0 208 11 177 0 209 1 185 0 210 11 177 0 216 11 177 1 158 11 177 2 81 2 229 2 82 3 1 2 100] 
#[1 6 186 0 49 6 186 0 52 6 186 0 55 6 186 0 60 6 186 0 65 6 186 0 76 6 186 0 86 11 209 0 88 6 186 0 94 11 209 0 99 6 186 0 100 11 209 0 109 11 209 0 111 11 209 0 112 11 209 0 113 6 186 0 117 6 186 0 121 11 209 0 124 6 186 0 125 6 186 0 134 6 186 0 135 11 209 0 137 6 186 0 138 6 186 0 142 11 209 0 143 6 186 0 157 11 209 1 183] 
#[0 6 190 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 88 0 94 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 143 0 157] 
#[1 4 54 0 49 4 54 0 52 4 54 0 55 4 54 0 60 4 54 0 65 4 54 0 76 4 54 0 86 4 54 0 94 4 54 0 100 11 213 0 108 4 54 0 117 4 54 0 121 4 54 0 125 4 54 0 134 4 54 0 135 4 54 0 138 4 54 0 142 4 54 0 157 11 213 2 75] 
#[1 12 9 0 41 6 194 0 49 6 194 0 52 6 194 0 55 6 194 0 60 6 194 0 65 12 9 0 71 6 194 0 76 6 194 0 86 12 9 0 88 6 194 0 94 12 9 0 99 6 194 0 100 12 9 0 105 6 194 0 108 12 9 0 109 12 9 0 111 12 9 0 112 6 194 0 117 12 9 0 118 6 194 0 121 12 9 0 124 6 194 0 125 6 194 0 134 6 194 0 135 12 9 0 137 6 194 0 138 12 9 0 141 6 194 0 142 6 194 0 157 12 9 1 191] 
#[0 6 198 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 12 13 0 196 12 13 0 197 12 13 0 198 12 13 0 199 1 145 0 200 1 145 0 201 1 145 0 202 12 13 0 203 1 161 0 204 12 13 0 205 12 13 0 206 12 13 0 207 12 13 0 208 12 13 0 209 1 185 0 210 12 13 0 216 12 13 1 158 12 13 2 81 2 229 2 82 3 1 2 100] 
#[1 12 65 0 41 6 202 0 49 6 202 0 52 6 202 0 55 6 202 0 60 6 202 0 65 12 65 0 71 6 202 0 76 6 202 0 86 12 65 0 88 6 202 0 94 12 65 0 99 6 202 0 100 12 65 0 105 12 65 0 109 12 65 0 111 12 65 0 112 6 202 0 117 12 65 0 118 6 202 0 121 12 65 0 124 6 202 0 125 6 202 0 134 6 202 0 135 12 65 0 137 6 202 0 138 12 65 0 141 6 202 0 142 6 202 0 157 12 65 1 207] 
#[0 6 206 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 12 69 0 69] 
#[1 12 121 0 41 6 210 0 69 12 121 0 71 12 121 0 88 12 121 0 99 12 121 0 105 12 121 0 109 12 121 0 111 12 121 0 112 12 121 0 118 12 121 0 124 12 121 0 137 12 121 0 141 12 121 1 222] 
#[0 6 214 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 12 125 0 196 12 125 0 197 12 125 0 198 12 125 0 199 1 145 0 200 1 145 0 201 1 145 0 202 12 125 0 203 1 161 0 204 12 125 0 205 12 125 0 206 12 125 0 207 12 125 0 208 12 125 0 209 1 185 0 210 12 125 0 216 12 125 1 158 12 129 1 230 12 125 2 81 2 229 2 82 3 1 2 100] 
#[1 12 177 0 41 6 218 0 49 6 218 0 52 6 218 0 55 6 218 0 60 6 218 0 65 12 177 0 71 6 218 0 76 6 218 0 86 12 177 0 88 6 218 0 94 12 177 0 99 6 218 0 100 12 177 0 105 12 177 0 109 12 177 0 111 12 177 0 112 6 218 0 117 12 177 0 118 6 218 0 121 6 218 0 125 6 218 0 134 6 218 0 135 12 177 0 137 6 218 0 138 12 177 0 141 6 218 0 142 6 218 0 157 12 177 1 229] 
#[0 6 222 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 12 181 0 70 12 209 0 71 1 145 0 76 12 189 0 84 1 145 0 86 1 145 0 94 5 45 0 100 12 209 0 112 1 145 0 117 1 145 0 121 12 209 0 124 5 57 0 125 1 145 0 134 1 145 0 135 12 209 0 137 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 12 205 0 196 12 205 0 197 12 205 0 198 12 205 0 199 1 145 0 200 1 145 0 201 1 145 0 202 12 205 0 203 1 161 0 204 12 205 0 205 12 205 0 206 12 205 0 207 12 205 0 208 12 205 0 209 1 185 0 210 12 205 0 216 12 205 1 158 12 209 1 234 12 213 1 235 12 217 1 236 12 221 1 238 12 225 1 240 12 205 2 81 2 229 2 82 3 1 2 100] 
#[0 6 226 0 49 0 52 0 55 0 60 0 65 0 70 0 71 0 76 0 84 0 86 0 94 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 157] 
#[1 12 229 0 157 12 233 1 246] 
#[1 13 5 0 71 13 5 0 88 13 5 0 109 13 5 0 111 13 5 0 112 13 5 0 137 6 230 0 157 13 5 1 245] 
#[0 6 234 0 71 0 88 0 109 0 111 0 112 0 137 0 157] 
#[0 13 9 0 157] 
#[1 2 99 0 124 13 17 0 137 3 102 0 152 13 17 2 79] 
#[1 13 25 0 71 2 103 0 124 3 106 0 152 13 25 2 76] 
#[0 13 29 0 25] 
#[1 8 73 0 157 1 125 0 191 13 33 0 193 1 125 0 194] 
#[1 1 2 0 20 5 253 0 24 1 2 0 25 6 1 0 26 13 37 0 30 9 37 0 217 9 37 0 239] 
#[0 13 41 0 25] 
#[1 6 13 0 20 6 238 0 25] 
#[1 13 57 0 46 13 57 0 96 13 53 2 51 13 57 2 52] 
#[1 0 49 0 37 0 10 0 41 0 10 0 57 0 10 0 62 0 10 0 67 0 10 0 87 0 10 0 88 0 53 0 98 0 10 0 99 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 137 13 69 0 175 13 61 0 187 13 65 0 188 13 69 0 189 13 69 0 190 13 69 1 151 13 69 1 253 13 69 2 11 13 69 2 33 13 69 2 43 0 89 2 53 0 93 2 54 0 97 2 55 0 101 2 56 6 242 2 101] 
#[0 6 246 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 2 101] 
#[1 2 107 0 37 6 250 0 41 6 250 0 57 6 250 0 62 6 250 0 67 6 250 0 87 6 250 0 88 6 250 0 98 6 250 0 99 6 250 0 108 6 250 0 109 6 250 0 111 6 250 0 112 6 250 0 118 6 250 0 124 6 250 0 126 6 250 0 137 13 73 2 50 6 250 2 101] 
#[0 6 254 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 2 101] 
#[0 7 2 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 139 0 155 2 101] 
#[1 1 2 0 8 1 2 0 15 1 2 0 20 5 253 0 24 1 2 0 25 6 1 0 26 1 2 0 38 1 2 0 145 1 2 0 148 9 37 0 217 9 37 0 239] 
#[0 7 6 0 8 0 15 0 38] 
#[1 13 77 0 15 13 81 0 38] 
#[0 7 10 0 15 0 38] 
#[1 13 85 0 8 7 14 0 15 7 14 0 38 13 89 2 63 13 93 2 64] 
#[0 7 18 0 157] 
#[0 13 97 0 157] 
#[1 0 6 0 37 0 6 0 41 0 6 0 57 0 6 0 62 0 6 0 67 0 29 0 71 0 6 0 87 0 6 0 88 0 6 0 98 0 6 0 99 0 6 0 108 0 6 0 109 0 6 0 111 0 6 0 112 0 6 0 118 0 6 0 124 0 6 0 126 0 6 0 137 0 6 0 139 0 6 0 155 13 101 0 178 0 41 0 179 0 45 0 180] 
#[1 13 109 0 25 7 22 0 37 7 22 0 41 7 22 0 57 7 22 0 62 7 22 0 67 7 22 0 87 7 22 0 88 7 22 0 98 7 22 0 99 7 22 0 108 7 22 0 109 7 22 0 111 7 22 0 112 7 22 0 118 7 22 0 124 7 22 0 126 7 22 0 137 7 22 0 155 13 109 2 73 7 22 2 101] 
#[0 7 26 0 49 0 52 0 55 0 57 0 60 0 65 0 76 0 86 0 87 0 94 0 100 0 117 0 121 0 125 0 126 0 134 0 135 0 138 0 142 0 157] 
#[0 13 113 0 57] 
#[0 3 186 0 41 0 57 0 88 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 137] 
#[0 3 206 0 41 0 57 0 88 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 137] 
#[0 3 226 0 41 0 57 0 88 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 137] 
#[0 3 246 0 41 0 57 0 88 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 137] 
#[0 4 10 0 41 0 57 0 88 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 137] 
#[0 4 38 0 41 0 57 0 88 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 137] 
#[0 7 30 0 41 0 57 0 88 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 137] 
#[0 13 117 0 126] 
#[0 3 202 0 88 0 99 0 108 0 109 0 111 0 112 0 126 0 137] 
#[0 3 222 0 88 0 99 0 108 0 109 0 111 0 112 0 126 0 137] 
#[0 3 242 0 88 0 99 0 108 0 109 0 111 0 112 0 126 0 137] 
#[0 4 6 0 88 0 99 0 108 0 109 0 111 0 112 0 126 0 137] 
#[0 4 26 0 88 0 99 0 108 0 109 0 111 0 112 0 126 0 137] 
#[0 4 50 0 88 0 99 0 108 0 109 0 111 0 112 0 126 0 137] 
#[0 7 34 0 88 0 99 0 108 0 109 0 111 0 112 0 126 0 137] 
#[0 13 121 0 87] 
#[0 3 198 0 87 0 88 0 99 0 108 0 109 0 111 0 112 0 137] 
#[0 3 218 0 87 0 88 0 99 0 108 0 109 0 111 0 112 0 137] 
#[0 3 238 0 87 0 88 0 99 0 108 0 109 0 111 0 112 0 137] 
#[0 4 2 0 87 0 88 0 99 0 108 0 109 0 111 0 112 0 137] 
#[0 4 22 0 87 0 88 0 99 0 108 0 109 0 111 0 112 0 137] 
#[0 4 46 0 87 0 88 0 99 0 108 0 109 0 111 0 112 0 137] 
#[0 7 38 0 87 0 88 0 99 0 108 0 109 0 111 0 112 0 137] 
#[0 13 125 0 157] 
#[0 3 194 0 67 0 88 0 99 0 109 0 111 0 112] 
#[0 3 214 0 67 0 88 0 99 0 109 0 111 0 112] 
#[0 3 234 0 67 0 88 0 99 0 109 0 111 0 112] 
#[0 3 254 0 67 0 88 0 99 0 109 0 111 0 112] 
#[0 4 18 0 67 0 88 0 99 0 109 0 111 0 112] 
#[0 7 42 0 67 0 88 0 99 0 109 0 111 0 112] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 13 129 0 196 13 129 0 197 13 129 0 198 13 129 0 199 1 145 0 200 1 145 0 201 1 145 0 202 13 129 0 203 1 161 0 204 13 129 0 205 13 129 0 206 13 129 0 207 13 129 0 208 13 129 0 209 1 185 0 210 13 129 0 216 13 129 1 158 13 133 1 192 13 129 2 81 2 229 2 82 13 137 2 100] 
#[0 3 190 0 62 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 3 210 0 62 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 3 230 0 62 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 3 250 0 62 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 4 14 0 62 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 4 42 0 62 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 7 46 0 62 0 88 0 99 0 109 0 111 0 112 0 137] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 13 141 1 27 13 141 1 28 13 141 1 33 13 141 1 34 13 141 1 35 13 141 1 36 1 197 1 50 1 197 2 71 2 217 2 72 13 141 2 83 1 197 2 84 1 197 2 85 13 141 2 86 1 197 2 87] 
#[0 7 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 7 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 13 145 0 15 13 149 0 38] 
#[0 7 58 0 15 0 38 0 155] 
#[0 13 153 0 9] 
#[0 4 198 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 13 157 0 30] 
#[1 13 161 0 15 7 62 0 25] 
#[0 7 66 0 15 0 25] 
#[1 13 165 0 9 1 70 0 10 1 74 0 35 1 78 0 37] 
#[0 7 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 13 169 0 8] 
#[1 1 70 0 9 1 70 0 10 1 74 0 35 2 111 0 37] 
#[1 2 162 0 10 2 162 0 35 2 162 0 37 13 173 0 157 13 177 2 89 13 181 2 90] 
#[1 1 2 0 4 1 2 0 7 1 2 0 8 0 15 0 10 1 2 0 11 1 2 0 13 1 2 0 14 1 2 0 17 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 22 5 253 0 24 6 1 0 26 1 2 0 28 1 2 0 30 1 2 0 34 0 15 0 35 0 15 0 37 1 2 0 40 1 2 0 150 0 15 0 157 6 9 0 217 6 9 0 239] 
#[0 7 74 0 25] 
#[0 7 78 0 9 0 15 0 25] 
#[0 13 185 0 25] 
#[0 7 82 0 25] 
#[1 13 189 0 15 7 86 0 25] 
#[0 13 193 0 157] 
#[0 7 90 0 15 0 23 0 25 0 38 0 155 0 163 0 164 0 167 0 168] 
#[0 13 197 0 25] 
#[0 7 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 7 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 7 102 0 9 0 25 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 13 201 0 9] 
#[0 13 205 0 9] 
#[0 7 106 0 20] 
#[0 7 110 0 20] 
#[0 7 114 0 9 0 20] 
#[0 7 118 0 20] 
#[0 7 122 0 20] 
#[1 13 209 0 9 7 126 0 20] 
#[0 13 213 0 20] 
#[0 7 130 0 15 0 38] 
#[0 13 217 0 38] 
#[1 13 221 0 15 7 134 0 38] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 4 221 1 48 4 221 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 4 221 1 64 3 197 1 65 4 221 1 84 4 221 1 87 4 221 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 1 2 0 8 1 2 0 13 1 2 0 15 1 2 0 17 1 2 0 19 1 2 0 20 5 253 0 24 6 1 0 26 13 225 0 30 1 2 0 35 1 2 0 37 1 2 0 155 6 209 0 217 6 209 0 239] 
#[1 6 29 0 8 6 33 0 13 6 37 0 17 6 41 0 19 6 45 0 20 1 142 0 35 13 229 1 29 13 233 1 30] 
#[1 1 162 0 8 1 162 0 13 7 138 0 15 1 162 0 17 1 162 0 19 1 162 0 20 1 162 0 35 1 162 0 37 7 138 0 155] 
#[1 1 170 0 8 1 170 0 13 7 142 0 15 1 170 0 17 1 170 0 19 1 170 0 20 1 170 0 35 1 170 0 37 7 142 0 155] 
#[1 1 194 0 8 1 194 0 13 7 146 0 15 1 194 0 17 1 194 0 19 1 194 0 20 1 194 0 35 1 194 0 37 7 146 0 155] 
#[0 13 237 0 155] 
#[1 13 241 0 15 7 150 0 155] 
#[0 7 154 0 15 0 155] 
#[0 7 158 0 15 0 155] 
#[1 4 214 0 1 4 214 0 5 4 214 0 8 4 218 0 9 4 214 0 10 4 214 0 12 4 214 0 13 4 214 0 16 4 214 0 17 4 214 0 47 4 214 0 48 4 214 0 49 4 214 0 52 4 214 0 55 4 214 0 56 4 214 0 60 4 214 0 61 4 214 0 62 4 214 0 65 4 214 0 72 4 214 0 76 4 214 0 79 4 214 0 86 4 214 0 94 4 214 0 97 4 214 0 99 4 214 0 100 4 214 0 104 4 214 0 114 4 214 0 117 4 214 0 121 4 214 0 122 4 214 0 125 4 214 0 128 4 214 0 130 4 214 0 133 4 214 0 134 4 214 0 135 4 214 0 136 4 214 0 138 4 214 0 152 0 243 0 157 4 214 0 158 4 214 0 159 4 214 0 160 4 214 0 161 4 214 0 162 4 214 0 165 4 214 0 166 4 214 0 169 4 214 0 170 13 245 0 221 10 117 0 222 10 121 0 223 10 125 0 224 10 129 0 225] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 13 249 0 37 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 13 253 0 148 1 81 0 152 7 162 0 155 14 1 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 14 5 1 0 14 9 1 1 14 13 1 2 14 17 1 3 14 21 1 6 14 25 1 7 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 14 29 1 48 14 29 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 14 29 1 64 3 197 1 65 14 29 1 88 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[0 7 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 7 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 7 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 9 229 0 148 1 81 0 152 7 178 0 155 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 14 37 1 48 14 37 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 14 37 1 64 3 197 1 65 14 37 1 84 14 37 1 87 14 37 1 88 14 37 1 186 14 37 2 8 14 45 2 9 14 49 2 10 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 7 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 9 157 0 15 0 129 0 16 0 133 0 17 4 154 0 38 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 9 161 0 214 9 165 0 215 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 14 53 0 247 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 9 29 1 48 9 29 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 9 29 1 64 3 197 1 65 9 29 1 84 9 29 1 87 9 29 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 7 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 14 57 1 48 14 57 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 14 57 1 64 3 197 1 65 14 57 1 84 14 57 1 87 14 57 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 7 190 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 14 61 0 9 6 153 0 10] 
#[0 14 65 0 9] 
#[0 7 194 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 14 69 0 8 7 198 0 144 7 198 0 148 14 73 1 140 14 77 1 141] 
#[1 1 77 0 148 14 81 1 93] 
#[1 7 202 0 1 7 202 0 5 7 202 0 8 7 202 0 10 7 202 0 12 7 202 0 13 7 202 0 16 7 202 0 17 7 202 0 25 7 202 0 47 7 202 0 48 7 202 0 49 7 202 0 50 7 202 0 52 7 202 0 53 10 9 0 54 7 202 0 55 7 202 0 56 7 202 0 58 7 202 0 59 7 202 0 60 7 202 0 61 7 202 0 62 7 202 0 64 7 202 0 65 7 202 0 66 7 202 0 72 10 13 0 74 7 202 0 75 7 202 0 76 7 202 0 77 7 202 0 78 7 202 0 81 7 202 0 83 7 202 0 86 7 202 0 93 7 202 0 94 7 202 0 97 7 202 0 99 7 202 0 100 7 202 0 116 7 202 0 117 7 202 0 121 7 202 0 122 7 202 0 125 7 202 0 127 7 202 0 128 7 202 0 129 7 202 0 130 7 202 0 131 7 202 0 133 7 202 0 134 7 202 0 135 7 202 0 136 7 202 0 137 7 202 0 138 7 202 0 139 7 202 0 140 7 202 0 142 7 202 0 146 7 202 0 147 7 202 0 148 7 202 0 152 7 202 0 155 7 202 0 157 7 202 0 158 7 202 0 159 7 202 0 160 7 202 0 161 7 202 0 162 7 202 0 165 7 202 0 166 7 202 0 169 7 202 0 170 14 85 1 139 14 89 1 144 7 202 2 101] 
#[0 7 206 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 74 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 7 210 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 2 115 0 9 0 15 0 10 2 119 0 20 14 93 0 24 14 97 0 26 0 15 0 35 0 15 0 37 9 37 0 217 9 37 0 239 14 101 1 17 14 105 1 18] 
#[1 14 109 0 9 1 70 0 10 1 74 0 35 1 78 0 37] 
#[1 14 113 0 9 14 117 0 20] 
#[1 14 121 0 9 6 157 0 10] 
#[0 14 125 0 9] 
#[0 7 218 0 9] 
#[0 7 222 0 9] 
#[0 14 129 0 9] 
#[0 14 133 0 9] 
#[0 7 226 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 14 137 0 25] 
#[0 7 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 97 0 99 0 100 0 101 0 103 0 105 0 108 0 109 0 111 0 112 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 2 101] 
#[0 7 234 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 7 238 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 1 2 0 2 1 2 0 5 1 2 0 6 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 15 1 2 0 20 1 2 0 23 1 2 0 25 0 107 0 26 1 2 0 29 1 2 0 31 1 2 0 32 1 2 0 33 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 44 1 2 0 45 1 2 0 51 1 2 0 63 1 2 0 68 1 2 0 79 1 2 0 82 1 2 0 89 1 2 0 90 1 2 0 91 1 2 0 92 1 2 0 101 1 2 0 102 1 2 0 103 1 2 0 119 1 2 0 128 1 2 0 145 1 2 0 148 1 2 0 149 1 2 0 151 1 2 0 153 1 2 0 155 1 2 0 157 1 2 0 163 1 2 0 164 1 2 0 167 1 2 0 168 14 141 0 217 14 141 0 239 1 2 2 101] 
#[1 1 70 0 10 7 242 0 15 1 74 0 35 1 78 0 37 7 242 0 153] 
#[1 14 145 0 15 14 149 0 153] 
#[0 7 246 0 15 0 153] 
#[1 1 2 0 2 1 2 0 5 1 2 0 6 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 15 1 2 0 20 1 2 0 23 1 2 0 25 0 107 0 26 1 2 0 29 1 2 0 31 1 2 0 32 1 2 0 33 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 44 1 2 0 45 1 2 0 51 1 2 0 63 1 2 0 68 1 2 0 79 1 2 0 82 1 2 0 89 1 2 0 90 1 2 0 91 1 2 0 92 1 2 0 101 1 2 0 102 1 2 0 103 1 2 0 119 1 2 0 128 1 2 0 145 1 2 0 148 1 2 0 149 1 2 0 151 1 2 0 153 1 2 0 155 1 2 0 157 1 2 0 163 1 2 0 164 1 2 0 167 1 2 0 168 14 153 0 217 14 153 0 239 1 2 2 101] 
#[0 7 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 14 157 0 23] 
#[0 14 161 0 9] 
#[1 7 254 0 9 14 165 0 15] 
#[0 8 2 0 9 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 14 169 0 104 14 173 0 114 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 14 177 0 226 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 14 181 1 48 14 181 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 14 181 1 64 3 197 1 65 14 181 1 84 14 181 1 87 14 181 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 8 6 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 104 0 114 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 8 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 1 2 0 2 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 11 1 2 0 12 1 2 0 13 1 2 0 14 1 2 0 15 1 2 0 16 1 2 0 17 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 21 1 2 0 22 1 2 0 23 1 2 0 25 0 107 0 26 1 2 0 27 1 2 0 28 1 2 0 29 1 2 0 30 1 2 0 31 1 2 0 33 1 2 0 34 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 40 1 2 0 44 1 2 0 45 1 2 0 51 1 2 0 63 1 2 0 68 1 2 0 79 1 2 0 82 1 2 0 89 1 2 0 90 1 2 0 91 1 2 0 92 1 2 0 101 1 2 0 103 1 2 0 119 1 2 0 145 1 2 0 149 1 2 0 150 1 2 0 151 1 2 0 153 1 2 0 154 1 2 0 155 1 2 0 163 1 2 0 164 1 2 0 167 1 2 0 168 14 185 0 217 14 185 0 239 1 2 2 101] 
#[1 14 189 0 20 14 193 0 37] 
#[1 4 214 0 1 4 214 0 5 4 214 0 8 4 218 0 9 4 214 0 10 4 214 0 12 4 214 0 13 4 214 0 16 4 214 0 17 4 214 0 47 4 214 0 48 4 214 0 49 4 214 0 52 4 214 0 55 4 214 0 56 4 214 0 60 4 214 0 61 4 214 0 62 4 214 0 65 4 214 0 72 4 214 0 76 4 214 0 79 4 214 0 86 4 214 0 94 4 214 0 97 4 214 0 99 4 214 0 100 4 214 0 104 4 214 0 114 4 214 0 117 4 214 0 121 4 214 0 122 4 214 0 125 4 214 0 128 4 214 0 130 4 214 0 133 4 214 0 134 4 214 0 135 4 214 0 136 4 214 0 138 4 214 0 152 0 243 0 157 4 214 0 158 4 214 0 159 4 214 0 160 4 214 0 161 4 214 0 162 4 214 0 165 4 214 0 166 4 214 0 169 4 214 0 170 14 197 0 221 10 117 0 222 10 121 0 223 10 125 0 224 10 129 0 225] 
#[0 14 201 0 157] 
#[1 4 214 0 1 4 214 0 5 4 214 0 8 4 214 0 10 4 214 0 12 4 214 0 13 4 214 0 16 4 214 0 17 4 214 0 47 4 214 0 48 4 214 0 49 4 214 0 52 4 214 0 55 4 214 0 56 4 214 0 60 4 214 0 61 4 214 0 62 4 214 0 65 4 214 0 72 4 214 0 76 4 214 0 79 4 214 0 86 4 214 0 94 4 214 0 97 4 214 0 99 4 214 0 100 4 214 0 104 4 214 0 114 4 214 0 117 4 214 0 121 4 214 0 122 4 214 0 125 4 214 0 128 4 214 0 130 4 214 0 133 4 214 0 134 4 214 0 135 4 214 0 136 4 214 0 138 4 214 0 152 0 243 0 157 4 214 0 158 4 214 0 159 4 214 0 160 4 214 0 161 4 214 0 162 4 214 0 165 4 214 0 166 4 214 0 169 4 214 0 170 14 205 0 222 10 121 0 223 10 125 0 224 10 129 0 225] 
#[1 13 145 0 15 14 209 0 38] 
#[1 7 58 0 15 2 123 0 38] 
#[0 14 217 0 163] 
#[1 8 14 0 163 14 221 0 164] 
#[1 14 225 0 15 8 18 0 163 8 18 0 164 8 18 0 167 8 18 0 168] 
#[1 8 22 0 167 14 229 0 168] 
#[0 14 233 0 167] 
#[0 8 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 1 2 0 2 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 11 1 2 0 12 1 2 0 13 1 2 0 14 1 2 0 15 1 2 0 16 1 2 0 17 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 21 1 2 0 22 1 2 0 23 1 2 0 25 0 107 0 26 1 2 0 27 1 2 0 28 1 2 0 29 1 2 0 30 1 2 0 31 1 2 0 33 1 2 0 34 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 40 1 2 0 44 1 2 0 45 1 2 0 51 1 2 0 63 1 2 0 68 1 2 0 79 1 2 0 82 1 2 0 89 1 2 0 90 1 2 0 91 1 2 0 92 1 2 0 101 1 2 0 103 1 2 0 119 1 2 0 145 1 2 0 149 1 2 0 150 1 2 0 151 1 2 0 153 1 2 0 154 1 2 0 155 1 2 0 163 1 2 0 164 1 2 0 167 1 2 0 168 14 237 0 217 14 237 0 239 1 2 2 101] 
#[0 8 30 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 6 129 0 157 14 241 1 102 6 141 1 103] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 14 245 0 123 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 9 229 0 148 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 14 253 1 48 14 253 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 14 253 1 64 3 197 1 65 14 253 1 84 14 253 1 87 14 253 1 88 14 253 1 104 14 253 2 8 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87 14 253 2 99] 
#[0 8 34 0 32 0 148] 
#[1 2 198 0 49 2 198 0 52 2 198 0 55 2 198 0 60 2 198 0 65 2 198 0 76 2 198 0 86 2 198 0 94 2 198 0 100 6 181 0 104 6 181 0 114 2 198 0 117 2 198 0 121 2 198 0 125 2 198 0 134 2 198 0 135 2 198 0 138 2 198 0 142 2 198 0 157 15 9 1 56 6 181 1 57 6 181 1 58] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 15 13 0 157] 
#[0 8 38 0 32] 
#[0 15 21 0 157 1 62] 
#[0 15 25 0 85] 
#[1 4 214 0 1 4 214 0 5 4 214 0 8 4 218 0 9 4 214 0 10 4 214 0 12 4 214 0 13 4 214 0 16 4 214 0 17 4 214 0 47 4 214 0 48 4 214 0 49 4 214 0 52 4 214 0 55 4 214 0 56 4 214 0 60 4 214 0 61 4 214 0 62 4 214 0 65 4 214 0 72 4 214 0 76 4 214 0 79 4 214 0 86 4 214 0 94 4 214 0 97 4 214 0 99 4 214 0 100 4 214 0 104 4 214 0 114 4 214 0 117 4 214 0 121 4 214 0 122 4 214 0 125 4 214 0 128 4 214 0 130 4 214 0 133 4 214 0 134 4 214 0 135 4 214 0 136 4 214 0 138 4 214 0 152 0 243 0 157 4 214 0 158 4 214 0 159 4 214 0 160 4 214 0 161 4 214 0 162 4 214 0 165 4 214 0 166 4 214 0 169 4 214 0 170 15 29 0 221 10 117 0 222 10 121 0 223 10 125 0 224 10 129 0 225] 
#[0 8 42 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 8 46 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 8 50 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 2 210 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 8 54 0 2 6 217 0 3 8 54 0 5 8 54 0 6 8 54 0 9 6 221 0 10 8 54 0 12 8 54 0 15 8 54 0 16 6 225 0 21 8 54 0 23 8 54 0 25 8 54 0 26 8 54 0 27 8 54 0 29 8 54 0 31 8 54 0 33 8 54 0 35 8 54 0 36 8 54 0 38 8 54 0 39 8 54 0 44 8 54 0 45 8 54 0 51 8 54 0 63 8 54 0 68 8 54 0 79 8 54 0 82 8 54 0 89 8 54 0 90 8 54 0 91 8 54 0 92 8 54 0 101 8 54 0 103 8 54 0 119 8 54 0 145 8 54 0 149 8 54 0 151 8 54 0 153 8 54 0 154 8 54 0 155 8 54 0 163 8 54 0 164 8 54 0 167 8 54 0 168 8 54 2 101] 
#[1 8 58 0 2 6 217 0 3 8 58 0 5 8 58 0 6 8 58 0 9 6 221 0 10 8 58 0 12 8 58 0 15 8 58 0 16 6 225 0 21 8 58 0 23 8 58 0 25 8 58 0 26 8 58 0 27 8 58 0 29 8 58 0 31 8 58 0 33 8 58 0 35 8 58 0 36 8 58 0 38 8 58 0 39 8 58 0 44 8 58 0 45 8 58 0 51 8 58 0 63 8 58 0 68 8 58 0 79 8 58 0 82 8 58 0 89 8 58 0 90 8 58 0 91 8 58 0 92 8 58 0 101 8 58 0 103 8 58 0 119 8 58 0 145 8 58 0 149 8 58 0 151 8 58 0 153 8 58 0 154 8 58 0 155 8 58 0 163 8 58 0 164 8 58 0 167 8 58 0 168 8 58 2 101] 
#[1 8 62 0 2 8 62 0 5 8 62 0 6 8 62 0 9 6 229 0 12 8 62 0 15 6 233 0 16 8 62 0 23 8 62 0 25 8 62 0 26 8 62 0 27 8 62 0 29 8 62 0 31 8 62 0 33 8 62 0 35 8 62 0 36 8 62 0 38 8 62 0 39 8 62 0 44 8 62 0 45 8 62 0 51 8 62 0 63 8 62 0 68 8 62 0 79 8 62 0 82 8 62 0 89 8 62 0 90 8 62 0 91 8 62 0 92 8 62 0 101 8 62 0 103 8 62 0 119 8 62 0 145 8 62 0 149 8 62 0 151 8 62 0 153 8 62 0 154 8 62 0 155 8 62 0 163 8 62 0 164 8 62 0 167 8 62 0 168 8 62 2 101] 
#[1 8 66 0 2 8 66 0 5 8 66 0 6 8 66 0 9 6 229 0 12 8 66 0 15 6 233 0 16 8 66 0 23 8 66 0 25 8 66 0 26 8 66 0 27 8 66 0 29 8 66 0 31 8 66 0 33 8 66 0 35 8 66 0 36 8 66 0 38 8 66 0 39 8 66 0 44 8 66 0 45 8 66 0 51 8 66 0 63 8 66 0 68 8 66 0 79 8 66 0 82 8 66 0 89 8 66 0 90 8 66 0 91 8 66 0 92 8 66 0 101 8 66 0 103 8 66 0 119 8 66 0 145 8 66 0 149 8 66 0 151 8 66 0 153 8 66 0 154 8 66 0 155 8 66 0 163 8 66 0 164 8 66 0 167 8 66 0 168 8 66 2 101] 
#[1 8 70 0 2 8 70 0 5 8 70 0 6 8 70 0 9 8 70 0 15 8 70 0 23 8 70 0 25 8 70 0 26 6 237 0 27 8 70 0 29 8 70 0 31 8 70 0 33 8 70 0 35 8 70 0 36 8 70 0 38 8 70 0 39 8 70 0 44 8 70 0 45 8 70 0 51 8 70 0 63 8 70 0 68 8 70 0 79 8 70 0 82 8 70 0 89 8 70 0 90 8 70 0 91 8 70 0 92 8 70 0 101 8 70 0 103 8 70 0 119 8 70 0 145 8 70 0 149 8 70 0 151 8 70 0 153 6 241 0 154 8 70 0 155 8 70 0 163 8 70 0 164 8 70 0 167 8 70 0 168 8 70 2 101] 
#[1 8 74 0 2 8 74 0 5 8 74 0 6 8 74 0 9 8 74 0 15 8 74 0 23 8 74 0 25 8 74 0 26 6 237 0 27 8 74 0 29 8 74 0 31 8 74 0 33 8 74 0 35 8 74 0 36 8 74 0 38 8 74 0 39 8 74 0 44 8 74 0 45 8 74 0 51 8 74 0 63 8 74 0 68 8 74 0 79 8 74 0 82 8 74 0 89 8 74 0 90 8 74 0 91 8 74 0 92 8 74 0 101 8 74 0 103 8 74 0 119 8 74 0 145 8 74 0 149 8 74 0 151 8 74 0 153 6 241 0 154 8 74 0 155 8 74 0 163 8 74 0 164 8 74 0 167 8 74 0 168 8 74 2 101] 
#[1 8 78 0 2 8 78 0 5 8 78 0 6 8 78 0 9 8 78 0 15 8 78 0 23 8 78 0 25 8 78 0 26 6 237 0 27 8 78 0 29 8 78 0 31 8 78 0 33 8 78 0 35 8 78 0 36 8 78 0 38 8 78 0 39 8 78 0 44 8 78 0 45 8 78 0 51 8 78 0 63 8 78 0 68 8 78 0 79 8 78 0 82 8 78 0 89 8 78 0 90 8 78 0 91 8 78 0 92 8 78 0 101 8 78 0 103 8 78 0 119 8 78 0 145 8 78 0 149 8 78 0 151 8 78 0 153 6 241 0 154 8 78 0 155 8 78 0 163 8 78 0 164 8 78 0 167 8 78 0 168 8 78 2 101] 
#[1 8 82 0 2 8 82 0 5 8 82 0 6 8 82 0 9 1 70 0 10 8 82 0 15 8 82 0 23 8 82 0 25 8 82 0 26 8 82 0 29 8 82 0 31 8 82 0 33 2 127 0 35 8 82 0 36 1 78 0 37 8 82 0 38 8 82 0 39 8 82 0 44 8 82 0 45 8 82 0 51 8 82 0 63 8 82 0 68 8 82 0 79 8 82 0 82 8 82 0 89 8 82 0 90 8 82 0 91 8 82 0 92 8 82 0 101 8 82 0 103 8 82 0 119 8 82 0 145 8 82 0 149 8 82 0 151 8 82 0 153 8 82 0 155 8 82 0 163 8 82 0 164 8 82 0 167 8 82 0 168 8 82 2 101] 
#[1 8 86 0 2 8 86 0 5 8 86 0 6 8 86 0 9 1 70 0 10 8 86 0 15 8 86 0 23 8 86 0 25 8 86 0 26 8 86 0 29 8 86 0 31 8 86 0 33 2 131 0 35 8 86 0 36 1 78 0 37 8 86 0 38 8 86 0 39 8 86 0 44 8 86 0 45 8 86 0 51 8 86 0 63 8 86 0 68 8 86 0 79 8 86 0 82 8 86 0 89 8 86 0 90 8 86 0 91 8 86 0 92 8 86 0 101 8 86 0 103 8 86 0 119 8 86 0 145 8 86 0 149 8 86 0 151 8 86 0 153 8 86 0 155 8 86 0 163 8 86 0 164 8 86 0 167 8 86 0 168 8 86 2 101] 
#[1 8 90 0 2 8 90 0 5 8 90 0 6 8 90 0 9 8 90 0 15 8 90 0 23 8 90 0 25 8 90 0 26 6 237 0 27 8 90 0 29 8 90 0 31 8 90 0 33 8 90 0 35 8 90 0 36 8 90 0 38 8 90 0 39 8 90 0 44 8 90 0 45 8 90 0 51 8 90 0 63 8 90 0 68 8 90 0 79 8 90 0 82 8 90 0 89 8 90 0 90 8 90 0 91 8 90 0 92 8 90 0 101 8 90 0 103 8 90 0 119 8 90 0 145 8 90 0 149 8 90 0 151 8 90 0 153 6 241 0 154 8 90 0 155 8 90 0 163 8 90 0 164 8 90 0 167 8 90 0 168 8 90 2 101] 
#[1 8 94 0 2 8 94 0 5 8 94 0 6 8 94 0 9 8 94 0 15 8 94 0 23 8 94 0 25 6 245 0 26 6 249 0 29 8 94 0 31 6 253 0 33 8 94 0 35 8 94 0 36 8 94 0 38 8 94 0 39 7 1 0 44 8 94 0 45 8 94 0 51 8 94 0 63 8 94 0 68 8 94 0 79 8 94 0 82 8 94 0 89 7 5 0 90 8 94 0 91 8 94 0 92 8 94 0 101 8 94 0 103 8 94 0 119 8 94 0 145 8 94 0 149 8 94 0 151 7 9 0 153 8 94 0 155 8 94 0 163 8 94 0 164 8 94 0 167 8 94 0 168 8 94 2 101] 
#[1 8 98 0 2 8 98 0 5 8 98 0 6 8 98 0 9 8 98 0 15 8 98 0 23 8 98 0 25 6 245 0 26 6 249 0 29 8 98 0 31 6 253 0 33 8 98 0 35 8 98 0 36 8 98 0 38 8 98 0 39 7 1 0 44 8 98 0 45 8 98 0 51 8 98 0 63 8 98 0 68 8 98 0 79 8 98 0 82 8 98 0 89 7 5 0 90 8 98 0 91 8 98 0 92 8 98 0 101 8 98 0 103 8 98 0 119 8 98 0 145 8 98 0 149 8 98 0 151 7 9 0 153 8 98 0 155 8 98 0 163 8 98 0 164 8 98 0 167 8 98 0 168 8 98 2 101] 
#[1 7 13 0 2 8 102 0 5 8 102 0 6 8 102 0 9 8 102 0 15 8 102 0 23 8 102 0 25 7 17 0 31 8 102 0 35 8 102 0 36 8 102 0 38 8 102 0 39 8 102 0 45 8 102 0 51 8 102 0 63 8 102 0 68 8 102 0 79 8 102 0 82 8 102 0 89 8 102 0 91 8 102 0 92 8 102 0 101 8 102 0 103 8 102 0 119 8 102 0 145 8 102 0 149 8 102 0 151 8 102 0 155 8 102 0 163 8 102 0 164 8 102 0 167 8 102 0 168 8 102 2 101] 
#[1 7 21 0 5 8 106 0 6 8 106 0 9 8 106 0 15 8 106 0 23 8 106 0 25 8 106 0 35 8 106 0 36 8 106 0 38 8 106 0 39 8 106 0 45 8 106 0 51 8 106 0 63 8 106 0 68 8 106 0 79 8 106 0 82 8 106 0 89 8 106 0 91 8 106 0 92 8 106 0 101 8 106 0 103 8 106 0 119 8 106 0 145 8 106 0 149 8 106 0 151 8 106 0 155 8 106 0 163 8 106 0 164 8 106 0 167 8 106 0 168 8 106 2 101] 
#[1 8 110 0 6 8 110 0 9 8 110 0 15 8 110 0 23 8 110 0 25 8 110 0 35 8 110 0 36 8 110 0 38 7 25 0 39 8 110 0 45 8 110 0 51 8 110 0 63 8 110 0 68 8 110 0 79 8 110 0 82 8 110 0 89 8 110 0 91 8 110 0 92 8 110 0 101 8 110 0 103 8 110 0 119 8 110 0 145 8 110 0 149 8 110 0 151 8 110 0 155 8 110 0 163 8 110 0 164 8 110 0 167 8 110 0 168 8 110 2 101] 
#[1 8 114 0 6 8 114 0 9 8 114 0 15 8 114 0 23 8 114 0 25 8 114 0 35 8 114 0 36 8 114 0 38 8 114 0 45 8 114 0 51 8 114 0 63 8 114 0 68 8 114 0 79 8 114 0 82 8 114 0 89 8 114 0 91 8 114 0 92 8 114 0 101 8 114 0 103 8 114 0 119 8 114 0 145 7 29 0 149 8 114 0 151 8 114 0 155 8 114 0 163 8 114 0 164 8 114 0 167 8 114 0 168 8 114 2 101] 
#[0 8 118 0 9 0 15 0 23 0 25 0 35 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 7 33 0 6 8 122 0 9 8 122 0 15 8 122 0 23 8 122 0 25 8 122 0 35 8 122 0 36 8 122 0 38 8 122 0 45 8 122 0 51 8 122 0 63 8 122 0 68 8 122 0 79 8 122 0 82 8 122 0 89 8 122 0 91 8 122 0 92 8 122 0 101 8 122 0 103 8 122 0 119 8 122 0 145 8 122 0 151 8 122 0 155 8 122 0 163 8 122 0 164 8 122 0 167 8 122 0 168 8 122 2 101] 
#[0 15 33 0 23] 
#[0 8 126 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 8 130 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 8 134 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 15 37 0 157] 
#[0 15 41 0 30] 
#[1 15 45 0 15 8 138 0 79 8 138 0 82 8 138 0 91 8 138 0 92 8 138 0 103 8 138 0 119 8 138 0 145] 
#[0 8 142 0 15 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[1 8 146 0 15 15 49 0 45 15 53 0 63 8 146 0 79 8 146 0 82 8 146 0 91 8 146 0 92 8 146 0 103 8 146 0 119 8 146 0 145 15 57 1 77 15 61 1 78] 
#[0 8 150 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 15 65 1 48 15 65 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 15 65 1 64 3 197 1 65 15 65 1 84 15 65 1 87 15 65 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 15 69 1 48 15 69 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 15 69 1 64 3 197 1 65 15 69 1 84 15 69 1 87 15 69 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 8 154 0 9 8 154 0 15 8 154 0 23 8 154 0 25 8 154 0 38 8 154 0 45 8 154 0 51 8 154 0 63 8 154 0 68 8 154 0 79 8 154 0 82 2 135 0 89 8 154 0 91 8 154 0 92 8 154 0 101 8 154 0 103 8 154 0 119 8 154 0 145 8 154 0 155 8 154 0 163 8 154 0 164 8 154 0 167 8 154 0 168 15 77 1 82 15 81 1 83 8 154 2 101] 
#[0 8 158 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 8 162 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 8 166 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 15 85 0 25] 
#[0 5 182 0 124 0 137 0 152 0 157] 
#[0 6 154 0 71 0 124 0 152 0 157] 
#[1 15 89 0 137 2 139 0 157 15 89 2 79] 
#[1 15 93 0 71 3 106 0 157 15 93 2 76] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 15 97 0 196 15 97 0 197 15 97 0 198 15 97 0 199 1 145 0 200 1 145 0 201 1 145 0 202 15 97 0 203 1 161 0 204 15 97 0 205 15 97 0 206 15 97 0 207 15 97 0 208 15 97 0 209 1 185 0 210 15 97 0 216 15 97 1 158 15 97 2 81 2 229 2 82 3 1 2 100] 
#[0 5 206 0 58 0 88 0 99 0 109 0 111 0 112] 
#[0 5 234 0 58 0 88 0 99 0 109 0 111 0 112] 
#[0 6 18 0 58 0 88 0 99 0 109 0 111 0 112] 
#[0 6 46 0 58 0 88 0 99 0 109 0 111 0 112] 
#[0 6 78 0 58 0 88 0 99 0 109 0 111 0 112] 
#[0 8 174 0 58 0 88 0 99 0 109 0 111 0 112] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 15 101 0 157 15 105 1 184 15 109 1 185] 
#[0 5 202 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 88 0 94 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 143 0 157] 
#[0 5 230 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 88 0 94 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 143 0 157] 
#[0 6 14 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 88 0 94 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 143 0 157] 
#[0 6 42 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 88 0 94 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 143 0 157] 
#[0 6 70 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 88 0 94 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 143 0 157] 
#[0 6 122 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 88 0 94 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 143 0 157] 
#[0 6 142 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 88 0 94 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 143 0 157] 
#[0 8 178 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 88 0 94 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 143 0 157] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 13 129 0 196 13 129 0 197 13 129 0 198 13 129 0 199 1 145 0 200 1 145 0 201 1 145 0 202 13 129 0 203 1 161 0 204 13 129 0 205 13 129 0 206 13 129 0 207 13 129 0 208 13 129 0 209 1 185 0 210 13 129 0 216 13 129 1 158 15 113 1 192 13 129 2 81 2 229 2 82 13 137 2 100] 
#[0 5 142 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 170 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 186 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 226 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 242 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 10 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 34 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 62 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 90 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 110 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 130 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 170 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 8 182 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 15 117 0 157 1 125 0 191 15 125 0 193 1 125 0 194 15 125 0 208 15 129 1 193] 
#[0 5 146 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 158 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 198 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 222 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 238 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 254 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 30 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 66 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 102 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 106 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 126 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 158 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 8 186 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 15 133 0 196 15 133 0 197 15 133 0 198 15 133 0 199 1 145 0 200 1 145 0 201 1 145 0 202 15 133 0 203 1 161 0 204 15 133 0 205 15 133 0 206 15 133 0 207 15 133 0 208 15 133 0 209 1 185 0 210 15 133 0 216 15 133 1 158 15 133 2 81 2 229 2 82 3 1 2 100] 
#[0 5 150 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[0 5 166 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[0 5 194 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[0 5 218 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[0 5 246 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[0 6 2 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[0 6 26 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[0 6 54 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[0 6 94 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[0 6 114 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[0 6 134 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[0 6 166 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[0 8 190 0 41 0 69 0 71 0 88 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 137 0 141] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 15 137 0 128 8 73 0 157 1 125 0 191 15 141 0 193 1 125 0 194 15 141 0 208] 
#[1 15 145 0 32 15 149 0 148 15 153 1 231] 
#[0 5 154 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 162 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 190 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 214 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 5 250 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 6 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 38 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 58 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 98 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 138 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 6 162 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 8 194 0 41 0 49 0 52 0 55 0 60 0 65 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 157] 
#[0 15 157 0 102] 
#[0 5 174 0 49 0 52 0 55 0 60 0 65 0 70 0 71 0 76 0 84 0 86 0 94 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 157] 
#[0 15 161 0 102] 
#[0 6 74 0 49 0 52 0 55 0 60 0 65 0 70 0 71 0 76 0 84 0 86 0 94 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 157] 
#[0 6 118 0 49 0 52 0 55 0 60 0 65 0 70 0 71 0 76 0 84 0 86 0 94 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 157] 
#[0 6 146 0 49 0 52 0 55 0 60 0 65 0 70 0 71 0 76 0 84 0 86 0 94 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 157] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 15 165 0 102] 
#[0 8 198 0 49 0 52 0 55 0 60 0 65 0 70 0 71 0 76 0 84 0 86 0 94 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 142 0 157] 
#[1 15 169 0 25 15 173 0 32 1 77 0 148 15 177 1 93 15 181 1 241] 
#[0 8 202 0 25 0 32 0 148] 
#[0 8 206 0 25 0 32 0 148] 
#[0 8 210 0 25 0 32 0 148] 
#[0 15 185 0 8] 
#[1 15 189 0 25 1 77 0 148 15 193 1 93 15 197 1 249] 
#[0 5 178 0 71 0 88 0 109 0 111 0 112 0 137 0 157] 
#[0 5 210 0 71 0 88 0 109 0 111 0 112 0 137 0 157] 
#[0 6 22 0 71 0 88 0 109 0 111 0 112 0 137 0 157] 
#[0 6 50 0 71 0 88 0 109 0 111 0 112 0 137 0 157] 
#[0 6 82 0 71 0 88 0 109 0 111 0 112 0 137 0 157] 
#[0 6 150 0 71 0 88 0 109 0 111 0 112 0 137 0 157] 
#[0 8 214 0 71 0 88 0 109 0 111 0 112 0 137 0 157] 
#[0 15 201 0 8] 
#[1 15 205 0 137 8 218 0 157] 
#[1 15 209 0 124 15 213 0 152] 
#[1 15 217 0 71 3 106 0 157 15 217 2 76] 
#[1 15 221 0 124 15 225 0 152] 
#[0 8 222 0 37 0 41 0 57 0 62 0 67 0 71 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 139 0 155 2 101] 
#[0 15 229 0 25] 
#[1 8 73 0 157 15 233 0 191 15 233 0 194] 
#[0 8 226 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 139 0 155 2 101] 
#[0 8 230 0 23] 
#[0 8 234 0 23] 
#[1 8 73 0 157 1 125 0 191 8 89 0 193 1 125 0 194 15 237 2 60 8 85 2 61 8 89 2 62] 
#[0 15 241 0 23] 
#[0 8 238 2 101] 
#[1 0 49 0 37 0 10 0 41 0 10 0 57 0 10 0 62 0 10 0 67 0 10 0 87 0 10 0 88 0 53 0 98 0 10 0 99 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 137 8 242 0 155 15 245 0 175 15 245 0 189 15 245 0 190 15 245 1 151 15 245 1 253 15 245 2 11 15 245 2 33 15 245 2 43 0 89 2 53 0 93 2 54 0 97 2 55 0 101 2 56 8 242 2 101] 
#[0 8 246 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 155 2 101] 
#[0 8 250 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 2 101] 
#[1 15 249 0 38 8 73 0 157 1 125 0 191 8 89 0 193 1 125 0 194 15 253 2 61 8 89 2 62] 
#[0 8 254 0 37 0 41 0 42 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 80 0 85 0 86 0 87 0 88 0 94 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 157] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 9 2 0 9 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 16 1 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 16 17 1 48 16 17 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 16 17 1 64 3 197 1 65 16 17 1 84 16 17 1 87 16 17 1 88 16 9 2 65 16 13 2 66 16 17 2 67 16 21 2 68 16 25 2 69 16 17 2 70 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 9 6 0 15 0 38] 
#[0 9 10 0 15 0 38] 
#[0 9 14 0 20 0 148] 
#[1 0 22 0 37 0 22 0 41 0 22 0 57 0 22 0 62 0 22 0 67 0 22 0 87 0 22 0 88 0 22 0 98 0 22 0 99 0 22 0 108 0 22 0 109 0 22 0 111 0 22 0 112 0 22 0 118 0 22 0 124 0 22 0 126 0 22 0 137 4 21 0 139 0 22 0 155 16 33 0 181 4 29 0 182 4 33 0 183 4 33 0 184 4 33 0 185 4 33 0 186] 
#[0 9 18 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 9 22 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 155 2 101] 
#[0 16 37 0 157] 
#[0 16 41 0 157] 
#[0 16 45 0 157] 
#[1 16 49 0 23 9 26 0 148 16 53 2 34 16 57 2 35] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 9 30 0 157] 
#[0 16 61 0 157] 
#[1 6 157 0 10 9 34 0 157] 
#[0 9 38 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 16 65 1 48 16 65 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 16 65 1 64 3 197 1 65 16 65 1 84 16 65 1 87 16 65 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 9 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 9 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 16 69 1 48 16 69 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 16 69 1 64 3 197 1 65 16 69 1 84 16 69 1 87 16 69 1 88 16 69 1 89 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 9 41 0 157 16 73 1 107] 
#[0 9 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 16 77 1 48 16 77 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 16 77 1 64 3 197 1 65 16 77 1 84 16 77 1 87 16 77 1 88 16 77 1 90 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 16 81 0 30] 
#[1 16 85 0 9 16 89 0 15] 
#[0 9 54 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 9 58 0 25 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 16 97 1 48 16 97 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 16 97 1 64 3 197 1 65 16 97 1 84 16 97 1 87 16 97 1 88 16 97 1 90 16 97 1 125 16 97 1 126 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 16 105 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 16 105 1 84 16 105 1 109 1 197 2 71 2 217 2 72 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87] 
#[0 16 109 0 85] 
#[0 9 62 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 3 9 0 49 0 153 0 50 3 13 0 52 3 17 0 55 0 165 0 56 0 173 0 59 3 25 0 60 0 181 0 61 0 185 0 62 0 189 0 64 3 29 0 65 2 217 0 72 0 201 0 75 3 33 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 3 41 0 86 0 229 0 93 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 0 249 0 116 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 3 65 0 134 3 69 0 135 1 45 0 136 1 49 0 137 3 77 0 138 1 57 0 139 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 16 113 1 92 16 113 1 93 16 113 1 96 16 113 1 108 2 125 1 109 16 113 1 110 16 113 1 111 16 113 1 112 16 113 1 119 16 113 1 120 16 113 1 121 16 113 1 122 16 113 1 130 16 113 1 131 16 113 1 132 16 113 1 133 16 113 1 134 16 113 1 135 16 113 1 136 16 113 1 137 16 113 1 145 16 113 1 146 16 113 1 147 16 113 1 148 16 113 1 150 1 197 2 71 2 217 2 72 16 113 2 80 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 16 113 2 88] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 3 9 0 49 0 153 0 50 3 13 0 52 3 17 0 55 0 165 0 56 0 173 0 59 3 25 0 60 0 181 0 61 0 185 0 62 0 189 0 64 3 29 0 65 2 217 0 72 0 201 0 75 3 33 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 3 41 0 86 0 229 0 93 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 0 249 0 116 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 3 65 0 134 3 69 0 135 1 45 0 136 1 49 0 137 3 77 0 138 1 57 0 139 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 16 117 1 92 16 117 1 93 16 117 1 96 16 117 1 108 2 125 1 109 16 117 1 110 16 117 1 111 16 117 1 112 16 117 1 119 16 117 1 120 16 117 1 121 16 117 1 122 16 117 1 130 16 117 1 131 16 117 1 132 16 117 1 133 16 117 1 134 16 117 1 135 16 117 1 136 16 117 1 137 16 117 1 145 16 117 1 146 16 117 1 147 16 117 1 148 16 117 1 150 1 197 2 71 2 217 2 72 16 117 2 80 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 16 117 2 88] 
#[0 9 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 16 121 0 157] 
#[0 9 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 9 74 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 16 125 1 48 16 125 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 16 125 1 64 3 197 1 65 16 125 1 84 16 125 1 87 16 125 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 16 129 0 35] 
#[1 10 229 0 8 16 133 0 20 4 234 0 35 10 153 0 37] 
#[0 9 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 9 169 0 8 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 16 137 0 155 9 173 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 9 177 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 9 181 0 238 1 197 0 240 9 185 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 9 189 0 249 1 197 0 250 1 197 0 251 1 197 0 252 9 177 1 8 1 197 1 9 1 197 1 10 16 141 1 14 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 9 205 1 31 1 197 1 50 1 197 2 71 2 217 2 72 1 197 2 84 1 197 2 85 1 197 2 87] 
#[0 16 145 0 9] 
#[1 4 214 0 1 4 214 0 5 4 214 0 8 4 214 0 10 4 214 0 12 4 214 0 13 4 214 0 16 4 214 0 17 4 214 0 47 4 214 0 48 4 214 0 49 4 214 0 52 4 214 0 55 4 214 0 56 4 214 0 60 4 214 0 61 4 214 0 62 4 214 0 65 4 214 0 72 4 214 0 76 4 214 0 79 4 214 0 86 4 214 0 94 4 214 0 97 4 214 0 99 4 214 0 100 4 214 0 104 4 214 0 114 4 214 0 117 4 214 0 121 4 214 0 122 4 214 0 125 4 214 0 128 4 214 0 130 4 214 0 133 4 214 0 134 4 214 0 135 4 214 0 136 4 214 0 138 4 214 0 152 0 243 0 157 4 214 0 158 4 214 0 159 4 214 0 160 4 214 0 161 4 214 0 162 4 214 0 165 4 214 0 166 4 214 0 169 4 214 0 170 16 149 0 222 10 121 0 223 10 125 0 224 10 129 0 225] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 16 153 0 247 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 9 29 1 48 9 29 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 9 29 1 64 3 197 1 65 9 29 1 84 9 29 1 87 9 29 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 1 2 0 2 1 2 0 3 1 2 0 5 1 2 0 6 1 2 0 8 1 2 0 10 1 2 0 12 1 2 0 13 1 2 0 15 1 2 0 16 1 2 0 17 1 2 0 19 1 2 0 20 1 2 0 21 5 253 0 24 0 107 0 26 1 2 0 27 1 2 0 29 9 82 0 30 1 2 0 31 2 206 0 32 1 2 0 33 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 39 1 2 0 44 1 2 0 90 1 2 0 149 1 2 0 151 1 2 0 153 1 2 0 154 1 2 0 155 6 209 0 217 6 209 0 239] 
#[0 16 157 0 155] 
#[1 16 161 0 15 9 86 0 155] 
#[0 9 90 0 15 0 155] 
#[0 16 165 0 30] 
#[1 16 169 0 15 16 173 0 155] 
#[0 9 94 0 15 0 155] 
#[0 9 98 0 15 0 155] 
#[0 9 102 0 15 0 25 0 155] 
#[0 9 106 0 15 0 155] 
#[0 9 110 0 15 0 25 0 155] 
#[0 16 177 0 155] 
#[1 16 181 0 15 9 114 0 155] 
#[1 13 145 0 15 16 185 0 38] 
#[0 16 189 0 9] 
#[0 9 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 16 193 0 148 16 197 1 113] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 16 201 0 196 16 201 0 197 16 201 0 198 16 201 0 199 1 145 0 200 1 145 0 201 1 145 0 202 16 201 0 203 1 161 0 204 16 201 0 205 16 201 0 206 16 201 0 207 16 201 0 208 16 201 0 209 1 185 0 210 16 201 0 216 16 201 1 158 16 201 2 81 2 229 2 82 3 1 2 100] 
#[1 16 205 0 144 9 122 0 148 16 209 1 142 16 209 1 143] 
#[0 9 126 0 144 0 148] 
#[0 9 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 9 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 74 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 9 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 16 217 0 157] 
#[1 16 221 0 15 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 9 142 0 153 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 10 89 0 196 10 89 0 197 10 89 0 198 10 89 0 199 1 145 0 200 1 145 0 201 1 145 0 202 10 89 0 203 1 161 0 204 10 89 0 205 10 89 0 206 10 89 0 207 10 89 0 208 10 89 0 209 1 185 0 210 10 89 0 216 10 93 0 218 10 97 0 219 16 225 1 19 16 229 1 20 10 89 1 158 10 89 2 81 2 229 2 82 3 1 2 100] 
#[0 9 146 0 9 0 20] 
#[0 9 150 0 9 0 20] 
#[0 9 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 9 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 16 233 0 157] 
#[0 9 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 9 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 3 9 0 49 0 153 0 50 3 13 0 52 3 17 0 55 0 165 0 56 0 173 0 59 3 25 0 60 0 181 0 61 0 185 0 62 0 189 0 64 3 29 0 65 2 217 0 72 0 201 0 75 3 33 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 3 41 0 86 0 229 0 93 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 0 249 0 116 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 3 65 0 134 3 69 0 135 1 45 0 136 1 49 0 137 3 77 0 138 1 57 0 139 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 16 237 1 92 16 237 1 93 16 237 1 96 16 237 1 108 2 125 1 109 16 237 1 110 16 237 1 111 16 237 1 112 16 237 1 119 16 237 1 120 16 237 1 121 16 237 1 122 16 237 1 130 16 237 1 131 16 237 1 132 16 237 1 133 16 237 1 134 16 237 1 135 16 237 1 136 16 237 1 137 16 237 1 145 16 237 1 146 16 237 1 147 16 237 1 148 16 237 1 150 1 197 2 71 2 217 2 72 16 237 2 80 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 16 237 2 88] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 3 9 0 49 0 153 0 50 3 13 0 52 3 17 0 55 0 165 0 56 0 173 0 59 3 25 0 60 0 181 0 61 0 185 0 62 0 189 0 64 3 29 0 65 2 217 0 72 0 201 0 75 3 33 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 3 41 0 86 0 229 0 93 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 0 249 0 116 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 3 65 0 134 3 69 0 135 1 45 0 136 1 49 0 137 3 77 0 138 1 57 0 139 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 16 241 1 92 16 241 1 93 16 241 1 96 16 241 1 108 2 125 1 109 16 241 1 110 16 241 1 111 16 241 1 112 16 241 1 119 16 241 1 120 16 241 1 121 16 241 1 122 16 241 1 130 16 241 1 131 16 241 1 132 16 241 1 133 16 241 1 134 16 241 1 135 16 241 1 136 16 241 1 137 16 241 1 145 16 241 1 146 16 241 1 147 16 241 1 148 16 241 1 150 1 197 2 71 2 217 2 72 16 241 2 80 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 16 241 2 88] 
#[0 9 170 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 9 174 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 10 89 0 196 10 89 0 197 10 89 0 198 10 89 0 199 1 145 0 200 1 145 0 201 1 145 0 202 10 89 0 203 1 161 0 204 10 89 0 205 10 89 0 206 10 89 0 207 10 89 0 208 10 89 0 209 1 185 0 210 10 89 0 216 16 245 0 219 10 89 1 158 10 89 2 81 2 229 2 82 3 1 2 100] 
#[0 9 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 9 182 0 2 0 5 0 6 0 8 0 9 0 10 0 15 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 102 0 103 0 119 0 128 0 145 0 148 0 149 0 151 0 153 0 155 0 157 0 163 0 164 0 167 0 168 2 101] 
#[0 9 186 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 72 0 76 0 79 0 86 0 94 0 97 0 99 0 100 0 104 0 114 0 117 0 121 0 122 0 125 0 128 0 130 0 133 0 134 0 135 0 136 0 138 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 9 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 4 214 0 1 4 214 0 5 4 214 0 8 4 214 0 10 4 214 0 12 4 214 0 13 4 214 0 16 4 214 0 17 4 214 0 47 4 214 0 48 4 214 0 49 4 214 0 52 4 214 0 55 4 214 0 56 4 214 0 60 4 214 0 61 4 214 0 62 4 214 0 65 4 214 0 72 4 214 0 76 4 214 0 79 4 214 0 86 4 214 0 94 4 214 0 97 4 214 0 99 4 214 0 100 4 214 0 104 4 214 0 114 4 214 0 117 4 214 0 121 4 214 0 122 4 214 0 125 4 214 0 128 4 214 0 130 4 214 0 133 4 214 0 134 4 214 0 135 4 214 0 136 4 214 0 138 4 214 0 152 0 243 0 157 4 214 0 158 4 214 0 159 4 214 0 160 4 214 0 161 4 214 0 162 4 214 0 165 4 214 0 166 4 214 0 169 4 214 0 170 16 249 0 223 10 125 0 224 10 129 0 225] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 0 149 0 49 0 157 0 52 0 161 0 55 3 21 0 56 0 177 0 60 0 181 0 61 0 185 0 62 0 193 0 65 2 217 0 72 0 205 0 76 3 37 0 79 0 225 0 86 0 233 0 94 0 237 0 97 0 241 0 99 0 245 0 100 0 253 0 117 1 1 0 121 1 5 0 122 1 9 0 125 1 17 0 128 2 217 0 130 1 33 0 133 1 37 0 134 1 41 0 135 3 73 0 136 1 53 0 138 1 65 0 142 1 81 0 152 4 213 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 1 117 0 191 1 121 0 193 1 125 0 194 16 253 0 196 16 253 0 197 16 253 0 198 16 253 0 199 1 145 0 200 1 145 0 201 1 145 0 202 16 253 0 203 1 161 0 204 16 253 0 205 16 253 0 206 16 253 0 207 16 253 0 208 16 253 0 209 1 185 0 210 16 253 0 216 17 5 0 220 17 5 0 227 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 17 5 1 48 17 5 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 17 5 1 64 3 197 1 65 17 5 1 84 17 5 1 87 17 5 1 88 16 253 1 158 1 197 2 71 2 217 2 72 16 253 2 81 2 229 2 82 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87 3 1 2 100] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 17 13 0 220 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 17 13 1 48 17 13 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 17 13 1 64 3 197 1 65 17 13 1 84 17 13 1 87 17 13 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 9 194 0 9 0 15 0 38] 
#[0 9 198 0 9 0 15 0 38] 
#[0 9 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 17 17 0 157] 
#[1 4 214 0 1 4 214 0 5 4 214 0 8 4 214 0 10 4 214 0 12 4 214 0 13 4 214 0 16 4 214 0 17 4 214 0 47 4 214 0 48 4 214 0 49 4 214 0 52 4 214 0 55 4 214 0 56 4 214 0 60 4 214 0 61 4 214 0 62 4 214 0 65 4 214 0 72 4 214 0 76 4 214 0 79 4 214 0 86 4 214 0 94 4 214 0 97 4 214 0 99 4 214 0 100 4 214 0 104 4 214 0 114 4 214 0 117 4 214 0 121 4 214 0 122 4 214 0 125 4 214 0 128 4 214 0 130 4 214 0 133 4 214 0 134 4 214 0 135 4 214 0 136 4 214 0 138 4 214 0 152 0 243 0 157 4 214 0 158 4 214 0 159 4 214 0 160 4 214 0 161 4 214 0 162 4 214 0 165 4 214 0 166 4 214 0 169 4 214 0 170 17 21 0 222 10 121 0 223 10 125 0 224 10 129 0 225] 
#[0 17 25 0 9] 
#[1 1 2 0 2 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 11 1 2 0 12 1 2 0 14 1 2 0 15 1 2 0 16 1 2 0 18 1 2 0 20 1 2 0 21 1 2 0 22 1 2 0 23 1 2 0 25 0 107 0 26 1 2 0 27 1 2 0 28 1 2 0 29 1 2 0 30 1 2 0 31 1 2 0 33 1 2 0 34 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 40 1 2 0 44 1 2 0 45 1 2 0 51 1 2 0 63 1 2 0 68 1 2 0 79 1 2 0 82 1 2 0 89 1 2 0 90 1 2 0 91 1 2 0 92 1 2 0 101 1 2 0 103 1 2 0 119 1 2 0 145 1 2 0 149 1 2 0 150 1 2 0 151 1 2 0 153 1 2 0 154 1 2 0 155 1 2 0 163 1 2 0 164 1 2 0 167 1 2 0 168 17 29 0 217 17 29 0 239 1 2 2 101] 
#[1 14 165 0 15 17 33 0 38] 
#[0 9 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 9 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 9 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 17 37 0 234 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 10 173 1 48 10 173 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 10 173 1 64 3 197 1 65 10 173 1 84 10 173 1 87 10 173 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 17 41 1 48 17 41 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 17 41 1 64 3 197 1 65 17 41 1 84 17 41 1 87 17 41 1 88 17 41 1 89 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 17 45 0 234 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 10 173 1 48 10 173 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 10 173 1 64 3 197 1 65 10 173 1 84 10 173 1 87 10 173 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 9 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 9 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 9 226 0 9 0 15 0 25] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 9 65 0 196 9 65 0 197 9 65 0 198 9 65 0 199 1 145 0 200 1 145 0 201 1 145 0 202 9 65 0 203 1 161 0 204 9 65 0 205 9 65 0 206 9 65 0 207 9 65 0 208 9 65 0 209 1 185 0 210 9 65 0 216 9 65 1 158 9 65 2 81 17 49 2 82 3 1 2 100] 
#[0 9 230 0 9 0 15 0 25] 
#[0 9 234 0 9 0 15 0 25] 
#[0 9 238 0 9 0 15 0 25] 
#[0 9 242 0 9 0 15 0 25] 
#[0 9 246 0 9 0 15] 
#[0 9 250 0 9 0 15] 
#[0 2 206 0 9 0 15] 
#[0 9 254 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 17 53 1 48 17 53 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 17 53 1 64 3 197 1 65 17 53 1 84 17 53 1 87 17 53 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 17 57 0 9] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 17 61 1 48 17 61 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 17 61 1 64 3 197 1 65 17 61 1 84 17 61 1 87 17 61 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 17 65 0 85] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 17 69 1 48 17 69 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 17 69 1 64 3 197 1 65 17 69 1 84 17 69 1 87 17 69 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 11 97 1 48 11 97 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 11 97 1 64 3 197 1 65 17 73 1 76 11 97 1 84 11 97 1 87 11 97 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 10 2 0 15 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 10 6 0 15 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 10 10 0 15 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 10 14 0 15 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 17 77 0 51] 
#[0 10 18 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 17 81 0 157] 
#[0 10 22 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 10 26 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 10 30 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 10 34 0 157] 
#[0 10 38 0 157] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 17 85 0 157 17 89 1 178 17 93 1 179] 
#[1 10 42 0 15 10 42 0 25 17 97 0 30] 
#[1 17 101 0 15 17 105 0 25] 
#[0 10 46 0 15 0 25] 
#[1 15 117 0 157 1 125 0 191 15 125 0 193 1 125 0 194 15 125 0 208 17 109 1 193] 
#[1 10 50 0 8 1 2 0 20 5 253 0 24 2 143 0 26 10 50 0 32 10 50 0 148 9 37 0 217 9 37 0 239] 
#[0 1 50 0 15 0 20 0 25 0 32 0 145 0 148] 
#[0 17 113 0 20] 
#[1 17 117 0 32 17 121 0 148 17 125 1 208] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 17 129 0 157 1 125 0 191 15 125 0 193 1 125 0 194 15 125 0 208 17 133 1 184 15 109 1 185 17 137 1 193] 
#[0 17 141 0 37] 
#[0 17 145 0 20] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 17 149 1 48 17 149 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 17 149 1 64 3 197 1 65 17 149 1 84 17 149 1 87 17 149 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 49 0 37 0 10 0 80 0 10 0 88 0 10 0 109 0 10 0 111 0 10 0 120 17 153 1 211 17 157 1 213 17 161 1 215 17 165 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 10 54 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 17 169 0 196 17 169 0 197 17 169 0 198 17 169 0 199 1 145 0 200 1 145 0 201 1 145 0 202 17 169 0 203 1 161 0 204 17 169 0 205 17 169 0 206 17 169 0 207 17 169 0 208 17 169 0 209 1 185 0 210 17 169 0 216 17 169 1 158 17 169 2 81 2 229 2 82 3 1 2 100] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 17 173 0 196 17 173 0 197 17 173 0 198 17 173 0 199 1 145 0 200 1 145 0 201 1 145 0 202 17 173 0 203 1 161 0 204 17 173 0 205 17 173 0 206 17 173 0 207 17 173 0 208 17 173 0 209 1 185 0 210 17 173 0 216 17 173 1 158 17 173 2 81 2 229 2 82 3 1 2 100] 
#[1 18 9 0 1 18 13 0 2 18 13 0 3 18 13 0 5 18 13 0 10 17 197 0 12 18 9 0 13 17 205 0 16 18 9 0 17 18 13 0 21 18 13 0 26 18 13 0 27 18 13 0 29 18 13 0 31 18 13 0 33 18 13 0 39 18 9 0 72 18 9 0 130 18 13 0 149 18 9 0 152 18 13 0 153 18 13 0 154 18 9 1 237 18 13 1 239] 
#[0 10 58 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 18 17 1 48 18 17 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 18 17 1 64 3 197 1 65 18 17 1 84 18 17 1 87 18 17 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 10 62 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 10 66 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 10 70 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 76 0 10 0 86 0 10 0 94 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 142 0 10 0 157 18 21 1 195 18 25 1 196 18 29 1 197 18 33 1 198 18 37 1 203 18 41 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 10 74 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 10 78 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 10 82 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 18 45 0 9] 
#[0 10 86 0 157] 
#[0 10 90 0 157] 
#[0 18 49 0 157] 
#[0 10 94 0 157] 
#[0 10 98 0 157] 
#[0 18 53 0 157] 
#[0 10 102 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 139 0 155 2 101] 
#[1 6 13 0 20 18 57 0 25] 
#[1 18 61 0 15 18 65 0 38] 
#[0 10 106 0 157] 
#[0 10 110 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 155 2 101] 
#[0 10 114 0 37 0 41 0 42 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 80 0 85 0 86 0 87 0 88 0 94 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 157] 
#[0 10 118 0 15 0 38] 
#[1 1 2 0 2 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 11 1 2 0 12 1 2 0 13 1 2 0 14 1 2 0 15 1 2 0 16 1 2 0 17 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 21 1 2 0 22 5 253 0 24 0 107 0 26 1 2 0 27 1 2 0 28 1 2 0 29 2 147 0 30 1 2 0 31 2 206 0 32 1 2 0 33 1 2 0 34 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 39 1 2 0 40 1 2 0 44 1 2 0 90 1 2 0 149 1 2 0 150 1 2 0 151 1 2 0 153 1 2 0 154 6 209 0 217 6 209 0 239] 
#[0 10 122 0 9 0 15] 
#[0 18 73 0 9] 
#[1 10 126 0 9 18 77 0 15] 
#[0 10 130 0 9 0 15] 
#[1 18 81 0 9 18 85 0 15] 
#[0 10 134 0 9 0 15] 
#[0 10 138 0 9 0 15] 
#[1 0 49 0 37 0 10 0 41 0 10 0 57 0 10 0 62 0 10 0 67 0 10 0 87 0 10 0 88 0 53 0 98 0 10 0 99 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 137 6 242 0 155 13 69 0 175 18 89 0 187 13 65 0 188 13 69 0 189 13 69 0 190 13 69 1 151 13 69 1 253 13 69 2 11 13 69 2 33 13 69 2 43 0 89 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[1 10 142 0 23 18 93 0 26 10 142 0 145 10 142 0 148 18 97 1 155 18 97 1 156] 
#[1 10 142 0 23 18 93 0 26 10 142 0 145 10 142 0 148 18 105 1 155 18 105 1 156] 
#[1 10 146 0 23 18 109 0 26 10 146 0 145 10 146 0 148 18 113 2 15 18 113 2 16] 
#[0 18 121 0 52 0 55 0 86 0 94 0 117 0 121 0 134 0 135 0 138 0 201] 
#[1 18 125 0 148 18 129 2 36] 
#[0 10 150 0 148] 
#[1 10 146 0 8 18 109 0 26 18 133 2 15 18 133 2 16] 
#[0 10 154 0 15 0 38 0 155] 
#[0 10 158 0 15 0 25] 
#[0 10 162 0 15 0 25] 
#[0 18 137 0 9] 
#[1 0 105 0 1 18 141 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 18 145 1 48 18 145 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 18 145 1 64 3 197 1 65 18 145 1 84 18 145 1 87 18 145 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87 18 149 2 91] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 3 9 0 49 0 153 0 50 3 13 0 52 3 17 0 55 0 165 0 56 0 173 0 59 3 25 0 60 0 181 0 61 0 185 0 62 0 189 0 64 3 29 0 65 2 217 0 72 0 201 0 75 3 33 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 3 41 0 86 0 229 0 93 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 0 249 0 116 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 3 65 0 134 3 69 0 135 1 45 0 136 1 49 0 137 3 77 0 138 1 57 0 139 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 18 153 1 92 18 153 1 93 18 153 1 96 18 153 1 108 2 125 1 109 18 153 1 110 18 153 1 111 18 153 1 112 18 153 1 119 18 153 1 120 18 153 1 121 18 153 1 122 18 153 1 130 18 153 1 131 18 153 1 132 18 153 1 133 18 153 1 134 18 153 1 135 18 153 1 136 18 153 1 137 18 153 1 145 18 153 1 146 18 153 1 147 18 153 1 148 18 153 1 150 1 197 2 71 2 217 2 72 18 153 2 80 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 18 153 2 88] 
#[1 13 173 0 157 18 157 2 90] 
#[0 10 166 0 25] 
#[0 18 161 0 25] 
#[0 10 170 0 25] 
#[0 10 174 0 9 0 15 0 25] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 18 165 1 48 18 165 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 18 165 1 64 3 197 1 65 18 165 1 84 18 165 1 87 18 165 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 10 178 0 1 10 178 0 5 10 178 0 8 10 178 0 10 10 178 0 12 10 178 0 13 10 178 0 16 10 178 0 17 10 178 0 25 10 178 0 47 10 178 0 48 10 178 0 49 10 178 0 50 10 178 0 52 10 178 0 53 10 178 0 55 10 178 0 56 10 178 0 58 10 178 0 59 10 178 0 60 10 178 0 61 10 178 0 62 10 178 0 64 10 178 0 65 2 151 0 66 10 178 0 72 10 178 0 75 10 178 0 76 10 178 0 77 10 178 0 78 10 178 0 81 10 178 0 83 10 178 0 86 10 178 0 93 10 178 0 94 10 178 0 97 10 178 0 99 10 178 0 100 10 178 0 116 10 178 0 117 10 178 0 121 10 178 0 122 10 178 0 125 10 178 0 127 10 178 0 128 10 178 0 129 10 178 0 130 10 178 0 131 10 178 0 133 10 178 0 134 10 178 0 135 10 178 0 136 10 178 0 137 10 178 0 138 10 178 0 139 10 178 0 140 10 178 0 142 10 178 0 146 10 178 0 147 10 178 0 148 10 178 0 152 10 178 0 155 10 178 0 157 10 178 0 158 10 178 0 159 10 178 0 160 10 178 0 161 10 178 0 162 10 178 0 165 10 178 0 166 10 178 0 169 10 178 0 170 10 178 2 101] 
#[0 10 182 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 1 2 0 9 1 2 0 20 6 1 0 26 18 173 0 217 18 173 0 239] 
#[0 10 186 0 15 0 155] 
#[1 18 177 0 20 14 193 0 37] 
#[0 18 181 0 157] 
#[0 10 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 10 194 0 15 0 155] 
#[1 10 198 0 2 10 198 0 3 10 198 0 4 10 198 0 5 10 198 0 6 10 198 0 7 10 198 0 8 10 198 0 9 10 198 0 10 10 198 0 11 10 198 0 12 10 198 0 13 10 198 0 14 10 198 0 15 10 198 0 16 10 198 0 17 10 198 0 18 10 198 0 19 10 198 0 20 10 198 0 21 10 198 0 22 10 198 0 23 10 198 0 25 10 198 0 26 10 198 0 27 10 198 0 28 10 198 0 29 10 198 0 30 10 198 0 31 10 198 0 33 10 198 0 34 10 198 0 35 10 198 0 36 10 198 0 37 10 198 0 38 10 198 0 39 10 198 0 40 10 198 0 44 10 198 0 45 10 198 0 51 10 198 0 63 10 198 0 68 10 198 0 79 10 198 0 82 10 198 0 89 10 198 0 90 10 198 0 91 10 198 0 92 10 198 0 101 10 198 0 103 10 198 0 119 10 198 0 145 9 213 0 148 10 198 0 149 10 198 0 150 10 198 0 151 10 198 0 153 10 198 0 154 10 198 0 155 10 198 0 163 10 198 0 164 10 198 0 167 10 198 0 168 18 185 0 253 18 185 0 254 18 185 0 255 18 185 1 5 10 198 2 101] 
#[1 14 165 0 15 18 193 0 38] 
#[1 13 145 0 15 18 197 0 155] 
#[0 10 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 13 249 0 37 18 201 0 155 18 205 0 157 18 209 1 2 14 17 1 3] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 9 213 0 148 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 18 217 0 254 18 217 0 255 18 217 1 4 18 217 1 5 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 18 217 1 48 18 217 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 18 217 1 64 3 197 1 65 18 217 1 84 18 217 1 87 18 217 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 13 253 0 148 1 81 0 152 18 225 0 155 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 18 229 1 7 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 125 1 27 3 125 1 28 3 125 1 33 3 125 1 34 3 125 1 35 3 125 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 14 29 1 48 14 29 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 14 29 1 64 3 197 1 65 14 29 1 88 1 197 2 71 2 217 2 72 3 125 2 83 1 197 2 84 1 197 2 85 3 125 2 86 1 197 2 87] 
#[0 10 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 10 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 9 229 0 148 1 81 0 152 18 233 0 155 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 18 237 1 48 18 237 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 18 237 1 64 3 197 1 65 18 237 1 84 18 237 1 87 18 237 1 88 18 237 1 186 18 237 2 8 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 10 214 0 2 10 214 0 3 10 214 0 4 10 214 0 5 10 214 0 6 10 214 0 7 10 214 0 8 10 214 0 9 10 214 0 10 10 214 0 11 10 214 0 12 10 214 0 13 10 214 0 14 10 214 0 15 10 214 0 16 10 214 0 17 10 214 0 18 10 214 0 19 10 214 0 20 10 214 0 21 10 214 0 22 10 214 0 23 10 214 0 25 10 214 0 26 10 214 0 27 10 214 0 28 10 214 0 29 10 214 0 30 10 214 0 31 10 214 0 33 10 214 0 34 10 214 0 35 10 214 0 36 5 145 0 37 10 214 0 38 10 214 0 39 10 214 0 40 10 214 0 44 10 214 0 45 10 214 0 51 10 214 0 63 10 214 0 68 10 214 0 79 10 214 0 82 10 214 0 89 10 214 0 90 10 214 0 91 10 214 0 92 10 214 0 101 10 214 0 103 10 214 0 119 10 214 0 145 10 214 0 148 10 214 0 149 10 214 0 150 10 214 0 151 10 214 0 153 10 214 0 154 10 214 0 155 10 214 0 163 10 214 0 164 10 214 0 167 10 214 0 168 18 241 0 211 18 245 0 212 6 25 0 213 10 214 2 101] 
#[0 10 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 18 249 0 53 18 253 0 61 10 222 0 155 19 1 1 114 19 5 1 115 19 9 1 116 19 13 1 117 19 17 1 118] 
#[0 10 226 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 10 230 0 9 1 70 0 10 1 74 0 35 1 78 0 37 19 25 0 157 19 25 2 77] 
#[0 19 29 0 8] 
#[1 1 77 0 148 19 33 1 93] 
#[0 10 234 0 148] 
#[1 2 119 0 9 1 2 0 10 2 119 0 20 14 97 0 26 1 2 0 35 1 2 0 37 14 141 0 217 14 141 0 239 19 37 1 17 14 105 1 18] 
#[0 10 238 0 15 0 153] 
#[0 19 41 0 153] 
#[1 19 45 0 15 10 242 0 153] 
#[1 7 214 0 9 7 214 0 20 19 49 0 26 19 53 1 17 14 105 1 18] 
#[0 10 246 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 10 250 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 10 254 0 15 0 153] 
#[0 11 2 0 9 0 15 0 38] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 19 57 0 157] 
#[0 11 6 0 9 0 15 0 38] 
#[0 11 10 0 9 0 15 0 38] 
#[0 11 14 0 9 0 15 0 38] 
#[0 11 18 0 9 0 15 0 38] 
#[1 1 2 0 2 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 11 1 2 0 12 1 2 0 14 1 2 0 15 1 2 0 16 1 2 0 18 1 2 0 20 1 2 0 21 1 2 0 22 1 2 0 23 1 2 0 25 0 107 0 26 1 2 0 27 1 2 0 28 1 2 0 29 1 2 0 30 1 2 0 31 1 2 0 33 1 2 0 34 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 40 1 2 0 44 1 2 0 45 1 2 0 51 1 2 0 63 1 2 0 68 1 2 0 79 1 2 0 82 1 2 0 89 1 2 0 90 1 2 0 91 1 2 0 92 1 2 0 101 1 2 0 103 1 2 0 119 1 2 0 145 1 2 0 149 1 2 0 150 1 2 0 151 1 2 0 153 1 2 0 154 1 2 0 155 1 2 0 163 1 2 0 164 1 2 0 167 1 2 0 168 19 61 0 217 19 61 0 239 1 2 2 101] 
#[1 14 165 0 15 19 65 0 38] 
#[1 11 22 0 4 11 22 0 7 11 22 0 8 11 26 0 9 11 22 0 11 11 22 0 14 11 26 0 15 11 22 0 18 11 22 0 20 11 22 0 22 11 26 0 25 11 22 0 28 11 22 0 30 11 22 0 34 11 22 0 35 11 22 0 37 11 22 0 40 11 22 0 150] 
#[0 11 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 11 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 11 38 0 163] 
#[0 11 42 0 163 0 164 0 167 0 168] 
#[0 11 46 0 167] 
#[1 6 153 0 10 19 69 0 37] 
#[0 11 50 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 11 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 11 54 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 19 73 1 48 19 73 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 19 73 1 64 3 197 1 65 19 73 1 84 19 73 1 87 19 73 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 11 58 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 11 62 0 15 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 19 77 1 48 19 77 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 19 77 1 64 3 197 1 65 19 77 1 84 19 77 1 87 19 77 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 3 37 0 79 3 26 0 82 7 53 0 91 7 57 0 92 7 61 0 103 3 26 0 119 7 65 0 145 7 69 1 65 19 81 1 66 7 77 1 67 7 81 1 68 7 85 1 69 7 89 1 70 7 93 1 71 7 97 1 72 7 101 1 73 7 105 1 74] 
#[0 19 85 0 30] 
#[1 19 89 0 15 19 93 0 25] 
#[0 11 66 0 15 0 25] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 9 229 0 148 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 19 97 1 48 19 97 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 19 97 1 64 3 197 1 65 19 97 1 84 19 97 1 87 19 97 1 88 19 97 1 186 19 97 2 8 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 15 101 0 157 19 101 1 185] 
#[0 11 70 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 10 142 0 8 18 93 0 26 19 105 1 155 19 105 1 156] 
#[0 19 109 0 157] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 19 113 1 48 19 113 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 19 113 1 64 3 197 1 65 19 113 1 84 19 113 1 87 19 113 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 0 49 0 37 0 10 0 80 0 10 0 88 0 10 0 109 0 10 0 111 0 10 0 120 19 117 1 211 17 157 1 213 17 161 1 215 17 165 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 11 74 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 10 42 0 15 1 2 0 20 5 253 0 24 10 42 0 25 6 1 0 26 17 97 0 30 10 50 0 148 9 37 0 217 9 37 0 239] 
#[1 17 101 0 15 19 121 0 25] 
#[0 19 125 0 148] 
#[1 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 76 0 10 0 86 0 10 0 94 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 142 0 10 0 157 19 129 1 196 18 29 1 197 18 33 1 198 18 37 1 203 18 41 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 19 133 0 128] 
#[0 19 137 0 25] 
#[0 19 141 0 155] 
#[1 0 49 0 37 0 10 0 88 0 10 0 109 0 10 0 111 0 10 0 120 11 78 0 155 19 145 1 214 19 145 1 215 19 153 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[1 0 49 0 37 0 10 0 80 0 10 0 88 0 10 0 109 0 10 0 111 11 82 0 155 19 157 1 212 19 157 1 213 19 165 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[1 11 86 0 80 19 169 0 88 19 173 0 109 19 177 0 111 11 86 0 120 19 181 1 216 19 185 1 217] 
#[1 19 189 0 8 1 70 0 10 1 74 0 35 1 78 0 37] 
#[1 19 193 0 8 1 70 0 10 1 74 0 35 1 78 0 37] 
#[0 11 90 0 8] 
#[0 11 94 0 8] 
#[0 11 98 0 8] 
#[0 11 102 0 8] 
#[0 11 106 0 8] 
#[0 2 155 0 8] 
#[0 11 118 0 8] 
#[0 2 159 0 8] 
#[0 11 130 0 8] 
#[0 11 134 0 8] 
#[0 11 138 0 8] 
#[0 11 142 0 8] 
#[0 11 146 0 8] 
#[0 11 150 0 8] 
#[0 11 154 0 8] 
#[0 11 158 0 8] 
#[0 11 162 0 8] 
#[0 11 166 0 8] 
#[0 11 170 0 8] 
#[0 11 174 0 8] 
#[0 11 178 0 8] 
#[0 11 182 0 8] 
#[0 19 197 0 8] 
#[0 19 201 0 8] 
#[0 19 205 0 25] 
#[0 19 209 0 9] 
#[0 11 186 0 9] 
#[1 11 190 0 9 19 213 0 15 11 190 0 38] 
#[0 11 194 0 9 0 15 0 38] 
#[0 11 198 0 9 0 38] 
#[1 11 202 0 49 11 202 0 52 11 202 0 55 11 202 0 60 11 202 0 65 11 202 0 76 11 202 0 86 11 202 0 94 11 202 0 100 19 233 0 104 19 221 0 107 19 233 0 114 11 202 0 117 11 202 0 121 11 202 0 125 19 233 0 128 11 202 0 134 11 202 0 135 11 202 0 138 11 202 0 142 11 202 0 157 19 233 1 201 19 233 1 202] 
#[1 19 241 0 25 1 77 0 148 19 245 1 93 19 249 1 252] 
#[0 19 253 0 8] 
#[0 20 1 0 8] 
#[0 11 206 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 139 0 155 2 101] 
#[1 20 5 0 38 8 73 0 157 1 125 0 191 8 89 0 193 1 125 0 194 15 253 2 61 8 89 2 62] 
#[0 11 210 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 20 9 1 48 20 9 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 20 9 1 64 3 197 1 65 20 9 1 84 20 9 1 87 20 9 1 88 20 9 2 70 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 11 214 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 16 1 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 20 13 1 48 20 13 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 20 13 1 64 3 197 1 65 20 13 1 84 20 13 1 87 20 13 1 88 20 13 2 67 20 17 2 68 16 25 2 69 20 13 2 70 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 11 218 0 15 0 38] 
#[1 20 21 0 157 20 25 2 69] 
#[0 20 29 0 155] 
#[1 0 49 0 37 0 10 0 157 20 33 1 157 20 37 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[1 20 41 0 23 11 222 0 145 11 222 0 148 20 45 1 159 20 49 1 160] 
#[0 11 226 0 8 0 23 0 145 0 148] 
#[1 20 53 0 23 11 230 0 145 11 230 0 148 20 57 2 1 20 61 2 2] 
#[1 0 49 0 37 0 10 0 85 0 10 0 104 0 10 0 157 20 65 2 17 20 69 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[1 20 73 0 23 11 234 0 145 11 234 0 148 20 77 2 20 20 81 2 21] 
#[0 11 238 0 8 0 23 0 145 0 148] 
#[0 11 242 0 148] 
#[1 0 49 0 37 11 246 0 155 0 10 0 157 20 85 2 40 20 89 2 41 20 93 2 42 20 97 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[1 20 101 0 25 7 22 0 37 7 22 0 41 7 22 0 49 7 22 0 52 7 22 0 55 7 22 0 57 7 22 0 58 7 22 0 60 7 22 0 62 7 22 0 65 7 22 0 67 7 22 0 69 7 22 0 71 7 22 0 75 7 22 0 76 7 22 0 86 7 22 0 87 7 22 0 88 7 22 0 94 7 22 0 98 7 22 0 99 7 22 0 100 7 22 0 105 7 22 0 108 7 22 0 109 7 22 0 111 7 22 0 112 7 22 0 113 7 22 0 117 7 22 0 118 7 22 0 121 7 22 0 124 7 22 0 125 7 22 0 126 7 22 0 134 7 22 0 135 7 22 0 137 7 22 0 138 7 22 0 141 7 22 0 142 7 22 0 143 7 22 0 152 7 22 0 155 7 22 0 157 20 101 2 73 7 22 2 101] 
#[0 20 105 0 8] 
#[0 20 109 0 25] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 20 113 0 220 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 20 117 1 27 20 117 1 28 20 117 1 33 20 117 1 34 20 117 1 35 20 117 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 20 113 1 48 20 113 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 20 113 1 64 3 197 1 65 20 113 1 84 20 113 1 87 20 113 1 88 1 197 2 71 2 217 2 72 20 117 2 83 1 197 2 84 1 197 2 85 20 117 2 86 1 197 2 87] 
#[0 11 250 0 9 0 15] 
#[0 11 254 0 9 0 15] 
#[0 12 2 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 12 6 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 12 10 0 9 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 9 81 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 9 81 1 84 9 81 1 109 20 121 1 127 20 121 1 128 20 129 1 129 1 197 2 71 2 217 2 72 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87] 
#[0 20 133 0 9] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 3 9 0 49 0 153 0 50 3 13 0 52 3 17 0 55 0 165 0 56 0 173 0 59 3 25 0 60 0 181 0 61 0 185 0 62 0 189 0 64 3 29 0 65 2 217 0 72 0 201 0 75 3 33 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 3 41 0 86 0 229 0 93 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 0 249 0 116 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 3 65 0 134 3 69 0 135 1 45 0 136 1 49 0 137 3 77 0 138 1 57 0 139 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 20 137 1 92 20 137 1 93 20 137 1 96 20 137 1 108 2 125 1 109 20 137 1 110 20 137 1 111 20 137 1 112 20 137 1 119 20 137 1 120 20 137 1 121 20 137 1 122 20 137 1 130 20 137 1 131 20 137 1 132 20 137 1 133 20 137 1 134 20 137 1 135 20 137 1 136 20 137 1 137 20 137 1 145 20 137 1 146 20 137 1 147 20 137 1 148 20 137 1 150 1 197 2 71 2 217 2 72 20 137 2 80 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 20 137 2 88] 
#[0 12 14 0 9 0 20] 
#[0 20 141 0 157] 
#[1 1 2 0 8 1 2 0 15 1 2 0 20 6 1 0 26 1 2 0 35 1 2 0 37 1 2 0 155 20 145 0 217 20 145 0 239] 
#[0 12 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 12 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 12 26 0 30] 
#[0 12 30 0 15 0 155] 
#[0 12 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 9 82 0 30] 
#[0 12 38 0 15 0 155] 
#[0 12 42 0 15 0 155] 
#[0 12 46 0 15 0 155] 
#[0 12 50 0 15 0 155] 
#[0 12 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 12 58 0 15 0 155] 
#[0 12 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 12 66 0 15 0 155] 
#[1 12 70 0 2 12 70 0 3 12 70 0 4 12 70 0 5 12 70 0 6 12 70 0 7 12 70 0 8 12 70 0 9 12 70 0 10 12 70 0 11 12 70 0 12 12 70 0 13 12 70 0 14 12 70 0 15 12 70 0 16 12 70 0 17 12 70 0 18 12 70 0 19 12 70 0 20 12 70 0 21 12 70 0 22 12 70 0 23 12 70 0 25 12 70 0 26 12 70 0 27 12 70 0 28 12 70 0 29 12 70 0 30 12 70 0 31 12 70 0 33 12 70 0 34 12 70 0 35 12 70 0 36 12 70 0 38 12 70 0 39 12 70 0 40 12 70 0 44 12 70 0 45 12 70 0 51 12 70 0 63 12 70 0 68 12 70 0 79 12 70 0 82 12 70 0 89 12 70 0 90 12 70 0 91 12 70 0 92 12 70 0 101 12 70 0 103 12 70 0 119 12 70 0 145 9 229 0 148 12 70 0 149 12 70 0 150 12 70 0 151 12 70 0 153 12 70 0 154 12 70 0 155 12 70 0 163 12 70 0 164 12 70 0 167 12 70 0 168 20 149 2 7 20 149 2 8 12 70 2 101] 
#[1 12 74 0 2 12 74 0 3 12 74 0 4 12 74 0 5 12 74 0 6 12 74 0 7 12 74 0 8 12 74 0 9 12 74 0 10 12 74 0 11 12 74 0 12 12 74 0 13 12 74 0 14 12 74 0 15 12 74 0 16 12 74 0 17 12 74 0 18 12 74 0 19 12 74 0 20 12 74 0 21 12 74 0 22 12 74 0 23 12 74 0 25 12 74 0 26 12 74 0 27 12 74 0 28 12 74 0 29 12 74 0 30 12 74 0 31 12 74 0 33 12 74 0 34 12 74 0 35 12 74 0 36 5 145 0 37 12 74 0 38 12 74 0 39 12 74 0 40 12 74 0 44 12 74 0 45 12 74 0 51 12 74 0 63 12 74 0 68 12 74 0 79 12 74 0 82 12 74 0 89 12 74 0 90 12 74 0 91 12 74 0 92 12 74 0 101 12 74 0 103 12 74 0 119 12 74 0 145 12 74 0 148 12 74 0 149 12 74 0 150 12 74 0 151 12 74 0 153 12 74 0 154 12 74 0 155 12 74 0 163 12 74 0 164 12 74 0 167 12 74 0 168 10 105 0 213 12 74 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 20 157 1 48 20 157 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 20 157 1 64 3 197 1 65 20 157 1 84 20 157 1 87 20 157 1 88 20 157 1 89 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 20 161 0 23] 
#[0 20 165 0 155] 
#[1 18 249 0 53 18 253 0 61 12 78 0 155 20 169 1 116 19 13 1 117 19 17 1 118] 
#[0 12 82 0 53 0 61 0 155] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 0 149 0 49 0 153 0 50 0 157 0 52 18 249 0 53 0 161 0 55 0 165 0 56 0 169 0 58 0 173 0 59 0 177 0 60 20 173 0 61 0 185 0 62 0 189 0 64 0 193 0 65 2 217 0 72 0 201 0 75 0 205 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 0 225 0 86 0 229 0 93 0 233 0 94 0 237 0 97 0 241 0 99 0 245 0 100 0 249 0 116 0 253 0 117 1 1 0 121 1 5 0 122 1 9 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 1 37 0 134 1 41 0 135 1 45 0 136 1 49 0 137 1 53 0 138 1 57 0 139 1 61 0 140 1 65 0 142 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 1 85 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 1 117 0 191 1 121 0 193 1 125 0 194 1 129 0 196 1 129 0 197 1 129 0 198 1 129 0 199 1 145 0 200 1 145 0 201 1 145 0 202 1 129 0 203 1 161 0 204 1 129 0 205 1 129 0 206 1 129 0 207 1 129 0 208 1 129 0 209 1 185 0 210 1 129 0 216 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 5 233 1 91 5 233 1 92 5 233 1 93 20 177 1 95 5 233 1 96 5 233 1 97 5 233 1 98 2 109 1 99 2 113 1 100 2 117 1 105 5 233 1 108 2 125 1 109 5 233 1 110 5 233 1 111 5 233 1 112 20 181 1 118 5 233 1 119 5 233 1 120 5 233 1 121 5 233 1 122 5 233 1 130 5 233 1 131 5 233 1 132 5 233 1 133 5 233 1 134 5 233 1 135 5 233 1 136 5 233 1 137 5 233 1 145 5 233 1 146 5 233 1 147 5 233 1 148 5 233 1 150 1 129 1 158 1 197 2 71 2 217 2 72 5 233 2 80 1 129 2 81 2 229 2 82 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 5 233 2 88 3 1 2 100] 
#[0 12 86 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 12 90 0 9] 
#[0 20 185 0 9] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 20 189 1 48 20 189 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 20 189 1 64 3 197 1 65 20 189 1 84 20 189 1 87 20 189 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 12 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 74 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 12 98 0 9 0 20] 
#[0 12 102 0 9 0 20] 
#[0 12 106 0 15 0 153] 
#[1 16 221 0 15 9 142 0 153 16 225 1 19 16 229 1 20] 
#[0 12 110 0 9 0 20] 
#[0 12 114 0 9 0 15 0 38] 
#[0 12 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 12 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 20 193 1 48 20 193 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 20 193 1 64 3 197 1 65 20 193 1 84 20 193 1 87 20 193 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 20 197 0 101] 
#[0 12 126 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 12 130 0 9 0 15 0 23 0 25 0 38 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 91 0 92 0 101 0 103 0 119 0 145 0 155 0 163 0 164 0 167 0 168 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 20 201 1 48 20 201 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 20 201 1 64 3 197 1 65 20 201 1 84 20 201 1 87 20 201 1 88 20 201 1 89 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 17 85 0 157 20 205 1 179] 
#[0 12 134 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 12 138 0 15 0 25] 
#[0 12 142 0 15 0 25] 
#[0 20 209 0 8] 
#[0 12 146 0 8 0 26 0 32 0 148] 
#[0 20 213 0 25] 
#[0 20 217 0 155] 
#[0 12 150 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 0 49 0 37 0 10 0 42 0 10 0 115 20 221 1 223 20 225 1 224 20 229 1 225 20 233 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 20 237 0 38] 
#[0 20 241 0 37] 
#[0 12 154 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 12 158 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 12 162 0 155] 
#[0 12 166 0 155] 
#[1 19 169 0 88 19 173 0 109 19 177 0 111 11 86 0 120 20 245 1 216 19 185 1 217] 
#[0 12 170 0 155] 
#[0 12 174 0 155] 
#[1 11 86 0 80 19 169 0 88 19 173 0 109 19 177 0 111 20 249 1 216 19 185 1 217] 
#[1 12 178 0 80 20 253 0 111 12 178 0 120] 
#[0 12 182 0 80 0 120] 
#[1 12 186 0 80 21 1 0 88 12 186 0 120] 
#[1 21 5 0 80 21 9 0 120] 
#[0 12 190 0 80 0 120] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 21 13 0 196 21 13 0 197 21 13 0 198 21 13 0 199 1 145 0 200 1 145 0 201 1 145 0 202 21 13 0 203 1 161 0 204 21 13 0 205 21 13 0 206 21 13 0 207 21 13 0 208 21 13 0 209 1 185 0 210 21 13 0 216 21 13 1 158 21 13 2 81 2 229 2 82 3 1 2 100] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 21 17 0 196 21 17 0 197 21 17 0 198 21 17 0 199 1 145 0 200 1 145 0 201 1 145 0 202 21 17 0 203 1 161 0 204 21 17 0 205 21 17 0 206 21 17 0 207 21 17 0 208 21 17 0 209 1 185 0 210 21 17 0 216 21 17 1 158 21 17 2 81 2 229 2 82 3 1 2 100] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 21 21 0 196 21 21 0 197 21 21 0 198 21 21 0 199 1 145 0 200 1 145 0 201 1 145 0 202 21 21 0 203 1 161 0 204 21 21 0 205 21 21 0 206 21 21 0 207 21 21 0 208 21 21 0 209 1 185 0 210 21 21 0 216 21 21 1 158 21 21 2 81 2 229 2 82 3 1 2 100] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 21 25 0 196 21 25 0 197 21 25 0 198 21 25 0 199 1 145 0 200 1 145 0 201 1 145 0 202 21 25 0 203 1 161 0 204 21 25 0 205 21 25 0 206 21 25 0 207 21 25 0 208 21 25 0 209 1 185 0 210 21 25 0 216 21 25 1 158 21 25 2 81 2 229 2 82 3 1 2 100] 
#[0 12 194 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 21 29 0 23 12 198 0 25 12 198 0 148 21 33 1 247 21 33 1 248] 
#[1 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 76 0 10 0 86 0 10 0 94 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 142 0 10 0 157 21 41 1 198 21 45 1 203 18 41 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 12 202 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 94 0 100 0 117 0 121 0 125 0 134 0 135 0 138 0 142 0 157] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 9 65 0 196 9 65 0 197 9 65 0 198 9 65 0 199 1 145 0 200 1 145 0 201 1 145 0 202 9 65 0 203 1 161 0 204 9 65 0 205 9 65 0 206 9 65 0 207 9 65 0 208 21 49 0 209 1 185 0 210 9 65 0 216 9 65 1 158 9 65 2 81 2 229 2 82 3 1 2 100] 
#[0 12 206 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 94 0 100 0 117 0 121 0 125 0 134 0 135 0 138 0 142 0 157] 
#[0 12 210 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 94 0 100 0 117 0 121 0 125 0 134 0 135 0 138 0 142 0 157] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 21 53 0 196 21 53 0 197 21 53 0 198 21 53 0 199 1 145 0 200 1 145 0 201 1 145 0 202 21 53 0 203 1 161 0 204 21 53 0 205 21 53 0 206 21 53 0 207 21 53 0 208 21 53 0 209 1 185 0 210 21 53 0 216 21 53 1 158 21 53 2 81 2 229 2 82 3 1 2 100] 
#[0 12 214 0 49 0 52 0 55 0 60 0 65 0 76 0 86 0 94 0 100 0 117 0 121 0 125 0 134 0 135 0 138 0 142 0 157] 
#[0 12 218 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 12 222 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 12 226 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 21 57 0 9] 
#[0 21 61 0 9] 
#[0 12 230 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 2 101] 
#[0 12 234 0 9 0 15] 
#[0 12 238 0 9 0 15] 
#[1 21 65 0 9 18 85 0 15] 
#[0 18 69 0 30] 
#[0 12 242 0 9 0 15] 
#[0 12 246 0 25 0 37 0 41 0 57 0 62 0 67 0 87 0 88 0 98 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 126 0 137 0 155 2 101] 
#[1 21 69 0 15 21 73 0 153] 
#[1 21 77 0 157 21 81 1 158] 
#[1 5 45 0 100 5 57 0 125 8 73 0 157 1 125 0 191 21 85 0 193 1 125 0 194 21 89 0 207 21 93 0 208 21 97 1 161] 
#[1 21 101 0 145 12 250 0 148 21 105 1 162 21 109 1 163 21 113 1 164] 
#[0 12 254 0 145 0 148] 
#[1 8 73 0 157 1 125 0 191 21 93 0 193 1 125 0 194 21 93 0 208 21 117 1 161] 
#[1 21 101 0 145 12 250 0 148 21 121 1 162 21 109 1 163 21 113 1 164] 
#[0 13 2 0 145 0 148] 
#[1 21 125 0 15 21 129 0 153] 
#[1 21 141 0 85 21 141 0 104 13 6 0 157 21 141 2 18 21 141 2 19] 
#[1 8 73 0 157 1 125 0 191 21 93 0 193 1 125 0 194 21 93 0 208 21 149 1 161] 
#[1 21 101 0 145 12 250 0 148 21 153 1 162 21 109 1 163 21 113 1 164] 
#[0 13 10 0 145 0 148] 
#[0 21 157 0 155] 
#[1 21 161 0 15 13 14 0 155] 
#[0 13 18 0 15 0 155] 
#[0 21 165 0 157] 
#[0 13 22 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 10 70 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 76 0 10 0 86 0 10 0 94 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 142 0 10 0 157 21 169 1 195 18 25 1 196 18 29 1 197 18 33 1 198 18 37 1 203 18 41 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 13 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 13 30 0 9 0 15] 
#[1 2 163 0 2 2 163 0 3 2 167 0 4 2 163 0 5 2 163 0 6 2 171 0 7 2 163 0 9 2 163 0 10 2 175 0 11 2 163 0 12 2 179 0 14 2 163 0 15 2 163 0 16 2 183 0 18 2 163 0 21 2 187 0 22 2 163 0 26 2 163 0 27 2 191 0 28 2 163 0 29 2 195 0 30 2 163 0 31 2 163 0 33 2 199 0 34 2 163 0 35 2 163 0 36 2 163 0 39 2 203 0 40 2 163 0 44 2 163 0 90 2 163 0 149 2 207 0 150 2 163 0 151 2 163 0 153 2 163 0 154 6 121 1 85] 
#[0 21 173 0 9] 
#[0 13 34 0 9] 
#[1 13 38 0 9 13 189 0 15] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 3 9 0 49 0 153 0 50 3 13 0 52 3 17 0 55 0 165 0 56 0 173 0 59 3 25 0 60 0 181 0 61 0 185 0 62 0 189 0 64 3 29 0 65 2 217 0 72 0 201 0 75 3 33 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 3 41 0 86 0 229 0 93 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 0 249 0 116 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 3 65 0 134 3 69 0 135 1 45 0 136 1 49 0 137 3 77 0 138 1 57 0 139 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 21 177 1 92 21 177 1 93 21 177 1 96 21 177 1 108 2 125 1 109 21 177 1 110 21 177 1 111 21 177 1 112 21 177 1 119 21 177 1 120 21 177 1 121 21 177 1 122 21 177 1 130 21 177 1 131 21 177 1 132 21 177 1 133 21 177 1 134 21 177 1 135 21 177 1 136 21 177 1 137 21 177 1 145 21 177 1 146 21 177 1 147 21 177 1 148 21 177 1 150 1 197 2 71 2 217 2 72 21 177 2 80 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 21 177 2 88] 
#[0 13 42 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 1 2 0 8 1 2 0 15 1 2 0 20 6 1 0 26 1 2 0 35 1 2 0 37 1 2 0 155 21 181 0 217 21 181 0 239] 
#[1 11 30 0 8 13 46 0 15 11 30 0 20 11 30 0 35 11 30 0 37 13 46 0 155] 
#[0 13 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 13 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 51 0 63 0 68 0 79 0 82 0 89 0 90 0 91 0 92 0 101 0 103 0 119 0 145 0 149 0 150 0 151 0 153 0 154 0 155 0 163 0 164 0 167 0 168 2 101] 
#[0 21 185 0 23] 
#[0 13 58 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 13 62 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[0 13 66 0 53 0 61 0 155] 
#[1 0 134 0 4 0 134 0 7 0 11 0 8 0 134 0 11 0 134 0 13 0 134 0 14 0 134 0 17 0 134 0 18 0 134 0 19 0 134 0 20 0 134 0 22 20 161 0 23 0 134 0 28 0 134 0 30 0 134 0 34 0 134 0 35 0 134 0 37 0 134 0 40 0 134 0 150] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 0 149 0 49 0 153 0 50 0 157 0 52 13 70 0 53 0 161 0 55 0 165 0 56 0 169 0 58 0 173 0 59 0 177 0 60 2 211 0 61 0 185 0 62 0 189 0 64 0 193 0 65 2 217 0 72 0 201 0 75 0 205 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 0 225 0 86 0 229 0 93 0 233 0 94 0 237 0 97 0 241 0 99 0 245 0 100 0 249 0 116 0 253 0 117 1 1 0 121 1 5 0 122 1 9 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 1 37 0 134 1 41 0 135 1 45 0 136 1 49 0 137 1 53 0 138 1 57 0 139 1 61 0 140 1 65 0 142 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 13 70 0 155 1 85 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 1 117 0 191 1 121 0 193 1 125 0 194 1 129 0 196 1 129 0 197 1 129 0 198 1 129 0 199 1 145 0 200 1 145 0 201 1 145 0 202 1 129 0 203 1 161 0 204 1 129 0 205 1 129 0 206 1 129 0 207 1 129 0 208 1 129 0 209 1 185 0 210 1 129 0 216 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 10 77 1 91 10 77 1 92 10 77 1 93 10 77 1 96 10 77 1 97 10 77 1 98 2 109 1 99 2 113 1 100 2 117 1 105 10 77 1 108 2 125 1 109 10 77 1 110 10 77 1 111 10 77 1 112 10 77 1 119 10 77 1 120 10 77 1 121 10 77 1 122 10 77 1 130 10 77 1 131 10 77 1 132 10 77 1 133 10 77 1 134 10 77 1 135 10 77 1 136 10 77 1 137 10 77 1 145 10 77 1 146 10 77 1 147 10 77 1 148 10 77 1 150 1 129 1 158 1 197 2 71 2 217 2 72 10 77 2 80 1 129 2 81 2 229 2 82 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 10 77 2 88 3 1 2 100] 
#[0 13 74 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 13 78 0 144 0 148] 
#[0 21 189 0 9] 
#[0 21 193 0 38] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 21 197 1 48 21 197 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 21 197 1 64 3 197 1 65 21 197 1 84 21 197 1 87 21 197 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 13 82 0 15 0 25] 
#[0 13 86 0 15 0 25] 
#[1 10 70 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 76 0 10 0 86 0 10 0 94 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 142 0 10 0 157 21 201 1 195 18 25 1 196 18 29 1 197 18 33 1 198 18 37 1 203 18 41 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 13 90 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 21 205 0 30 13 94 0 37 13 94 0 41 13 94 0 49 13 94 0 52 13 94 0 55 13 94 0 57 13 94 0 58 13 94 0 60 13 94 0 62 13 94 0 65 13 94 0 67 13 94 0 69 13 94 0 71 13 94 0 75 13 94 0 76 13 94 0 86 13 94 0 87 13 94 0 88 13 94 0 94 13 94 0 99 13 94 0 100 13 94 0 105 13 94 0 108 13 94 0 109 13 94 0 111 13 94 0 112 13 94 0 113 13 94 0 117 13 94 0 118 13 94 0 121 13 94 0 124 13 94 0 125 13 94 0 126 13 94 0 134 13 94 0 135 13 94 0 137 13 94 0 138 13 94 0 141 13 94 0 142 13 94 0 143 13 94 0 152 13 94 0 155 13 94 0 157 21 209 1 209 21 213 1 210 13 94 2 101] 
#[0 21 217 0 155] 
#[1 0 49 0 37 0 10 0 115 21 221 1 225 21 225 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[1 0 49 0 37 0 10 0 42 21 229 1 224 21 233 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[1 21 237 0 42 21 241 0 115] 
#[0 13 98 0 32 0 148] 
#[1 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 76 0 10 0 86 0 10 0 94 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 142 0 10 0 157 21 245 1 196 18 29 1 197 18 33 1 198 18 37 1 203 18 41 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 21 9 0 120] 
#[0 21 5 0 80] 
#[0 13 102 0 80 0 120] 
#[0 13 106 0 80 0 120] 
#[1 21 249 0 25 1 77 0 148 21 253 1 93 22 1 1 218] 
#[1 21 249 0 25 1 77 0 148 21 253 1 93 22 5 1 218] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 22 9 0 157] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 22 13 0 157] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 22 17 0 157] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 22 21 0 157] 
#[1 22 25 0 48 22 29 0 128] 
#[0 13 110 0 25 0 148] 
#[0 13 114 0 25 0 148] 
#[0 13 118 0 9 0 15 0 38] 
#[0 13 122 0 9 0 38] 
#[1 1 130 0 10 1 130 0 35 1 130 0 37 22 33 0 157] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 22 37 0 157] 
#[1 7 109 0 25 7 113 0 32 1 77 0 148 7 117 1 93 22 41 1 194] 
#[1 7 109 0 25 7 113 0 32 1 77 0 148 7 117 1 93 22 45 1 194] 
#[0 13 126 0 15 0 38] 
#[1 0 49 0 37 0 10 0 157 22 49 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 13 130 0 8 0 23 0 145 0 148] 
#[0 1 6 0 15 0 23 0 153] 
#[0 13 134 0 15 0 153] 
#[0 2 215 0 15 0 25 0 32 0 145 0 148] 
#[1 22 53 0 15 13 138 0 145 13 138 0 148] 
#[0 13 142 0 15 0 145 0 148] 
#[1 22 57 0 15 13 146 0 145 13 146 0 148] 
#[1 21 77 0 157 22 61 1 158] 
#[1 22 65 0 148 22 69 1 170] 
#[1 13 150 0 25 13 150 0 32 21 101 0 145 13 150 0 148 22 73 1 164] 
#[0 13 154 0 25 0 32 0 145 0 148] 
#[1 22 57 0 15 13 158 0 145 13 158 0 148] 
#[1 22 77 0 148 22 81 2 3] 
#[1 0 49 0 37 0 10 0 85 0 10 0 104 0 10 0 157 22 85 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 13 162 0 8 0 23 0 145 0 148] 
#[0 13 166 0 157] 
#[0 13 170 0 157] 
#[1 21 77 0 157 22 89 1 158] 
#[0 13 174 0 157] 
#[1 22 57 0 15 13 178 0 145 13 178 0 148] 
#[1 22 93 0 148 22 97 2 22] 
#[0 13 182 0 25 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 0 49 0 37 22 101 0 155 0 10 0 157 22 105 2 42 20 97 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[1 13 186 0 15 22 109 0 30 13 186 0 155] 
#[0 22 113 0 9] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 47 0 145 0 48 3 9 0 49 0 153 0 50 3 13 0 52 3 17 0 55 0 165 0 56 0 173 0 59 3 25 0 60 0 181 0 61 0 185 0 62 0 189 0 64 3 29 0 65 2 217 0 72 0 201 0 75 3 33 0 76 0 209 0 77 0 213 0 78 0 217 0 81 0 221 0 83 3 41 0 86 0 229 0 93 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 0 249 0 116 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 13 0 127 1 17 0 128 1 21 0 129 2 217 0 130 1 29 0 131 1 33 0 133 3 65 0 134 3 69 0 135 1 45 0 136 1 49 0 137 3 77 0 138 1 57 0 139 1 69 0 146 1 73 0 147 1 77 0 148 1 81 0 152 4 201 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 1 193 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 245 0 245 1 197 0 246 1 197 0 248 1 197 0 249 2 5 0 250 2 9 0 251 2 13 0 252 1 193 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 2 49 1 27 2 49 1 28 2 125 1 32 2 61 1 33 2 65 1 34 2 49 1 35 2 73 1 36 1 197 1 50 2 125 1 84 22 117 1 92 22 117 1 93 22 117 1 96 22 117 1 108 2 125 1 109 22 117 1 110 22 117 1 111 22 117 1 112 22 117 1 119 22 117 1 120 22 117 1 121 22 117 1 122 22 117 1 130 22 117 1 131 22 117 1 132 22 117 1 133 22 117 1 134 22 117 1 135 22 117 1 136 22 117 1 137 22 117 1 145 22 117 1 146 22 117 1 147 22 117 1 148 22 117 1 150 1 197 2 71 2 217 2 72 22 117 2 80 2 49 2 83 1 197 2 84 1 197 2 85 2 49 2 86 1 197 2 87 22 117 2 88] 
#[0 13 190 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 12 118 0 8 13 194 0 15 12 118 0 20 12 118 0 35 12 118 0 37 13 194 0 155] 
#[0 13 198 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170] 
#[0 13 202 0 148] 
#[0 13 206 0 9 0 15 0 25] 
#[0 22 121 0 68] 
#[0 22 125 0 9] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 9 229 0 148 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 22 129 1 48 22 129 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 22 129 1 64 3 197 1 65 22 129 1 84 22 129 1 87 22 129 1 88 22 129 1 186 22 129 2 8 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 13 210 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 13 214 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 13 218 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 13 222 0 155] 
#[0 21 241 0 115] 
#[0 13 226 0 155] 
#[0 21 237 0 42] 
#[1 1 77 0 148 22 133 1 93] 
#[1 1 77 0 148 22 137 1 93] 
#[0 22 141 0 38] 
#[0 13 230 0 37 0 80 0 88 0 109 0 111 0 120 0 155] 
#[0 13 234 0 37 0 80 0 88 0 109 0 111 0 120 0 155] 
#[0 13 238 0 37 0 88 0 109 0 111 0 120 0 155] 
#[0 13 242 0 37 0 80 0 88 0 109 0 111 0 155] 
#[0 22 145 0 9] 
#[0 22 149 0 9] 
#[0 22 153 0 9] 
#[0 22 157 0 15] 
#[0 22 161 0 8] 
#[0 22 165 0 8] 
#[0 13 246 0 9 0 38] 
#[1 13 250 0 9 13 250 0 15 22 169 0 30 13 250 0 38 22 173 1 199 22 177 1 200] 
#[0 13 254 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 14 2 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 21 77 0 157 22 181 1 158] 
#[1 8 73 0 157 1 125 0 191 21 93 0 193 1 125 0 194 21 93 0 208 22 185 1 161] 
#[1 8 73 0 157 1 125 0 191 22 189 0 193 1 125 0 194 22 189 0 208] 
#[0 22 193 0 23] 
#[1 0 49 0 37 0 10 0 41 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 67 0 10 0 69 0 10 0 71 0 10 0 76 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 94 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 0 10 0 142 0 10 0 143 0 10 0 152 14 6 0 155 0 10 0 157 22 205 0 190 22 205 1 151 22 197 1 171 22 201 1 172 22 205 1 173 22 205 1 174 22 205 1 180 22 205 1 187 3 237 1 188 22 205 1 204 22 205 1 219 22 205 1 226 22 205 1 232 22 205 1 242 22 205 1 250 22 205 1 253 22 205 2 11 22 205 2 33 22 205 2 43 4 9 2 53 0 93 2 54 0 97 2 55 0 101 2 56 22 205 2 78] 
#[1 22 209 0 25 7 22 0 37 7 22 0 41 7 22 0 49 7 22 0 52 7 22 0 55 7 22 0 57 7 22 0 58 7 22 0 60 7 22 0 62 7 22 0 65 7 22 0 67 7 22 0 69 7 22 0 71 7 22 0 75 7 22 0 76 7 22 0 86 7 22 0 87 7 22 0 88 7 22 0 94 7 22 0 98 7 22 0 99 7 22 0 100 7 22 0 105 7 22 0 108 7 22 0 109 7 22 0 111 7 22 0 112 7 22 0 113 7 22 0 117 7 22 0 118 7 22 0 121 7 22 0 124 7 22 0 125 7 22 0 126 7 22 0 134 7 22 0 135 7 22 0 137 7 22 0 138 7 22 0 141 7 22 0 142 7 22 0 143 7 22 0 152 7 22 0 155 7 22 0 157 22 209 2 73 7 22 2 101] 
#[0 14 10 0 25 0 32 0 145 0 148] 
#[1 0 49 0 37 0 10 0 41 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 67 0 10 0 69 0 10 0 71 0 10 0 75 0 10 0 76 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 94 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 0 10 0 142 0 10 0 143 14 14 0 155 0 10 0 157 23 5 0 190 23 5 1 151 23 5 1 174 23 5 1 180 23 5 1 187 3 237 1 188 23 5 1 204 23 5 1 219 23 5 1 226 23 5 1 232 23 5 1 242 23 5 1 250 23 5 1 253 22 253 2 4 23 1 2 5 23 5 2 6 23 5 2 11 23 5 2 33 23 5 2 43 23 9 2 53 0 93 2 54 0 97 2 55 0 101 2 56 23 5 2 92] 
#[1 23 17 0 25 7 22 0 37 7 22 0 41 7 22 0 49 7 22 0 52 7 22 0 55 7 22 0 57 7 22 0 58 7 22 0 60 7 22 0 62 7 22 0 65 7 22 0 67 7 22 0 69 7 22 0 71 7 22 0 75 7 22 0 76 7 22 0 86 7 22 0 87 7 22 0 88 7 22 0 94 7 22 0 98 7 22 0 99 7 22 0 100 7 22 0 105 7 22 0 108 7 22 0 109 7 22 0 111 7 22 0 112 7 22 0 113 7 22 0 117 7 22 0 118 7 22 0 121 7 22 0 124 7 22 0 125 7 22 0 126 7 22 0 134 7 22 0 135 7 22 0 137 7 22 0 138 7 22 0 141 7 22 0 142 7 22 0 143 7 22 0 152 7 22 0 155 7 22 0 157 23 17 2 73 7 22 2 101] 
#[1 23 21 0 85 23 21 0 104 13 6 0 157 23 21 2 18 23 21 2 19] 
#[0 14 18 0 15 0 153] 
#[1 0 49 0 37 0 10 0 41 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 69 0 10 0 71 0 10 0 76 0 10 0 86 0 10 0 88 0 10 0 94 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 0 10 0 142 14 22 0 155 0 10 0 157 23 41 1 204 23 41 1 226 23 33 2 23 23 37 2 24 23 41 2 25 23 41 2 26 23 41 2 31 23 53 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[1 23 57 0 25 7 22 0 37 7 22 0 41 7 22 0 49 7 22 0 52 7 22 0 55 7 22 0 57 7 22 0 58 7 22 0 60 7 22 0 62 7 22 0 65 7 22 0 67 7 22 0 69 7 22 0 71 7 22 0 75 7 22 0 76 7 22 0 86 7 22 0 87 7 22 0 88 7 22 0 94 7 22 0 98 7 22 0 99 7 22 0 100 7 22 0 105 7 22 0 108 7 22 0 109 7 22 0 111 7 22 0 112 7 22 0 113 7 22 0 117 7 22 0 118 7 22 0 121 7 22 0 124 7 22 0 125 7 22 0 126 7 22 0 134 7 22 0 135 7 22 0 137 7 22 0 138 7 22 0 141 7 22 0 142 7 22 0 143 7 22 0 152 7 22 0 155 7 22 0 157 23 57 2 73 7 22 2 101] 
#[0 14 26 0 25 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 14 30 0 15 0 155] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 23 61 1 48 23 61 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 23 61 1 64 3 197 1 65 23 61 1 84 23 61 1 87 23 61 1 88 23 61 1 89 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 12 250 0 25 21 101 0 145 23 65 1 162 21 109 1 163 21 113 1 164] 
#[0 14 34 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 72 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 97 0 99 0 100 0 116 0 117 0 121 0 122 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 142 0 146 0 147 0 148 0 152 0 155 0 157 0 158 0 159 0 160 0 161 0 162 0 165 0 166 0 169 0 170 2 101] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 23 69 1 48 23 69 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 23 69 1 64 3 197 1 65 23 69 1 84 23 69 1 87 23 69 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[1 12 250 0 25 12 250 0 32 21 101 0 145 12 250 0 148 23 73 1 162 21 109 1 163 21 113 1 164] 
#[0 23 77 0 25] 
#[0 14 38 0 37 0 115 0 155] 
#[0 14 42 0 37 0 42 0 155] 
#[0 14 46 0 32 0 148] 
#[0 14 50 0 25 0 32 0 148] 
#[0 14 54 0 25 0 32 0 148] 
#[0 14 58 0 25 0 32 0 148] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 23 81 0 196 23 81 0 197 23 81 0 198 23 81 0 199 1 145 0 200 1 145 0 201 1 145 0 202 23 81 0 203 1 161 0 204 23 81 0 205 23 81 0 206 23 81 0 207 23 81 0 208 23 81 0 209 1 185 0 210 23 81 0 216 23 81 1 158 23 81 2 81 2 229 2 82 3 1 2 100] 
#[1 4 214 0 1 4 214 0 5 4 214 0 8 4 218 0 9 4 214 0 10 4 214 0 12 4 214 0 13 4 214 0 16 4 214 0 17 4 214 0 47 4 214 0 48 4 214 0 49 4 214 0 52 4 214 0 55 4 214 0 56 4 214 0 60 4 214 0 61 4 214 0 62 4 214 0 65 4 214 0 72 4 214 0 76 4 214 0 79 4 214 0 86 4 214 0 94 4 214 0 97 4 214 0 99 4 214 0 100 4 214 0 104 4 214 0 114 4 214 0 117 4 214 0 121 4 214 0 122 4 214 0 125 4 214 0 128 4 214 0 130 4 214 0 133 4 214 0 134 4 214 0 135 4 214 0 136 4 214 0 138 4 214 0 152 0 243 0 157 4 214 0 158 4 214 0 159 4 214 0 160 4 214 0 161 4 214 0 162 4 214 0 165 4 214 0 166 4 214 0 169 4 214 0 170 23 85 0 221 10 117 0 222 10 121 0 223 10 125 0 224 10 129 0 225] 
#[1 4 214 0 1 4 214 0 5 4 214 0 8 4 218 0 9 4 214 0 10 4 214 0 12 4 214 0 13 4 214 0 16 4 214 0 17 4 214 0 47 4 214 0 48 4 214 0 49 4 214 0 52 4 214 0 55 4 214 0 56 4 214 0 60 4 214 0 61 4 214 0 62 4 214 0 65 4 214 0 72 4 214 0 76 4 214 0 79 4 214 0 86 4 214 0 94 4 214 0 97 4 214 0 99 4 214 0 100 4 214 0 104 4 214 0 114 4 214 0 117 4 214 0 121 4 214 0 122 4 214 0 125 4 214 0 128 4 214 0 130 4 214 0 133 4 214 0 134 4 214 0 135 4 214 0 136 4 214 0 138 4 214 0 152 0 243 0 157 4 214 0 158 4 214 0 159 4 214 0 160 4 214 0 161 4 214 0 162 4 214 0 165 4 214 0 166 4 214 0 169 4 214 0 170 23 89 0 221 10 117 0 222 10 121 0 223 10 125 0 224 10 129 0 225] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 23 93 1 48 23 93 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 23 93 1 64 3 197 1 65 23 93 1 84 23 93 1 87 23 93 1 88 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 14 62 0 9 0 15 0 38] 
#[0 14 66 0 9 0 15 0 38] 
#[0 14 70 0 15 0 153] 
#[1 22 57 0 15 14 74 0 145 14 74 0 148] 
#[0 14 78 0 15 0 145 0 148] 
#[1 23 97 0 57 23 101 0 99 5 45 0 100 5 57 0 125 23 105 0 126 5 73 0 157 1 125 0 191 21 85 0 193 1 125 0 194 23 109 0 207 23 113 0 208 23 117 1 158 23 121 1 165 23 125 1 166 23 129 1 167 23 133 1 168 23 137 1 169] 
#[0 23 141 0 155] 
#[1 0 49 0 37 0 10 0 41 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 67 0 10 0 69 0 10 0 71 0 10 0 76 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 94 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 0 10 0 142 0 10 0 143 0 10 0 152 14 82 0 155 0 10 0 157 23 145 0 190 23 145 1 151 23 145 1 173 23 145 1 174 23 145 1 180 23 145 1 187 3 237 1 188 23 145 1 204 23 145 1 219 23 145 1 226 23 145 1 232 23 145 1 242 23 145 1 250 23 145 1 253 23 145 2 11 23 145 2 33 23 145 2 43 4 9 2 53 0 93 2 54 0 97 2 55 0 101 2 56 23 145 2 78] 
#[0 14 86 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157] 
#[0 14 90 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 14 94 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[0 14 98 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[0 14 102 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[0 14 106 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[0 14 110 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[0 14 114 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[0 14 118 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[0 14 122 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[0 14 126 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[0 14 130 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[0 23 149 0 155] 
#[1 0 49 0 37 0 10 0 41 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 67 0 10 0 69 0 10 0 71 0 10 0 75 0 10 0 76 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 94 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 0 10 0 142 0 10 0 143 14 134 0 155 0 10 0 157 23 153 0 190 23 153 1 151 23 153 1 174 23 153 1 180 23 153 1 187 3 237 1 188 23 153 1 204 23 153 1 219 23 153 1 226 23 153 1 232 23 153 1 242 23 153 1 250 23 153 1 253 23 153 2 6 23 153 2 11 23 153 2 33 23 153 2 43 23 9 2 53 0 93 2 54 0 97 2 55 0 101 2 56 23 153 2 92] 
#[0 14 138 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[1 7 125 0 41 0 115 0 49 0 115 0 52 0 115 0 55 0 66 0 57 3 94 0 58 0 115 0 60 0 70 0 62 0 115 0 65 0 74 0 67 3 98 0 69 0 119 0 71 14 142 0 75 0 115 0 76 0 115 0 86 0 78 0 87 23 157 0 88 0 115 0 94 23 161 0 99 0 115 0 100 7 141 0 105 0 123 0 108 23 165 0 109 23 169 0 111 23 173 0 112 7 201 0 113 0 115 0 117 7 161 0 118 0 115 0 121 0 127 0 124 0 115 0 125 0 82 0 126 0 115 0 134 0 115 0 135 2 219 0 137 0 115 0 138 7 173 0 141 0 115 0 142 7 201 0 143 0 139 0 157 4 137 1 152 4 141 1 153 4 145 1 154 7 181 1 175 7 185 1 176 7 189 1 177 7 193 1 181 7 197 1 182 7 201 1 183 7 205 1 189 7 209 1 190 7 213 1 191 7 217 1 205 7 221 1 206 7 225 1 207 7 229 1 220 7 233 1 221 7 237 1 222 7 241 1 227 7 245 1 228 7 249 1 229 7 253 1 233 8 1 1 234 8 5 1 243 8 9 1 244 8 13 1 245 8 17 1 251 4 149 1 254 4 153 1 255 4 157 2 0 4 161 2 12 4 165 2 13 4 169 2 14 4 173 2 37 4 177 2 38 4 181 2 39 4 185 2 44 4 189 2 45 4 193 2 46 23 181 2 76 23 185 2 79 23 189 2 93 23 193 2 94 23 197 2 95] 
#[0 14 146 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[0 14 150 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 21 77 0 157 23 201 1 158] 
#[0 14 154 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 69 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 155 0 157] 
#[0 14 158 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 69 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 155 0 157] 
#[0 23 205 0 155] 
#[1 0 49 0 37 0 10 0 41 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 69 0 10 0 71 0 10 0 76 0 10 0 86 0 10 0 88 0 10 0 94 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 0 10 0 142 14 162 0 155 0 10 0 157 23 209 1 204 23 209 1 226 23 209 2 25 23 209 2 26 23 209 2 31 23 53 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 14 166 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 69 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 155 0 157] 
#[0 14 170 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 69 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 155 0 157] 
#[0 14 174 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 69 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 155 0 157] 
#[1 23 213 0 41 2 223 0 49 2 223 0 52 2 223 0 55 2 223 0 60 2 223 0 65 14 178 0 69 23 217 0 71 2 223 0 76 2 223 0 86 23 221 0 88 2 223 0 94 23 225 0 99 2 223 0 100 23 229 0 105 23 233 0 109 23 237 0 111 23 241 0 112 2 223 0 117 23 245 0 118 2 223 0 121 7 225 0 124 2 223 0 125 2 223 0 134 2 223 0 135 23 249 0 137 2 223 0 138 23 253 0 141 2 223 0 142 2 223 0 157 7 217 1 205 7 221 1 206 7 225 1 207 7 241 1 227 7 245 1 228 7 249 1 229 24 1 2 74] 
#[0 14 182 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 14 186 0 15 0 155] 
#[0 24 5 0 25] 
#[1 14 190 0 79 14 190 0 82 24 9 0 89 14 190 0 91 14 190 0 92 14 190 0 103 14 190 0 119 14 190 0 145] 
#[0 14 194 0 25 0 32 0 148] 
#[0 14 198 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 24 13 0 157] 
#[0 24 17 0 9] 
#[0 24 21 0 9] 
#[0 14 202 0 9 0 15 0 38] 
#[0 14 206 0 15 0 25 0 32 0 145 0 148] 
#[0 24 25 0 8] 
#[0 14 210 0 15 0 25 0 32 0 145 0 148] 
#[0 14 214 0 15 0 25 0 32 0 145 0 148] 
#[0 14 218 0 15 0 25 0 32 0 145 0 148] 
#[0 14 222 0 15 0 25 0 32 0 145 0 148] 
#[0 14 226 0 25 0 32 0 145 0 148] 
#[1 24 29 0 15 14 230 0 25 14 230 0 32 14 230 0 145 14 230 0 148] 
#[1 24 33 0 15 14 234 0 25 14 234 0 32 14 234 0 145 14 234 0 148] 
#[0 14 238 0 15 0 25 0 32 0 145 0 148] 
#[0 14 242 0 25 0 32 0 145 0 148] 
#[0 14 246 0 25 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 14 250 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157] 
#[0 14 254 0 25 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 15 2 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[1 1 43 0 41 1 47 0 49 1 47 0 52 1 47 0 55 3 186 0 57 5 206 0 58 1 47 0 60 3 190 0 62 1 47 0 65 3 194 0 67 5 194 0 69 1 51 0 71 15 6 0 75 1 47 0 76 1 47 0 86 3 198 0 87 2 227 0 88 1 47 0 94 2 231 0 99 1 47 0 100 1 63 0 105 1 67 0 108 2 227 0 109 2 227 0 111 2 227 0 112 5 202 0 113 1 47 0 117 1 43 0 118 1 47 0 121 1 71 0 124 1 47 0 125 3 202 0 126 1 47 0 134 1 47 0 135 2 235 0 137 1 47 0 138 1 63 0 141 1 47 0 142 5 202 0 143 1 79 0 157] 
#[1 1 83 0 41 1 87 0 49 1 87 0 52 1 87 0 55 3 206 0 57 5 234 0 58 1 87 0 60 3 210 0 62 1 87 0 65 3 214 0 67 5 218 0 69 1 91 0 71 15 10 0 75 1 87 0 76 1 87 0 86 3 218 0 87 2 239 0 88 1 87 0 94 2 239 0 99 1 87 0 100 1 91 0 105 1 99 0 108 2 239 0 109 2 239 0 111 2 239 0 112 5 230 0 113 1 87 0 117 1 83 0 118 1 87 0 121 1 103 0 124 1 87 0 125 3 222 0 126 1 87 0 134 1 87 0 135 2 243 0 137 1 87 0 138 1 91 0 141 1 87 0 142 5 230 0 143 1 87 0 157] 
#[1 1 123 0 41 1 127 0 49 1 127 0 52 1 127 0 55 3 226 0 57 6 18 0 58 1 127 0 60 3 230 0 62 1 127 0 65 3 234 0 67 6 2 0 69 1 131 0 71 15 14 0 75 1 127 0 76 1 127 0 86 3 238 0 87 2 247 0 88 1 127 0 94 2 251 0 99 1 127 0 100 1 143 0 105 1 147 0 108 2 247 0 109 2 247 0 111 2 247 0 112 6 14 0 113 1 127 0 117 1 123 0 118 1 127 0 121 1 151 0 124 1 127 0 125 3 242 0 126 1 127 0 134 1 127 0 135 2 255 0 137 1 127 0 138 1 143 0 141 1 127 0 142 6 14 0 143 1 159 0 157] 
#[1 1 163 0 41 1 167 0 49 1 167 0 52 1 167 0 55 3 246 0 57 6 46 0 58 1 167 0 60 3 250 0 62 1 167 0 65 3 254 0 67 6 26 0 69 1 171 0 71 15 18 0 75 1 167 0 76 1 167 0 86 4 2 0 87 3 3 0 88 1 167 0 94 3 7 0 99 1 167 0 100 1 183 0 105 1 187 0 108 3 3 0 109 3 3 0 111 3 3 0 112 6 42 0 113 1 167 0 117 1 163 0 118 1 167 0 121 1 191 0 124 1 167 0 125 4 6 0 126 1 167 0 134 1 167 0 135 3 11 0 137 1 167 0 138 1 183 0 141 1 167 0 142 6 42 0 143 1 199 0 157] 
#[1 1 203 0 41 1 207 0 49 1 207 0 52 1 207 0 55 4 10 0 57 6 78 0 58 1 207 0 60 4 14 0 62 1 207 0 65 4 18 0 67 6 54 0 69 6 74 0 70 1 211 0 71 15 22 0 75 1 207 0 76 6 74 0 84 1 207 0 86 4 22 0 87 3 15 0 88 1 207 0 94 3 19 0 99 1 207 0 100 1 223 0 105 1 227 0 108 3 15 0 109 3 15 0 111 3 23 0 112 6 70 0 113 1 207 0 117 1 203 0 118 1 207 0 121 1 235 0 124 1 207 0 125 4 26 0 126 1 207 0 134 1 207 0 135 3 27 0 137 1 207 0 138 1 223 0 141 1 207 0 142 6 70 0 143 1 243 0 157] 
#[1 2 47 0 41 2 51 0 49 2 51 0 52 2 51 0 55 4 38 0 57 2 51 0 60 4 42 0 62 2 51 0 65 6 134 0 69 6 146 0 70 2 55 0 71 15 26 0 75 2 51 0 76 6 146 0 84 2 51 0 86 4 46 0 87 3 31 0 88 2 51 0 94 3 35 0 99 2 51 0 100 2 67 0 105 2 71 0 108 3 31 0 109 3 31 0 111 3 39 0 112 6 142 0 113 2 51 0 117 2 47 0 118 2 51 0 121 2 79 0 124 2 51 0 125 4 50 0 126 2 51 0 134 2 51 0 135 3 39 0 137 2 51 0 138 2 67 0 141 2 51 0 142 6 142 0 143 2 83 0 157] 
#[1 2 99 0 124 24 37 0 137 24 37 2 79] 
#[1 24 41 0 71 2 103 0 124 24 41 2 76] 
#[0 24 45 0 75] 
#[1 15 30 0 75 24 73 0 88 24 73 0 99 24 73 0 109 24 73 0 111 24 73 0 112 24 73 0 137 24 73 2 95] 
#[0 15 34 0 75 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 15 38 0 15 0 153] 
#[0 15 42 0 25 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 15 46 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 69 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 155 0 157] 
#[1 3 43 0 41 3 43 0 49 3 43 0 52 3 43 0 55 3 43 0 60 3 43 0 65 3 43 0 71 3 43 0 76 3 43 0 86 3 43 0 88 3 43 0 94 3 43 0 99 3 43 0 100 3 43 0 105 3 43 0 109 3 43 0 111 3 43 0 112 3 43 0 117 3 43 0 118 3 43 0 121 5 146 0 124 3 43 0 125 3 43 0 134 3 43 0 135 3 43 0 137 3 43 0 138 3 43 0 141 3 43 0 142 3 43 0 157] 
#[1 3 47 0 41 3 47 0 49 3 47 0 52 3 47 0 55 3 47 0 60 3 47 0 65 3 47 0 71 3 47 0 76 3 47 0 86 3 47 0 88 3 47 0 94 3 47 0 99 3 47 0 100 3 47 0 105 3 47 0 109 3 47 0 111 3 47 0 112 3 47 0 117 3 47 0 118 3 47 0 121 5 158 0 124 3 47 0 125 3 47 0 134 3 47 0 135 3 47 0 137 3 47 0 138 3 47 0 141 3 47 0 142 3 47 0 157] 
#[1 3 51 0 41 3 51 0 49 3 51 0 52 3 51 0 55 3 51 0 60 3 51 0 65 3 51 0 71 3 51 0 76 3 51 0 86 3 51 0 88 3 51 0 94 3 51 0 99 3 51 0 100 3 51 0 105 3 51 0 109 3 51 0 111 3 51 0 112 3 51 0 117 3 51 0 118 3 51 0 121 5 198 0 124 3 51 0 125 3 51 0 134 3 51 0 135 3 51 0 137 3 51 0 138 3 51 0 141 3 51 0 142 3 51 0 157] 
#[1 3 55 0 41 3 59 0 49 3 59 0 52 3 59 0 55 3 59 0 60 3 59 0 65 15 50 0 69 3 55 0 71 3 59 0 76 3 59 0 86 3 55 0 88 3 59 0 94 3 55 0 99 3 59 0 100 3 55 0 105 3 55 0 109 3 55 0 111 3 55 0 112 3 59 0 117 3 55 0 118 3 59 0 121 5 222 0 124 3 59 0 125 3 59 0 134 3 59 0 135 3 55 0 137 3 59 0 138 3 55 0 141 3 59 0 142 3 59 0 157] 
#[1 3 63 0 41 3 63 0 49 3 63 0 52 3 63 0 55 3 63 0 60 3 63 0 65 3 63 0 71 3 63 0 76 3 63 0 86 3 63 0 88 3 63 0 94 3 63 0 99 3 63 0 100 3 63 0 105 3 63 0 109 3 63 0 111 3 63 0 112 3 63 0 117 3 63 0 118 3 63 0 121 5 238 0 124 3 63 0 125 3 63 0 134 3 63 0 135 3 63 0 137 3 63 0 138 3 63 0 141 3 63 0 142 3 63 0 157] 
#[1 3 67 0 41 3 67 0 49 3 67 0 52 3 67 0 55 3 67 0 60 3 67 0 65 3 67 0 71 3 67 0 76 3 67 0 86 3 67 0 88 3 67 0 94 3 67 0 99 3 67 0 100 3 67 0 105 3 67 0 109 3 67 0 111 3 67 0 112 3 67 0 117 3 67 0 118 3 67 0 121 5 254 0 124 3 67 0 125 3 67 0 134 3 67 0 135 3 67 0 137 3 67 0 138 3 67 0 141 3 67 0 142 3 67 0 157] 
#[1 3 71 0 41 3 71 0 49 3 71 0 52 3 71 0 55 3 71 0 60 3 71 0 65 3 71 0 71 3 71 0 76 3 71 0 86 3 71 0 88 3 71 0 94 3 71 0 99 3 71 0 100 3 71 0 105 3 71 0 109 3 71 0 111 3 71 0 112 3 71 0 117 3 71 0 118 3 71 0 121 6 30 0 124 3 71 0 125 3 71 0 134 3 71 0 135 3 71 0 137 3 71 0 138 3 71 0 141 3 71 0 142 3 71 0 157] 
#[1 3 75 0 41 3 75 0 49 3 75 0 52 3 75 0 55 3 75 0 60 3 75 0 65 3 75 0 71 3 75 0 76 3 75 0 86 3 75 0 88 3 75 0 94 3 75 0 99 3 75 0 100 3 75 0 105 3 75 0 109 3 75 0 111 3 75 0 112 3 75 0 117 3 75 0 118 3 75 0 121 6 66 0 124 3 75 0 125 3 75 0 134 3 75 0 135 3 75 0 137 3 75 0 138 3 75 0 141 3 75 0 142 3 75 0 157] 
#[1 3 79 0 41 3 79 0 49 3 79 0 52 3 79 0 55 3 79 0 60 3 79 0 65 3 79 0 71 3 79 0 76 3 79 0 86 3 79 0 88 3 79 0 94 3 79 0 99 3 79 0 100 3 79 0 105 3 79 0 109 3 79 0 111 3 79 0 112 3 79 0 117 3 79 0 118 3 79 0 121 6 102 0 124 3 79 0 125 3 79 0 134 3 79 0 135 3 79 0 137 3 79 0 138 3 79 0 141 3 79 0 142 3 79 0 157] 
#[1 3 83 0 41 3 83 0 49 3 83 0 52 3 83 0 55 3 83 0 60 3 83 0 65 3 83 0 71 3 83 0 76 3 83 0 86 3 83 0 88 3 83 0 94 3 83 0 99 3 83 0 100 3 83 0 105 3 83 0 109 3 83 0 111 3 83 0 112 3 83 0 117 3 83 0 118 3 83 0 121 6 126 0 124 3 83 0 125 3 83 0 134 3 83 0 135 3 83 0 137 3 83 0 138 3 83 0 141 3 83 0 142 3 83 0 157] 
#[1 3 87 0 41 3 87 0 49 3 87 0 52 3 87 0 55 3 87 0 60 3 87 0 65 3 87 0 71 3 87 0 76 3 87 0 86 3 87 0 88 3 87 0 94 3 87 0 99 3 87 0 100 3 87 0 105 3 87 0 109 3 87 0 111 3 87 0 112 3 87 0 117 3 87 0 118 3 87 0 121 6 158 0 124 3 87 0 125 3 87 0 134 3 87 0 135 3 87 0 137 3 87 0 138 3 87 0 141 3 87 0 142 3 87 0 157] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 24 77 0 69 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 13 129 0 196 13 129 0 197 13 129 0 198 13 129 0 199 1 145 0 200 1 145 0 201 1 145 0 202 13 129 0 203 1 161 0 204 13 129 0 205 13 129 0 206 13 129 0 207 13 129 0 208 13 129 0 209 1 185 0 210 13 129 0 216 13 129 1 158 24 81 1 192 13 129 2 81 2 229 2 82 13 137 2 100] 
#[0 15 54 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 152 0 155 0 157 2 101] 
#[0 24 85 0 157] 
#[0 24 89 0 9] 
#[0 15 58 0 25 0 148] 
#[0 15 62 0 25 0 148] 
#[0 24 93 0 9] 
#[1 23 101 0 99 5 73 0 157 1 125 0 191 23 113 0 193 1 125 0 194 23 113 0 208 23 117 1 158 24 97 1 167 23 133 1 168 24 101 1 169] 
#[1 23 101 0 99 5 73 0 157 1 125 0 191 23 113 0 193 1 125 0 194 23 113 0 208 24 105 1 158 24 109 1 168 24 113 1 169] 
#[0 15 209 0 124] 
#[0 15 221 0 124] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 24 117 0 196 24 117 0 197 24 117 0 198 24 117 0 199 1 145 0 200 1 145 0 201 1 145 0 202 24 117 0 203 1 161 0 204 24 117 0 205 24 117 0 206 24 117 0 207 24 117 0 208 24 117 0 209 1 185 0 210 24 117 0 216 24 117 1 158 24 117 2 81 2 229 2 82 24 121 2 96 3 1 2 100] 
#[0 15 6 0 75 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 15 10 0 75 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 15 14 0 75 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 15 18 0 75 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 15 22 0 75 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 15 26 0 75 0 88 0 99 0 109 0 111 0 112 0 137] 
#[0 15 66 0 75 0 88 0 99 0 109 0 111 0 112 0 137] 
#[1 5 13 0 49 1 145 0 52 1 145 0 55 1 145 0 60 1 145 0 65 1 145 0 76 1 145 0 86 1 145 0 94 5 45 0 100 1 145 0 117 1 145 0 121 5 57 0 125 1 145 0 134 1 145 0 135 1 145 0 138 1 65 0 142 5 73 0 157 1 125 0 191 1 121 0 193 1 125 0 194 24 125 0 196 24 125 0 197 24 125 0 198 24 125 0 199 1 145 0 200 1 145 0 201 1 145 0 202 24 125 0 203 1 161 0 204 24 125 0 205 24 125 0 206 24 125 0 207 24 125 0 208 24 125 0 209 1 185 0 210 24 125 0 216 24 125 1 158 24 125 2 81 2 229 2 82 3 1 2 100] 
#[0 24 129 0 157] 
#[0 15 70 0 79 0 82 0 91 0 92 0 103 0 119 0 145] 
#[0 15 74 0 25 0 32 0 148] 
#[0 15 78 0 25 0 32 0 145 0 148] 
#[1 24 133 0 15 15 82 0 25 15 82 0 32 15 82 0 145 15 82 0 148] 
#[0 15 86 0 25 0 32 0 145 0 148] 
#[0 15 90 0 15 0 25 0 32 0 145 0 148] 
#[0 15 94 0 15 0 25 0 32 0 145 0 148] 
#[0 15 98 0 25 0 32 0 145 0 148] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 15 102 0 157] 
#[1 24 137 0 157 24 141 2 97 24 145 2 98] 
#[1 1 70 0 10 1 74 0 35 1 78 0 37 24 149 0 157] 
#[1 10 142 0 8 18 93 0 26 24 153 1 155 24 153 1 156] 
#[1 23 101 0 99 5 73 0 157 1 125 0 191 23 113 0 193 1 125 0 194 23 113 0 208 24 105 1 158 24 109 1 168 24 157 1 169] 
#[0 24 161 0 37] 
#[1 24 165 0 25 24 137 0 157 24 169 2 98] 
#[0 15 106 0 25 0 157] 
#[0 24 173 0 25] 
#[0 24 177 0 8] 
#[0 15 110 0 25 0 32 0 145 0 148] 
#[1 0 105 0 1 0 109 0 5 3 5 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 47 0 145 0 48 3 9 0 49 3 13 0 52 3 17 0 55 3 21 0 56 3 25 0 60 0 181 0 61 0 185 0 62 3 29 0 65 2 217 0 72 3 33 0 76 3 37 0 79 3 41 0 86 3 45 0 94 0 237 0 97 0 241 0 99 3 49 0 100 3 53 0 117 3 57 0 121 1 5 0 122 3 61 0 125 1 17 0 128 2 217 0 130 1 33 0 133 3 65 0 134 3 69 0 135 3 73 0 136 3 77 0 138 1 81 0 152 3 81 0 157 1 89 0 158 1 93 0 159 1 97 0 160 1 101 0 161 0 14 0 162 1 105 0 165 0 18 0 166 1 109 0 169 1 113 0 170 3 85 0 191 3 89 0 228 1 197 0 229 1 197 0 230 1 205 0 231 1 209 0 232 1 213 0 235 1 217 0 236 1 197 0 238 1 197 0 240 1 197 0 241 1 233 0 242 1 237 0 243 1 241 0 244 1 197 0 245 1 197 0 246 1 197 0 248 1 197 0 249 1 197 0 250 1 197 0 251 1 197 0 252 3 89 1 8 1 197 1 9 1 197 1 10 1 197 1 15 1 197 1 21 1 197 1 22 1 197 1 23 1 197 1 24 3 109 1 27 3 109 1 28 3 109 1 33 3 109 1 34 3 109 1 35 3 109 1 36 3 125 1 37 3 129 1 38 3 133 1 39 3 137 1 40 3 141 1 41 3 145 1 42 3 149 1 43 3 153 1 44 3 157 1 45 3 161 1 46 3 165 1 47 24 181 1 48 24 181 1 49 1 197 1 50 3 177 1 51 3 177 1 53 3 177 1 59 3 189 1 62 24 181 1 64 3 197 1 65 24 181 1 84 24 181 1 87 24 181 1 88 24 181 1 89 1 197 2 71 2 217 2 72 3 109 2 83 1 197 2 84 1 197 2 85 3 109 2 86 1 197 2 87] 
#[0 15 114 0 37 0 41 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 67 0 69 0 71 0 75 0 76 0 86 0 87 0 88 0 94 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 137 0 138 0 141 0 142 0 143 0 155 0 157] 
#[0 15 118 0 25 0 157] 
#[0 15 122 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 69 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 155 0 157] 
#[1 10 70 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 76 0 10 0 86 0 10 0 94 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 142 0 10 0 157 24 185 1 195 18 25 1 196 18 29 1 197 18 33 1 198 18 37 1 203 18 41 2 53 0 93 2 54 0 97 2 55 0 101 2 56] 
#[0 24 189 0 38] 
#[0 24 193 0 9] 
#[0 15 126 0 25 0 157] 
#[1 12 250 0 25 21 101 0 145 24 197 1 162 21 109 1 163 21 113 1 164] 
#[0 24 201 0 25] 
#[0 15 130 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 69 0 71 0 76 0 86 0 88 0 94 0 99 0 100 0 105 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 137 0 138 0 141 0 142 0 155 0 157]
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

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForStartInterpolatedString1: nodes [
	^ #interpolatedString
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForStartInterpolatedVerbatimString1: nodes [
	^ #interpolatedVerbatimString
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
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_exception_specifier1: nodes [
	| result |
	result := Array new: 4.
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
CSharpParser >> reduceActionFor_implicit_anonymous_function_parameter_list1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_local_variable_declarator_name1: nodes [
	| result |
	result := CSSimpleNameNode new.
	result identifierToken: (nodes at: 1).
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
CSharpParser >> reduceActionFor_struct_interfaces1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
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
CSharpParser >> reduceActionForanonymous_object_initializer1: nodes [
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
	result refToken: ((nodes at: 2) at: 2).
	result outToken: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument_value1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument_value2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument_value3: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
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
	result operator: (nodes at: 2).
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
CSharpParser >> reduceActionForattribute_target_specifier1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
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
	result := Array new: 8.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	self add: (nodes at: 5) to: (result at: 5).
	self add: (nodes at: 6) to: (result at: 6).
	result at: 7 put: (nodes at: 7).
	self add: (nodes at: 8) to: (result at: 5).
	self add: (nodes at: 9) to: (result at: 6).
	result at: 8 put: (nodes at: 10).
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
CSharpParser >> reduceActionForcatch_clause1: nodes [
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
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForclass_base2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForclass_base3: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	result at: 4 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 3).
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
	result addTokens: ((nodes at: 7) at: 3) to: result commas.
	result commaToken: ((nodes at: 7) at: 4).
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
CSharpParser >> reduceActionForconditional_expression2: nodes [
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
	result := CSConstDeclaratorNode new.
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
	result block: ((nodes at: 4) at: 1).
	result semicolonToken: ((nodes at: 4) at: 2).
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
	result := Array new: 8.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	result at: 7 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconversion_operator_declarator2: nodes [
	| result |
	result := Array new: 8.
	result at: 8 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	result at: 7 put: (nodes at: 7).
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
	result name: (nodes at: 5).
	result typeParameters: (nodes at: 6).
	result leftParen: (nodes at: 7).
	result addNodes: ((nodes at: 8) at: 1) to: result parameters.
	result addTokens: ((nodes at: 8) at: 2) to: result commas.
	result rightParen: (nodes at: 9).
	result addNodes: (nodes at: 10) to: result constraintClauses.
	result semicolon: (nodes at: 11).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordestructor_declaration1: nodes [
	| result |
	result := CSDestructorDeclarationNode new.
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
CSharpParser >> reduceActionForexplicit_anonymous_function_signature1: nodes [
	| result |
	result := CSExplicitAnonymousFunctionSignatureNode new.
	result leftParenToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result parameters.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 3).
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
	result semicolonToken: ((nodes at: 4) at: 2).
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
CSharpParser >> reduceActionForimplicit_anonymous_function_signature1: nodes [
	| result |
	result := CSImplicitAnonymousFunctionSignatureNode new.
	result leftParenToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result names.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForimplicit_anonymous_function_signature2: nodes [
	| result |
	result := CSImplicitAnonymousFunctionSignatureNode new.
	result addToken: (nodes at: 1) to: result names.
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
	result name: (nodes at: 4).
	result typeParameters: (nodes at: 5).
	result leftParen: (nodes at: 6).
	result addNodes: ((nodes at: 7) at: 1) to: result parameters.
	result addTokens: ((nodes at: 7) at: 2) to: result commas.
	result rightParen: (nodes at: 8).
	result addNodes: (nodes at: 9) to: result constraintClauses.
	result semicolon: (nodes at: 10).
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
	self add: ((nodes at: 3) at: 2) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolated_regular_string_body1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolated_regular_string_body2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 1).
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
	result commaToken: (nodes at: 2).
	result constant: (nodes at: 3).
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
	result signature: (nodes at: 1).
	result equalGreaterThanToken: (nodes at: 2).
	result body: (nodes at: 3).
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
CSharpParser >> reduceActionForlocal_variable_declaration1: nodes [
	| result |
	result := CSLocalVariableDeclarationNode new.
	result type: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result declarators.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_variable_declarator1: nodes [
	| result |
	result := CSLocalVariableDeclaratorNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_variable_declarator2: nodes [
	| result |
	result := CSLocalVariableDeclaratorNode new.
	result name: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_variable_declarators2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_variable_type2: nodes [
	| result |
	result := CSVarTypeNode new.
	result varToken: (nodes at: 1).
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
CSharpParser >> reduceActionFormember_access3: nodes [
	| result |
	result := CSMemberAccessNode new.
	result expression: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result identifier: (nodes at: 3).
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
CSharpParser >> reduceActionFormember_name2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormethod_body1: nodes [
	| result |
	result := CSMethodBodyNode new.
	result block: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormethod_body2: nodes [
	| result |
	result := CSMethodBodyNode new.
	result equalGreaterThanToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormethod_body3: nodes [
	| result |
	result := CSMethodBodyNode new.
	result semicolonToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormethod_declaration1: nodes [
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
CSharpParser >> reduceActionFornamed_entity2: nodes [
	| result |
	result := CSNamedEntityNode new.
	result target: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result identifierToken: (nodes at: 3).
	result typeArguments: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamed_entity_target2: nodes [
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
CSharpParser >> reduceActionFornull_conditional_expression1: nodes [
	| result |
	result := CSNullConditionalExpressionNode new.
	result expression: (nodes at: 1).
	result nullConditionalOperation: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_invocation_expression1: nodes [
	| result |
	result := CSNullConditionalInvocationExpressionNode new.
	result expression: (nodes at: 1).
	result baseOperations: (nodes at: 2).
	result leftParenToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result arguments.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_member_access1: nodes [
	| result |
	result := CSNullConditionalMemberAccessNode new.
	result expression: (nodes at: 1).
	result baseOperations: (nodes at: 2).
	result questionMarkToken: (nodes at: 3).
	result periodToken: (nodes at: 4).
	result identifierToken: (nodes at: 5).
	result typeArguments: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_member_access2: nodes [
	| result |
	result := CSNullConditionalMemberAccessNode new.
	result expression: (nodes at: 1).
	result baseOperations: (nodes at: 2).
	result periodToken: (nodes at: 3).
	result identifierToken: (nodes at: 4).
	result typeArguments: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_operations1: nodes [
	| result |
	result := CSNullConditionalMemberAccessNode new.
	result baseOperations: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result periodToken: (nodes at: 3).
	result identifierToken: (nodes at: 4).
	result typeArguments: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_operations2: nodes [
	| result |
	result := CSNullConditionalElementAccessNode new.
	result baseOperations: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result leftBracketToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result arguments.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_operations3: nodes [
	| result |
	result := CSNullConditionalMemberAccessNode new.
	result baseOperations: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result identifierToken: (nodes at: 3).
	result typeArguments: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_operations4: nodes [
	| result |
	result := CSNullConditionalElementAccessNode new.
	result baseOperations: (nodes at: 1).
	result leftBracketToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result arguments.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_operations5: nodes [
	| result |
	result := CSNullConditionalInvocationExpressionNode new.
	result baseOperations: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result arguments.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornullable_type1: nodes [
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
	result addNodes: ((nodes at: 3) at: 5) to: result types.
	result addTokens: ((nodes at: 3) at: 6) to: result arguments.
	result rightParenToken: ((nodes at: 3) at: 7).
	result commaToken: ((nodes at: 3) at: 8).
	result implicitToken: ((nodes at: 3) at: 9).
	result explicitToken: ((nodes at: 3) at: 10).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForoperator_declarator1: nodes [
	| result |
	result := Array new: 10.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self add: ((nodes at: 1) at: 5) to: (result at: 5).
	self add: ((nodes at: 1) at: 6) to: (result at: 6).
	result at: 7 put: ((nodes at: 1) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForoperator_declarator2: nodes [
	| result |
	result := Array new: 10.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 5).
	self addAll: ((nodes at: 1) at: 6) to: (result at: 6).
	result at: 8 put: ((nodes at: 1) at: 7).
	result at: 7 put: ((nodes at: 1) at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForoperator_declarator3: nodes [
	| result |
	result := Array new: 10.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 1 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self add: ((nodes at: 1) at: 5) to: (result at: 5).
	self add: ((nodes at: 1) at: 6) to: (result at: 6).
	result at: 7 put: ((nodes at: 1) at: 7).
	result at: 10 put: ((nodes at: 1) at: 8).
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
CSharpParser >> reduceActionForordering_direction1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
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
CSharpParser >> reduceActionForout_expression2: nodes [
	| result |
	result := CSOutVariableDeclarationExpressionNode new.
	result type: (nodes at: 1).
	result name: (nodes at: 2).
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
CSharpParser >> reduceActionForpointer_element_access1: nodes [
	| result |
	result := CSPointerElementAccessNode new.
	result expression: (nodes at: 1).
	result leftBracketToken: (nodes at: 2).
	result indexExpression: (nodes at: 3).
	result rightBracketToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForpointer_member_access1: nodes [
	| result |
	result := CSPointerMemberAccessNode new.
	result expression: (nodes at: 1).
	result arrowToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForpointer_type1: nodes [
	| result |
	result := CSPointerTypeNode new.
	result type: (nodes at: 1).
	result timesToken: (nodes at: 2).
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
CSharpParser >> reduceActionForproperty_initializer1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
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
	result
		addNodes: ((nodes at: 2) at: 14)
		to: result joinEqualsExpressions.
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
	result semicolonToken: ((nodes at: 4) at: 2).
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
CSharpParser >> reduceActionForstackalloc_initializer1: nodes [
	| result |
	result := CSStackallocInitializerNode new.
	result stackallocToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftBracketToken: (nodes at: 3).
	result expression: (nodes at: 4).
	result rightBracketToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_declaration1: nodes [
	| result |
	result := CSStaticConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: ((nodes at: 2) at: 1) to: result modifiers.
	result staticToken: ((nodes at: 2) at: 2).
	result unsafeToken: ((nodes at: 2) at: 3).
	result identifierToken: (nodes at: 3).
	result leftParenToken: (nodes at: 4).
	result rightParenToken: (nodes at: 5).
	result block: ((nodes at: 6) at: 1).
	result semicolonToken: ((nodes at: 6) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers3: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 1).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers5: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers6: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers7: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 1).
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
CSharpParser >> reduceActionForstruct_interfaces1: nodes [
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
CSharpParser >> reduceActionForunary_expression5: nodes [
	| result |
	result := CSPrefixExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunary_operator_declarator1: nodes [
	| result |
	result := Array new: 7.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	result at: 7 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunbound_type_name1: nodes [
	| result |
	result := CSUnboundTypeNameNode new.
	result addToken: (nodes at: 1) to: result identifierTokens.
	result addToken: ((nodes at: 2) at: 1) to: result lessThanTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: ((nodes at: 2) at: 3) to: result gtTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunbound_type_name2: nodes [
	| result |
	result := CSUnboundTypeNameNode new.
	result addToken: (nodes at: 1) to: result identifierTokens.
	result colonColonToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result identifierTokens.
	result addToken: ((nodes at: 4) at: 1) to: result lessThanTokens.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result addToken: ((nodes at: 4) at: 3) to: result gtTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunbound_type_name3: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addToken: (nodes at: 3) to: result identifierTokens.
	result addToken: ((nodes at: 4) at: 1) to: result lessThanTokens.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result addToken: ((nodes at: 4) at: 3) to: result gtTokens.
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
