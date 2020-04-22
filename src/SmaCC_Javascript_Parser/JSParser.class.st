Class {
	#name : #JSParser,
	#superclass : #SmaCCGLRParser,
	#classInstVars : [
		'keywords'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSParser class >> ambiguousTransitions [
^#(
#[ 0 6 0 41] 
#[ 0 18 0 209] 
#[ 0 26 0 30 0 34 0 38] 
#[ 0 6 4 145] 
#[ 0 6 4 153] 
#[ 0 6 0 189] 
#[ 0 6 0 193] 
#[ 0 6 0 197] 
#[ 0 6 4 237] 
#[ 1 210 1 214] 
#[ 1 218 1 222] 
#[ 1 226 1 230] 
#[ 1 238 1 242] 
#[ 1 246 1 250] 
#[ 1 246 1 250 1 254] 
#[ 2 22 2 26] 
#[ 2 42 2 46] 
#[ 2 94 2 98] 
#[ 2 102 2 106] 
#[ 2 110 2 114] 
#[ 2 118 2 122] 
#[ 2 150 8 225] 
#[ 2 154 8 229] 
#[ 1 106 2 162] 
#[ 0 130 3 62] 
#[ 0 130 9 169] 
#[ 3 102 4 90] 
#[ 3 210 4 114] 
#[ 4 166 4 170] 
#[ 4 174 4 178] 
#[ 4 194 4 198] 
#[ 2 134 3 62] 
#[ 1 106 5 18] 
#[ 1 106 5 22] 
#[ 5 34 11 1] 
#[ 3 102 5 82] 
#[ 3 62 3 110] 
#[ 3 166 5 94] 
#[ 5 162 14 177] 
#[ 5 162 13 149] 
#[ 4 141 6 142] 
#[ 0 18 6 162] 
#[ 2 134 5 10] 
#[ 0 198 16 137] 
#[ 5 230 6 238] 
#[ 0 130 17 65] 
#[ 4 222 5 82] 
#[ 7 70 8 229] 
#[ 1 106 7 74] 
#[ 0 130 7 130] 
#[ 5 126 5 174] 
#[ 0 130 5 118] 
#[ 5 190 7 142] 
#[ 5 162 7 202] 
#[ 5 162 9 169] 
#[ 5 162 18 189] 
#[ 0 42 0 189] 
#[ 0 46 0 189] 
#[ 10 130 15 105] 
#[ 10 82 11 6] 
#[ 10 90 11 14] 
#[ 11 134 11 242] 
#[ 12 54 12 154] 
#[ 12 74 12 158] 
#[ 11 138 11 254] 
#[ 12 222 13 54] 
#[ 12 226 13 58] 
#[ 3 82 17 245] 
#[ 13 106 13 162]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2020-04-22T13:38:17.262344-05:00'
]

{ #category : #generated }
JSParser class >> definitionComment [
"%root Program;
%prefix JS;
%suffix Node;

%scopes default template;
%excludes jsx jsxText;

%start Expression Statement Script Module SourceFile Type;

%ignore_variables semicolon comma leftParen rightParen leftBracket rightBracket leftBrace rightBrace left right colonToken;

%hierarchy Literal (
	BooleanLiteral 
	NullLiteral 
	NumericLiteral 
	RegularExpressionLiteral
	StringLiteral
);
%hierarchy Expression (
	ArrayLiteral
	ArrowFunction
	AsExpression
	AssignmentExpression
	AwaitExpression
	BinaryExpression
	CallExpression
	CastExpression
	ClassExpression
	CommaExpression
	ConditionalExpression
	Function
	ImportCallExpression
	IndexedPropertyExpression
	Literal
	NameExpression
	NamedPropertyExpression
	NewExpression
	NewTargetExpression
	ObjectLiteral
	OptionalExpression
	PrefixExpression
	PostfixExpression
	SpreadExpression
	SuperCallExpression
	SuperIndexedPropertyExpression
	SuperNamedPropertyExpression
	TaggedTemplateLiteral
	TemplateLiteral
	ThisExpression
	UnaryExpression
	YieldExpression
	XCodeExpression	#JSX
	XElement	#JSX
	XFragment	#JSX
	XSelfClosingElement	#JSX
	XText	#JSX
);
%hierarchy ArrowFunction (
    AsyncArrowFunction
);
%hierarchy Function (
	GeneratorFunction
    AsyncFunction
);
%hierarchy GeneratorFunction (
    AsyncGeneratorFunction
);
%hierarchy Statement (
	BlockStatement
	BreakStatement
	ContinueStatement
	DebuggerStatement
	DoWhileStatement
	EmptyStatement
	ExpressionStatement
	ForInStatement
	ForOfStatement
	ForStatement
	IfStatement
	LabelledStatement
	LexicalDeclaration
	ReturnStatement
	SwitchStatement
	ThrowStatement
	TryStatement
	VariableStatement
	WhileStatement
	WithStatement
);
%hierarchy MethodDefinition (
    AsyncMethodDefinition
	GeneratorMethodDefinition
	GetMethodDefinition
	SetMethodDefinition
);
%hierarchy GeneratorMethodDefinition (
    AsyncGeneratorMethodDefinition
);
%hierarchy Optional (
    OptionalArguments
    OptionalIndexed
    OptionalName
    OptionalTemplate
);
%hierarchy VariableDeclaration (
	RestVariableDeclaration
);
###########
# TypeScript nodes
###########
%hierarchy Type (
    ArrayType
    ConstructorType
    FunctionType
    IntersectionType
    InferType
    LiteralType
    KeyOfType
    ObjectType
    ThisType
    TupleType
    TypeReference
    TypeQuery
    UnionType
    VoidType
);
%hierarchy TSExport (
	ExportAssignment
	ExportDeclarationElement
	ExportDeclaration
	ExportDefaultDeclarationElement
	ExportDefaultImplementationElement
	ExportImplementationElement
	ExportListDeclaration
	ExportNamespaceElement
);
###########

%glr;

%id <semicolon> <identifier> <slash> <slashEqual> <regular_expression> <identifierName> <rightBrace> <jsxLT> <lt> <gt>
<questionDot> <question> <ts>;

%right <else>;

default <leftParen>
:   \(
;
default <rightParen>
:   \)
;
jsx jsxText default <leftBrace>
:   \{
;
jsx jsxText default <rightBrace>
:   \}
;
default <leftBracket>
:   \[
;
default <rightBracket>
:   \]
;
default <semicolon>
:	\;
;
jsx default <slash>
:	\/
;
default <slashEqual>
:	\/\=
;
jsxText default <lt>
:	\<
;
default <ltLt>
:	\<\<
;
default <ltLtEq>
:	\<\<\=
;
jsx jsxText default <gt>
:   \>
;
default <gtGt>
:   \>\>
;
default <gtGtEq>
:   \>\>\=
;
default <gtGtGtEq>
:   \>\>\>\=
;
default <gtGtGt>
:   \>\>\>
;
default <eqGt>
:   \=\>
;
default <ltEq>
:   \<\=
;
default <gtEq>
:   \>\=
;
jsx default <period>
:   \.
;
jsx default <eq>
:   \=
;
default <eqEq>
:   \=\=
;
default <eqEqEq>
:   \=\=\=
;
default <star>
:   \*
;
default <starStar>
:   \*\*
;
default <starEq>
:   \*\=
;
default <percentEq>
:   \%\=
;
default <ampEq>
:   \&\=
;
default <upEq>
:   \^\=
;
default <barEq>
:   \|\=
;
default <minusEq>
:   \-\=
;
default <plusEq>
:   \+\=
;
default <plus>
:   \+
;
default <plusPlus>
:   \+\+
;
default <minus>
:   \-
;
default <minusMinus>
:   \-\-
;
default <tilde>
:   \~
;
default <amp>
:   \&
;
default <ampAmp>
:   \&\&
;
default <question>
:   \?
;
default <questionDot>
:   \?\.
;
default <questionQuestion>
:   \?\?
;
default <percent>
:   \%
;
default <bar>
:   \|
;
default <barBar>
:   \|\|
;
default <up>
:   \^
;
default <bang>
:   \!
;
default <bangEq>
:   \!\=
;
default <bangEqEq>
:   \!\=\=
;
default <as>
:   as
;
default <async>
:   async
;
default <await>
:  await
;
default <break>
:   break
;
default <case>
:   case
;
default <catch>
:   catch
;
default <class>
:   class
;
default <const>
:   const
;
default <constructor>
:   constructor     # ts
;
default <continue>
:   continue
;
default <debugger>
:   debugger
;
default <declare>
:   declare     # ts
;
default <default>
:   default
;
default <delete>
:   delete
;
default <do>
:   do
;
default <else>
:   else
;
default <enum>
:   enum
;
default <export>
:   export
;
default <extends>
:   extends
;
default <false>
:   false
;
default <finally>
:   finally
;
default <for>
:   for
;
default <from>
:   from
;
default <function>
:   function
;
default <get>
:   get
;
default <if>
:   if
;
default <import>
:   import
;
default <in>
:   in
;
default <infer>
:	infer
;
default <implements>
:	implements
;
default <instanceof>
:   instanceof
;
default <interface>
:   interface
;
default <keyof>
:	keyof
;
default <let>
:   let
;
default <module>
:   module      # ts
;
default <namespace>
:   namespace   # ts
;
default <new>
:   new
;
default <null>
:   null
;
default <numeric>
:   numeric
;
default <of>
:   of
;
default <private>
:   private     # ts
;
default <protected>
:   protected   # ts
;
default <public>
:   public      # ts
;
default <return>
:   return
;
default <set>
:   set
;
default <static>
:   static
;
default <string>
:   string
;
default <super>
:   super
;
default <switch>
:   switch
;
default <target>
:   target
;
default <this>
:   this
;
default <throw>
:   throw
;
default <true>
:   true
;
default <try>
:   try
;
default <type>
:   type
;
default <typeof>
:   typeof
;
default <var>
:   var
;
default <void>
:   void
;
default <while>
:   while
;
default <with>
:   with
;
default <yield>
:   yield
;
default <dotDotDot>
:   \.\.\.
;
default <comma>
:   \,
;
default <colon>
:   \:
;

default <comment>
	: \/\/ [^\r\n]*
	| (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;
<hex>
:	[0-9a-fA-F]
;
<identifier_start>
:	<isLetter> | \$ | _ | (\\ u <hex>{4,4})
;
<identifier_part>	#TODO
:	<identifier_start> | <isDigit> 
;
default <identifier>
:	<identifier_start> <identifier_part>*
;
default <identifierName>
:	<identifier>
;
jsx default <whitespace>
:	(<isSeparator> | \xA0 | \xFEFF)+
;
default <escape_sequence>
:	[^\r\n] | (x <hex>{2,2}) | (u <hex>{4,4})
;
default <escape>
:	\\  <escape_sequence>
;
default <line_continuation>
:	\\ (\r | \n | (\r\n))
;
jsx default <string_literal>
:	(\"" ([^\""\\\r\n] | <line_continuation> | <escape>)* \"")+
|	(\' ([^\'\\\r\n] | <line_continuation> | <escape>)* \')+
;
<decimal_integer>
#:	0 | ([1-9][0-9]*)
:	[0-9]+	# numbers that start with 0's should be octals, but node appears to allow 09 (e.g., (1 + 09) == (1 + 011))
;
<decimal_digits>
:	[0-9]+
;
<exponent_part>
:	[eE] [\+\-]? <decimal_digits>
;
<decimal>
:	(<decimal_integer> \. <decimal_digits>? <exponent_part>?)
|	(\. <decimal_digits> <exponent_part>?)
|	(<decimal_integer> <exponent_part>?)
;
<hex_integer>
:	0 [xX] [0-9A-Fa-f]+
;
<binary_integer>
:	0 [bB] [0-1]+
;
<octal_integer>
:	0 [oO] [0-7]+
;
default <numeric_literal>
:	<decimal> | <hex_integer> | <binary_integer> | <octal_integer>
;
<regular_expression_backslash_sequence>
:	\\ [^\r\n]
;
<regular_expression_class_chars>
:	([^\\\]] | <regular_expression_backslash_sequence>)*
;
<regular_expression_class>
:	\[ <regular_expression_class_chars> \]
;
<regular_expression_first_char>
:	[^\\\/\[\*\r\n] | <regular_expression_backslash_sequence> | <regular_expression_class>
;
<regular_expression_char>
:	[^\\\/\[\r\n] | <regular_expression_backslash_sequence> | <regular_expression_class>
;
<regular_expression_chars>
:	<regular_expression_char>*
;
<regular_expression_body>
:	<regular_expression_first_char> <regular_expression_chars>
;
<regular_expression_flags>
:	<identifier>*
;
<regular_expression>
:	\/ <regular_expression_body> \/ <regular_expression_flags>
;
<patternToken>
: 	\`\? [^\`]+ \`
;
<no_substitution_template>##################
:	\` ([^\`$\\] | <escape> | \$[^\`\{])* \$? \`
;
<template_head>
:	\` ([^\`$\\] | <escape> | \$[^\`\{])* \$\{
;
template <template_middle>
:	\}  ([^\`$\\] | <escape> | \$[^\`\{])* \$\{
;
template <template_tail>
:	\}  ([^\`$\\] | <escape> | \$[^\`\{])* \$?\`
;

goal 
:	Module
;

# A.2 Expressions
#IdentifierReference
#:	Identifier
#;
#BindingIdentifier
#:	Identifier
#;
Identifier
: 	<identifier> 'name' {{NameExpression}}
#|   <yield> 'name' {{NameExpression}}   ##
#|   <await> 'name' {{NameExpression}}   ##
;
#AsyncArrowBindingIdentifier
#:	Identifier
#;
IdentifierName
: 	<identifierName> 'name' {{NameExpression}}
;
#LabeledIdentifier
#:	Identifier
#;
PrimaryExpression
:	<this> 'thisToken' {{ThisExpression}}
|	Identifier	##
|	Literal 
|	ArrayLiteral 
|	ObjectLiteral 
|	FunctionExpression
|	ClassExpression
|	GeneratorExpression
|	AsyncFunctionExpression
|	AsyncGeneratorExpression
|	RegularExpressionLiteral
|	TemplateLiteral
|	ParenthesizedExpression	# CoverParenthesizedExpressionAndArrowParameterList
;
ParenthesizedExpression
:	<leftParen> 'leftParen' Expression <rightParen> 'rightParen' {{Expression}}
;
#CoverParenthesizedExpressionAndArrowParameterList
#:	<leftParen> 'left' ParameterListopt <rightParen> 'right'	##
#|	<leftParen> 'left' <rightParen> 'right'
#|	<leftParen> 'left'   <dotDotDot> 'ellipsis' Identifier 'varParameter' <rightParen> 'right'	##
#|	<leftParen> 'left' <dotDotDot> 'ellipsis' BindingPattern 'varParameter' <rightParen> 'right' 
#|	<leftParen> 'left' ParameterListopt <comma> 'comma' <dotDotDot> 'ellipsis' Identifier 'varParameter' <rightParen> 'right'	##
#|	<leftParen> 'left' ParameterListopt <comma> 'comma' <dotDotDot> 'ellipsis' BindingPattern 'varParameter' <rightParen> 'right'	##
#;
Literal
:	NullLiteral 'value' {{NullLiteral}}
|	BooleanLiteral 'value' {{BooleanLiteral}}
|	NumericLiteral 'value' {{NumericLiteral}}
|	StringLiteral 'value' {{StringLiteral}}
;
ArrayLiteral 
:	<leftBracket> 'leftBracket' Elision? <rightBracket> 'rightBracket' {{}}
|	<leftBracket> 'leftBracket' ElementList <rightBracket> 'rightBracket' {{}}
|	<leftBracket> 'leftBracket' ElementList Elision <rightBracket> 'rightBracket' {{}}	##
;
ElementList
:	Elision? AssignmentExpression 'expression'
|	Elision? SpreadElement 'expression'
|	ElementList Elision AssignmentExpression 'expression'    ##
|	ElementList Elision SpreadElement 'expression'   ##
;
Elision
:	<comma> 'comma'
|	Elision <comma> 'comma'
;
SpreadElement
:	<dotDotDot> 'ellipsis' AssignmentExpression 'expression' {{SpreadExpression}}
;
ObjectLiteral  
:	<leftBrace> 'leftBrace' <rightBrace> 'rightBrace' {{}}
|	<leftBrace> 'leftBrace' PropertyDefinitionList <rightBrace> 'rightBrace' {{}}
|	<leftBrace> 'leftBrace' PropertyDefinitionList <comma> 'comma' <rightBrace> 'rightBrace' {{}}
;
PropertyDefinitionList
:	PropertyDefinition 'definition'
|	PropertyDefinitionList <comma> 'comma' PropertyDefinition 'definition'
;
PropertyDefinition
:	Identifier
|	CoverInitializedName
|	PropertyName 'name' <colon> 'colonToken' AssignmentExpression 'value' {{PropertyAssignment}}
|	MethodDefinition
|	<dotDotDot> 'ellipsis' AssignmentExpression 'object' {{CopyProperty}}
;
PropertyName 
:	LiteralPropertyName
|	ComputedPropertyName
;
LiteralPropertyName
:	IdentifierName
|	StringLiteral 'name' {{NameExpression}}
|	NumericLiteral 'name' {{NameExpression}}
;
ComputedPropertyName
:	<leftBracket> 'leftBrace' AssignmentExpression 'expression' <rightBracket> 'rightBrace' {{}}
;
CoverInitializedName
:	Identifier 'name' Initializer {{PropertyAssignment}}	##
;
Initializer
:	<eq> 'equalToken' AssignmentExpression 'value'
;
TemplateLiteral
:	<no_substitution_template> 'part' {{}}
|	StartTemplateLiteral <template_head> 'part' Expression 'expression' TemplateSpans {{}}  ##
;
StartTemplateLiteral
:	[#template]
;
TemplateSpans
:	<template_tail> 'part'
|	TemplateMiddleList <template_tail> 'part'
;
TemplateMiddleList
:	<template_middle> 'part' Expression 'expression'
|	TemplateMiddleList <template_middle> 'part' Expression 'expression'
;
MemberExpression 
:	PrimaryExpression 
|	MemberExpression 'expression' <leftBracket> 'leftBracket' Expression 'fieldExpression' <rightBracket> 'rightBracket' {{IndexedPropertyExpression}}
|	MemberExpression 'expression' <period> 'periodToken' <identifierName> 'name' {{NamedPropertyExpression}}
|	MemberExpression 'expression' TemplateLiteral 'template' {{TaggedTemplateLiteral}}
|	SuperProperty
|	MetaProperty
|	<new> 'newToken' MemberExpression 'expression' Arguments {{NewExpression}}
;
SuperProperty
:	<super> 'superToken' <leftBracket> 'leftBracket' Expression 'expression' <rightBracket> 'rightBracket' {{SuperIndexedPropertyExpression}}
|	<super> 'superToken' <period> 'periodToken' <identifierName> 'name' {{SuperNamedPropertyExpression}}
;
MetaProperty
:	NewTarget
;
NewTarget
:	<new> 'newToken' <period> 'periodToken' <target> 'targetToken' {{NewTargetExpression}}
;
NewExpression 
:	MemberExpression 
|	<new> 'newToken' NewExpression 'expression' {{}}
;
CallExpression 
:	MemberExpression 'expression' Arguments {{}}    ##
|	SuperCall
|	ImportCall
|	CallExpression 'expression' Arguments {{}}
|	CallExpression 'expression' <leftBracket> 'leftBracket' Expression 'expression' <rightBracket> 'rightBracket' {{IndexedPropertyExpression}}
|	CallExpression 'expression' <period> 'periodToken' <identifierName> 'name' {{NamedPropertyExpression}}
|	CallExpression 'expression' TemplateLiteral 'template'  {{TaggedTemplateLiteral}}
;
SuperCall
:	<super> 'superToken' Arguments {{SuperCallExpression}}
;
ImportCall
:	<import> 'importToken' <leftParen> 'left' AssignmentExpression 'expression' <rightParen> 'right' {{ImportCallExpression}}
;
Arguments 
:	<leftParen> 'left' <rightParen> 'right'
|	<leftParen> 'left' ArgumentList <rightParen> 'right'
|	<leftParen> 'left' ArgumentList <comma> 'comma' <rightParen> 'right'
;
ArgumentList 
:	AssignmentExpression 'argument'
|	<dotDotDot> 'ellipsis' AssignmentExpression 'varArgument'
|	ArgumentList <comma> 'comma' AssignmentExpression 'argument'
|	ArgumentList <comma> 'comma' <dotDotDot> 'ellipsis' AssignmentExpression 'varArgument'
;
OptionalExpression
:	MemberExpression 'expression' OptionalChain {{}}
|	CallExpression 'expression' OptionalChain {{}}
|	OptionalExpression 'expression' OptionalChain {{}}
;
OptionalChain
:	<questionDot> 'questionDotToken' OptionalFirst 'option'  ##
|	OptionalChain OptionalRest 'option'  ##
;
OptionalRest	## added for AST
:	Arguments {{OptionalArguments}}
|	<leftBracket> 'leftBracket' Expression 'value' <rightBracket> 'rightBracket' {{OptionalIndexed}}
|	<period> 'periodToken' <identifierName> 'name' {{OptionalName}}
|	TemplateLiteral 'template' {{OptionalTemplate}}
;
OptionalFirst	## added for AST
:	Arguments {{OptionalArguments}}
|	<leftBracket> 'leftBracket' Expression 'value' <rightBracket> 'rightBracket' {{OptionalIndexed}}
|	<identifierName> 'name' {{OptionalName}}
|	TemplateLiteral 'template' {{OptionalTemplate}}
;
LeftHandSideExpression
:	NewExpression 
|	CallExpression
|	OptionalExpression
;
UpdateExpression
:	LeftHandSideExpression
|	LeftHandSideExpression 'expression' <plusPlus> 'operator' {{PostfixExpression}}
|	LeftHandSideExpression 'expression' <minusMinus> 'operator' {{PostfixExpression}}
|	<plusPlus> 'operator' UnaryExpression 'expression' {{PrefixExpression}}
|	<minusMinus> 'operator' UnaryExpression 'expression' {{PrefixExpression}}
;
UnaryExpression 
:	UpdateExpression 
|	<delete> 'operator' UnaryExpression 'expression' {{}}
|	<void> 'operator' UnaryExpression 'expression' {{}}
|	<typeof> 'operator' UnaryExpression 'expression' {{}}
|	<plus> 'operator' UnaryExpression 'expression' {{}}
|	<minus> 'operator' UnaryExpression 'expression' {{}}
|	<tilde> 'operator' UnaryExpression 'expression' {{}} 
|	<bang> 'operator' UnaryExpression 'expression' {{}}
|	AwaitExpression
;
ExponentiationExpression
:	UnaryExpression
|	UnaryExpression 'leftExpression' <starStar> 'operator' ExponentiationExpression 'rightExpression' {{BinaryExpression}}
;
MultiplicativeExpression 
:	ExponentiationExpression 
|	MultiplicativeExpression 'leftExpression' MultiplicativeOperator 'operator' ExponentiationExpression 'rightExpression' {{BinaryExpression}}
;
MultiplicativeOperator
:	<star>
|	<slash>
|	<percent>
;
AdditiveExpression 
:	MultiplicativeExpression 
|	AdditiveExpression 'leftExpression' <plus> 'operator' MultiplicativeExpression 'rightExpression' {{BinaryExpression}}
|	AdditiveExpression 'leftExpression' <minus> 'operator' MultiplicativeExpression 'rightExpression' {{BinaryExpression}}
;
ShiftExpression 
:	AdditiveExpression 
|	ShiftExpression 'leftExpression' <ltLt> 'operator' AdditiveExpression 'rightExpression' {{BinaryExpression}}
|	ShiftExpression 'leftExpression' <gtGt> 'operator' AdditiveExpression 'rightExpression' {{BinaryExpression}}
|	ShiftExpression 'leftExpression' <gtGtGt> 'operator' AdditiveExpression 'rightExpression' {{BinaryExpression}}
;
RelationalExpression 
:	ShiftExpression 
|	RelationalExpression 'leftExpression' <lt> 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
|	RelationalExpression 'leftExpression' <gt> 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
|	RelationalExpression 'leftExpression' <ltEq> 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
|	RelationalExpression 'leftExpression' <gtEq> 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
|	RelationalExpression 'leftExpression' <instanceof> 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
|	RelationalExpression 'leftExpression' <in> 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
;
EqualityExpression 
:	RelationalExpression 
|	EqualityExpression 'leftExpression' <eqEq> 'operator' RelationalExpression 'rightExpression' {{BinaryExpression}}
|	EqualityExpression 'leftExpression' <bangEq> 'operator' RelationalExpression 'rightExpression' {{BinaryExpression}}
|	EqualityExpression 'leftExpression' <eqEqEq> 'operator' RelationalExpression 'rightExpression' {{BinaryExpression}}
|	EqualityExpression 'leftExpression' <bangEqEq> 'operator' RelationalExpression 'rightExpression' {{BinaryExpression}}
;
BitwiseANDExpression 
:	EqualityExpression 
|	BitwiseANDExpression 'leftExpression'<amp> 'operator' EqualityExpression 'rightExpression' {{BinaryExpression}}
;
BitwiseXORExpression 
:	BitwiseANDExpression 
|	BitwiseXORExpression 'leftExpression' <up> 'operator' BitwiseANDExpression 'rightExpression' {{BinaryExpression}}
;
BitwiseORExpression 
:	BitwiseXORExpression 
|	BitwiseORExpression 'leftExpression' <bar> 'operator' BitwiseXORExpression 'rightExpression' {{BinaryExpression}}
;
LogicalANDExpression 
:	BitwiseORExpression 
|	LogicalANDExpression 'leftExpression' <ampAmp> 'operator' BitwiseORExpression 'rightExpression' {{BinaryExpression}}
;
LogicalORExpression 
:	LogicalANDExpression 
|	LogicalORExpression 'leftExpression' <barBar> 'operator' LogicalANDExpression 'rightExpression' {{BinaryExpression}}
;
CoalesceExpression
:   CoalesceExpressionHead 'leftExpression' <questionQuestion> 'operator' BitwiseORExpression 'rightExpression' {{BinaryExpression}}
;
CoalesceExpressionHead
:   CoalesceExpression
|   BitwiseORExpression
;
ShortCircuitExpression
:   LogicalORExpression
|   CoalesceExpression
;
ConditionalExpression 
:	ShortCircuitExpression 
|	ShortCircuitExpression 'condition' <question> 'questionMarkToken' AssignmentExpression 'trueExpression' <colon> 'colonToken' AssignmentExpression 'falseExpression' {{}}
;
AssignmentExpression 
:	ConditionalExpression 
|	YieldExpression
|	ArrowFunction
|	AsyncArrowFunction
|	LeftHandSideExpression 'lhs' AssignmentOperator 'operator' AssignmentExpression 'rhs' {{}}	##
;
AssignmentOperator
:	<eq>	#
|	<starEq>
|	<slashEqual>
|	<percentEq>
|	<plusEq>
|	<minusEq>
|	<ltLtEq>
|	<gtGtEq>
|	<gtGtGtEq>
|	<ampEq>
|	<upEq>
|	<barEq>
|	<starStarEq>
;
#AssignmentPattern
#:	ObjectAssignmentPattern
#|	ArrayAssignmentPattern
#;
#ObjectAssignmentPattern
#:	<leftBrace> 'leftBrace' <rightBrace> 'rightBrace'
#|	<leftBrace> 'leftBrace' AssignmentPropertyList <rightBrace> 'rightBrace'
#|	<leftBrace> 'leftBrace' AssignmentPropertyList <comma> 'comma' <rightBrace> 'rightBrace'
#;
#ArrayAssignmentPattern
#:	<leftBracket> 'leftBracket' Elisionopt AssignmentRestElementopt <rightBracket> 'rightBracket'
#|	<leftBracket> 'leftBracket' AssignmentElementList <rightBracket> 'rightBracket'
#|	<leftBracket> 'leftBracket' AssignmentElementList <comma> 'comma' Elisionopt AssignmentRestElementopt <rightBracket> 'rightBracket'
#;
#AssignmentPropertyList
#:	AssignmentProperty
#|	AssignmentPropertyList AssignmentProperty
#;
#AssignmentElementList
#:	AssignmentElisionElement
#|	AssignmentElementList <comma> 'comma' AssignmentElisionElement
#;
#AssignmentElisionElement
#:	Elisionopt AssignmentElement
#;
#AssignmentProperty
#:	IdentifierReference Initializeropt
#|	PropertyName <colon> 'colonToken' AssignmentElement
#;
#AssignmentElement
#:	DestructuringAssignmentTarget Initializeropt
#;
#AssignmentRestElementopt
#:
#|	AssignmentRestElement
#;
#AssignmentRestElement
#:	<dotDotDot> DestructuringAssignmentTarget
#;
#DestructuringAssignmentTarget
#:	LeftHandSideExpression
#;
Expression
:	AssignmentExpression
|	Expression 'expression' <comma> 'comma' AssignmentExpression 'expression' {{CommaExpression}}
;
#A.3 Statements
Statement 
:	BlockStatement
|	VariableStatement 
|	EmptyStatement 
|	ExpressionStatement
|	IfStatement 
|	BreakableStatement
|	ContinueStatement 
|	BreakStatement 
|	ReturnStatement 
|	WithStatement 
|	LabelledStatement
|	ThrowStatement 
|	TryStatement 
|	DebuggerStatement
;
Declaration
:	HoistableDeclaration
|	ClassDeclaration
|	LexicalDeclaration
;
HoistableDeclaration
:	FunctionDeclaration
|	GeneratorDeclaration
|	AsyncFunctionDeclaration
|	AsyncGeneratorDeclaration
;
BreakableStatement
:	IterationStatement 
|	SwitchStatement
;
BlockStatement
:	Block
;
Block 
:	<leftBrace> 'leftBrace' StatementList? <rightBrace> 'rightBrace' {{BlockStatement}}
;
StatementList 
:	StatementListItem 'statement'
|	StatementList StatementListItem 'statement'
;
StatementListItem
:	StartStatementListItem Statement {'2'}
|	LexicalDeclaration #Declaration
;
StartStatementListItem
:	/* here for ; handling */ [#startExpressionStatement]
;
LexicalDeclaration
:	LetOrConst 'typeToken' BindingList <semicolon> 'semicolon' {{}}
;
LetOrConst
:	<let>
|	<const>
;
BindingList
:	LexicalBinding 'binding'
|	BindingList <comma> 'comma' LexicalBinding 'binding'
;
LexicalBinding
:	Identifier 'variable' Initializer? {{VariableDeclaration}}	##
|	BindingPattern 'pattern' Initializer {{VariablePatternDeclaration}}
;
VariableStatement 
:	<var> 'varToken' VariableDeclarationList <semicolon> 'semicolon' {{}}
;
VariableDeclarationList 
:	VariableDeclaration 'variable'
|	VariableDeclarationList <comma> 'comma' VariableDeclaration 'variable'
;
VariableDeclaration 
:	Identifier 'variable' Initializer? {{VariableDeclaration}}	##
|	BindingPattern 'pattern' Initializer {{VariablePatternDeclaration}}
;
BindingPattern
:	ObjectBindingPattern
|	ArrayBindingPattern
;
ObjectBindingPattern
:	<leftBrace> 'leftBrace' <rightBrace> 'rightBrace' {{}}
|	<leftBrace> 'leftBrace' BindingRestProperty 'restProperty' <rightBrace> 'rightBrace' {{}}
|	<leftBrace> 'leftBrace' BindingPropertyList <rightBrace> 'rightBrace' {{}}
|	<leftBrace> 'leftBrace' BindingPropertyList <comma> 'comma' BindingRestProperty 'restProperty' ? <rightBrace> 'rightBrace' {{}}
;
ArrayBindingPattern
:	<leftBracket> 'leftBracket' Elision? BindingRestElement 'restElement'? <rightBracket> 'rightBracket' {{}}
|	<leftBracket> 'leftBracket' BindingElementList <rightBracket> 'rightBracket' {{}}
|	<leftBracket> 'leftBracket' BindingElementList <comma> 'comma' Elision? BindingRestElement 'restElement'? <rightBracket> 'rightBracket' {{}}
;
BindingRestProperty
:	<dotDotDot> 'ellipsis' Identifier 'name' {{}}
;
BindingPropertyList
:	BindingProperty 'property'
|	BindingPropertyList <comma> 'comma' BindingProperty 'property'
;
BindingElementList
:	BindingElisionElement 
|	BindingElementList <comma> 'comma' BindingElisionElement 
;
BindingElisionElement
:	Elision? BindingElement 'element'
;
BindingProperty
:	SingleNameBinding
|	PropertyName 'name' <colon> 'colonToken' BindingElement 'element' {{}}
;
BindingElement
:	SingleNameBinding
|	BindingPattern 'variable' Initializer? {{VariableDeclaration}}
;
SingleNameBinding
:	Identifier 'variable' Initializer? {{VariableDeclaration}}	##
;
BindingRestElement
:	<dotDotDot> 'ellipsis' Identifier 'variable' {{RestVariableDeclaration}}	##
|	<dotDotDot> 'ellipsis' BindingPattern 'variable' {{RestVariableDeclaration}}
;
EmptyStatement 
:	<semicolon> 'semicolon' {{}}
;
ExpressionStatement 
:	Expression 'expression' <semicolon> 'semicolon' {{}}
;
IfStatement 
:	<if> 'ifToken' <leftParen> 'left' Expression 'expression' <rightParen> 'right' Statement 'trueStatement' <else> 'elseToken' Statement 'elseStatement' {{}}
|	<if> 'ifToken' <leftParen> 'left' Expression 'expression' <rightParen> 'right' Statement 'trueStatement' {{}}
;
IterationStatement 
:	<do> 'doToken' Statement 'statement' <while> 'whileToken' <leftParen> 'left' Expression 'expression' <rightParen> 'right' <semicolon> 'semicolon' {{DoWhileStatement}}
|	<while> 'whileToken' <leftParen> 'left' Expression 'expression' <rightParen> 'right' Statement 'statement' {{WhileStatement}}
|	<for> 'forToken' <leftParen> 'left' Expression 'initialExpression'?<semicolon> 'semicolon' Expression 'condition'?<semicolon> 'semicolon' Expression 'iteratorExpression'? <rightParen> 'right' Statement 'statement' {{ForStatement}}
|	<for> 'forToken' <leftParen> 'left' <var> 'varToken' VariableDeclarationList <semicolon> 'semicolon' Expression 'condition'? <semicolon> 'semicolon' Expression 'iteratorExpression'? <rightParen> 'right' Statement 'statement' {{ForStatement}}
|	<for> 'forToken' <leftParen> 'left' LexicalDeclaration 'declaration' Expression 'condition'? <semicolon> 'semicolon' Expression 'iteratorExpression'? <rightParen> 'right' Statement 'statement' {{ForStatement}}
|	<for> 'forToken' <leftParen> 'left' LeftHandSideExpression 'variable' <in> 'inToken' Expression 'expression' <rightParen> 'right' Statement 'statement' {{ForInStatement}}
|	<for> 'forToken' <leftParen> 'left' <var> 'varToken' ForBinding 'variable' <in> 'inToken' Expression 'expression' <rightParen> 'right' Statement  'statement' {{ForInStatement}}
|	<for> 'forToken' <leftParen> 'left' ForDeclaration <in> 'inToken' Expression 'expression' <rightParen> 'right' Statement  'statement' {{ForInStatement}}
|	<for> 'forToken' <leftParen> 'left' LeftHandSideExpression 'variable' <of> 'ofToken' AssignmentExpression 'expression' <rightParen> 'right' Statement 'statement' {{ForOfStatement}}
|	<for> 'forToken' <leftParen> 'left' <var> 'varToken' VariableDeclaration 'variable' <of> 'ofToken' AssignmentExpression 'expression' <rightParen> 'right' Statement  'statement' {{ForOfStatement}}
|	<for> 'forToken' <leftParen> 'left' ForDeclaration <of> 'ofToken' AssignmentExpression 'expression' <rightParen> 'right' Statement  'statement' {{ForOfStatement}}
|	<for> 'forToken' <await> 'awaitToken' <leftParen> 'left' LeftHandSideExpression 'variable' <of> 'ofToken' AssignmentExpression 'expression' <rightParen> 'right' Statement 'statement' {{ForOfStatement}}
|	<for> 'forToken' <await> 'awaitToken' <leftParen> 'left' <var> 'varToken' VariableDeclaration 'variable' <of> 'ofToken' AssignmentExpression 'expression' <rightParen> 'right' Statement  'statement' {{ForOfStatement}}
|	<for> 'forToken' <await> 'awaitToken' <leftParen> 'left' ForDeclaration <of> 'ofToken' AssignmentExpression 'expression' <rightParen> 'right' Statement  'statement' {{ForOfStatement}}
;
ForDeclaration
:	LetOrConst 'varToken' ForBinding 'variable'
;
ForBinding
:	Identifier	##
|	BindingPattern
;
ContinueStatement 
:	<continue> 'continueToken' CheckEOL Identifier 'label'? <semicolon> 'semicolon' {{}}  ##
;
BreakStatement 
:	<break> 'breakToken' CheckEOL Identifier 'label'? <semicolon> 'semicolon' {{}}    ##
;
CheckEOL
:	[self checkEOL. nil]
;
ReturnStatement  
:	<return> 'returnToken' CheckEOL Expression 'expression'? <semicolon> 'semicolon' {{}} ##
;
WithStatement 
:	<with> 'withToken' <leftParen> 'left' Expression 'expression' <rightParen> 'right' Statement 'statement' {{}}
;
SwitchStatement 
:	<switch> 'switchToken' <leftParen> 'left' Expression 'expression' <rightParen> 'right' CaseBlock {{}}
;
CaseBlock 
:	<leftBrace> 'leftBrace' CaseClauses? <rightBrace> 'rightBrace' 
|	<leftBrace> 'leftBrace' CaseClauses? DefaultClause 'clause' CaseClauses? <rightBrace> 'rightBrace'
;
CaseClauses 
:	CaseClause 'clause'
|	CaseClauses CaseClause 'clause'
;
CaseClause 
:	<case> 'caseToken' Expression 'caseExpression' <colon> 'colonToken' StatementList? {{}}
;
DefaultClause 
:	<default> 'defaultToken' <colon> 'colonToken' StatementList?  {{}}
;
LabelledStatement 
:	<identifier> 'label' <colon> 'colonToken' LabeledItem 'statement' {{}}	##
;
LabeledItem
:	Statement
#|	FunctionDeclaration	#Statement already does FunctionExpression
;
ThrowStatement 
:	<throw> 'throwToken' Expression 'expression' <semicolon> 'semicolon' {{}}
;
TryStatement 
:	<try> 'tryToken' Block 'tryBlock' Catch {{}}
|	<try> 'tryToken' Block 'tryBlock' Finally {{}}
|	<try> 'tryToken' Block 'tryBlock' Catch Finally {{}}
;
Catch 
:	<catch> 'catchToken' <leftParen> 'left' CatchParameter 'exceptionType' <rightParen> 'right' Block 'catchBlock'
|	<catch> 'catchToken' Block 'catchBlock'
;
Finally 
:	<finally> 'finallyToken' Block 'finallyBlock'
;
CatchParameter
:	Identifier	##
|	BindingPattern
;
DebuggerStatement 
:	<debugger> 'debuggerToken' <semicolon> 'semicolon' {{}}
;
#A.4
FunctionDeclaration 
:	<function> 'functionToken' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{Function}}	##
;
FunctionExpression 
:	<function> 'functionToken' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{Function}}	##
;
UniqueFormalParameters
:	FormalParameters
;
FormalParameters
:
|	FunctionRestParameter 'restParameter'
|	FormalParameterList
|	FormalParameterList <comma> 'comma'
|	FormalParameterList <comma> 'comma' FunctionRestParameter 'restParameter'
;
FormalParameterList 
:	FormalParameter 'parameter'
|	FormalParameterList <comma> 'comma' FormalParameter 'parameter'
;
FunctionRestParameter
:	BindingRestElement
;
FormalParameter
:	BindingElement
;
FunctionBody 
:	FunctionStatementList
;
FunctionStatementList
:	StatementList?
;
ArrowFunction
:	ArrowParameters <eqGt> 'arrow' ConciseBody {{}}
;
ArrowParameters
:	ArrowParameterDeclaration 'parameter'	##
|	ArrowFormalParameters	##
;
ArrowParameterDeclaration	## added for AST
:	Identifier 'variable' {{VariableDeclaration}}
;
ConciseBody
:	ExpressionBody 'statement'
|	<leftBrace> 'leftBracket' FunctionBody <rightBrace> 'rightBracket'
;
ExpressionBody
:	AssignmentExpression
;
ArrowFormalParameters
:	<leftParen> 'left' UniqueFormalParameters <rightParen> 'right'	
;
AsyncArrowFunction
:	<async> 'asyncToken' ArrowParameters <eqGt> 'arrow' AsyncConciseBody {{}}	##
;
AsyncConciseBody
:	ExpressionBody 'statement'
|	<leftBrace> 'leftBrace' AsyncFunctionBody <rightBrace> 'rightBrace'
;
MethodDefinition
:	PropertyName 'name' <leftParen> 'left' UniqueFormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}
|	GeneratorMethod
|	AsyncMethod
|	AsyncGeneratorMethod
|	<get> 'getToken' PropertyName 'name' <leftParen> 'left' <rightParen> 'right' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{GetMethodDefinition}}
|	<set> 'setToken' PropertyName 'name' <leftParen> 'left' PropertySetParameterList <rightParen> 'right' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{SetMethodDefinition}}
;
PropertySetParameterList
:	FormalParameter 'parameter'
;
GeneratorMethod
:	<star> 'star' PropertyName 'name' <leftParen> 'left' UniqueFormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' GeneratorBody <rightBrace> 'rightBrace' {{GeneratorMethodDefinition}}
;
GeneratorDeclaration
:	<function> 'functionToken' <star> 'star' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' GeneratorBody <rightBrace> 'rightBrace' {{GeneratorFunction}}	##
;
GeneratorExpression
:	<function> 'functionToken' <star> 'star' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' GeneratorBody <rightBrace> 'rightBrace' {{GeneratorFunction}}	##
;
GeneratorBody
:	FunctionBody
;
YieldExpression
:   <yield> 'yieldToken' {{}}
|	<yield> 'yieldToken'  <star> 'star'? AssignmentExpression 'expression' {{}} ##
;
AsyncGeneratorMethod
:	<async> 'asyncToken' <star> 'star' PropertyName 'name' <leftParen> 'left' UniqueFormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncGeneratorBody <rightBrace> 'rightBrace' {{AsyncGeneratorMethodDefinition}}
;
AsyncGeneratorDeclaration
:	<async> 'asyncToken' <function> 'functionToken' <star> 'star' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncGeneratorBody <rightBrace> 'rightBrace' {{AsyncGeneratorFunction}}   ##
;
AsyncGeneratorExpression
:	<async> 'asyncToken' <function> 'functionToken' <star> 'star' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncGeneratorBody <rightBrace> 'rightBrace' {{AsyncGeneratorFunction}}   ##
;
AsyncGeneratorBody
:	FunctionBody
;
AsyncMethod
:	<async> 'asyncToken' PropertyName 'name' <leftParen> 'left' UniqueFormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncFunctionBody <rightBrace> 'rightBrace' {{AsyncMethodDefinition}}
;
AsyncFunctionDeclaration
:	<async> 'asyncToken' <function> 'functionToken' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncFunctionBody <rightBrace> 'rightBrace' {{AsyncFunction}}   ##
;
AsyncFunctionExpression
:	<async> 'asyncToken' <function> 'functionToken' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncFunctionBody <rightBrace> 'rightBrace' {{AsyncFunction}}    ##
;
AsyncFunctionBody
:	FunctionBody
;
AwaitExpression
:	<await> 'awaitToken' UnaryExpression 'expression' {{}}
;
ClassDeclaration
:	<class> 'classToken' Identifier 'name'? ClassTail {{ClassExpression}}	##
;
ClassExpression
:	<class> 'classToken' Identifier 'name'? ClassTail {{}}	##
;
ClassTail
:	ClassHeritage? <leftBrace> 'leftBrace' ClassBody? <rightBrace> 'rightBrace'
;
ClassHeritage
:	<extends> 'extendsToken' LeftHandSideExpression 'superclass'
;
ClassBody
:	ClassElementList
;
ClassElementList
:	ClassElement 'element'
|	ClassElementList ClassElement 'element'
;
ClassElement
:	MethodDefinition
|	<static> 'staticToken' MethodDefinition {{MethodDefinition}}
|	<semicolon> 'semicolon' {{EmptyStatement}}
;
#A.5
Script
:	ScriptBody? {{}}
;
ScriptBody
:	StatementList
;
Module
:	ModuleBody? {{}}
;
ModuleBody
:	ModuleItemList
;
ModuleItemList
:	ModuleItem 'item'
|	ModuleItemList ModuleItem 'item'
;
ModuleItem
:	ImportDeclaration
|	ExportDeclaration
|	StatementListItem
;
ImportDeclaration
:	<import> 'importToken' ImportClause FromClause <semicolon> 'semicolon' {{}}
|	<import> 'importToken' ModuleSpecifier <semicolon> 'semicolon' {{}}
;
ImportClause
:	ImportedDefaultBinding 'import'
|	NameSpaceImport 'import'
|	NamedImports 'import'
|	ImportedDefaultBinding 'import' <comma> 'comma' NameSpaceImport 'import'
|	ImportedDefaultBinding 'import' <comma> 'comma' NamedImports 'import'
;
ImportedDefaultBinding
:	ImportedBinding
;
NameSpaceImport
:	<star> 'star' <as> 'asToken' ImportedBinding 'import' {{}}
;
NamedImports
:	<leftBrace> 'leftBrace' <rightBrace> 'rightBrace' {{}}
|	<leftBrace> 'leftBrace' ImportsList <rightBrace> 'rightBrace' {{}}
|	<leftBrace> 'leftBrace' ImportsList <comma> 'comma' <rightBrace> 'rightBrace' {{}}
;
FromClause
:	<from> 'fromToken' ModuleSpecifier
;
ImportsList
:	ImportSpecifier 'specifier'
|	ImportsList <comma> 'comma' ImportSpecifier 'specifier'
;
ImportSpecifier
:	ImportedBinding 'binding' {{}}
|	<identifierName> 'name' <as> 'asToken' ImportedBinding 'binding' {{}}
;
ModuleSpecifier
:	StringLiteral 'from'
;
ImportedBinding
:	Identifier	##
;
ExportDeclaration
:	<export> 'exportToken' ExportFromClause FromClause <semicolon> 'semicolon' {{}}
|	<export> 'exportToken' NamedExports <semicolon> 'semicolon' {{}}
|	<export> 'exportToken' VariableStatement 'statement' {{}}
|	<export> 'exportToken' Declaration 'declaration' {{}}
#|	<export> 'exportToken' <default> 'defaultToken' HoistableDeclaration 'declaration' {{}}	#handled by AssignmentExpression version below
#|	<export> 'exportToken' <default> 'defaultToken' ClassDeclaration 'declaration' {{}}	#handled by AssignmentExpression version below
|	<export> 'exportToken' <default> 'defaultToken' AssignmentExpression 'statement'<semicolon> 'semicolon' {{}}
;
ExportFromClause
:	<star> 'star'
|	<star> 'star' <as> 'asToken' <identifierName> 'name'
|	NamedExports
;
NamedExports
:	<leftBrace> 'leftBrace' <rightBrace> 'rightBrace'
|	<leftBrace> 'leftBrace' ExportsList <rightBrace> 'rightBrace'
|	<leftBrace> 'leftBrace' ExportsList <comma> 'comma' <rightBrace> 'rightBrace'
;
ExportsList
:	ExportSpecifier 'specifier'
|	ExportsList <comma> 'comma' ExportSpecifier 'specifier'
;
ExportSpecifier
:	<identifierName> 'name' {{}}
|	<identifierName> 'name' <as> 'asToken' <identifierName> 'as' {{}}
;


NullLiteral
:	<null>
;
BooleanLiteral
:	<true>
|	<false>
;
StringLiteral
:	<string_literal>
;
NumericLiteral
:	<numeric_literal>
;
RegularExpressionLiteral
:	<regular_expression> 'value' {{RegularExpressionLiteral}}
;
#################################
# JSX Extensions
#################################
jsx jsxText <jsxLT>
:	\<
;
PrimaryExpression
:	JSXElement
|	JSXFragment
;
JSXElement
:	JSXSelfClosingElement
|	JSXOpeningElement 'openingElement' StartJSXText JSXChildren JSXClosingElement 'closingElement' {{XElement}}
;
JSXSelfClosingElement
:	SwitchToJSX <jsxLT> 'ltToken' JSXElementName 'name' JSXAttributes? <slash> 'slashToken' SwitchToJSXTextOrDefault1 <gt> 'gtToken' {{XSelfClosingElement}}
;
JSXOpeningElement
:	SwitchToJSX <jsxLT> 'ltToken' JSXElementName  'name' JSXAttributes? SwitchToJSXText <gt> 'gtToken' {{XOpeningElement}}
;
JSXClosingElement
:	SwitchToJSX <jsxLT> 'ltToken' <slash> 'slashToken' JSXElementName 'name' SwitchToJSXTextOrDefault2 <gt> 'gtToken' {{XClosingElement}}
;
JSXFragment
:	<jsxLT> 'ltToken' SwitchToJSXText <gt> 'gtToken' StartJSXText JSXChildren <jsxLT> 'ltToken' <slash> 'slashToken' SwitchToJSXTextOrDefault2 <gt> 'gtToken' {{XFragment}}
;
JSXElementName
:	<JSXIdentifier> 'identifier' {{XElementName}}
|	JSXNamespacedName
|	JSXMemberExpression
;
jsx <JSXIdentifier>
:	<identifier_start> (<identifier_part> | \-)*
;
JSXNamespacedName
:	<JSXIdentifier> 'identifier' <colon> 'colonToken' <JSXIdentifier> 'identifier' {{XNamespacedName}}
;
JSXMemberExpression
:	(<JSXIdentifier> 'identifier' <period> 'periodToken')+ <JSXIdentifier> 'identifier' {{XMemberExpression}}
;
JSXAttributes
:	(JSXSpreadAttribute 'attribute' | JSXAttribute 'attribute')+
;
JSXSpreadAttribute
:	SwitchToDefault <leftBrace> 'leftBrace' SpreadElement 'element' SwitchToJSX <rightBrace> 'rightBrace' {{XSpreadAttribute}}
;
JSXAttribute
:	JSXAttributeName 'name' JSXAttributeInitializer? {{XAttribute}}
;
JSXAttributeName
: 	<JSXIdentifier> 'identifier' {{XElementName}}
| 	JSXNamespacedName
;
JSXAttributeInitializer
:	<eq> 'equalToken' JSXAttributeValue 'value'
;
JSXAttributeValue
:	StringLiteral 'value' {{StringLiteral}}
|	SwitchToDefault <leftBrace> 'leftBrace' AssignmentExpression 'expression' SwitchToJSX <rightBrace> 'rightBrace' {{XCodeExpression}}
|	JSXElement
|	JSXFragment
;
JSXChildren
:	JSXChild 'item' *
;
JSXChild
:	<JSXText> 'value' {{XText}}
|	JSXElement
|	SwitchToDefault <leftBrace> 'leftBrace' JSXChildExpression 'expression' ? SwitchToJSXText <rightBrace> 'rightBrace' {{XCodeExpression}}
;
jsxText <JSXText>
:	[^\{\<\>\}]+
;
JSXChildExpression
:	AssignmentExpression
|	SpreadElement
;
SwitchToJSX
:	[self scope: #jsx. nil]
;
SwitchToJSXText
:	[self scope: #jsxText. nil]
;
StartJSXText
:	[#jsxText]
;
SwitchToJSXTextOrDefault1
:	[self switchToJSXTextOrDefault: 1]
;
SwitchToJSXTextOrDefault2
:	[self switchToJSXTextOrDefault: 2]
;
SwitchToDefault
:	[self scope: #default. #default]
;
#################################
# TypeScript Extensions
#################################
# A.1
TypeParameters
:	<lt> 'leftAngle' TypeParameterList <gt> 'rightAngle' {{}}
;
TypeParameterList
:	TypeParameter 'parameter'
|	TypeParameterList <comma> 'comma' TypeParameter 'parameter'
;
TypeParameter
:	Identifier 'name' Constraint? {{}}
;
Constraint
:	<extends> 'extendsToken' Type 'type'
;
TypeArguments
:	<lt> 'leftAngle'  TypeArgumentList <gt> 'rightAngle' {{}}
;
TypeArgumentList
:	TypeArgument 'argument'
|	TypeArgumentList <comma> 'comma' TypeArgument 'argument'
;
TypeArgument
:	Type
;
Type
:	UnionOrIntersectionOrPrimaryType
|	FunctionType
|	ConstructorType
;
UnionOrIntersectionOrPrimaryType
:	UnionType
|	IntersectionOrPrimaryType
;
IntersectionOrPrimaryType
:	IntersectionType
|	PrefixType
;
PrefixType
: 	PrimaryType
|	<keyof> 'keyofToken' PrimaryType 'type' {{KeyOfType}}
|	<infer> 'inferToken' PrimaryType 'type' {{InferType}}
;
PrimaryType
:	ParenthesizedType
|	PredefinedType      # handled by TypeReference
|	TypeReference
|	ObjectType
|	ArrayType
|	TupleType
|	TypeQuery
|	ThisType
|	LiteralType
;
LiteralType
:	StringLiteral 'value' {{}}
|	NumericLiteral 'value' {{}}
;
ParenthesizedType
:	<leftParen> 'leftParen' Type <rightParen> 'rightParen' {{Type}}
;
PredefinedType
:	<void> 'voidToken' {{VoidType}}
;
TypeReference
:	TypeName 'type' CheckEOL TypeArguments 'typeArguments'? {{TypeReference}}
;
TypeName
:	Identifier 'name' {{}}	##
|	NamespaceName <period> 'periodToken' Identifier 'name' {{}} ##
;
NamespaceName
:	Identifier 'name'   ##
|	NamespaceName <period> 'periodToken' Identifier 'name'  ##
;
ObjectType
:	<leftBrace> 'leftBrace' TypeBody? <rightBrace> 'rightBrace' {{}}
;
TypeBody
:	TypeMemberList <semicolon> 'separator'?
|	TypeMemberList <comma> 'separator'?	##
;
TypeMemberList
:	TypeMember 'type'
|	TypeMemberList <semicolon> 'separator' TypeMember 'type'
|	TypeMemberList <comma> 'separator' TypeMember 'type'
;
TypeMember
:	PropertySignature
|	CallSignature
|	ConstructSignature
|	IndexSignature
|	MethodSignature
;
ArrayType
:	PrimaryType 'type' CheckEOL <leftBracket> 'leftBracket' <rightBracket> 'rightBracket' {{}}
;
TupleType
:	<leftBracket> 'leftBracket' TupleElementTypes <comma> 'comma'? <rightBracket> 'rightBracket' {{}}
;
TupleElementTypes
:	TupleElementType 'type'
|	TupleElementTypes <comma> 'comma' TupleElementType 'type'
;
TupleElementType
:	Type
;
UnionType
:	UnionOrIntersectionOrPrimaryType 'leftType' <bar> 'operator' IntersectionOrPrimaryType 'rightType' {{}}
;
IntersectionType
:	IntersectionOrPrimaryType 'leftType' <amp> 'operator' PrimaryType 'rightType' {{}}
;
FunctionType
:	TypeParameters 'typeParameters'? <leftParen> 'leftParen' FormalParameters <rightParen> 'rightParen' <eqGt> 'arrow' Type 'type' {{}}   ## changed ParameterList
;
ConstructorType
:	<new> 'newToken' TypeParameters 'typeParameters'? <leftParen> 'leftParen' FormalParameters <rightParen> 'rightParen' <eqGt> 'arrow' Type 'type' {{}}   ## changed ParameterList
;
TypeQuery
:	<typeof> 'operator' TypeQueryExpression 'expression' {{}}
;
TypeQueryExpression
:	Identifier 'name' {{}}	##
|	TypeQueryExpression <period> 'periodToken' Identifier 'name' {{}}	##
;
ThisType
:	<this> 'thisToken' {{}}
;
PropertySignature
:	PropertyName 'name' <question> 'questionMarkToken'? TypeAnnotation? {{}}
;
#PropertyName
#:	Identifier 	##
#|	StringLiteral
#|	NumericLiteral
#;
TypeAnnotation
:	<colon> 'colonToken' Type 'type'
;
CallSignature
:	TypeParameters 'typeParameters'? <leftParen> 'left' FormalParameters <rightParen> 'right' TypeAnnotation? {{}}   ## changed ParameterList
;
BindingElement  ## integrating ParameterList
:	<ts> AccessibilityModifier 'modifier'? TSIdentifierOrBindingPattern 'variable' TypeAnnotation Initializer? {{VariableDeclaration}}
|	<ts> AccessibilityModifier 'modifier' TSIdentifierOrBindingPattern 'variable' Initializer? {{VariableDeclaration}}
|	<ts> AccessibilityModifier 'modifier'? TSIdentifierOrBindingPattern 'variable' <question> 'questionMarkToken' TypeAnnotation? {{VariableDeclaration}}	##
;
TSIdentifierOrBindingPattern
:	Identifier 
|	<this> 'name' {{NameExpression}}
| 	BindingPattern 
| 
;
SingleNameBinding  ## integrating ParameterList
:	<ts> AccessibilityModifier 'modifier'? Identifier 'variable' TypeAnnotation Initializer? {{VariableDeclaration}}	##
|	<ts> AccessibilityModifier 'modifier' Identifier 'variable' Initializer? {{VariableDeclaration}}	##
|	<ts> AccessibilityModifier 'modifier'? Identifier 'variable' <question> 'questionMarkToken' {{VariableDeclaration}}	##
;
BindingRestElement  ## integrating ParameterList
:	<dotDotDot> 'ellipsis' Identifier 'variable' TypeAnnotation {{RestVariableDeclaration}}	##
;
#ParameterList
#:	RequiredParameterList
#|	OptionalParameterList
#|	RestParameter
#|	RequiredParameterList <comma> 'comma' OptionalParameterList
#|	RequiredParameterList <comma> 'comma' RestParameter
#|	OptionalParameterList <comma> 'comma' RestParameter
#|	RequiredParameterList <comma> 'comma' OptionalParameterList <comma> 'comma' RestParameter
#;
#RequiredParameterList
#:	RequiredParameter 'parameter'
#|	RequiredParameterList <comma> 'comma' RequiredParameter 'parameter'
#;
#RequiredParameter
#:	AccessibilityModifier 'modifier'? BindingIdentifierOrPattern 'variable' TypeAnnotation? {{}}
#|	Identifier 'variable' <colon> 'colonToken' StringLiteral 'value' {{}} ##
#;
AccessibilityModifier
:	<public>
|	<private>
|	<protected>
;
BindingIdentifierOrPattern
:	Identifier 	##
|	BindingPattern
;
#OptionalParameterList
#:	OptionalParameter 'parameter'
#|	OptionalParameterList <comma> 'comma' OptionalParameter 'parameter'
#;
#OptionalParameter
#:	AccessibilityModifier 'modifier'? BindingIdentifierOrPattern 'variable' <question> 'questionMarkToken' TypeAnnotation? {{}}
#|	AccessibilityModifier 'modifier'? BindingIdentifierOrPattern 'variable' TypeAnnotation? Initializer {{}}
#|	Identifier 'variable' <question> 'questionMarkToken' <colon> 'colonToken' StringLiteral 'value' {{}} 	##
#;
#RestParameter
#:	<dotDotDot> 'ellipsis' Identifier 'name' TypeAnnotation {{RestVariableDeclaration}}
#;
ConstructSignature
:	<new> 'newToken' TypeParameters 'typeParameters'? <leftParen> 'leftParen' FormalParameters <rightParen> 'rightParen' TypeAnnotation? {{}}   ## changed ParameterList
;
IndexSignature
:	<leftBracket> 'leftBracket' Identifier 'name' <colon> 'colonToken' <string> 'value' <rightBracket> 'rightBracket' TypeAnnotation {{}}
|	<leftBracket> 'leftBracket' Identifier 'name' <colon> 'colonToken' <numeric> 'value' <rightBracket> 'rightBracket' TypeAnnotation {{}}  ##
;
MethodSignature
:	PropertyName 'name' <question> 'questionMarkToken'? CallSignature 'signature' {{}}
;
TypeAliasDeclaration
:	<type> 'typeToken' Identifier 'name' TypeParameters 'typeParameters'? <eq> 'equalToken' Type 'type' <semicolon> 'semicolon' {{}}
;
# A.2
MethodDefinition 	# PropertyDefinition
:	<ts> PropertyName 'name' TypeCallSignature <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{MethodDefinition}}
;
TypeCallSignature
:	TypeParameters 'typeParameters'? <leftParen> 'left' FormalParameters <rightParen> 'right' TypeAnnotation   ## changed ParameterList
|	TypeParameters 'typeParameters' <leftParen> 'left' FormalParameters <rightParen> 'right'   ## changed ParameterList
;
MethodDefinition    # GetAccessor / SetAccessor
:   GetAccessor
|   SetAccessor
;
GetAccessor
:	<ts> <get> 'getToken' PropertyName 'name' <leftParen> 'left' <rightParen> 'right' TypeAnnotation <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{GetMethodDefinition}} 
;
SetAccessor
:	<ts> <set> 'setToken' PropertyName 'name' <leftParen> 'left' PropertySetParameterList <rightParen> 'right' TypeAnnotation <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{SetMethodDefinition}}
|	<ts> <set> 'setToken' PropertyName 'name' <leftParen> 'left' TypedPropertySetParameterList 'parameter' <rightParen> 'right' TypeAnnotation? <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{SetMethodDefinition}}
;
TypedPropertySetParameterList
:	BindingIdentifierOrPattern 'variable' TypeAnnotation {{TypedParameter}}
;
FunctionExpression
:	<ts> <function> 'functionToken' Identifier 'name'? TypeCallSignature <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{Function}}
;
ArrowFormalParameters
:	<ts> TypeCallSignature
;
Arguments
:	<ts> TypeArguments 'typeArguments' <leftParen> 'left' ArgumentList? <rightParen> 'right'
;
UnaryExpression
:	<ts> <lt> 'leftAngle' Type 'type' <gt> 'rightAngle' UnaryExpression 'expression' {{CastExpression}}
|	LeftHandSideExpression 'expression' <as> 'asToken' <ts> Type 'type' {{AsExpression}}
;
# A.3
Declaration
:	<ts> InterfaceDeclaration {'2'}
|	<ts> TypeAliasDeclaration {'2'}
|	<ts> EnumDeclaration {'2'}
;
VariableDeclaration
:	<ts> SimpleVariableDeclaration {'2'}
|	<ts> DestructuringVariableDeclaration {'2'}
;
SimpleVariableDeclaration
:	Identifier 'name' TypeAnnotation Initializer? {{VariableDeclaration}}	##
;
DestructuringVariableDeclaration
:	BindingPattern 'pattern' TypeAnnotation Initializer {{VariablePatternDeclaration}}
;
LexicalBinding
:	SimpleLexicalBinding
|	DestructuringLexicalBinding
;
SimpleLexicalBinding
:	<ts> Identifier 'variable' TypeAnnotation Initializer? {{VariableDeclaration}}	##
;
DestructuringLexicalBinding
:	<ts> BindingPattern 'variable' TypeAnnotation Initializer? {{VariableDeclaration}}
;
# A.4
FunctionDeclaration
:	<ts> <function> 'functionToken' Identifier 'name'? TypeCallSignature <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{Function}}
|	<ts> <function> 'functionToken' Identifier 'name'? CallSignature 'signature' <semicolon> 'semicolon' {{EmptyFunction}}
;
# A.5
InterfaceDeclaration
:	<interface> 'interfaceToken' Identifier 'name' TypeParameters 'typeParameters'? InterfaceExtendsClause? ObjectType 'type' {{}}
;
InterfaceExtendsClause
:	<extends> 'extendsToken' ClassOrInterfaceType 'extends'
;
ClassOrInterfaceTypeList
:	ClassOrInterfaceType 'type'
|	ClassOrInterfaceTypeList <comma> 'comma' ClassOrInterfaceType 'type'
;
ClassOrInterfaceType
:	TypeReference
;
# A.6
ClassDeclaration
:	<ts> Identifier 'name'? TypeParameters 'typeParameters' ClassTail {{ClassExpression}} 	##
;
ClassHeritage
:	<ts> ClassExtendsClause? ImplementsClause 	##
;
ClassExtendsClause
:	<extends> 'extendsToken' ClassType
;
ClassType
:	TypeReference 'superclass'
;
ImplementsClause
:	<implements> 'implementsToken' ClassOrInterfaceTypeList
;
ClassElement
:	<ts> ConstructorDeclaration {'2'}
|	<ts> PropertyMemberDeclaration {'2'}
|	<ts> IndexMemberDeclaration {'2'}
;
ConstructorDeclaration
:	AccessibilityModifier 'modifier'? <constructor> 'constructorToken' <leftParen> 'leftParen' FormalParameters <rightParen> 'rightParen' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}   ## changed ParameterList
|	AccessibilityModifier 'modifier'? <constructor> 'constructorToken' <leftParen> 'leftParen' FormalParameters <rightParen> 'rightParen' <semicolon> 'semicolon' {{}}   ## changed ParameterList
;
PropertyMemberDeclaration
:	MemberVariableDeclaration
|	MemberFunctionDeclaration
|	MemberAccessorDeclaration
;
MemberVariableDeclaration
:	AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' TypeAnnotation? Initializer? <semicolon> 'semicolon' {{}}
;
MemberFunctionDeclaration
:	AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' CallSignature 'signature' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}
|	AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' CallSignature 'signature' <semicolon> 'semicolon' {{}}
;
MemberAccessorDeclaration
:	AccessibilityModifier 'modifier'? <static> 'staticToken'? GetAccessor 'accessor' {{}}
|	AccessibilityModifier 'modifier'? <static> 'staticToken'? SetAccessor 'accessor' {{}}
;
IndexMemberDeclaration
:	IndexSignature 'signature' <semicolon> 'semicolon' {{}}
;
# A.7
EnumDeclaration
:	<const> 'constToken'? <enum> 'enumToken' Identifier 'name' <leftBrace> 'leftBrace' EnumBody? <rightBrace> 'rightBrace' {{}}
;
EnumBody
:	EnumMemberList <comma> 'comma'?
;
EnumMemberList
:	EnumMember 'value'
|	EnumMemberList <comma> 'comma' EnumMember 'value'
;
EnumMember
:	PropertyName 'name' {{}}
|	PropertyName 'name' <eq> 'equalToken' EnumValue 'value' {{}}
;
EnumValue
:	AssignmentExpression
;
# A.8
NamespaceDeclaration
:	<namespace> 'namespaceToken' IdentifierPath <leftBrace> 'leftBrace' NamespaceBody <rightBrace> 'rightBrace' {{}}
;
IdentifierPath
:	Identifier 'name' 	##
|	IdentifierPath <period> 'periodToken' Identifier 'name' 	##
;
NamespaceBody
:	NamespaceElements?
;
NamespaceElements
:	NamespaceElement 'element'
|	NamespaceElements NamespaceElement 'element'
;
NamespaceElement
:	Statement
|	LexicalDeclaration
|	FunctionDeclaration
|	GeneratorDeclaration
|	ClassDeclaration
|	InterfaceDeclaration
|	TypeAliasDeclaration
|	EnumDeclaration
|	NamespaceDeclaration
|	AmbientDeclaration
|	ImportAliasDeclaration
|	ExportNamespaceElement
;
ExportNamespaceElement
:	<export> 'exportToken' VariableStatement 'declaration' {{}}
|	<export> 'exportToken' LexicalDeclaration 'declaration' {{}}
|	<export> 'exportToken' FunctionDeclaration 'declaration' {{}}
|	<export> 'exportToken' GeneratorDeclaration 'declaration' {{}}
|	<export> 'exportToken' ClassDeclaration 'declaration' {{}}
|	<export> 'exportToken' InterfaceDeclaration 'declaration' {{}}
|	<export> 'exportToken' TypeAliasDeclaration 'declaration' {{}}
|	<export> 'exportToken' EnumDeclaration 'declaration' {{}}
|	<export> 'exportToken' NamespaceDeclaration 'declaration' {{}}
|	<export> 'exportToken' AmbientDeclaration 'declaration' {{}}
|	<export> 'exportToken' ImportAliasDeclaration 'declaration' {{}}
;
ImportAliasDeclaration
:	<import> 'importToken' Identifier 'name' <eq> 'equalToken' EntityName 'value' <semicolon> 'semicolon' {{}}
;
EntityName
:	NamespaceName
#|	NamespaceName <period> 'periodToken' Identifier	##
;
# A.9 Scripts and Modules
SourceFile
:	ImplementationSourceFile {{TSSourceFile}}
|	DeclarationSourceFile {{TSSourceFile}}
;
ImplementationSourceFile
:	ImplementationScript
|	ImplementationModule
;
DeclarationSourceFile
:	DeclarationScript
|	DeclarationModule
;
ImplementationScript
:	ImplementationScriptElements?
;
ImplementationScriptElements
:	ImplementationScriptElement 'element'
|	ImplementationScriptElements ImplementationScriptElement 'element'
;
ImplementationScriptElement
:	ImplementationElement
|	AmbientModuleDeclaration
;
ImplementationElement
:	Statement
|	LexicalDeclaration
|	FunctionDeclaration
|	GeneratorDeclaration
|	ClassDeclaration
|	InterfaceDeclaration
|	TypeAliasDeclaration
|	EnumDeclaration
|	NamespaceDeclaration
|	AmbientDeclaration
|	ImportAliasDeclaration
;
DeclarationScript
:	DeclarationScriptElements?
;
DeclarationScriptElements
:	DeclarationScriptElement 'element'
|	DeclarationScriptElements DeclarationScriptElement 'element'
;
DeclarationScriptElement
:	DeclarationElement
|	AmbientModuleDeclaration
;
DeclarationElement
:	InterfaceDeclaration
|	TypeAliasDeclaration
|	NamespaceDeclaration
|	AmbientDeclaration
|	ImportAliasDeclaration
;
ImplementationModule
:	ImplementationModuleElements?
;
ImplementationModuleElements
:	ImplementationModuleElement 'element'
|	ImplementationModuleElements ImplementationModuleElement 'element'
;
ImplementationModuleElement
:	ImplementationElement
|	ImportDeclaration
|	ImportAliasDeclaration
|	ImportRequireDeclaration
|	ExportImplementationElement
|	ExportDefaultImplementationElement
|	ExportListDeclaration
|	ExportAssignment
;
DeclarationModule
:	DeclarationModuleElements?
;
DeclarationModuleElements
:	DeclarationModuleElement 'element'
|	DeclarationModuleElements DeclarationModuleElement 'element'
;
DeclarationModuleElement
:	DeclarationElement
|	ImportDeclaration
#|	ImportAliasDeclaration ## already in DeclarationModule
|	ExportDeclarationElement
|	ExportDefaultDeclarationElement
|	ExportListDeclaration
|	ExportAssignment
;
ImportRequireDeclaration
:	<import> 'importToken' Identifier 'name' <eq> 'equalToken' <require> 'requireToken' <leftParen> 'leftParen' StringLiteral 'value' <rightParen> 'rightParen' <semicolon> 'semicolon' {{}}
;
ExportImplementationElement
:	<export> 'exportToken' VariableStatement 'declaration' {{}}
|	<export> 'exportToken' LexicalDeclaration 'declaration' {{}}
|	<export> 'exportToken' FunctionDeclaration 'declaration' {{}}
|	<export> 'exportToken' GeneratorDeclaration 'declaration' {{}}
|	<export> 'exportToken' ClassDeclaration 'declaration' {{}}
|	<export> 'exportToken' InterfaceDeclaration 'declaration' {{}}
|	<export> 'exportToken' TypeAliasDeclaration 'declaration' {{}}
|	<export> 'exportToken' EnumDeclaration 'declaration' {{}}
|	<export> 'exportToken' NamespaceDeclaration 'declaration' {{}}
|	<export> 'exportToken' AmbientDeclaration 'declaration' {{}}
|	<export> 'exportToken' ImportDeclaration 'declaration' {{}}
;
ExportDeclarationElement
:	<export> 'exportToken' InterfaceDeclaration 'declaration' {{}}
|	<export> 'exportToken' TypeAliasDeclaration 'declaration' {{}}
|	<export> 'exportToken' AmbientDeclaration 'declaration' {{}}
|	<export> 'exportToken' ImportAliasDeclaration 'declaration' {{}}
;
ExportDefaultImplementationElement
:	<export> 'exportToken' <default> 'defaultToken' FunctionDeclaration 'declaration' {{}}
|	<export> 'exportToken' <default> 'defaultToken' GeneratorDeclaration 'declaration' {{}}
|	<export> 'exportToken' <default> 'defaultToken' ClassDeclaration 'declaration' {{}}
|	<export> 'exportToken' <default> 'defaultToken' AssignmentExpression 'declaration' <semicolon> 'semicolon' {{}}
;
ExportDefaultDeclarationElement
:	<export> 'exportToken' <default> 'defaultToken' AmbientFunctionDeclaration 'declaration' {{}}
|	<export> 'exportToken' <default> 'defaultToken' AmbientClassDeclaration 'declaration' {{}}
|	<export> 'exportToken' <default> 'defaultToken' Identifier 'declaration' <semicolon> 'semicolon' {{}}
;
ExportListDeclaration
:	<export> 'exportToken' <star> 'star' FromClause <semicolon> 'semicolon' {{}}
|	<export> 'exportToken' NamedExports FromClause <semicolon> 'semicolon' {{}}
|	<export> 'exportToken' NamedExports <semicolon> 'semicolon' {{}}
;
ExportAssignment
:	<export> 'exportToken' <eq> 'equalToken' Identifier 'name' <semicolon> 'semicolon' {{}} 	##
;
# A.10 Ambients
AmbientDeclaration
:	<declare> 'declareToken' AmbientVariableDeclaration 'declaration' {{}}
|	<declare> 'declareToken' AmbientFunctionDeclaration 'declaration' {{}}
|	<declare> 'declareToken' AmbientClassDeclaration 'declaration' {{}}
|	<declare> 'declareToken' AmbientEnumDeclaration 'declaration' {{}}
|	<declare> 'declareToken' AmbientNamespaceDeclaration 'declaration' {{}}
;
AmbientVariableDeclaration
:	<var> 'typeToken' AmbientBindingList <semicolon> 'semicolon' {{LexicalDeclaration}}
|	<let> 'typeToken' AmbientBindingList <semicolon> 'semicolon' {{LexicalDeclaration}}
|	<const> 'typeToken' AmbientBindingList <semicolon> 'semicolon' {{LexicalDeclaration}}
;
AmbientBindingList
:	AmbientBinding 'binding'
|	AmbientBindingList <comma> 'comma' AmbientBinding 'binding'
;
AmbientBinding
:	Identifier 'variable' TypeAnnotation? {{VariableDeclaration}}
;
AmbientFunctionDeclaration
:	<function> 'functionToken' Identifier 'name' CallSignature 'signature' <semicolon> 'semicolon' {{EmptyFunction}}
;
AmbientClassDeclaration
:	<class> 'classToken' Identifier 'name' TypeParameters 'typeParameters'? ClassHeritage <leftBrace> 'leftBrace' AmbientClassBody <rightBrace> 'rightBrace' {{ClassExpression}}
;
AmbientClassBody
:	AmbientClassBodyElements?
;
AmbientClassBodyElements
:	AmbientClassBodyElement 'element'
|	AmbientClassBodyElements AmbientClassBodyElement 'element'
;
AmbientClassBodyElement
:	AmbientConstructorDeclaration
|	AmbientPropertyMemberDeclaration
|	IndexSignature
;
AmbientConstructorDeclaration
:	<constructor> 'constructorToken' <leftParen> 'left' FormalParameters <rightParen> 'right' <semicolon> 'semicolon' {{ConstructorDeclaration}}   ## changed ParameterList
;
AmbientPropertyMemberDeclaration
:	AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' TypeAnnotation? <semicolon> 'semicolon' {{MemberVariableDeclaration}}
|	AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' CallSignature 'signature' <semicolon> 'semicolon' {{MethodSignature}}
;
AmbientEnumDeclaration
:	EnumDeclaration
;
AmbientNamespaceDeclaration
:	<namespace> 'namespaceToken' IdentifierPath <leftBrace> 'leftBrace' AmbientNamespaceBody <rightBrace> 'rightBrace' {{NamespaceDeclaration}}
;
AmbientNamespaceBody
:	AmbientNamespaceElements?
;
AmbientNamespaceElements
:	AmbientNamespaceElement 'element'
|	AmbientNamespaceElements AmbientNamespaceElement 'element'
;
AmbientNamespaceElement
:	<export> 'exportToken'? AmbientVariableDeclaration 'declaration' {{ExportNamespaceElement}}
|	<export> 'exportToken'? LexicalDeclaration 'declaration' {{ExportNamespaceElement}}
|	<export> 'exportToken'? AmbientFunctionDeclaration 'declaration' {{ExportNamespaceElement}}
|	<export> 'exportToken'? AmbientClassDeclaration 'declaration' {{ExportNamespaceElement}}
|	<export> 'exportToken'? InterfaceDeclaration 'declaration' {{ExportNamespaceElement}}
|	<export> 'exportToken'? AmbientEnumDeclaration 'declaration' {{ExportNamespaceElement}}
|	<export> 'exportToken'? AmbientNamespaceDeclaration 'declaration' {{ExportNamespaceElement}}
|	<export> 'exportToken'? ImportAliasDeclaration 'declaration' {{ExportNamespaceElement}}
;
AmbientModuleDeclaration
:	<declare> 'declareToken' <module> 'moduleToken' StringLiteral 'name' <leftBrace> 'leftBrace' DeclarationModule <rightBrace> 'rightBrace' {{}}
;"
]

{ #category : #'file types' }
JSParser class >> fileExtension [
	^ '.js'
]

{ #category : #'file types' }
JSParser class >> fileExtensionType [
	^ 'Javascript files'
]

{ #category : #private }
JSParser class >> keywords [
	^ keywords
		ifNil:
			[ keywords := #(break case catch class const continue debugger default delete do else export extends finally for function if import in instanceof new return super switch this throw try typeof var void while with yield)
				asSet collect: [ :each | each asString ] ]
]

{ #category : #generated }
JSParser class >> reduceTable [
^#(
	#(197 0 #reduceActionForStartStatementListItem1: 22852609 true ) 
	#(282 0 #reduceActionForModule1: 36076545 false ) 
	#(150 0 #reduceActionForStartTemplateLiteral1: 12189697 true ) 
	#(328 0 #reduceActionForSwitchToJSX1: 41342977 true ) 
	#(280 0 #reduceActionForScript1: 36018177 false ) 
	#(414 0 #reduceActionForImplementationScript1: 56189953 false ) 
	#(418 0 #reduceActionForImplementationScript1: 56732673 false ) 
	#(422 0 #reduceActionForImplementationScript1: 57129985 false ) 
	#(425 0 #reduceActionForImplementationScript1: 57571329 false ) 
	#(199 1 #liftFirstValue: 23024642 false ) 
	#(199 1 #liftFirstValue: 23024641 false ) 
	#(285 1 #liftFirstValue: 36209667 false ) 
	#(196 1 #liftFirstValue: 22755330 false ) 
	#(131 1 #liftFirstValue: 8611841 false ) 
	#(282 1 #reduceActionForModule2: 36076546 false ) 
	#(283 1 #reduceActionForModuleBody1: 36105217 false ) 
	#(284 1 #reduceActionForModuleItemList1: 36135937 false ) 
	#(285 1 #liftFirstValue: 36209665 false ) 
	#(285 1 #liftFirstValue: 36209666 false ) 
	#(243 0 #reduceActionForFormalParameters1: 31006721 false ) 
	#(302 1 #liftFirstValue: 38681602 false ) 
	#(301 1 #liftFirstValue: 38658049 false ) 
	#(134 1 #reduceActionForPrimaryExpression1: 9019393 false ) 
	#(302 1 #liftFirstValue: 38681601 false ) 
	#(263 1 #reduceActionForYieldExpression1: 33595393 false ) 
	#(132 1 #reduceActionForIdentifier1: 8724481 false ) 
	#(303 1 #liftFirstValue: 38718465 false ) 
	#(304 1 #liftFirstValue: 38754305 false ) 
	#(305 1 #reduceActionForRegularExpressionLiteral1: 38792193 false ) 
	#(149 1 #reduceActionForTemplateLiteral1: 12034049 false ) 
	#(329 0 #reduceActionForSwitchToJSXText1: 41383937 true ) 
	#(134 1 #liftFirstValue: 9019394 false ) 
	#(251 1 #reduceActionForArrowParameterDeclaration1: 31652865 false ) 
	#(153 1 #liftFirstValue: 12460033 false ) 
	#(134 1 #liftFirstValue: 9019405 false ) 
	#(134 1 #liftFirstValue: 9019395 false ) 
	#(134 1 #liftFirstValue: 9019396 false ) 
	#(134 1 #liftFirstValue: 9019397 false ) 
	#(134 1 #liftFirstValue: 9019404 false ) 
	#(157 1 #liftFirstValue: 13358081 false ) 
	#(153 1 #liftFirstValue: 12460037 false ) 
	#(153 1 #liftFirstValue: 12460038 false ) 
	#(155 1 #liftFirstValue: 13227009 false ) 
	#(167 1 #liftFirstValue: 15450113 false ) 
	#(167 1 #liftFirstValue: 15450114 false ) 
	#(158 1 #liftFirstValue: 13448194 false ) 
	#(158 1 #liftFirstValue: 13448195 false ) 
	#(167 1 #liftFirstValue: 15450115 false ) 
	#(168 1 #liftFirstValue: 15532033 false ) 
	#(169 1 #liftFirstValue: 15900673 false ) 
	#(170 1 #liftFirstValue: 16353281 false ) 
	#(171 1 #liftFirstValue: 16523265 false ) 
	#(173 1 #liftFirstValue: 16783361 false ) 
	#(174 1 #liftFirstValue: 17081345 false ) 
	#(175 1 #liftFirstValue: 17466369 false ) 
	#(176 1 #liftFirstValue: 18204673 false ) 
	#(177 1 #liftFirstValue: 18735105 false ) 
	#(178 1 #liftFirstValue: 18898945 false ) 
	#(179 1 #liftFirstValue: 19066881 false ) 
	#(180 1 #liftFirstValue: 19233793 false ) 
	#(183 1 #liftFirstValue: 19731458 false ) 
	#(181 1 #liftFirstValue: 19403777 false ) 
	#(184 1 #liftFirstValue: 19805185 false ) 
	#(184 1 #liftFirstValue: 19805186 false ) 
	#(183 1 #liftFirstValue: 19731457 false ) 
	#(185 1 #liftFirstValue: 19878913 false ) 
	#(186 1 #liftFirstValue: 20106241 false ) 
	#(188 1 #liftFirstValue: 21833729 false ) 
	#(134 1 #liftFirstValue: 9019398 false ) 
	#(186 1 #liftFirstValue: 20106243 false ) 
	#(250 1 #reduceActionForArrowParameters1: 31562753 false ) 
	#(250 1 #reduceActionForArrowParameters2: 31562754 false ) 
	#(186 1 #liftFirstValue: 20106244 false ) 
	#(134 1 #liftFirstValue: 9019400 false ) 
	#(186 1 #liftFirstValue: 20106242 false ) 
	#(134 1 #liftFirstValue: 9019402 false ) 
	#(134 1 #liftFirstValue: 9019401 false ) 
	#(169 1 #liftFirstValue: 15900681 false ) 
	#(134 1 #liftFirstValue: 9019399 false ) 
	#(136 1 #reduceActionForLiteral1: 10120193 false ) 
	#(136 1 #reduceActionForLiteral2: 10120194 false ) 
	#(136 1 #reduceActionForLiteral4: 10120196 false ) 
	#(136 1 #reduceActionForLiteral3: 10120195 false ) 
	#(134 1 #liftFirstValue: 9019403 false ) 
	#(134 1 #liftFirstValue: 9019406 false ) 
	#(306 1 #liftFirstValue: 39044097 false ) 
	#(330 0 #reduceActionForStartJSXText1: 41433089 true ) 
	#(134 1 #liftFirstValue: 9019407 false ) 
	#(216 1 #reduceActionForEmptyStatement1: 25365505 false ) 
	#(224 0 #reduceActionForCheckEOL1: 28854273 true ) 
	#(189 1 #liftFirstValue: 21985286 false ) 
	#(189 1 #liftFirstValue: 21985281 false ) 
	#(193 1 #liftFirstValue: 22535169 false ) 
	#(189 1 #liftFirstValue: 21985282 false ) 
	#(189 1 #liftFirstValue: 21985283 false ) 
	#(189 1 #liftFirstValue: 21985284 false ) 
	#(189 1 #liftFirstValue: 21985285 false ) 
	#(192 1 #liftFirstValue: 22472705 false ) 
	#(189 1 #liftFirstValue: 21985287 false ) 
	#(189 1 #liftFirstValue: 21985288 false ) 
	#(189 1 #liftFirstValue: 21985289 false ) 
	#(189 1 #liftFirstValue: 21985290 false ) 
	#(192 1 #liftFirstValue: 22472706 false ) 
	#(189 1 #liftFirstValue: 21985291 false ) 
	#(189 1 #liftFirstValue: 21985292 false ) 
	#(189 1 #liftFirstValue: 21985293 false ) 
	#(189 1 #liftFirstValue: 21985294 false ) 
	#(281 1 #reduceActionForModuleBody1: 36046849 false ) 
	#(195 1 #reduceActionForModuleItemList1: 22658049 false ) 
	#(280 1 #reduceActionForScript2: 36018178 false ) 
	#(417 1 #liftFirstValue: 56472577 false ) 
	#(417 1 #liftFirstValue: 56472578 false ) 
	#(417 1 #liftFirstValue: 56472579 false ) 
	#(417 1 #liftFirstValue: 56472580 false ) 
	#(417 1 #liftFirstValue: 56472581 false ) 
	#(424 1 #liftFirstValue: 57329666 false ) 
	#(427 1 #liftFirstValue: 57752578 false ) 
	#(417 1 #liftFirstValue: 56472583 false ) 
	#(421 1 #liftFirstValue: 56990722 false ) 
	#(417 1 #liftFirstValue: 56472582 false ) 
	#(421 1 #liftFirstValue: 56990721 false ) 
	#(417 1 #liftFirstValue: 56472584 false ) 
	#(417 1 #liftFirstValue: 56472585 false ) 
	#(421 1 #liftFirstValue: 56990723 false ) 
	#(417 1 #liftFirstValue: 56472587 false ) 
	#(424 1 #liftFirstValue: 57329667 false ) 
	#(421 1 #liftFirstValue: 56990725 false ) 
	#(411 1 #reduceActionForSourceFile1: 55949313 false ) 
	#(411 1 #reduceActionForSourceFile1: 55949314 false ) 
	#(412 1 #reduceActionForModuleBody1: 56049665 false ) 
	#(414 1 #reduceActionForModuleBody1: 56189954 false ) 
	#(415 1 #reduceActionForModuleItemList1: 56246273 false ) 
	#(416 1 #liftFirstValue: 56389633 false ) 
	#(424 1 #liftFirstValue: 57329665 false ) 
	#(413 1 #reduceActionForModuleBody1: 56124417 false ) 
	#(418 1 #reduceActionForModuleBody1: 56732674 false ) 
	#(419 1 #reduceActionForModuleItemList1: 56782849 false ) 
	#(427 1 #liftFirstValue: 57752577 false ) 
	#(420 1 #liftFirstValue: 56913921 false ) 
	#(412 1 #reduceActionForModuleBody1: 56049666 false ) 
	#(422 1 #reduceActionForModuleBody1: 57129986 false ) 
	#(423 1 #reduceActionForModuleItemList1: 57186305 false ) 
	#(413 1 #reduceActionForModuleBody1: 56124418 false ) 
	#(425 1 #reduceActionForModuleBody1: 57571330 false ) 
	#(426 1 #reduceActionForModuleItemList1: 57621505 false ) 
	#(424 1 #liftFirstValue: 57329668 false ) 
	#(424 1 #liftFirstValue: 57329669 false ) 
	#(427 1 #liftFirstValue: 57752579 false ) 
	#(424 1 #liftFirstValue: 57329670 false ) 
	#(427 1 #liftFirstValue: 57752580 false ) 
	#(424 1 #liftFirstValue: 57329671 false ) 
	#(427 1 #liftFirstValue: 57752581 false ) 
	#(424 1 #liftFirstValue: 57329672 false ) 
	#(427 1 #liftFirstValue: 57752582 false ) 
	#(417 1 #liftFirstValue: 56472586 false ) 
	#(421 1 #liftFirstValue: 56990724 false ) 
	#(416 1 #liftFirstValue: 56389634 false ) 
	#(420 1 #liftFirstValue: 56913922 false ) 
	#(366 1 #reduceActionForThisType1: 44914689 false ) 
	#(348 1 #reduceActionForPredefinedType1: 42953729 false ) 
	#(350 1 #reduceActionForTypeName1: 43100161 false ) 
	#(351 1 #reduceActionForNamespaceName1: 43206657 false ) 
	#(346 1 #reduceActionForLiteralType1: 42790913 false ) 
	#(346 1 #reduceActionForLiteralType1: 42790914 false ) 
	#(341 1 #liftFirstValue: 42255361 false ) 
	#(342 1 #liftFirstValue: 42332162 false ) 
	#(343 1 #liftFirstValue: 42408962 false ) 
	#(344 1 #liftFirstValue: 42470401 false ) 
	#(345 1 #liftFirstValue: 42613769 false ) 
	#(345 1 #liftFirstValue: 42613761 false ) 
	#(345 1 #liftFirstValue: 42613762 false ) 
	#(345 1 #liftFirstValue: 42613763 false ) 
	#(345 1 #liftFirstValue: 42613764 false ) 
	#(345 1 #liftFirstValue: 42613765 false ) 
	#(345 1 #liftFirstValue: 42613766 false ) 
	#(342 1 #liftFirstValue: 42332161 false ) 
	#(343 1 #liftFirstValue: 42408961 false ) 
	#(341 1 #liftFirstValue: 42255362 false ) 
	#(341 1 #liftFirstValue: 42255363 false ) 
	#(345 1 #liftFirstValue: 42613767 false ) 
	#(345 1 #liftFirstValue: 42613768 false ) 
	#(297 1 #reduceActionForExportFromClause1: 38108161 false ) 
	#(296 2 #reduceActionForExportDeclaration4: 37424132 false ) 
	#(190 1 #liftFirstValue: 22267905 false ) 
	#(190 1 #liftFirstValue: 22267907 false ) 
	#(296 2 #reduceActionForExportDeclaration3: 37424131 false ) 
	#(191 1 #liftFirstValue: 22346753 false ) 
	#(191 1 #liftFirstValue: 22346754 false ) 
	#(191 1 #liftFirstValue: 22346756 false ) 
	#(191 1 #liftFirstValue: 22346755 false ) 
	#(190 1 #liftFirstValue: 22267906 false ) 
	#(297 1 #reduceActionForExportFromClause3: 38108163 false ) 
	#(295 1 #liftFirstValue: 37389313 false ) 
	#(287 1 #reduceActionForImportClause1: 36456449 false ) 
	#(287 1 #reduceActionForImportClause1: 36456450 false ) 
	#(287 1 #reduceActionForImportClause1: 36456451 false ) 
	#(288 1 #liftFirstValue: 36709377 false ) 
	#(294 1 #liftFirstValue: 37347329 false ) 
	#(196 2 #liftSecondValue: 22755329 false ) 
	#(201 1 #reduceActionForArrowParameterDeclaration1: 23154689 false ) 
	#(200 1 #reduceActionForNamespaceName1: 23056385 false ) 
	#(205 1 #liftFirstValue: 23701505 false ) 
	#(205 1 #liftFirstValue: 23701506 false ) 
	#(201 1 #liftFirstValue: 23154692 false ) 
	#(201 1 #liftFirstValue: 23154693 false ) 
	#(284 2 #reduceActionForModuleItemList2: 36135938 false ) 
	#(214 1 #reduceActionForArrowParameterDeclaration1: 25097217 false ) 
	#(213 1 #reduceActionForArrowParameterDeclaration1: 24992770 false ) 
	#(246 1 #liftFirstValue: 31376385 false ) 
	#(213 1 #liftFirstValue: 24992769 false ) 
	#(245 1 #liftFirstValue: 31330305 false ) 
	#(242 1 #reduceActionForModuleBody1: 30961665 false ) 
	#(243 1 #reduceActionForFormalParameters3: 31006723 false ) 
	#(243 1 #reduceActionForFormalParameters2: 31006722 false ) 
	#(244 1 #reduceActionForNamespaceName1: 31208449 false ) 
	#(370 0 #nil 45797380 false ) 
	#(141 2 #reduceActionForObjectLiteral1: 10935297 false ) 
	#(133 1 #reduceActionForIdentifier1: 8918017 false ) 
	#(143 1 #liftFirstValue: 11327489 false ) 
	#(145 1 #liftFirstValue: 11638785 false ) 
	#(142 1 #reduceActionForNamespaceName1: 11192321 false ) 
	#(144 1 #liftFirstValue: 11576321 false ) 
	#(144 1 #liftFirstValue: 11576322 false ) 
	#(143 1 #liftFirstValue: 11327490 false ) 
	#(143 1 #liftFirstValue: 11327492 false ) 
	#(257 1 #liftFirstValue: 32219138 false ) 
	#(257 1 #liftFirstValue: 32219140 false ) 
	#(257 1 #liftFirstValue: 32219139 false ) 
	#(145 1 #reduceActionForIdentifier1: 11638786 false ) 
	#(145 1 #reduceActionForIdentifier1: 11638787 false ) 
	#(257 1 #liftFirstValue: 32219144 false ) 
	#(257 1 #liftFirstValue: 32219145 false ) 
	#(137 2 #reduceActionForArrayLiteral1: 10302465 false ) 
	#(139 1 #reduceActionForModuleItemList1: 10781697 false ) 
	#(138 1 #reduceActionForNamespaceName1: 10563587 false ) 
	#(138 1 #reduceActionForNamespaceName1: 10563585 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900677 false ) 
	#(168 2 #reduceActionForUpdateExpression4: 15532036 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900678 false ) 
	#(168 2 #reduceActionForUpdateExpression4: 15532037 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900679 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900680 false ) 
	#(272 2 #reduceActionForAwaitExpression1: 35321857 false ) 
	#(274 2 #reduceActionForClassExpression1: 35494913 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900674 false ) 
	#(157 2 #reduceActionForNewExpression2: 13358082 false ) 
	#(159 2 #reduceActionForSuperCall1: 13931521 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900676 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900675 false ) 
	#(263 2 #reduceActionForYieldExpression2: 33595394 false ) 
	#(153 2 #reduceActionForMemberExpression4: 12460036 false ) 
	#(158 2 #reduceActionForCallExpression1: 13448193 false ) 
	#(163 2 #reduceActionForOptionalExpression1: 14596097 false ) 
	#(158 2 #reduceActionForMemberExpression4: 13448199 false ) 
	#(158 2 #reduceActionForCallExpression1: 13448196 false ) 
	#(163 2 #reduceActionForOptionalExpression1: 14596098 false ) 
	#(163 2 #reduceActionForOptionalExpression1: 14596099 false ) 
	#(187 1 #liftFirstValue: 20311043 false ) 
	#(187 1 #liftFirstValue: 20311047 false ) 
	#(187 1 #liftFirstValue: 20311048 false ) 
	#(187 1 #liftFirstValue: 20311049 false ) 
	#(187 1 #liftFirstValue: 20311041 false ) 
	#(187 1 #liftFirstValue: 20311042 false ) 
	#(187 1 #liftFirstValue: 20311044 false ) 
	#(187 1 #liftFirstValue: 20311050 false ) 
	#(187 1 #liftFirstValue: 20311051 false ) 
	#(187 1 #liftFirstValue: 20311052 false ) 
	#(187 1 #liftFirstValue: 20311046 false ) 
	#(187 1 #liftFirstValue: 20311045 false ) 
	#(168 2 #reduceActionForUpdateExpression2: 15532034 false ) 
	#(168 2 #reduceActionForUpdateExpression2: 15532035 false ) 
	#(187 1 #liftFirstValue: 20311053 false ) 
	#(172 1 #liftFirstValue: 16726018 false ) 
	#(172 1 #liftFirstValue: 16726017 false ) 
	#(172 1 #liftFirstValue: 16726019 false ) 
	#(325 0 #reduceActionForImplementationScript1: 41028609 false ) 
	#(254 2 #reduceActionForArrowFormalParameters2: 31903746 false ) 
	#(194 2 #reduceActionForBlock1: 22560769 false ) 
	#(239 2 #reduceActionForDebuggerStatement1: 30452737 false ) 
	#(204 1 #reduceActionForArrowParameterDeclaration1: 23540737 false ) 
	#(203 1 #reduceActionForNamespaceName1: 23404545 false ) 
	#(217 2 #reduceActionForExpressionStatement1: 25415681 false ) 
	#(195 2 #reduceActionForModuleItemList2: 22658050 false ) 
	#(273 2 #reduceActionForClassExpression1: 35398657 false ) 
	#(446 1 #liftFirstValue: 62461953 false ) 
	#(435 2 #reduceActionForAmbientDeclaration1: 60390401 false ) 
	#(435 2 #reduceActionForAmbientDeclaration1: 60390402 false ) 
	#(435 2 #reduceActionForAmbientDeclaration1: 60390403 false ) 
	#(435 2 #reduceActionForAmbientDeclaration1: 60390404 false ) 
	#(435 2 #reduceActionForAmbientDeclaration1: 60390405 false ) 
	#(429 2 #reduceActionForExportImplementationElement2: 58207234 false ) 
	#(429 2 #reduceActionForExportImplementationElement2: 58207233 false ) 
	#(429 2 #reduceActionForExportImplementationElement2: 58207235 false ) 
	#(429 2 #reduceActionForExportImplementationElement2: 58207236 false ) 
	#(429 2 #reduceActionForExportImplementationElement2: 58207237 false ) 
	#(429 2 #reduceActionForExportImplementationElement2: 58207243 false ) 
	#(429 2 #reduceActionForExportImplementationElement2: 58207239 false ) 
	#(430 2 #reduceActionForExportDeclarationElement2: 58949634 false ) 
	#(429 2 #reduceActionForExportImplementationElement2: 58207238 false ) 
	#(430 2 #reduceActionForExportDeclarationElement2: 58949633 false ) 
	#(429 2 #reduceActionForExportImplementationElement2: 58207240 false ) 
	#(429 2 #reduceActionForExportImplementationElement2: 58207241 false ) 
	#(430 2 #reduceActionForExportDeclarationElement2: 58949636 false ) 
	#(429 2 #reduceActionForExportImplementationElement2: 58207242 false ) 
	#(430 2 #reduceActionForExportDeclarationElement2: 58949635 false ) 
	#(404 1 #reduceActionForNamespaceName1: 54435841 false ) 
	#(415 2 #reduceActionForModuleItemList2: 56246274 false ) 
	#(419 2 #reduceActionForModuleItemList2: 56782850 false ) 
	#(423 2 #reduceActionForModuleItemList2: 57186306 false ) 
	#(426 2 #reduceActionForModuleItemList2: 57621506 false ) 
	#(352 2 #reduceActionForObjectType1: 43311105 false ) 
	#(367 1 #reduceActionForPropertySignature1: 44952577 false ) 
	#(353 1 #reduceActionForModuleBody1: 43393025 false ) 
	#(354 1 #reduceActionForNamespaceName1: 43489281 false ) 
	#(355 1 #liftFirstValue: 43643905 false ) 
	#(355 1 #liftFirstValue: 43643906 false ) 
	#(355 1 #liftFirstValue: 43643907 false ) 
	#(355 1 #liftFirstValue: 43643908 false ) 
	#(355 1 #liftFirstValue: 43643909 false ) 
	#(359 1 #liftFirstValue: 44082177 false ) 
	#(358 1 #reduceActionForNamespaceName1: 43973633 false ) 
	#(336 1 #reduceActionForTypeParameter1: 41940993 false ) 
	#(335 1 #reduceActionForNamespaceName1: 41828353 false ) 
	#(344 2 #reduceActionForPrefixType3: 42470403 false ) 
	#(344 2 #reduceActionForPrefixType2: 42470402 false ) 
	#(365 1 #reduceActionForTypeQueryExpression1: 44790785 false ) 
	#(364 2 #reduceActionForTypeQuery1: 44717057 false ) 
	#(349 2 #reduceActionForTypeReference1: 43005953 false ) 
	#(298 2 #reduceActionForNamedExports1: 38215681 false ) 
	#(300 1 #reduceActionForExportSpecifier1: 38536193 false ) 
	#(299 1 #reduceActionForNamespaceName1: 38431745 false ) 
	#(296 3 #reduceActionForExportDeclaration2: 37424130 false ) 
	#(190 2 #liftSecondValue: 22267909 false ) 
	#(190 2 #liftSecondValue: 22267908 false ) 
	#(190 2 #liftSecondValue: 22267910 false ) 
	#(290 2 #reduceActionForNamedImports1: 36834305 false ) 
	#(292 1 #reduceActionForNamespaceName1: 37116929 false ) 
	#(293 1 #reduceActionForImportSpecifier1: 37221377 false ) 
	#(286 3 #reduceActionForImportDeclaration2: 36284418 false ) 
	#(206 2 #reduceActionForObjectBindingPattern1: 23764993 false ) 
	#(209 1 #reduceActionForNamespaceName1: 24590337 false ) 
	#(212 1 #liftFirstValue: 24879105 false ) 
	#(207 2 #reduceActionForArrayBindingPattern1: 24153089 false ) 
	#(210 1 #reduceActionForBindingElementList1: 24709121 false ) 
	#(211 1 #reduceActionForBindingElisionElement1: 24817665 false ) 
	#(201 2 #reduceActionForLexicalBinding2: 23154690 false ) 
	#(198 3 #reduceActionForLexicalDeclaration1: 22935553 false ) 
	#(201 2 #reduceActionForLexicalBinding3: 23154691 false ) 
	#(215 2 #reduceActionForBindingRestElement1: 25183233 false ) 
	#(215 2 #reduceActionForBindingRestElement1: 25183234 false ) 
	#(214 2 #reduceActionForLexicalBinding2: 25097218 false ) 
	#(135 3 #reduceActionForParenthesizedExpression1: 9384961 false ) 
	#(213 2 #reduceActionForLexicalBinding2: 24992771 false ) 
	#(254 3 #reduceActionForArrowFormalParameters1: 31903745 false ) 
	#(243 2 #reduceActionForFormalParameters4: 31006724 false ) 
	#(371 1 #liftFirstValue: 47140866 false ) 
	#(371 1 #liftFirstValue: 47140867 false ) 
	#(371 1 #liftFirstValue: 47140865 false ) 
	#(370 1 #reduceActionForIdentifier1: 45797378 false ) 
	#(370 1 #liftFirstValue: 45797377 false ) 
	#(370 1 #liftFirstValue: 45797379 false ) 
	#(143 2 #reduceActionForPropertyDefinition5: 11327493 false ) 
	#(147 2 #reduceActionForCoverInitializedName1: 11886593 false ) 
	#(141 3 #reduceActionForObjectLiteral2: 10935298 false ) 
	#(140 2 #reduceActionForSpreadElement1: 10836993 false ) 
	#(137 3 #reduceActionForArrayLiteral3: 10302467 false ) 
	#(137 3 #reduceActionForArrayLiteral2: 10302466 false ) 
	#(139 2 #reduceActionForModuleItemList2: 10781698 false ) 
	#(138 2 #reduceActionForElementList4: 10563588 false ) 
	#(138 2 #reduceActionForElementList4: 10563586 false ) 
	#(275 2 #reduceActionForClassTail1: 35574785 false ) 
	#(279 1 #reduceActionForEmptyStatement1: 35867651 false ) 
	#(279 1 #liftFirstValue: 35867649 false ) 
	#(277 1 #reduceActionForModuleBody1: 35747841 false ) 
	#(278 1 #reduceActionForModuleItemList1: 35779585 false ) 
	#(276 2 #reduceActionForClassHeritage1: 35666945 false ) 
	#(274 3 #reduceActionForClassExpression2: 35494914 false ) 
	#(276 2 #reduceActionForClassHeritage2: 35666946 false ) 
	#(156 3 #reduceActionForNewTarget1: 13254657 false ) 
	#(153 3 #reduceActionForMemberExpression7: 12460039 false ) 
	#(161 2 #reduceActionForArguments1: 14142465 false ) 
	#(162 1 #reduceActionForArgumentList1: 14327809 false ) 
	#(154 3 #reduceActionForSuperProperty2: 12961794 false ) 
	#(263 3 #reduceActionForYieldExpression3: 33595395 false ) 
	#(153 3 #reduceActionForMemberExpression3: 12460035 false ) 
	#(166 1 #reduceActionForOptionalFirst3: 15184899 false ) 
	#(166 1 #reduceActionForOptionalFirst4: 15184900 false ) 
	#(166 1 #reduceActionForOptionalFirst1: 15184897 false ) 
	#(164 2 #reduceActionForOptionalChain1: 14774273 false ) 
	#(165 1 #reduceActionForOptionalFirst4: 14897156 false ) 
	#(165 1 #reduceActionForOptionalFirst1: 14897153 false ) 
	#(164 2 #reduceActionForOptionalChain2: 14774274 false ) 
	#(158 3 #reduceActionForMemberExpression3: 13448198 false ) 
	#(186 3 #reduceActionForAssignmentExpression5: 20106245 false ) 
	#(170 3 #reduceActionForExponentiationExpression2: 16353282 false ) 
	#(171 3 #reduceActionForExponentiationExpression2: 16523266 false ) 
	#(173 3 #reduceActionForExponentiationExpression2: 16783362 false ) 
	#(173 3 #reduceActionForExponentiationExpression2: 16783363 false ) 
	#(174 3 #reduceActionForExponentiationExpression2: 17081346 false ) 
	#(174 3 #reduceActionForExponentiationExpression2: 17081347 false ) 
	#(174 3 #reduceActionForExponentiationExpression2: 17081348 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 17466370 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 17466371 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 17466372 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 17466373 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 17466375 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 17466374 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 18204674 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 18204676 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 18204675 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 18204677 false ) 
	#(177 3 #reduceActionForExponentiationExpression2: 18735106 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 18898946 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 19066882 false ) 
	#(180 3 #reduceActionForExponentiationExpression2: 19233794 false ) 
	#(181 3 #reduceActionForExponentiationExpression2: 19403778 false ) 
	#(182 3 #reduceActionForExponentiationExpression2: 19573761 false ) 
	#(188 3 #reduceActionForExpression2: 21833730 false ) 
	#(248 0 #reduceActionForImplementationScript1: 31453185 false ) 
	#(253 1 #liftFirstValue: 31862785 false ) 
	#(249 3 #reduceActionForArrowFunction1: 31495169 false ) 
	#(252 1 #reduceActionForConciseBody1: 31748097 false ) 
	#(333 0 #reduceActionForSwitchToDefault1: 41594881 true ) 
	#(324 1 #reduceActionForModuleBody1: 41014273 false ) 
	#(311 1 #reduceActionForJSXElementName1: 39870465 false ) 
	#(311 1 #liftFirstValue: 39870466 false ) 
	#(311 1 #liftFirstValue: 39870467 false ) 
	#(315 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 40197121 false ) 
	#(194 3 #reduceActionForBlock2: 22560770 false ) 
	#(223 3 #reduceActionForBreakStatement1: 28746753 false ) 
	#(222 3 #reduceActionForContinueStatement1: 28632065 false ) 
	#(225 3 #reduceActionForReturnStatement1: 28889089 false ) 
	#(234 3 #reduceActionForThrowStatement1: 29905921 false ) 
	#(235 3 #reduceActionForTryStatement1: 30002177 false ) 
	#(235 3 #reduceActionForTryStatement2: 30002178 false ) 
	#(204 2 #reduceActionForLexicalBinding2: 23540738 false ) 
	#(202 3 #reduceActionForVariableStatement1: 23309313 false ) 
	#(204 2 #reduceActionForLexicalBinding3: 23540739 false ) 
	#(204 2 #liftSecondValue: 23540740 false ) 
	#(204 2 #liftSecondValue: 23540741 false ) 
	#(233 1 #liftFirstValue: 29811713 false ) 
	#(232 3 #reduceActionForLabelledStatement1: 29712385 false ) 
	#(273 3 #reduceActionForClassExpression2: 35398658 false ) 
	#(438 1 #reduceActionForArrowParameterDeclaration1: 61188097 false ) 
	#(437 1 #reduceActionForNamespaceName1: 61075457 false ) 
	#(431 3 #reduceActionForExportDefaultImplementationElement1: 59243521 false ) 
	#(431 3 #reduceActionForExportDefaultImplementationElement1: 59243522 false ) 
	#(431 3 #reduceActionForExportDefaultImplementationElement1: 59243523 false ) 
	#(432 3 #reduceActionForExportDefaultDeclarationElement1: 59669505 false ) 
	#(432 3 #reduceActionForExportDefaultDeclarationElement1: 59669506 false ) 
	#(433 3 #reduceActionForExportListDeclaration3: 60004355 false ) 
	#(385 3 #reduceActionForInterfaceDeclaration1: 51566593 false ) 
	#(405 0 #reduceActionForImplementationScript1: 54541313 false ) 
	#(273 3 #reduceActionForClassDeclaration3: 35398659 false ) 
	#(347 3 #reduceActionForParenthesizedExpression1: 42865665 false ) 
	#(367 2 #reduceActionForPropertySignature3: 44952579 false ) 
	#(367 2 #reduceActionForPropertySignature2: 44952578 false ) 
	#(375 2 #reduceActionForMethodSignature1: 48375809 false ) 
	#(352 3 #reduceActionForObjectType2: 43311106 false ) 
	#(353 2 #reduceActionForOptionalChain2: 43393026 false ) 
	#(353 2 #reduceActionForOptionalChain2: 43393028 false ) 
	#(357 3 #reduceActionForTupleType1: 43858945 false ) 
	#(336 2 #reduceActionForTypeParameter2: 41940994 false ) 
	#(334 3 #reduceActionForTypeParameters1: 41749505 false ) 
	#(360 3 #reduceActionForUnionType1: 44108801 false ) 
	#(361 3 #reduceActionForIntersectionType1: 44229633 false ) 
	#(349 3 #reduceActionForTypeReference2: 43005954 false ) 
	#(350 3 #reduceActionForTypeName2: 43100162 false ) 
	#(351 3 #reduceActionForNamespaceName2: 43206658 false ) 
	#(298 3 #reduceActionForNamedExports2: 38215682 false ) 
	#(297 3 #reduceActionForExportFromClause2: 38108162 false ) 
	#(296 4 #reduceActionForExportDeclaration5: 37424133 false ) 
	#(291 2 #reduceActionForFromClause1: 37065729 false ) 
	#(296 4 #reduceActionForExportDeclaration1: 37424129 false ) 
	#(290 3 #reduceActionForNamedImports2: 36834306 false ) 
	#(289 3 #reduceActionForNameSpaceImport1: 36753409 false ) 
	#(286 4 #reduceActionForImportDeclaration1: 36284417 false ) 
	#(287 3 #reduceActionForImportClause4: 36456452 false ) 
	#(287 3 #reduceActionForImportClause4: 36456453 false ) 
	#(208 2 #reduceActionForBindingRestProperty1: 24518657 false ) 
	#(206 3 #reduceActionForObjectBindingPattern2: 23764994 false ) 
	#(206 3 #reduceActionForObjectBindingPattern3: 23764995 false ) 
	#(207 3 #reduceActionForArrayBindingPattern3: 24153091 false ) 
	#(211 2 #reduceActionForBindingElisionElement2: 24817666 false ) 
	#(207 3 #reduceActionForArrayBindingPattern5: 24153093 false ) 
	#(207 3 #reduceActionForArrayBindingPattern2: 24153090 false ) 
	#(148 2 #reduceActionForFromClause1: 11969537 false ) 
	#(200 3 #reduceActionForNamespaceName2: 23056386 false ) 
	#(383 3 #reduceActionForSimpleLexicalBinding1: 51030017 false ) 
	#(384 3 #reduceActionForSimpleLexicalBinding1: 51139585 false ) 
	#(215 3 #reduceActionForBindingRestElement3: 25183235 false ) 
	#(243 3 #reduceActionForFormalParameters5: 31006725 false ) 
	#(244 3 #reduceActionForNamespaceName2: 31208450 false ) 
	#(214 3 #reduceActionForSingleNameBinding9: 25097225 false ) 
	#(214 3 #reduceActionForSimpleLexicalBinding1: 25097219 false ) 
	#(213 3 #reduceActionForSingleNameBinding9: 24992778 false ) 
	#(213 3 #reduceActionForSimpleLexicalBinding1: 24992772 false ) 
	#(214 3 #reduceActionForSingleNameBinding7: 25097223 false ) 
	#(213 3 #reduceActionForSingleNameBinding7: 24992776 false ) 
	#(146 3 #reduceActionForComputedPropertyName1: 11765761 false ) 
	#(141 4 #reduceActionForObjectLiteral3: 10935299 false ) 
	#(142 3 #reduceActionForNamespaceName2: 11192322 false ) 
	#(143 3 #reduceActionForPropertyDefinition3: 11327491 false ) 
	#(137 4 #reduceActionForArrayLiteral4: 10302468 false ) 
	#(138 3 #reduceActionForElementList6: 10563590 false ) 
	#(138 3 #reduceActionForElementList6: 10563589 false ) 
	#(256 1 #reduceActionForConciseBody1: 32098305 false ) 
	#(255 4 #reduceActionForAsyncArrowFunction1: 31995905 false ) 
	#(279 2 #reduceActionForClassElement2: 35867650 false ) 
	#(275 3 #reduceActionForClassTail2: 35574786 false ) 
	#(278 2 #reduceActionForModuleItemList2: 35779586 false ) 
	#(396 1 #reduceActionForMemberAccessorDeclaration1: 53561345 false ) 
	#(396 1 #reduceActionForMemberAccessorDeclaration1: 53561349 false ) 
	#(279 2 #liftSecondValue: 35867652 false ) 
	#(279 2 #liftSecondValue: 35867653 false ) 
	#(393 1 #liftFirstValue: 52931585 false ) 
	#(393 1 #liftFirstValue: 52931586 false ) 
	#(393 1 #liftFirstValue: 52931587 false ) 
	#(279 2 #liftSecondValue: 35867654 false ) 
	#(275 3 #reduceActionForClassTail3: 35574787 false ) 
	#(390 1 #liftFirstValue: 52222977 false ) 
	#(389 2 #reduceActionForFromClause1: 52163585 false ) 
	#(388 1 #liftFirstValue: 51938305 false ) 
	#(391 2 #reduceActionForImplementsClause1: 52264961 false ) 
	#(387 1 #reduceActionForNamespaceName1: 51807233 false ) 
	#(276 3 #reduceActionForClassHeritage3: 35666947 false ) 
	#(160 4 #reduceActionForImportCall1: 14002177 false ) 
	#(162 2 #reduceActionForArgumentList2: 14327810 false ) 
	#(161 3 #reduceActionForArguments2: 14142466 false ) 
	#(154 4 #reduceActionForSuperProperty1: 12961793 false ) 
	#(339 1 #reduceActionForNamespaceName1: 42126337 false ) 
	#(340 1 #liftFirstValue: 42232833 false ) 
	#(151 1 #reduceActionForNamespaceName1: 12227585 false ) 
	#(149 4 #reduceActionForTemplateLiteral2: 12034050 false ) 
	#(153 4 #reduceActionForMemberExpression2: 12460034 false ) 
	#(165 2 #reduceActionForOptionalRest3: 14897155 false ) 
	#(158 4 #reduceActionForCallExpression5: 13448197 false ) 
	#(169 4 #reduceActionForUnaryExpression11: 15900683 false ) 
	#(248 1 #reduceActionForModuleBody1: 31453186 false ) 
	#(247 1 #reduceActionForModuleBody1: 31412225 false ) 
	#(306 4 #reduceActionForJSXElement2: 39044098 false ) 
	#(326 1 #reduceActionForJSXChild1: 41049089 false ) 
	#(326 1 #liftFirstValue: 41049090 false ) 
	#(325 2 #reduceActionForModuleItemList2: 41028610 false ) 
	#(314 2 #reduceActionForFromClause1: 40197121 false ) 
	#(331 0 #reduceActionForSwitchToJSXTextOrDefault11: 41461761 true ) 
	#(321 1 #reduceActionForJSXElementName1: 40621057 false ) 
	#(321 1 #liftFirstValue: 40621058 false ) 
	#(318 1 #reduceActionForModuleItemList1: 40324097 false ) 
	#(316 1 #reduceActionForModuleBody1: 40307713 false ) 
	#(317 1 #liftFirstValue: 40324097 false ) 
	#(317 1 #liftFirstValue: 40324098 false ) 
	#(320 1 #reduceActionForJSXAttribute1: 40538113 false ) 
	#(313 2 #reduceActionForJSXMemberExpression1: 40174593 false ) 
	#(315 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 40197122 false ) 
	#(223 4 #reduceActionForBreakStatement2: 28746754 false ) 
	#(222 4 #reduceActionForContinueStatement2: 28632066 false ) 
	#(221 1 #liftFirstValue: 28584961 false ) 
	#(221 1 #liftFirstValue: 28584962 false ) 
	#(220 2 #reduceActionForFromClause1: 28520449 false ) 
	#(225 4 #reduceActionForReturnStatement2: 28889090 false ) 
	#(236 2 #reduceActionForCatch2: 30173186 false ) 
	#(237 2 #reduceActionForFromClause1: 30341121 false ) 
	#(235 4 #reduceActionForTryStatement3: 30002179 false ) 
	#(203 3 #reduceActionForNamespaceName2: 23404546 false ) 
	#(381 2 #reduceActionForSimpleVariableDeclaration1: 50729985 false ) 
	#(438 2 #reduceActionForAmbientBinding2: 61188098 false ) 
	#(436 3 #reduceActionForLexicalDeclaration1: 60779523 false ) 
	#(436 3 #reduceActionForLexicalDeclaration1: 60779522 false ) 
	#(448 0 #reduceActionForImplementationScript1: 62682113 false ) 
	#(436 3 #reduceActionForLexicalDeclaration1: 60779521 false ) 
	#(398 4 #reduceActionForEnumDeclaration1: 53861377 false ) 
	#(401 1 #reduceActionForEnumMember1: 54147073 false ) 
	#(399 1 #reduceActionForModuleBody1: 54008833 false ) 
	#(400 1 #reduceActionForNamespaceName1: 54054913 false ) 
	#(434 4 #reduceActionForExportAssignment1: 60258305 false ) 
	#(433 4 #reduceActionForExportListDeclaration1: 60004353 false ) 
	#(432 4 #reduceActionForExportDefaultDeclarationElement3: 59669507 false ) 
	#(431 4 #reduceActionForExportDefaultImplementationElement4: 59243524 false ) 
	#(433 4 #reduceActionForExportListDeclaration2: 60004354 false ) 
	#(410 1 #liftFirstValue: 55837697 false ) 
	#(386 2 #reduceActionForFromClause1: 51722241 false ) 
	#(385 4 #reduceActionForInterfaceDeclaration3: 51566595 false ) 
	#(385 4 #reduceActionForInterfaceDeclaration2: 51566594 false ) 
	#(407 1 #liftFirstValue: 54677505 false ) 
	#(407 1 #liftFirstValue: 54677506 false ) 
	#(407 1 #liftFirstValue: 54677507 false ) 
	#(407 1 #liftFirstValue: 54677508 false ) 
	#(407 1 #liftFirstValue: 54677509 false ) 
	#(407 1 #liftFirstValue: 54677511 false ) 
	#(407 1 #liftFirstValue: 54677510 false ) 
	#(407 1 #liftFirstValue: 54677512 false ) 
	#(407 1 #liftFirstValue: 54677513 false ) 
	#(405 1 #reduceActionForModuleBody1: 54541314 false ) 
	#(406 1 #reduceActionForModuleItemList1: 54579201 false ) 
	#(407 1 #liftFirstValue: 54677516 false ) 
	#(407 1 #liftFirstValue: 54677515 false ) 
	#(407 1 #liftFirstValue: 54677514 false ) 
	#(404 3 #reduceActionForNamespaceName2: 54435842 false ) 
	#(240 4 #reduceActionForFunctionDeclaration5: 30538757 false ) 
	#(273 4 #reduceActionForClassDeclaration4: 35398660 false ) 
	#(369 3 #reduceActionForCallSignature1: 45174785 false ) 
	#(367 3 #reduceActionForPropertySignature4: 44952580 false ) 
	#(375 3 #reduceActionForMethodSignature2: 48375810 false ) 
	#(368 2 #reduceActionForFromClause1: 45121537 false ) 
	#(354 3 #reduceActionForNamespaceName2: 43489282 false ) 
	#(354 3 #reduceActionForNamespaceName2: 43489283 false ) 
	#(357 4 #reduceActionForTupleType2: 43858946 false ) 
	#(358 3 #reduceActionForNamespaceName2: 43973634 false ) 
	#(337 2 #reduceActionForFromClause1: 41995265 false ) 
	#(335 3 #reduceActionForNamespaceName2: 41828354 false ) 
	#(365 3 #reduceActionForTypeQueryExpression2: 44790786 false ) 
	#(356 4 #reduceActionForArrayType1: 43751425 false ) 
	#(300 3 #reduceActionForExportSpecifier2: 38536194 false ) 
	#(298 4 #reduceActionForNamedExports3: 38215683 false ) 
	#(299 3 #reduceActionForNamespaceName2: 38431746 false ) 
	#(293 3 #reduceActionForImportSpecifier2: 37221378 false ) 
	#(290 4 #reduceActionForNamedImports3: 36834307 false ) 
	#(292 3 #reduceActionForNamespaceName2: 37116930 false ) 
	#(212 3 #reduceActionForBindingProperty2: 24879106 false ) 
	#(206 4 #reduceActionForObjectBindingPattern4: 23764996 false ) 
	#(209 3 #reduceActionForNamespaceName2: 24590338 false ) 
	#(207 4 #reduceActionForArrayBindingPattern4: 24153092 false ) 
	#(207 4 #reduceActionForArrayBindingPattern6: 24153094 false ) 
	#(210 3 #reduceActionForBindingElementList2: 24709122 false ) 
	#(383 4 #reduceActionForSimpleLexicalBinding2: 51030018 false ) 
	#(384 4 #reduceActionForSimpleLexicalBinding2: 51139586 false ) 
	#(214 4 #reduceActionForSimpleLexicalBinding2: 25097220 false ) 
	#(213 4 #reduceActionForBindingElement11: 24992779 false ) 
	#(213 4 #reduceActionForSimpleLexicalBinding2: 24992773 false ) 
	#(214 4 #reduceActionForSingleNameBinding10: 25097226 false ) 
	#(214 4 #reduceActionForSingleNameBinding8: 25097224 false ) 
	#(214 4 #reduceActionForSingleNameBinding5: 25097221 false ) 
	#(213 4 #reduceActionForSingleNameBinding10: 24992780 false ) 
	#(213 4 #reduceActionForSingleNameBinding8: 24992777 false ) 
	#(213 4 #reduceActionForSingleNameBinding5: 24992774 false ) 
	#(258 1 #liftFirstValue: 32817153 false ) 
	#(271 1 #reduceActionForModuleBody1: 35286017 false ) 
	#(396 2 #reduceActionForMemberAccessorDeclaration2: 53561346 false ) 
	#(396 2 #reduceActionForMemberAccessorDeclaration2: 53561350 false ) 
	#(394 2 #reduceActionForMemberVariableDeclaration1: 53046273 false ) 
	#(396 2 #reduceActionForMemberAccessorDeclaration3: 53561347 false ) 
	#(396 2 #reduceActionForMemberAccessorDeclaration3: 53561351 false ) 
	#(397 2 #reduceActionForIndexMemberDeclaration1: 53770241 false ) 
	#(275 4 #reduceActionForClassTail4: 35574788 false ) 
	#(161 4 #reduceActionForArguments3: 14142467 false ) 
	#(162 3 #reduceActionForArgumentList3: 14327811 false ) 
	#(338 3 #reduceActionForTypeArguments1: 42048513 false ) 
	#(161 4 #reduceActionForArguments4: 14142468 false ) 
	#(152 2 #reduceActionForTemplateMiddleList1: 12314625 false ) 
	#(151 2 #reduceActionForTemplateSpans2: 12227586 false ) 
	#(166 3 #reduceActionForOptionalFirst2: 15184898 false ) 
	#(165 3 #reduceActionForOptionalFirst2: 14897154 false ) 
	#(185 5 #reduceActionForConditionalExpression2: 19878914 false ) 
	#(252 3 #reduceActionForConciseBody2: 31748098 false ) 
	#(312 3 #reduceActionForJSXNamespacedName1: 40050689 false ) 
	#(318 2 #reduceActionForModuleItemList2: 40324098 false ) 
	#(320 2 #reduceActionForJSXAttribute2: 40538114 false ) 
	#(308 5 #reduceActionForJSXOpeningElement1: 39377921 false ) 
	#(377 4 #reduceActionForTypeCallSignature1: 48819201 false ) 
	#(169 5 #reduceActionForUnaryExpression10: 15900682 false ) 
	#(377 4 #reduceActionForTypeCallSignature3: 48819203 false ) 
	#(218 5 #reduceActionForIfStatement2: 25495554 false ) 
	#(227 5 #reduceActionForSwitchStatement1: 29134849 false ) 
	#(238 1 #liftFirstValue: 30401537 false ) 
	#(238 1 #liftFirstValue: 30401538 false ) 
	#(381 3 #reduceActionForSimpleVariableDeclaration2: 50729986 false ) 
	#(382 3 #reduceActionForDestructuringVariableDeclaration1: 50835457 false ) 
	#(219 5 #reduceActionForIterationStatement2: 25786370 false ) 
	#(226 5 #reduceActionForWithStatement1: 29002753 false ) 
	#(398 5 #reduceActionForEnumDeclaration3: 53861379 false ) 
	#(441 0 #reduceActionForImplementationScript1: 61624321 false ) 
	#(437 3 #reduceActionForNamespaceName2: 61075458 false ) 
	#(439 4 #reduceActionForAmbientFunctionDeclaration1: 61271041 false ) 
	#(450 1 #reduceActionForAmbientNamespaceElement3: 62861315 false ) 
	#(450 1 #reduceActionForAmbientNamespaceElement3: 62861321 false ) 
	#(450 1 #reduceActionForAmbientNamespaceElement3: 62861327 false ) 
	#(450 1 #reduceActionForAmbientNamespaceElement3: 62861313 false ) 
	#(450 1 #reduceActionForAmbientNamespaceElement3: 62861317 false ) 
	#(450 1 #reduceActionForAmbientNamespaceElement3: 62861319 false ) 
	#(450 1 #reduceActionForAmbientNamespaceElement3: 62861323 false ) 
	#(450 1 #reduceActionForAmbientNamespaceElement3: 62861325 false ) 
	#(448 1 #reduceActionForModuleBody1: 62682114 false ) 
	#(449 1 #reduceActionForModuleItemList1: 62734337 false ) 
	#(398 5 #reduceActionForEnumDeclaration2: 53861378 false ) 
	#(399 2 #reduceActionForOptionalChain2: 54008834 false ) 
	#(409 5 #reduceActionForImportAliasDeclaration1: 55700481 false ) 
	#(385 5 #reduceActionForInterfaceDeclaration4: 51566596 false ) 
	#(408 2 #reduceActionForExportNamespaceElement2: 54958082 false ) 
	#(408 2 #reduceActionForExportNamespaceElement2: 54958081 false ) 
	#(408 2 #reduceActionForExportNamespaceElement2: 54958083 false ) 
	#(408 2 #reduceActionForExportNamespaceElement2: 54958084 false ) 
	#(408 2 #reduceActionForExportNamespaceElement2: 54958085 false ) 
	#(408 2 #reduceActionForExportNamespaceElement2: 54958087 false ) 
	#(408 2 #reduceActionForExportNamespaceElement2: 54958086 false ) 
	#(408 2 #reduceActionForExportNamespaceElement2: 54958088 false ) 
	#(408 2 #reduceActionForExportNamespaceElement2: 54958089 false ) 
	#(408 2 #reduceActionForExportNamespaceElement2: 54958091 false ) 
	#(408 2 #reduceActionForExportNamespaceElement2: 54958090 false ) 
	#(403 5 #reduceActionForNamespaceDeclaration1: 54294529 false ) 
	#(406 2 #reduceActionForModuleItemList2: 54579202 false ) 
	#(376 5 #reduceActionForTypeAliasDeclaration1: 48481281 false ) 
	#(240 5 #reduceActionForFunctionDeclaration6: 30538758 false ) 
	#(362 5 #reduceActionForFunctionType1: 44336129 false ) 
	#(369 4 #reduceActionForCallSignature2: 45174786 false ) 
	#(373 4 #reduceActionForConstructSignature1: 47882241 false ) 
	#(369 4 #reduceActionForCallSignature3: 45174787 false ) 
	#(206 5 #reduceActionForObjectBindingPattern5: 23764997 false ) 
	#(207 5 #reduceActionForArrayBindingPattern8: 24153096 false ) 
	#(207 5 #reduceActionForArrayBindingPattern7: 24153095 false ) 
	#(214 5 #reduceActionForSingleNameBinding6: 25097222 false ) 
	#(213 5 #reduceActionForBindingElement13: 24992781 false ) 
	#(213 5 #reduceActionForSingleNameBinding6: 24992775 false ) 
	#(372 1 #liftFirstValue: 47203329 false ) 
	#(372 1 #liftFirstValue: 47203330 false ) 
	#(256 3 #reduceActionForConciseBody2: 32098306 false ) 
	#(394 3 #reduceActionForMemberVariableDeclaration5: 53046277 false ) 
	#(394 3 #reduceActionForMemberVariableDeclaration2: 53046274 false ) 
	#(394 3 #reduceActionForMemberVariableDeclaration3: 53046275 false ) 
	#(395 3 #reduceActionForMemberFunctionDeclaration5: 53216261 false ) 
	#(396 3 #reduceActionForMemberAccessorDeclaration4: 53561348 false ) 
	#(396 3 #reduceActionForMemberAccessorDeclaration4: 53561352 false ) 
	#(394 3 #reduceActionForMemberVariableDeclaration9: 53046281 false ) 
	#(387 3 #reduceActionForNamespaceName2: 51807234 false ) 
	#(162 4 #reduceActionForArgumentList4: 14327812 false ) 
	#(339 3 #reduceActionForNamespaceName2: 42126338 false ) 
	#(161 5 #reduceActionForArguments5: 14142469 false ) 
	#(152 3 #reduceActionForTemplateMiddleList2: 12314626 false ) 
	#(327 1 #liftFirstValue: 41281538 false ) 
	#(327 1 #liftFirstValue: 41281537 false ) 
	#(307 6 #reduceActionForJSXSelfClosingElement1: 39194625 false ) 
	#(308 6 #reduceActionForJSXOpeningElement2: 39377922 false ) 
	#(323 1 #reduceActionForLiteral4: 40785921 false ) 
	#(323 1 #liftFirstValue: 40785923 false ) 
	#(323 1 #liftFirstValue: 40785924 false ) 
	#(322 2 #reduceActionForFromClause1: 40712193 false ) 
	#(241 6 #reduceActionForFunctionExpression3: 30750723 false ) 
	#(377 5 #reduceActionForTypeCallSignature2: 48819202 false ) 
	#(219 6 #reduceActionForIterationStatement3: 25786371 false ) 
	#(219 6 #reduceActionForIterationStatement15: 25786383 false ) 
	#(228 2 #reduceActionForCaseBlock1: 29260801 false ) 
	#(229 1 #reduceActionForModuleItemList1: 29445121 false ) 
	#(398 6 #reduceActionForEnumDeclaration4: 53861380 false ) 
	#(443 1 #liftFirstValue: 61799427 false ) 
	#(441 1 #reduceActionForModuleBody1: 61624322 false ) 
	#(442 1 #reduceActionForModuleItemList1: 61672449 false ) 
	#(443 1 #liftFirstValue: 61799425 false ) 
	#(443 1 #liftFirstValue: 61799426 false ) 
	#(451 6 #reduceActionForAmbientModuleDeclaration1: 63633409 false ) 
	#(450 2 #reduceActionForExportNamespaceElement2: 62861316 false ) 
	#(450 2 #reduceActionForExportNamespaceElement2: 62861322 false ) 
	#(450 2 #reduceActionForExportNamespaceElement2: 62861328 false ) 
	#(450 2 #reduceActionForExportNamespaceElement2: 62861314 false ) 
	#(450 2 #reduceActionForExportNamespaceElement2: 62861318 false ) 
	#(450 2 #reduceActionForExportNamespaceElement2: 62861320 false ) 
	#(450 2 #reduceActionForExportNamespaceElement2: 62861324 false ) 
	#(450 2 #reduceActionForExportNamespaceElement2: 62861326 false ) 
	#(447 5 #reduceActionForNamespaceDeclaration1: 62505985 false ) 
	#(449 2 #reduceActionForModuleItemList2: 62734338 false ) 
	#(402 1 #liftFirstValue: 54252545 false ) 
	#(401 3 #reduceActionForEnumMember2: 54147074 false ) 
	#(400 3 #reduceActionForNamespaceName2: 54054914 false ) 
	#(376 6 #reduceActionForTypeAliasDeclaration2: 48481282 false ) 
	#(240 6 #reduceActionForFunctionExpression3: 30538755 false ) 
	#(373 5 #reduceActionForConstructSignature2: 47882242 false ) 
	#(373 5 #reduceActionForConstructSignature3: 47882243 false ) 
	#(369 5 #reduceActionForCallSignature4: 45174788 false ) 
	#(363 6 #reduceActionForConstructorType1: 44516353 false ) 
	#(362 6 #reduceActionForFunctionType2: 44336130 false ) 
	#(207 6 #reduceActionForArrayBindingPattern9: 24153097 false ) 
	#(380 2 #reduceActionForTypedPropertySetParameterList1: 49852417 false ) 
	#(257 6 #reduceActionForMethodDefinition7: 32219143 false ) 
	#(394 4 #reduceActionForMemberVariableDeclaration6: 53046278 false ) 
	#(394 4 #reduceActionForMemberVariableDeclaration7: 53046279 false ) 
	#(395 4 #reduceActionForMemberFunctionDeclaration6: 53216262 false ) 
	#(394 4 #reduceActionForMemberVariableDeclaration4: 53046276 false ) 
	#(394 4 #reduceActionForMemberVariableDeclaration13: 53046285 false ) 
	#(394 4 #reduceActionForMemberVariableDeclaration10: 53046282 false ) 
	#(394 4 #reduceActionForMemberVariableDeclaration11: 53046283 false ) 
	#(395 4 #reduceActionForMemberFunctionDeclaration7: 53216263 false ) 
	#(241 7 #reduceActionForFunctionExpression1: 30750721 false ) 
	#(262 1 #reduceActionForModuleBody1: 33563649 false ) 
	#(332 0 #reduceActionForSwitchToJSXTextOrDefault21: 41528321 true ) 
	#(326 4 #reduceActionForJSXChild3: 41049091 false ) 
	#(307 7 #reduceActionForJSXSelfClosingElement2: 39194626 false ) 
	#(241 7 #reduceActionForFunctionExpression4: 30750724 false ) 
	#(219 7 #reduceActionForIterationStatement1: 25786369 false ) 
	#(219 7 #reduceActionForIterationStatement4: 25786372 false ) 
	#(219 7 #reduceActionForIterationStatement5: 25786373 false ) 
	#(219 7 #reduceActionForIterationStatement19: 25786387 false ) 
	#(219 7 #reduceActionForIterationStatement22: 25786390 false ) 
	#(219 7 #reduceActionForIterationStatement7: 25786375 false ) 
	#(219 7 #reduceActionForIterationStatement16: 25786384 false ) 
	#(219 7 #reduceActionForIterationStatement17: 25786385 false ) 
	#(219 7 #reduceActionForIterationStatement21: 25786389 false ) 
	#(219 7 #reduceActionForIterationStatement24: 25786392 false ) 
	#(218 7 #reduceActionForIfStatement1: 25495553 false ) 
	#(231 2 #reduceActionForDefaultClause1: 29624321 false ) 
	#(228 3 #reduceActionForCaseBlock2: 29260802 false ) 
	#(229 2 #reduceActionForModuleItemList2: 29445122 false ) 
	#(228 3 #reduceActionForCaseBlock3: 29260803 false ) 
	#(236 5 #reduceActionForCatch1: 30173185 false ) 
	#(445 2 #reduceActionForMemberVariableDeclaration1: 62118913 false ) 
	#(440 6 #reduceActionForAmbientClassDeclaration1: 61418497 false ) 
	#(442 2 #reduceActionForModuleItemList2: 61672450 false ) 
	#(240 7 #reduceActionForFunctionExpression1: 30538753 false ) 
	#(240 7 #reduceActionForFunctionExpression4: 30538756 false ) 
	#(374 6 #reduceActionForIndexSignature2: 48074754 false ) 
	#(374 6 #reduceActionForIndexSignature2: 48074753 false ) 
	#(373 6 #reduceActionForConstructSignature4: 47882244 false ) 
	#(363 7 #reduceActionForConstructorType2: 44516354 false ) 
	#(257 7 #reduceActionForMethodDefinition5: 32219141 false ) 
	#(257 7 #reduceActionForMethodDefinition1: 32219137 false ) 
	#(270 8 #reduceActionForAsyncFunctionExpression1: 35036161 false ) 
	#(267 1 #reduceActionForModuleBody1: 34530305 false ) 
	#(392 5 #reduceActionForConstructorDeclaration3: 52472835 false ) 
	#(394 5 #reduceActionForMemberVariableDeclaration8: 53046280 false ) 
	#(395 5 #reduceActionForMemberFunctionDeclaration1: 53216257 false ) 
	#(394 5 #reduceActionForMemberVariableDeclaration14: 53046286 false ) 
	#(394 5 #reduceActionForMemberVariableDeclaration15: 53046287 false ) 
	#(395 5 #reduceActionForMemberFunctionDeclaration8: 53216264 false ) 
	#(394 5 #reduceActionForMemberVariableDeclaration12: 53046284 false ) 
	#(261 8 #reduceActionForGeneratorExpression1: 33328129 false ) 
	#(241 8 #reduceActionForFunctionExpression2: 30750722 false ) 
	#(326 5 #reduceActionForJSXChild4: 41049092 false ) 
	#(319 5 #reduceActionForJSXSpreadAttribute1: 40388609 false ) 
	#(219 8 #reduceActionForIterationStatement6: 25786374 false ) 
	#(219 8 #reduceActionForIterationStatement11: 25786379 false ) 
	#(219 8 #reduceActionForIterationStatement23: 25786391 false ) 
	#(219 8 #reduceActionForIterationStatement20: 25786388 false ) 
	#(219 8 #reduceActionForIterationStatement8: 25786376 false ) 
	#(219 8 #reduceActionForIterationStatement9: 25786377 false ) 
	#(219 8 #reduceActionForIterationStatement18: 25786386 false ) 
	#(219 8 #reduceActionForIterationStatement25: 25786393 false ) 
	#(219 8 #reduceActionForIterationStatement27: 25786395 false ) 
	#(230 3 #reduceActionForCaseClause1: 29517825 false ) 
	#(231 3 #reduceActionForDefaultClause2: 29624322 false ) 
	#(228 4 #reduceActionForCaseBlock5: 29260805 false ) 
	#(228 4 #reduceActionForCaseBlock4: 29260804 false ) 
	#(445 3 #reduceActionForMemberVariableDeclaration5: 62118915 false ) 
	#(445 3 #reduceActionForMemberVariableDeclaration3: 62118914 false ) 
	#(445 3 #reduceActionForAmbientPropertyMemberDeclaration9: 62118921 false ) 
	#(445 3 #reduceActionForMemberVariableDeclaration9: 62118917 false ) 
	#(440 7 #reduceActionForAmbientClassDeclaration2: 61418498 false ) 
	#(260 8 #reduceActionForGeneratorExpression1: 33091585 false ) 
	#(240 8 #reduceActionForFunctionExpression2: 30538754 false ) 
	#(428 8 #reduceActionForImportRequireDeclaration1: 57988097 false ) 
	#(269 8 #reduceActionForAsyncFunctionExpression1: 34786305 false ) 
	#(259 8 #reduceActionForGeneratorMethod1: 32875521 false ) 
	#(268 8 #reduceActionForAsyncMethod1: 34567169 false ) 
	#(257 8 #reduceActionForMethodDefinition6: 32219142 false ) 
	#(266 9 #reduceActionForAsyncGeneratorExpression1: 34255873 false ) 
	#(270 9 #reduceActionForAsyncFunctionExpression2: 35036162 false ) 
	#(395 6 #reduceActionForMemberFunctionDeclaration2: 53216258 false ) 
	#(392 6 #reduceActionForConstructorDeclaration4: 52472836 false ) 
	#(394 6 #reduceActionForMemberVariableDeclaration16: 53046288 false ) 
	#(395 6 #reduceActionForMemberFunctionDeclaration3: 53216259 false ) 
	#(261 9 #reduceActionForGeneratorExpression2: 33328130 false ) 
	#(310 9 #reduceActionForJSXFragment1: 39682049 false ) 
	#(309 6 #reduceActionForJSXClosingElement1: 39522305 false ) 
	#(219 9 #reduceActionForIterationStatement12: 25786380 false ) 
	#(219 9 #reduceActionForIterationStatement13: 25786381 false ) 
	#(219 9 #reduceActionForIterationStatement10: 25786378 false ) 
	#(219 9 #reduceActionForIterationStatement26: 25786394 false ) 
	#(230 4 #reduceActionForCaseClause2: 29517826 false ) 
	#(228 5 #reduceActionForCaseBlock6: 29260806 false ) 
	#(445 4 #reduceActionForMemberVariableDeclaration7: 62118916 false ) 
	#(445 4 #reduceActionForAmbientPropertyMemberDeclaration10: 62118922 false ) 
	#(445 4 #reduceActionForMemberVariableDeclaration13: 62118919 false ) 
	#(445 4 #reduceActionForMemberVariableDeclaration11: 62118918 false ) 
	#(445 4 #reduceActionForAmbientPropertyMemberDeclaration11: 62118923 false ) 
	#(260 9 #reduceActionForGeneratorExpression2: 33091586 false ) 
	#(265 9 #reduceActionForAsyncGeneratorExpression1: 33980417 false ) 
	#(269 9 #reduceActionForAsyncFunctionExpression2: 34786306 false ) 
	#(264 9 #reduceActionForAsyncGeneratorMethod1: 33727489 false ) 
	#(378 9 #reduceActionForGetAccessor1: 49181697 false ) 
	#(379 9 #reduceActionForSetAccessor2: 49387522 false ) 
	#(266 10 #reduceActionForAsyncGeneratorExpression2: 34255874 false ) 
	#(392 7 #reduceActionForConstructorDeclaration1: 52472833 false ) 
	#(395 7 #reduceActionForMemberFunctionDeclaration4: 53216260 false ) 
	#(323 5 #reduceActionForJSXChild4: 40785922 false ) 
	#(219 10 #reduceActionForIterationStatement14: 25786382 false ) 
	#(444 5 #reduceActionForAmbientConstructorDeclaration1: 61912065 false ) 
	#(445 5 #reduceActionForMemberVariableDeclaration15: 62118920 false ) 
	#(445 5 #reduceActionForAmbientPropertyMemberDeclaration12: 62118924 false ) 
	#(265 10 #reduceActionForAsyncGeneratorExpression2: 33980418 false ) 
	#(379 10 #reduceActionForSetAccessor1: 49387521 false ) 
	#(379 10 #reduceActionForSetAccessor1: 49387523 false ) 
	#(392 8 #reduceActionForConstructorDeclaration2: 52472834 false )
	).
]

{ #category : #'generated-accessing' }
JSParser class >> scannerClass [
	^JSScanner
]

{ #category : #generated }
JSParser class >> startingStateForExpression [
	^ 2
]

{ #category : #generated }
JSParser class >> startingStateForModule [
	^ 5
]

{ #category : #generated }
JSParser class >> startingStateForScript [
	^ 4
]

{ #category : #generated }
JSParser class >> startingStateForSourceFile [
	^ 6
]

{ #category : #generated }
JSParser class >> startingStateForStatement [
	^ 3
]

{ #category : #generated }
JSParser class >> startingStateForType [
	^ 7
]

{ #category : #generated }
JSParser class >> startingStateForgoal [
	^ 1
]

{ #category : #generated }
JSParser class >> symbolNames [
	^ #('<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<question>' '<questionDot>' '<questionQuestion>' '<percent>' '<bar>' '<barBar>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<private>' '<protected>' '<public>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'FunctionDeclaration' 'FunctionExpression' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorMethod' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorBody' 'AsyncMethod' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSNewTargetExpressionNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSVariableDeclarationNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSVariableDeclarationNode #JSGeneratorMethodDefinitionNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorMethodDefinitionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #OrderedCollection #JSAsyncMethodDefinitionNode #JSAsyncFunctionNode #JSAsyncFunctionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSProgramNode #JSMemberVariableDeclarationNode #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 37 0 68 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 7 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 0 49 0 131 0 81 0 196 0 57 0 197 0 81 0 198 0 65 0 199 0 49 1 26 0 73 1 27 0 77 1 28 0 81 1 29 0 81 1 30 0 81 1 40 0 6 1 198 0 10 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 1 101 0 185 1 101 0 186 1 101 0 188 0 245 0 241 1 101 0 249 1 113 0 250 1 117 0 251 1 121 0 254 1 101 0 255 0 245 1 5 1 101 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 2 9 0 189 2 9 0 192 2 9 0 193 2 9 0 194 2 9 0 202 2 9 0 216 2 9 0 217 2 9 0 218 2 9 0 219 2 9 0 222 2 9 0 223 2 9 0 225 2 9 0 226 2 9 0 227 2 9 0 232 2 9 0 234 2 9 0 235 2 9 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 2 81 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 2 89 1 24 2 93 1 25 0 6 1 198 0 22 1 199] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 37 0 68 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 7 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 0 81 0 196 0 57 0 197 0 81 0 198 0 65 0 199 2 97 1 26 0 73 1 27 0 77 1 28 0 81 1 29 0 81 1 30 0 81 1 40 0 6 1 198 0 10 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 2 101 0 57 2 105 0 58 1 209 0 60 1 213 0 61 2 109 0 62 0 141 0 64 1 217 0 65 2 113 0 67 2 117 0 68 1 157 0 70 1 221 0 72 2 121 0 74 1 225 0 76 2 125 0 77 2 129 0 82 0 65 0 84 2 133 0 86 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 2 137 0 105 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 2 209 0 189 2 209 0 192 2 209 0 193 2 209 0 194 2 209 0 198 0 65 0 199 2 209 0 202 2 209 0 216 2 209 0 217 2 209 0 218 2 209 0 219 2 209 0 222 2 209 0 223 2 209 0 225 2 209 0 226 2 209 0 227 2 209 0 232 2 209 0 234 2 209 0 235 2 209 0 239 2 209 0 240 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 2 209 1 4 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 2 209 1 17 0 245 1 18 2 161 1 30 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 2 165 1 120 2 169 1 129 2 209 1 142 2 177 1 147 2 181 1 153 2 185 1 155 2 189 1 156 2 193 1 157 2 197 1 158 2 201 1 159 2 205 1 160 2 209 1 161 2 213 1 162 2 217 1 163 2 221 1 164 2 225 1 165 2 229 1 166 2 233 1 167 2 237 1 168 2 241 1 169 2 245 1 170 2 249 1 171 2 237 1 172 2 237 1 173 2 249 1 174 2 237 1 175 2 249 1 176 3 17 1 177 3 21 1 178 3 25 1 179 3 29 1 195 3 33 1 198 0 15 1 199] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 3 93 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 3 93 1 106 3 93 1 107 3 109 1 108 3 109 1 110] 
#[0 0 42 0 3 0 5 0 116 1 198] 
#[1 3 173 0 3 3 177 0 25 3 181 0 52 3 185 0 57 0 65 0 58 3 189 0 63 3 193 0 74 0 65 0 84 1 245 0 107 3 197 0 190 3 197 0 191 3 197 0 198 0 65 0 199 3 209 0 202 3 197 0 240 3 197 1 4 3 197 1 9 3 197 1 13 3 197 1 17 3 233 1 41 3 237 1 42 3 241 1 198] 
#[1 3 245 0 3 3 249 0 25 0 189 0 116 4 17 0 119 4 5 0 132 4 1 1 31 4 5 1 32 4 9 1 33 4 13 1 34 4 17 1 38 4 5 1 39 4 17 1 47] 
#[0 0 46 0 3 0 5 0 116 1 198] 
#[0 0 0 1 199] 
#[0 0 50 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 4 29 0 189 4 29 0 192 4 29 0 193 4 29 0 194 4 29 0 202 4 29 0 216 4 29 0 217 4 29 0 218 4 29 0 219 4 29 0 222 4 29 0 223 4 29 0 225 4 29 0 226 4 29 0 227 4 29 0 232 4 29 0 234 4 29 0 235 4 29 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 0 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 4 41 0 132 4 45 0 200 4 49 0 201 4 53 0 205 4 53 0 206 4 53 0 207 4 49 1 127 4 49 1 128 4 73 1 198] 
#[0 0 58 1 199] 
#[0 0 62 1 199] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 37 0 68 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 7 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 4 77 0 196 0 57 0 197 4 77 0 198 0 65 0 199 4 77 1 29 4 77 1 30 4 77 1 40 0 6 1 198 0 66 1 199] 
#[0 0 70 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 0 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 0 78 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 0 82 0 2 4 81 0 3 4 85 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 4 89 0 112 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 4 93 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 4 97 0 185 4 97 0 186 4 97 0 188 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 0 245 0 241 4 117 0 242 4 121 0 243 4 125 0 244 4 129 0 245 4 133 0 246 4 97 0 249 1 113 0 250 1 117 0 251 1 121 0 254 4 97 0 255 0 245 1 5 4 97 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 4 137 1 198] 
#[1 4 141 0 4 4 145 0 5 4 149 0 25 4 153 0 52 4 157 0 75 4 161 0 95 4 165 0 112 0 189 0 116 4 169 0 117 4 221 0 119 4 225 0 120 4 173 0 132 4 189 0 133 4 181 0 142 4 185 0 143 4 189 0 144 4 189 0 145 4 189 0 146 4 185 0 147 4 185 1 1 4 185 1 3 4 185 1 8 4 185 1 12 4 221 1 47 4 225 1 48 4 185 1 122 4 185 1 123 4 237 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 4 241 0 6 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 4 245 0 112 4 249 0 113 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 4 253 0 138 5 1 0 139 5 5 0 140 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 5 9 0 185 5 9 0 186 0 245 0 241 5 9 0 249 1 113 0 250 1 117 0 251 1 121 0 254 5 9 0 255 0 245 1 5 5 9 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 5 29 0 168 5 29 0 169 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 5 29 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 5 37 0 168 5 37 0 169 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 5 37 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 5 41 0 168 5 41 0 169 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 5 41 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 5 45 0 168 5 45 0 169 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 5 45 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 5 49 0 168 5 49 0 169 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 5 49 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 5 53 0 168 5 53 0 169 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 5 53 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 57 0 1 5 61 0 74 0 189 0 116 5 65 0 132 5 69 0 250 1 117 0 251 1 121 0 254 5 73 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 5 77 0 168 5 77 0 169 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 5 77 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 81 0 3 5 85 0 69 0 189 0 116 5 89 0 132 5 93 1 19 5 97 1 20 5 101 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 5 105 0 168 5 105 0 169 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 5 105 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 5 109 0 1 5 113 0 25 0 189 0 116 5 117 0 132] 
#[0 5 121 0 1] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 5 125 0 21 5 17 0 52 0 137 0 57 1 157 0 70 0 149 0 74 0 157 0 87 1 153 0 88 5 129 0 98 0 169 0 101 1 157 0 103 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 5 133 0 132 5 133 0 134 5 133 0 135 5 133 0 136 5 133 0 137 5 133 0 141 5 133 0 149 0 241 0 150 5 133 0 153 5 133 0 154 5 133 0 155 5 133 0 156 5 137 0 157 5 133 0 241 5 133 1 5 5 133 1 10 5 133 1 14 5 133 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 5 133 1 49 5 133 1 50 5 133 1 51 1 181 1 52 5 133 1 54 1 189 1 72 5 141 1 198] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 5 145 0 1 5 149 0 5 5 153 0 21 5 157 0 161 5 161 1 198] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 5 165 0 168 5 165 0 169 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 5 165 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 5 169 0 168 5 169 0 169 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 5 169 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 0 93 0 1 0 102 0 2 0 97 0 3 0 102 0 4 0 101 0 5 0 102 0 6 0 102 0 7 5 173 0 25 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 102 0 90 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 102 0 113 0 102 0 114 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 102 0 125 0 102 0 126 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 5 177 0 185 5 177 0 186 0 245 0 241 5 177 0 249 1 113 0 250 1 117 0 251 1 121 0 254 5 177 0 255 0 245 1 5 5 177 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198 0 102 1 199] 
#[0 0 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 59 0 69 0 73 0 78 0 80 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 123 0 124 0 125 0 126 0 128 1 197 1 198 1 199] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 0 126 0 13 5 181 1 73] 
#[1 0 130 0 1 0 130 0 2 0 130 0 4 0 130 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 134 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 78 0 130 0 81 0 130 0 90 0 130 0 113 0 130 0 114 0 130 0 123 0 130 0 124 0 130 0 125 0 130 0 126 0 130 1 197 0 130 1 198 0 130 1 199] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 5 185 0 124] 
#[1 5 145 0 1 0 162 0 2 0 162 0 3 0 162 0 4 5 189 0 5 0 162 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 19 0 162 0 20 5 193 0 21 0 162 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 39 0 162 0 40 0 162 0 41 5 197 0 42 0 162 0 43 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 49 0 162 0 50 0 162 0 51 0 162 0 78 0 162 0 81 0 162 0 90 0 162 0 113 0 162 0 114 0 205 0 123 0 14 0 124 0 162 0 125 0 162 0 126 5 201 0 149 0 241 0 150 5 205 0 161 5 209 0 164 0 162 1 197 5 161 1 198 0 162 1 199] 
#[0 0 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197 1 199] 
#[1 5 145 0 1 0 182 0 2 0 182 0 3 0 182 0 4 5 213 0 5 0 182 0 6 0 182 0 7 0 182 0 8 0 182 0 9 0 182 0 10 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 15 0 182 0 16 0 182 0 17 0 182 0 19 0 182 0 20 5 217 0 21 0 182 0 22 0 182 0 23 0 182 0 24 0 182 0 25 0 182 0 26 0 182 0 27 0 182 0 28 0 182 0 29 0 182 0 30 0 182 0 31 0 182 0 32 0 182 0 33 0 182 0 34 0 182 0 35 0 182 0 36 0 182 0 37 0 182 0 39 0 182 0 40 0 182 0 41 5 197 0 42 0 182 0 43 0 182 0 44 0 182 0 45 0 182 0 46 0 182 0 47 0 182 0 49 0 182 0 50 0 182 0 51 0 182 0 78 0 182 0 81 0 182 0 90 0 182 0 113 0 182 0 114 0 205 0 123 0 14 0 124 0 182 0 125 0 182 0 126 5 221 0 149 0 241 0 150 5 225 0 161 5 229 0 164 0 182 1 197 5 161 1 198 0 182 1 199] 
#[0 0 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 6 0 194 0 7 0 194 0 8 0 194 0 9 0 194 0 10 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 15 0 194 0 16 0 194 0 17 0 194 0 19 0 194 0 20 0 194 0 22 0 194 0 23 0 194 0 24 0 194 0 25 0 194 0 26 0 194 0 27 0 194 0 28 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 39 0 194 0 40 0 194 0 41 5 197 0 42 0 194 0 43 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 47 0 194 0 49 0 194 0 50 0 194 0 51 0 194 0 78 0 194 0 81 0 194 0 90 0 194 0 113 0 194 0 114 0 194 0 125 0 194 0 126 5 233 0 164 0 194 1 197 0 194 1 199] 
#[1 0 198 0 2 0 198 0 4 0 198 0 6 0 198 0 7 0 198 0 8 6 41 0 9 0 198 0 10 0 198 0 11 6 41 0 12 0 198 0 13 0 198 0 14 6 41 0 15 6 41 0 16 0 198 0 17 0 198 0 19 0 198 0 20 6 41 0 22 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 6 41 0 27 6 41 0 28 6 41 0 29 6 41 0 30 6 41 0 31 6 41 0 32 6 41 0 33 0 198 0 34 6 29 0 35 0 198 0 36 6 33 0 37 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 49 0 198 0 50 6 37 0 51 0 198 0 78 0 198 0 81 0 198 0 90 0 198 0 113 0 198 0 114 0 198 0 125 0 198 0 126 6 41 0 187 6 41 1 197 0 198 1 199] 
#[0 0 202 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[1 0 206 0 2 0 206 0 4 0 206 0 6 0 206 0 7 0 206 0 8 0 206 0 10 0 206 0 11 0 206 0 13 0 206 0 14 0 206 0 17 0 206 0 19 0 206 0 20 0 206 0 23 0 206 0 24 0 206 0 25 6 49 0 26 0 206 0 34 0 206 0 36 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 43 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 49 0 206 0 50 0 206 0 78 0 206 0 81 0 206 0 90 0 206 0 113 0 206 0 114 0 206 0 125 0 206 0 126 0 206 1 199] 
#[0 0 210 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[1 0 214 0 2 0 214 0 4 0 214 0 6 0 214 0 7 6 65 0 8 0 214 0 10 0 214 0 11 0 214 0 13 0 214 0 14 0 214 0 17 0 214 0 19 0 214 0 20 0 214 0 23 0 214 0 24 6 65 0 25 0 214 0 34 0 214 0 36 0 214 0 39 0 214 0 40 0 214 0 41 0 214 0 43 6 65 0 44 0 214 0 45 0 214 0 46 0 214 0 47 0 214 0 49 0 214 0 50 0 214 0 78 0 214 0 81 0 214 0 90 0 214 0 113 0 214 0 114 0 214 0 125 0 214 0 126 6 65 0 172 0 214 1 199] 
#[1 0 218 0 2 0 218 0 4 0 218 0 6 0 218 0 7 0 218 0 10 0 218 0 11 0 218 0 13 0 218 0 14 0 218 0 17 0 218 0 19 0 218 0 20 0 218 0 23 0 218 0 24 6 69 0 34 6 73 0 36 0 218 0 39 0 218 0 40 0 218 0 41 0 218 0 43 0 218 0 45 0 218 0 46 0 218 0 47 0 218 0 49 0 218 0 50 0 218 0 78 0 218 0 81 0 218 0 90 0 218 0 113 0 218 0 114 0 218 0 125 0 218 0 126 0 218 1 199] 
#[1 0 222 0 2 0 222 0 4 0 222 0 6 0 222 0 7 0 222 0 10 6 77 0 11 0 222 0 13 6 81 0 14 6 85 0 17 0 222 0 19 0 222 0 20 0 222 0 23 0 222 0 24 0 222 0 39 0 222 0 40 0 222 0 41 0 222 0 43 0 222 0 45 0 222 0 46 0 222 0 47 0 222 0 49 0 222 0 50 0 222 0 78 0 222 0 81 0 222 0 90 0 222 0 113 0 222 0 114 0 222 0 125 0 222 0 126 0 222 1 199] 
#[1 0 226 0 2 0 226 0 4 0 226 0 6 0 226 0 7 6 89 0 10 6 93 0 13 6 97 0 19 6 101 0 20 0 226 0 23 0 226 0 24 0 226 0 39 0 226 0 40 0 226 0 41 0 226 0 43 0 226 0 45 0 226 0 46 0 226 0 47 0 226 0 49 0 226 0 50 6 105 0 78 6 109 0 81 0 226 0 90 0 226 0 113 0 226 0 114 0 226 0 125 0 226 0 126 0 226 1 199] 
#[1 0 230 0 2 0 230 0 4 0 230 0 6 0 230 0 7 6 113 0 23 6 117 0 24 0 230 0 39 0 230 0 40 0 230 0 41 0 230 0 43 0 230 0 45 0 230 0 46 0 230 0 47 6 121 0 49 6 125 0 50 0 230 0 90 0 230 0 113 0 230 0 114 0 230 0 125 0 230 0 126 0 230 1 199] 
#[1 0 234 0 2 0 234 0 4 0 234 0 6 0 234 0 7 6 129 0 39 0 234 0 40 0 234 0 41 0 234 0 43 0 234 0 45 0 234 0 46 0 234 0 47 0 234 0 90 0 234 0 113 0 234 0 114 0 234 0 125 0 234 0 126 0 234 1 199] 
#[1 0 238 0 2 0 238 0 4 0 238 0 6 0 238 0 7 0 238 0 40 0 238 0 41 0 238 0 43 0 238 0 45 0 238 0 46 6 133 0 47 0 238 0 90 0 238 0 113 0 238 0 114 0 238 0 125 0 238 0 126 0 238 1 199] 
#[1 0 242 0 2 0 242 0 4 0 242 0 6 0 242 0 7 0 242 0 40 0 242 0 41 0 246 0 43 6 137 0 45 0 242 0 46 0 242 0 90 0 242 0 113 0 242 0 114 0 242 0 125 0 242 0 126 0 242 1 199] 
#[1 0 250 0 2 0 250 0 4 0 250 0 6 0 250 0 7 6 141 0 40 0 250 0 41 0 250 0 46 0 250 0 90 0 250 0 113 0 250 0 114 0 250 0 125 0 250 0 126 0 250 1 199] 
#[1 0 254 0 2 0 254 0 4 0 254 0 6 0 254 0 7 0 254 0 41 6 145 0 46 0 254 0 90 0 254 0 113 0 254 0 114 0 254 0 125 0 254 0 126 0 254 1 199] 
#[1 1 2 0 2 1 2 0 4 1 2 0 6 1 2 0 7 1 2 0 41 1 6 0 43 1 2 0 90 1 2 0 113 1 2 0 114 1 2 0 125 1 2 0 126 1 2 1 199] 
#[0 6 149 0 43] 
#[1 1 10 0 2 1 10 0 4 1 10 0 6 1 10 0 7 6 153 0 41 1 10 0 90 1 10 0 113 1 10 0 114 1 10 0 125 1 10 0 126 1 10 1 199] 
#[0 1 14 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 1 18 0 2 0 6 0 7 0 113 0 114 0 125 0 126 1 199] 
#[1 6 157 0 113 0 0 1 199] 
#[0 1 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 1 26 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 6 161 0 18] 
#[0 1 30 0 18] 
#[0 1 34 0 18] 
#[0 1 38 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 1 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 1 46 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 1 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 1 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 1 58 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 1 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 1 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 1 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 1 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 1 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 1 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 1 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 1 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 197 1 198 1 199] 
#[1 1 94 0 3 1 94 0 127 1 94 0 129 6 165 1 74] 
#[0 1 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 6 169 0 127] 
#[1 6 173 0 1 6 177 0 10 6 181 0 74 6 185 1 78 6 189 1 121] 
#[1 0 6 0 1 0 6 0 3 6 193 0 4 0 19 0 5 0 6 0 7 4 149 0 25 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 23 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 4 157 0 75 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 4 161 0 95 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 4 165 0 112 0 27 0 116 4 169 0 117 0 31 0 119 0 35 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 4 173 0 132 4 189 0 133 4 181 0 142 4 185 0 143 4 189 0 144 4 189 0 145 4 189 0 146 4 185 0 147 6 197 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 4 185 1 1 4 185 1 3 4 185 1 8 4 185 1 12 4 221 1 47 4 225 1 48 4 185 1 122 4 185 1 123 0 39 1 198] 
#[0 1 102 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 1 106 0 7 1 106 0 116 6 201 0 224] 
#[1 1 106 0 7 1 106 0 116 6 205 0 224] 
#[0 6 209 0 7] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 6 213 0 189 6 213 0 192 6 213 0 193 6 213 0 194 6 213 0 202 6 213 0 216 6 213 0 217 6 213 0 218 6 213 0 219 6 213 0 222 6 213 0 223 6 213 0 225 6 213 0 226 6 213 0 227 6 213 0 232 6 213 0 234 6 213 0 235 6 213 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 6 217 0 1 6 221 0 53] 
#[0 6 225 0 1] 
#[1 1 106 0 1 1 106 0 3 1 106 0 5 1 106 0 7 1 106 0 34 1 106 0 35 1 106 0 36 1 106 0 37 1 106 0 38 1 106 0 48 1 106 0 52 1 106 0 53 1 106 0 57 1 106 0 64 1 106 0 70 1 106 0 74 1 106 0 77 1 106 0 87 1 106 0 88 1 106 0 98 1 106 0 101 1 106 0 103 1 106 0 106 1 106 0 108 1 106 0 111 1 106 0 116 1 106 0 119 1 106 0 120 1 106 0 121 1 106 0 123 1 106 0 124 1 106 0 127 6 229 0 224 1 106 1 198] 
#[0 6 233 0 1] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 6 237 0 185 6 237 0 186 6 237 0 188 0 245 0 241 6 237 0 249 1 113 0 250 1 117 0 251 1 121 0 254 6 237 0 255 0 245 1 5 6 237 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 6 241 0 3 6 245 0 194] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 6 249 0 132 6 253 0 203 7 1 0 204 7 5 0 205 7 5 0 206 7 5 0 207 7 9 1 198] 
#[0 7 13 0 1] 
#[0 7 17 0 1] 
#[1 0 106 0 1 0 106 0 5 0 106 0 7 0 106 0 8 0 106 0 9 0 106 0 10 0 106 0 11 0 106 0 12 0 106 0 13 0 106 0 14 0 106 0 15 0 106 0 16 0 106 0 17 0 106 0 18 0 106 0 19 0 106 0 20 0 106 0 21 0 106 0 22 0 106 0 23 0 106 0 24 0 106 0 25 0 106 0 26 0 106 0 27 0 106 0 28 0 106 0 29 0 106 0 30 0 106 0 31 0 106 0 32 0 106 0 33 0 106 0 34 0 106 0 35 0 106 0 36 0 106 0 37 0 106 0 39 0 106 0 40 0 106 0 41 0 106 0 42 0 106 0 43 0 106 0 44 0 106 0 45 0 106 0 46 0 106 0 47 0 106 0 49 0 106 0 50 0 106 0 51 0 106 0 78 0 106 0 81 0 106 0 113 7 21 0 114 0 106 0 123 0 106 0 124 0 106 1 197 0 106 1 198] 
#[1 7 25 0 7 6 157 0 113] 
#[0 0 0 1 199] 
#[0 1 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 162 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 166 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 7 29 0 196 0 57 0 197 7 29 0 198 0 65 0 199 0 6 1 198 1 178 1 199] 
#[0 1 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 0 0 1 199] 
#[0 1 186 1 199] 
#[0 0 0 1 199] 
#[1 5 81 0 3 5 85 0 69 0 189 0 116 7 33 0 132 7 37 1 19 5 97 1 20 5 101 1 198] 
#[1 0 42 0 3 0 42 0 5 7 41 0 67 0 42 0 116 0 42 1 198] 
#[1 7 45 0 57 7 49 0 58 2 113 0 67 7 53 0 74 7 57 0 84 7 61 0 85 7 65 0 86 7 69 0 107 7 89 1 142 7 77 1 180 7 81 1 183 7 85 1 184 7 89 1 190 7 93 1 191] 
#[1 0 189 0 116 7 97 0 132] 
#[1 3 173 0 3 7 101 0 22 7 105 0 25 3 185 0 57 2 105 0 58 7 109 0 62 7 113 0 63 2 113 0 67 3 193 0 74 7 117 0 77 2 129 0 82 0 65 0 84 2 133 0 86 2 137 0 105 1 245 0 107 7 121 0 198 0 65 0 199 7 125 0 202 7 129 0 240 7 133 1 4 7 137 1 17 7 141 1 30 7 145 1 42 7 149 1 120 7 153 1 129 7 157 1 142 7 161 1 147 7 165 1 153 7 169 1 179 7 173 1 198] 
#[1 7 177 0 1 7 181 0 25 0 189 0 116 7 185 0 132] 
#[1 5 121 0 1 3 245 0 3 3 249 0 25 0 189 0 116 4 17 0 119 7 189 0 132 4 1 1 31 4 5 1 32 4 9 1 33 4 13 1 34 4 17 1 38 4 5 1 39 4 17 1 47] 
#[1 0 189 0 116 7 193 0 132] 
#[1 0 189 0 116 7 197 0 132 7 201 1 148] 
#[1 0 189 0 116 7 205 0 132] 
#[0 1 190 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 194 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 198 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 202 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 206 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 1 210 0 1 1 210 0 3 1 210 0 5 1 210 0 7 1 210 0 34 1 210 0 35 1 210 0 36 1 210 0 37 1 210 0 38 1 210 0 48 1 210 0 52 1 210 0 53 1 210 0 54 1 210 0 57 1 210 0 58 1 210 0 60 1 210 0 61 0 43 0 62 1 210 0 64 1 210 0 65 1 210 0 67 0 43 0 68 1 210 0 70 1 210 0 72 1 210 0 74 1 210 0 76 0 43 0 77 0 43 0 82 1 210 0 84 0 43 0 86 1 210 0 87 1 210 0 88 1 210 0 94 1 210 0 98 1 210 0 99 1 210 0 101 1 210 0 102 1 210 0 103 1 210 0 104 0 43 0 105 1 210 0 106 1 210 0 107 1 210 0 108 1 210 0 109 1 210 0 110 1 210 0 111 1 210 0 116 1 210 0 119 1 210 0 120 1 210 0 121 1 210 0 123 1 210 0 124 1 210 0 127 1 210 1 198 0 43 1 199] 
#[1 1 218 0 1 1 218 0 3 1 218 0 5 1 218 0 7 1 218 0 34 1 218 0 35 1 218 0 36 1 218 0 37 1 218 0 38 1 218 0 48 1 218 0 52 1 218 0 53 1 218 0 54 1 218 0 57 1 218 0 58 1 218 0 60 1 218 0 61 0 47 0 62 1 218 0 64 1 218 0 65 1 218 0 67 0 47 0 68 1 218 0 70 1 218 0 72 1 218 0 74 1 218 0 76 0 47 0 77 0 47 0 82 1 218 0 84 0 47 0 86 1 218 0 87 1 218 0 88 1 218 0 94 1 218 0 98 1 218 0 99 1 218 0 101 1 218 0 102 1 218 0 103 1 218 0 104 0 47 0 105 1 218 0 106 1 218 0 107 1 218 0 108 1 218 0 109 1 218 0 110 1 218 0 111 1 218 0 116 1 218 0 119 1 218 0 120 1 218 0 121 1 218 0 123 1 218 0 124 1 218 0 127 1 218 1 198 0 47 1 199] 
#[1 1 226 0 1 1 226 0 3 1 226 0 5 1 226 0 7 1 226 0 34 1 226 0 35 1 226 0 36 1 226 0 37 1 226 0 38 1 226 0 48 1 226 0 52 1 226 0 53 1 226 0 54 1 226 0 57 1 226 0 58 1 226 0 60 1 226 0 61 0 51 0 62 1 226 0 64 1 226 0 65 1 226 0 67 0 51 0 68 1 226 0 70 1 226 0 72 1 226 0 74 1 226 0 76 0 51 0 77 0 51 0 82 1 226 0 84 0 51 0 86 1 226 0 87 1 226 0 88 1 226 0 94 1 226 0 98 1 226 0 99 1 226 0 101 1 226 0 102 1 226 0 103 1 226 0 104 0 51 0 105 1 226 0 106 1 226 0 107 1 226 0 108 1 226 0 109 1 226 0 110 1 226 0 111 1 226 0 116 1 226 0 119 1 226 0 120 1 226 0 121 1 226 0 123 1 226 0 124 1 226 0 127 1 226 1 198 0 51 1 199] 
#[0 1 234 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 1 238 0 1 1 238 0 3 1 238 0 5 1 238 0 7 1 238 0 34 1 238 0 35 1 238 0 36 1 238 0 37 1 238 0 38 1 238 0 48 1 238 0 52 1 238 0 53 1 238 0 54 1 238 0 57 1 238 0 58 1 238 0 60 1 238 0 61 0 55 0 62 1 238 0 64 1 238 0 65 1 238 0 67 0 55 0 68 1 238 0 70 1 238 0 72 1 238 0 74 1 238 0 76 0 55 0 77 0 55 0 82 1 238 0 84 0 55 0 86 1 238 0 87 1 238 0 88 1 238 0 94 1 238 0 98 1 238 0 99 1 238 0 101 1 238 0 102 1 238 0 103 1 238 0 104 0 55 0 105 1 238 0 106 1 238 0 107 1 238 0 108 1 238 0 109 1 238 0 110 1 238 0 111 1 238 0 116 1 238 0 119 1 238 0 120 1 238 0 121 1 238 0 123 1 238 0 124 1 238 0 127 1 238 1 198 0 55 1 199] 
#[1 0 59 0 1 0 59 0 3 0 59 0 5 0 59 0 7 0 59 0 34 0 59 0 35 0 59 0 36 0 59 0 37 0 59 0 38 0 59 0 48 0 59 0 52 0 59 0 53 0 59 0 54 0 59 0 57 0 59 0 58 0 59 0 60 0 59 0 61 0 63 0 62 0 59 0 64 0 59 0 65 0 59 0 67 0 63 0 68 0 59 0 70 0 59 0 72 0 59 0 74 0 59 0 76 0 63 0 77 0 63 0 82 0 59 0 84 0 63 0 86 0 59 0 87 0 59 0 88 0 59 0 94 0 59 0 98 0 59 0 99 0 59 0 101 0 59 0 102 0 59 0 103 0 59 0 104 0 63 0 105 0 59 0 106 0 59 0 107 0 59 0 108 0 59 0 109 0 59 0 110 0 59 0 111 0 59 0 116 0 59 0 119 0 59 0 120 0 59 0 121 0 59 0 123 0 59 0 124 0 59 0 127 0 59 1 198 0 63 1 199] 
#[0 0 0 1 199] 
#[0 2 2 1 199] 
#[0 2 6 1 199] 
#[0 2 10 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 2 101 0 57 2 105 0 58 1 209 0 60 1 213 0 61 2 109 0 62 0 141 0 64 1 217 0 65 2 113 0 67 1 157 0 70 1 221 0 72 2 121 0 74 1 225 0 76 7 209 0 77 2 129 0 82 0 65 0 84 2 133 0 86 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 2 137 0 105 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 7 229 0 189 7 229 0 192 7 229 0 193 7 229 0 194 7 229 0 198 0 65 0 199 7 229 0 202 7 229 0 216 7 229 0 217 7 229 0 218 7 229 0 219 7 229 0 222 7 229 0 223 7 229 0 225 7 229 0 226 7 229 0 227 7 229 0 232 7 229 0 234 7 229 0 235 7 229 0 239 7 229 0 240 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 7 229 1 4 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 7 229 1 17 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 7 229 1 120 7 229 1 129 7 229 1 142 7 229 1 147 7 229 1 153 7 229 1 160 7 229 1 161 7 229 1 179 7 229 1 195 3 33 1 198 2 14 1 199] 
#[0 2 18 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 67 0 1 0 67 0 3 0 67 0 5 0 67 0 7 0 67 0 34 0 67 0 35 0 67 0 36 0 67 0 37 0 67 0 38 0 67 0 48 0 67 0 52 0 67 0 53 0 67 0 54 0 67 0 57 0 67 0 58 0 67 0 60 0 67 0 61 0 67 0 62 0 67 0 64 0 67 0 65 0 67 0 67 2 26 0 68 0 67 0 70 0 67 0 72 0 67 0 74 0 67 0 76 0 67 0 77 0 67 0 82 0 67 0 84 0 67 0 86 0 67 0 87 0 67 0 88 0 67 0 94 0 67 0 98 0 67 0 99 0 67 0 101 0 67 0 102 0 67 0 103 0 67 0 104 0 67 0 105 0 67 0 106 0 67 0 107 0 67 0 108 0 67 0 109 0 67 0 110 0 67 0 111 0 67 0 116 0 67 0 119 0 67 0 120 0 67 0 121 0 67 0 123 0 67 0 124 0 67 0 127 0 67 1 198 0 67 1 199] 
#[0 2 30 1 199] 
#[1 2 109 0 62 7 245 0 77 2 129 0 82 2 133 0 86 2 137 0 105 8 9 1 120 8 9 1 129 8 9 1 147 8 9 1 153 8 9 1 164 8 9 1 165 8 9 1 179 8 9 1 195 2 34 1 199] 
#[0 2 38 0 62 0 77 0 82 0 86 0 105 1 199] 
#[1 0 71 0 62 2 42 0 68 0 71 0 77 0 71 0 82 0 71 0 86 0 71 0 105 0 71 1 199] 
#[0 2 50 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 2 101 0 57 2 105 0 58 1 209 0 60 1 213 0 61 7 109 0 62 0 141 0 64 1 217 0 65 2 113 0 67 8 25 0 68 1 157 0 70 1 221 0 72 2 121 0 74 1 225 0 76 2 125 0 77 2 129 0 82 0 65 0 84 2 133 0 86 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 2 137 0 105 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 8 41 0 189 8 41 0 192 8 41 0 193 8 41 0 194 8 41 0 198 0 65 0 199 8 41 0 202 8 41 0 216 8 41 0 217 8 41 0 218 8 41 0 219 8 41 0 222 8 41 0 223 8 41 0 225 8 41 0 226 8 41 0 227 8 41 0 232 8 41 0 234 8 41 0 235 8 41 0 239 8 41 0 240 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 8 41 1 4 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 8 41 1 17 0 245 1 18 8 41 1 30 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 8 41 1 120 8 41 1 129 8 41 1 142 8 41 1 147 8 33 1 153 8 41 1 161 8 41 1 168 8 41 1 172 8 41 1 173 8 41 1 175 8 41 1 177 8 41 1 178 8 41 1 179 3 33 1 198 2 54 1 199] 
#[0 2 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 62 1 199] 
#[1 2 66 0 4 7 109 0 62 8 53 0 68 7 117 0 77 2 129 0 82 2 133 0 86 2 137 0 105 8 65 1 30 8 65 1 120 8 65 1 129 8 65 1 147 8 65 1 153 8 65 1 165 8 65 1 171 8 65 1 174 8 65 1 176 8 65 1 177 8 65 1 178 8 65 1 179 2 66 1 199] 
#[0 2 70 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 2 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 78 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 82 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 2 86 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 90 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[1 2 94 0 1 2 94 0 3 2 94 0 5 2 94 0 7 2 94 0 34 2 94 0 35 2 94 0 36 2 94 0 37 2 94 0 38 2 94 0 48 2 94 0 52 2 94 0 53 2 94 0 54 2 94 0 57 2 94 0 58 2 94 0 60 2 94 0 61 0 75 0 62 2 94 0 64 2 94 0 65 2 94 0 67 0 75 0 68 2 94 0 70 2 94 0 72 2 94 0 74 2 94 0 76 0 75 0 77 0 75 0 82 2 94 0 84 0 75 0 86 2 94 0 87 2 94 0 88 2 94 0 94 2 94 0 98 2 94 0 99 2 94 0 101 2 94 0 102 2 94 0 103 2 94 0 104 0 75 0 105 2 94 0 106 2 94 0 107 2 94 0 108 2 94 0 109 2 94 0 110 2 94 0 111 2 94 0 116 2 94 0 119 2 94 0 120 2 94 0 121 2 94 0 123 2 94 0 124 2 94 0 127 2 94 1 198 0 75 1 199] 
#[1 2 102 0 1 2 102 0 3 2 102 0 5 2 102 0 7 2 102 0 34 2 102 0 35 2 102 0 36 2 102 0 37 2 102 0 38 2 102 0 48 2 102 0 52 2 102 0 53 2 102 0 54 2 102 0 57 2 102 0 58 2 102 0 60 2 102 0 61 0 79 0 62 2 102 0 64 2 102 0 65 2 102 0 67 0 79 0 68 2 102 0 70 2 102 0 72 2 102 0 74 2 102 0 76 0 79 0 77 0 79 0 82 2 102 0 84 0 79 0 86 2 102 0 87 2 102 0 88 2 102 0 94 2 102 0 98 2 102 0 99 2 102 0 101 2 102 0 102 2 102 0 103 2 102 0 104 0 79 0 105 2 102 0 106 2 102 0 107 2 102 0 108 2 102 0 109 2 102 0 110 2 102 0 111 2 102 0 116 2 102 0 119 2 102 0 120 2 102 0 121 2 102 0 123 2 102 0 124 2 102 0 127 2 102 1 198 0 79 1 199] 
#[1 2 110 0 1 2 110 0 3 2 110 0 5 2 110 0 7 2 110 0 34 2 110 0 35 2 110 0 36 2 110 0 37 2 110 0 38 2 110 0 48 2 110 0 52 2 110 0 53 2 110 0 54 2 110 0 57 2 110 0 58 2 110 0 60 2 110 0 61 0 83 0 62 2 110 0 64 2 110 0 65 2 110 0 67 0 83 0 68 2 110 0 70 2 110 0 72 2 110 0 74 2 110 0 76 0 83 0 77 0 83 0 82 2 110 0 84 0 83 0 86 2 110 0 87 2 110 0 88 2 110 0 94 2 110 0 98 2 110 0 99 2 110 0 101 2 110 0 102 2 110 0 103 2 110 0 104 0 83 0 105 2 110 0 106 2 110 0 107 2 110 0 108 2 110 0 109 2 110 0 110 2 110 0 111 2 110 0 116 2 110 0 119 2 110 0 120 2 110 0 121 2 110 0 123 2 110 0 124 2 110 0 127 2 110 1 198 0 83 1 199] 
#[1 2 118 0 1 2 118 0 3 2 118 0 5 2 118 0 7 2 118 0 34 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 2 118 0 48 2 118 0 52 2 118 0 53 2 118 0 54 2 118 0 57 2 118 0 58 2 118 0 60 2 118 0 61 0 87 0 62 2 118 0 64 2 118 0 65 2 118 0 67 2 118 0 70 2 118 0 72 2 118 0 74 2 118 0 76 0 87 0 77 0 87 0 82 2 118 0 84 0 87 0 86 2 118 0 87 2 118 0 88 2 118 0 94 2 118 0 98 2 118 0 99 2 118 0 101 2 118 0 102 2 118 0 103 2 118 0 104 0 87 0 105 2 118 0 106 2 118 0 107 2 118 0 108 2 118 0 109 2 118 0 110 2 118 0 111 2 118 0 116 2 118 0 119 2 118 0 120 2 118 0 121 2 118 0 123 2 118 0 124 2 118 0 127 2 118 1 198 0 87 1 199] 
#[1 6 173 0 1 6 177 0 10 8 77 0 74 0 189 0 116 8 81 0 132 8 85 1 78 6 189 1 121] 
#[1 3 37 0 1 0 82 0 2 8 89 0 3 8 93 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 4 89 0 112 0 189 0 116 3 81 0 119 3 85 0 120 8 97 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 8 101 0 243 4 125 0 244 4 129 0 245 4 133 0 246 3 81 1 47 3 85 1 48 3 89 1 78 8 105 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 8 105 1 106 8 105 1 107 3 109 1 108 3 109 1 110 8 109 1 198] 
#[1 8 113 0 1 8 117 0 4 8 121 0 5 3 49 0 10 8 125 0 87 4 169 0 117 4 221 0 119 4 225 0 120 8 129 0 133 8 129 0 144 8 129 0 145 8 129 0 146 4 221 1 47 4 225 1 48 8 133 1 78 8 137 1 97 8 141 1 98 8 145 1 99 8 145 1 111 8 145 1 113 8 145 1 117 8 145 1 118 8 145 1 119] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 8 177 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 8 173 1 102 8 177 1 103 3 97 1 104 3 101 1 105 8 177 1 106 8 177 1 107 3 109 1 108 3 109 1 110] 
#[1 0 189 0 116 8 181 0 132 8 185 1 79 8 189 1 80] 
#[1 8 193 0 1 3 41 0 3 3 45 0 5 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 8 197 1 89 8 197 1 90 8 197 1 91 8 197 1 92 8 197 1 93 3 129 1 94 3 133 1 95 8 197 1 96 8 197 1 100 8 197 1 101 8 197 1 108 8 197 1 110] 
#[1 8 193 0 1 3 41 0 3 3 45 0 5 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 8 201 1 89 8 201 1 90 8 201 1 91 8 201 1 92 8 201 1 93 3 129 1 94 3 133 1 95 8 201 1 96 8 201 1 100 8 201 1 101 8 201 1 108 8 201 1 110] 
#[1 8 205 0 1 3 49 0 10 8 209 1 78] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[1 0 189 0 116 8 213 0 132 8 217 1 109] 
#[0 2 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[1 2 134 0 2 2 134 0 3 2 134 0 4 2 134 0 5 2 134 0 6 2 134 0 7 2 134 0 8 2 134 0 10 2 134 0 11 2 134 0 13 2 134 0 14 2 134 0 17 2 134 0 18 2 134 0 19 2 134 0 20 2 138 0 21 2 134 0 22 2 134 0 23 2 134 0 24 2 134 0 25 2 134 0 26 2 134 0 34 2 134 0 36 2 134 0 39 2 134 0 40 2 134 0 41 2 134 0 43 2 134 0 44 2 134 0 45 2 134 0 46 2 134 0 47 2 134 0 49 2 134 0 50 2 134 0 59 2 134 0 78 2 134 0 80 2 134 0 81 2 134 0 90 2 134 0 91 2 134 0 92 2 134 0 93 2 134 0 96 2 134 0 113 2 134 0 114 2 134 0 117 2 134 0 119 2 134 0 120 2 134 0 125 2 134 0 126 2 134 1 199] 
#[0 2 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 2 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 8 221 0 1] 
#[0 0 0 1 199] 
#[1 2 150 0 2 2 150 0 3 2 150 0 4 2 150 0 5 2 150 0 6 2 150 0 7 2 150 0 8 2 150 0 10 2 150 0 11 2 150 0 13 2 150 0 14 2 150 0 17 2 150 0 18 2 150 0 19 2 150 0 20 2 150 0 22 2 150 0 23 2 150 0 24 2 150 0 25 2 150 0 26 2 150 0 34 2 150 0 36 2 150 0 39 2 150 0 40 2 150 0 41 2 150 0 43 2 150 0 44 0 91 0 45 2 150 0 46 2 150 0 47 2 150 0 49 2 150 0 50 2 150 0 59 2 150 0 78 2 150 0 81 2 150 0 90 2 150 0 91 2 150 0 92 2 150 0 93 2 150 0 96 2 150 0 113 2 150 0 114 2 150 0 117 2 150 0 119 2 150 0 120 2 150 0 125 2 150 0 126 2 150 1 199] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 5 2 154 0 6 2 154 0 7 2 154 0 8 2 154 0 10 2 154 0 11 2 154 0 13 2 154 0 14 2 154 0 17 2 154 0 18 2 154 0 19 2 154 0 20 2 154 0 22 2 154 0 23 2 154 0 24 2 154 0 25 2 154 0 26 2 154 0 34 2 154 0 36 0 95 0 39 2 154 0 40 2 154 0 41 2 154 0 43 2 154 0 44 2 154 0 45 2 154 0 46 2 154 0 47 2 154 0 49 2 154 0 50 2 154 0 59 2 154 0 78 2 154 0 81 2 154 0 90 2 154 0 91 2 154 0 92 2 154 0 93 2 154 0 96 2 154 0 113 2 154 0 114 2 154 0 117 2 154 0 119 2 154 0 120 2 154 0 125 2 154 0 126 2 154 1 199] 
#[0 2 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[1 2 162 0 2 2 162 0 3 2 162 0 4 0 99 0 5 2 162 0 6 2 162 0 7 2 162 0 8 2 162 0 10 2 162 0 11 2 162 0 13 2 162 0 14 2 162 0 17 2 162 0 18 2 162 0 19 2 162 0 20 2 162 0 22 2 162 0 23 2 162 0 24 2 162 0 25 2 162 0 26 2 162 0 34 2 162 0 36 2 162 0 39 2 162 0 40 2 162 0 41 2 162 0 43 2 162 0 44 2 162 0 45 2 162 0 46 2 162 0 47 2 162 0 49 2 162 0 50 2 162 0 59 2 162 0 78 2 162 0 81 2 162 0 90 2 162 0 91 2 162 0 92 2 162 0 93 2 162 0 96 2 162 0 113 2 162 0 114 2 162 0 117 2 162 0 119 2 162 0 120 2 162 0 125 2 162 0 126 8 233 0 224 2 162 1 199] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 2 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[1 1 106 0 2 1 106 0 3 1 106 0 4 1 106 0 5 1 106 0 6 1 106 0 7 1 106 0 8 1 106 0 10 1 106 0 11 1 106 0 13 1 106 0 14 1 106 0 17 1 106 0 18 1 106 0 19 1 106 0 20 1 106 0 22 1 106 0 23 1 106 0 24 1 106 0 25 1 106 0 26 1 106 0 34 1 106 0 36 1 106 0 39 1 106 0 40 1 106 0 41 1 106 0 43 1 106 0 44 1 106 0 45 1 106 0 46 1 106 0 47 1 106 0 49 1 106 0 50 1 106 0 59 1 106 0 78 1 106 0 80 1 106 0 81 1 106 0 90 1 106 0 91 1 106 0 92 1 106 0 93 1 106 0 96 1 106 0 113 1 106 0 114 1 106 0 117 1 106 0 119 1 106 0 120 1 106 0 125 1 106 0 126 8 237 0 224 1 106 1 199] 
#[0 8 241 0 21] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 2 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[1 8 245 0 4 8 249 0 117 8 253 1 43 9 1 1 44] 
#[1 9 5 0 51 2 218 0 73] 
#[0 9 9 0 74] 
#[1 5 81 0 3 5 85 0 69 0 189 0 116 9 13 0 132 9 17 1 19 5 97 1 20 5 101 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 9 21 0 185 9 21 0 186 0 245 0 241 9 21 0 249 1 113 0 250 1 117 0 251 1 121 0 254 9 21 0 255 0 245 1 5 9 21 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 9 25 0 1 9 29 0 25 0 189 0 116 9 33 0 132] 
#[0 2 222 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 226 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 230 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 234 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 238 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 242 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 246 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 250 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 254 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 9 37 0 73 9 41 1 35] 
#[1 9 45 0 7 3 2 0 73] 
#[1 3 49 0 10 9 49 0 58 2 113 0 67 9 53 0 74 2 129 0 82 2 137 0 105 0 189 0 116 8 81 0 132 9 57 1 78 9 61 1 120 9 65 1 129 9 69 1 142] 
#[1 9 73 0 4 0 189 0 116 9 77 0 117 9 89 0 132 9 81 1 36 9 85 1 37 9 89 1 39] 
#[0 9 93 0 51] 
#[0 3 6 0 4 0 73 0 113] 
#[1 9 37 0 73 9 97 1 35] 
#[1 3 10 0 73 9 101 0 113] 
#[0 3 14 0 73] 
#[0 3 18 0 73] 
#[0 9 105 0 7] 
#[0 3 22 0 73 0 113] 
#[0 3 26 0 7] 
#[0 3 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 9 109 0 4 4 145 0 5 9 113 0 112 0 189 0 116 4 169 0 117 4 221 0 119 4 225 0 120 9 117 0 132 9 121 0 133 9 121 0 144 9 121 0 145 9 121 0 146 9 125 0 208 9 129 0 209 9 133 0 212 9 133 0 214 4 221 1 47 4 225 1 48 9 141 1 198] 
#[1 4 33 0 3 4 37 0 5 9 145 0 6 4 89 0 112 4 249 0 113 0 189 0 116 9 117 0 132 9 149 0 139 4 101 0 205 4 101 0 206 4 101 0 207 9 153 0 210 9 157 0 211 9 161 0 213 9 161 0 214 9 165 0 215 8 109 1 198] 
#[1 3 34 0 7 9 169 0 22 3 34 0 113 9 173 0 148] 
#[1 9 177 0 7 9 181 0 113] 
#[0 3 38 0 7 0 113] 
#[1 9 169 0 22 9 185 0 148] 
#[0 3 42 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 3 46 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 3 50 0 7 0 113] 
#[0 3 54 0 7 0 113] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 9 189 0 132 9 193 0 205 9 193 0 206 9 193 0 207] 
#[0 3 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 9 197 0 4 4 145 0 5 4 149 0 25 4 153 0 52 4 157 0 75 4 161 0 95 9 201 0 112 0 189 0 116 4 169 0 117 4 221 0 119 4 225 0 120 9 205 0 132 9 209 0 133 4 181 0 142 4 185 0 143 9 209 0 144 9 209 0 145 9 209 0 146 4 185 0 147 9 125 0 208 9 129 0 209 9 133 0 212 9 133 0 214 4 185 1 1 4 185 1 3 4 185 1 8 4 185 1 12 4 221 1 47 4 225 1 48 4 185 1 122 4 185 1 123 9 213 1 198] 
#[1 0 93 0 1 4 81 0 3 4 85 0 5 9 217 0 6 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 9 221 0 112 4 249 0 113 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 4 93 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 4 253 0 138 9 225 0 139 5 5 0 140 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 5 9 0 185 5 9 0 186 4 101 0 205 4 101 0 206 4 101 0 207 9 153 0 210 9 157 0 211 9 161 0 213 9 161 0 214 9 165 0 215 0 245 0 241 5 9 0 249 1 113 0 250 1 117 0 251 1 121 0 254 5 9 0 255 0 245 1 5 5 9 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 4 137 1 198] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 9 229 0 132 9 233 0 205 9 233 0 206 9 233 0 207] 
#[1 0 130 0 1 0 103 0 2 0 103 0 4 0 130 0 5 0 103 0 6 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 134 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 107 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 78 0 130 0 81 0 103 0 113 0 130 0 123 0 130 0 124 9 237 0 148 0 130 1 197 0 130 1 198] 
#[1 9 241 0 2 6 157 0 113] 
#[1 3 66 0 2 3 66 0 4 3 66 0 6 9 169 0 22 3 66 0 113 9 245 0 148] 
#[0 3 70 0 2 0 113] 
#[0 3 74 0 2 0 4 0 6 0 113] 
#[0 3 78 0 2] 
#[0 9 249 0 2] 
#[0 3 82 0 2] 
#[1 3 86 0 2 9 253 0 113] 
#[0 3 90 0 2] 
#[0 3 94 0 2 0 113] 
#[1 6 173 0 1 4 33 0 3 4 37 0 5 6 177 0 10 3 98 0 41 6 181 0 74 10 29 0 91 10 29 0 92 10 29 0 93 10 13 0 101 3 98 0 114 0 189 0 116 10 17 0 132 10 25 0 205 10 25 0 206 10 25 0 207 6 185 1 78 10 25 1 114 10 29 1 115 6 189 1 121] 
#[0 3 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 33 0 185 10 33 0 186 0 245 0 241 10 33 0 249 1 113 0 250 1 117 0 251 1 121 0 254 10 33 0 255 0 245 1 5 10 33 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 10 37 0 133 10 37 0 144 10 37 0 145 10 37 0 146 4 221 1 47 4 225 1 48] 
#[1 4 145 0 5 10 41 0 25 4 169 0 117 4 221 0 119 4 225 0 120 10 45 0 133 10 45 0 144 10 45 0 145 10 45 0 146 4 221 1 47 4 225 1 48] 
#[1 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 10 49 0 133 10 49 0 144 10 49 0 145 10 49 0 146 4 221 1 47 4 225 1 48] 
#[1 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 10 53 0 133 10 53 0 144 10 53 0 145 10 53 0 146 4 221 1 47 4 225 1 48] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 57 0 185 10 57 0 186 0 245 0 241 10 57 0 249 1 113 0 250 1 117 0 251 1 121 0 254 10 57 0 255 0 245 1 5 10 57 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 3 106 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[1 3 110 0 4 9 169 0 22 3 110 0 113 10 61 0 148] 
#[0 3 114 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[1 10 65 0 4 10 69 0 113] 
#[0 3 118 0 4 0 113] 
#[1 10 73 0 1 10 77 0 114] 
#[0 3 122 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 3 126 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 3 130 0 4 0 113] 
#[0 3 134 0 4 0 113] 
#[0 3 138 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 3 142 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 3 146 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 3 150 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 3 154 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 3 158 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 3 162 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[1 4 145 0 5 10 81 0 75 10 85 0 95 4 169 0 117 4 221 0 119 4 225 0 120 10 89 0 133 10 89 0 144 10 89 0 145 10 89 0 146 4 221 1 47 4 225 1 48] 
#[0 3 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 93 0 185 10 93 0 186 0 245 0 241 10 93 0 249 1 113 0 250 1 117 0 251 1 121 0 254 10 93 0 255 0 245 1 5 10 93 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 3 170 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 112 0 113 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[1 10 97 0 6 4 249 0 113 10 101 0 139] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 10 105 0 6 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 4 245 0 112 10 109 0 113 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 10 113 0 140 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 117 0 185 10 117 0 186 0 245 0 241 10 117 0 249 1 113 0 250 1 117 0 251 1 121 0 254 10 117 0 255 0 245 1 5 10 117 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 3 174 0 6 0 113] 
#[0 3 178 0 6 0 113] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 4 97 0 185 4 97 0 186 4 97 0 188 0 245 0 241 4 97 0 249 1 113 0 250 1 117 0 251 1 121 0 254 4 97 0 255 0 245 1 5 4 97 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 5 61 0 74] 
#[0 0 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 0 198 0 2 0 198 0 4 0 198 0 6 0 198 0 7 0 198 0 8 0 198 0 10 0 198 0 11 0 198 0 13 0 198 0 14 0 198 0 17 0 198 0 19 0 198 0 20 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 34 6 29 0 35 0 198 0 36 6 33 0 37 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 49 0 198 0 50 6 37 0 51 0 198 0 78 0 198 0 81 0 198 0 90 0 198 0 113 0 198 0 114 0 198 0 125 0 198 0 126 0 198 1 199] 
#[0 3 182 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[1 10 121 0 10 6 181 0 74] 
#[0 3 186 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 3 190 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 3 194 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 3 198 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 3 202 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 4 117 0 242 4 121 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 10 125 0 1 10 129 0 25 0 189 0 116 10 133 0 132] 
#[0 0 134 0 18] 
#[0 10 137 0 18] 
#[1 6 173 0 1 3 49 0 10 6 185 1 78 6 189 1 121] 
#[0 3 206 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[1 10 141 0 4 4 145 0 5 10 145 0 7 4 149 0 25 4 153 0 52 4 157 0 75 4 161 0 95 10 149 0 96 4 169 0 117 4 221 0 119 4 225 0 120 10 153 0 133 10 153 0 144 10 153 0 145 10 153 0 146 10 169 1 1 10 169 1 3 10 169 1 8 10 169 1 12 10 161 1 21 10 165 1 22 10 169 1 23 4 221 1 47 4 225 1 48 10 169 1 122 10 169 1 123 10 173 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 5 17 0 52 0 137 0 57 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 10 177 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 10 177 0 167 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 141 1 198] 
#[1 5 81 0 3 5 85 0 69 10 181 1 19 5 97 1 20 5 101 1 198] 
#[0 3 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 10 185 0 3] 
#[1 10 189 0 69 10 193 0 80 10 197 1 133 10 201 1 135] 
#[0 3 214 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 10 205 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 10 209 0 1 0 189 0 116 10 213 0 132] 
#[0 10 217 0 1] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 221 0 185 10 221 0 186 0 245 0 241 10 221 0 249 1 113 0 250 1 117 0 251 1 121 0 254 10 221 0 255 0 245 1 5 10 221 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 10 225 0 100] 
#[1 5 149 0 5 5 153 0 21] 
#[1 5 145 0 1 0 162 0 2 0 162 0 3 0 162 0 4 5 189 0 5 0 162 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 19 0 162 0 20 5 193 0 21 0 162 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 39 0 162 0 40 0 162 0 41 0 162 0 43 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 49 0 162 0 50 0 162 0 51 0 162 0 78 0 162 0 81 0 162 0 90 0 162 0 113 0 162 0 114 0 205 0 123 0 14 0 124 0 162 0 125 0 162 0 126 5 201 0 149 0 241 0 150 10 229 0 161 0 162 1 197 5 161 1 198 0 162 1 199] 
#[0 3 218 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197 1 199] 
#[0 6 181 0 74] 
#[1 0 93 0 1 10 233 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 10 237 0 112 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 10 241 0 162 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 245 0 185 10 245 0 186 0 245 0 241 10 245 0 249 1 113 0 250 1 117 0 251 1 121 0 254 10 245 0 255 0 245 1 5 10 245 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 249 0 185 10 249 0 186 10 249 0 188 0 245 0 241 10 249 0 249 1 113 0 250 1 117 0 251 1 121 0 254 10 249 0 255 0 245 1 5 10 249 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 10 253 0 117] 
#[0 3 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 11 1 0 10 11 5 1 82] 
#[0 3 226 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 3 230 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 9 0 185 11 9 0 186 0 245 0 241 11 9 0 249 1 113 0 250 1 117 0 251 1 121 0 254 11 9 0 255 0 245 1 5 11 9 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 3 234 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 11 13 0 13] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 17 0 185 11 17 0 186 11 17 0 188 0 245 0 241 11 17 0 249 1 113 0 250 1 117 0 251 1 121 0 254 11 17 0 255 0 245 1 5 11 17 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 21 0 185 11 21 0 186 11 21 0 188 0 245 0 241 11 21 0 249 1 113 0 250 1 117 0 251 1 121 0 254 11 21 0 255 0 245 1 5 11 21 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 11 25 0 117] 
#[1 5 145 0 1 11 29 0 5 11 33 0 117 0 205 0 123 0 14 0 124 11 37 0 149 0 241 0 150 11 41 0 161 11 45 0 166 5 161 1 198] 
#[0 3 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 3 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 5 145 0 1 3 246 0 2 3 246 0 3 3 246 0 4 11 49 0 5 3 246 0 6 3 246 0 7 3 246 0 8 3 246 0 9 3 246 0 10 3 246 0 11 3 246 0 12 3 246 0 13 3 246 0 14 3 246 0 15 3 246 0 16 3 246 0 17 3 246 0 19 3 246 0 20 11 53 0 21 3 246 0 22 3 246 0 23 3 246 0 24 3 246 0 25 3 246 0 26 3 246 0 27 3 246 0 28 3 246 0 29 3 246 0 30 3 246 0 31 3 246 0 32 3 246 0 33 3 246 0 34 3 246 0 35 3 246 0 36 3 246 0 37 3 246 0 39 3 246 0 40 3 246 0 41 3 246 0 42 3 246 0 43 3 246 0 44 3 246 0 45 3 246 0 46 3 246 0 47 3 246 0 49 3 246 0 50 3 246 0 51 3 246 0 78 3 246 0 81 3 246 0 90 3 246 0 113 3 246 0 114 0 205 0 123 0 14 0 124 3 246 0 125 3 246 0 126 11 57 0 149 0 241 0 150 11 61 0 161 11 65 0 165 3 246 1 197 5 161 1 198 3 246 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 69 0 185 11 69 0 186 11 69 0 188 0 245 0 241 11 69 0 249 1 113 0 250 1 117 0 251 1 121 0 254 11 69 0 255 0 245 1 5 11 69 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 11 73 0 117] 
#[0 3 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 3 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 5 145 0 1 4 2 0 2 4 2 0 3 4 2 0 4 11 49 0 5 4 2 0 6 4 2 0 7 4 2 0 8 4 2 0 9 4 2 0 10 4 2 0 11 4 2 0 12 4 2 0 13 4 2 0 14 4 2 0 15 4 2 0 16 4 2 0 17 4 2 0 19 4 2 0 20 11 53 0 21 4 2 0 22 4 2 0 23 4 2 0 24 4 2 0 25 4 2 0 26 4 2 0 27 4 2 0 28 4 2 0 29 4 2 0 30 4 2 0 31 4 2 0 32 4 2 0 33 4 2 0 34 4 2 0 35 4 2 0 36 4 2 0 37 4 2 0 39 4 2 0 40 4 2 0 41 4 2 0 42 4 2 0 43 4 2 0 44 4 2 0 45 4 2 0 46 4 2 0 47 4 2 0 49 4 2 0 50 4 2 0 51 4 2 0 78 4 2 0 81 4 2 0 90 4 2 0 113 4 2 0 114 0 205 0 123 0 14 0 124 4 2 0 125 4 2 0 126 11 57 0 149 0 241 0 150 11 61 0 161 11 65 0 165 4 2 1 197 5 161 1 198 4 2 1 199] 
#[1 5 145 0 1 4 6 0 2 4 6 0 3 4 6 0 4 11 49 0 5 4 6 0 6 4 6 0 7 4 6 0 8 4 6 0 9 4 6 0 10 4 6 0 11 4 6 0 12 4 6 0 13 4 6 0 14 4 6 0 15 4 6 0 16 4 6 0 17 4 6 0 19 4 6 0 20 11 53 0 21 4 6 0 22 4 6 0 23 4 6 0 24 4 6 0 25 4 6 0 26 4 6 0 27 4 6 0 28 4 6 0 29 4 6 0 30 4 6 0 31 4 6 0 32 4 6 0 33 4 6 0 34 4 6 0 35 4 6 0 36 4 6 0 37 4 6 0 39 4 6 0 40 4 6 0 41 4 6 0 42 4 6 0 43 4 6 0 44 4 6 0 45 4 6 0 46 4 6 0 47 4 6 0 49 4 6 0 50 4 6 0 51 4 6 0 78 4 6 0 81 4 6 0 90 4 6 0 113 4 6 0 114 0 205 0 123 0 14 0 124 4 6 0 125 4 6 0 126 11 57 0 149 0 241 0 150 11 61 0 161 11 65 0 165 4 6 1 197 5 161 1 198 4 6 1 199] 
#[0 4 10 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 14 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 18 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 22 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 26 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 30 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 34 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 38 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 42 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 46 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 50 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 54 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 58 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 4 62 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 11 77 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 81 0 185 11 81 0 186 0 245 0 241 11 81 0 249 1 113 0 250 1 117 0 251 1 121 0 254 11 81 0 255 0 245 1 5 11 81 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 4 66 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 11 85 0 170 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[0 4 70 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 74 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 4 78 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 11 89 0 170 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 11 93 0 170 11 93 0 171 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 11 97 0 170 11 97 0 171 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 11 101 0 173 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 11 105 0 173 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 11 109 0 173 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 11 113 0 174 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 11 117 0 174 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 11 121 0 174 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 11 125 0 174 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 11 129 0 174 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 11 133 0 174 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 11 137 0 175 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 11 141 0 175 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 11 145 0 175 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 11 149 0 175 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 11 153 0 176 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 11 157 0 177 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 11 161 0 178 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 11 165 0 179 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 11 169 0 179 11 173 0 180 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 11 177 0 179 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 181 0 185 11 181 0 186 0 245 0 241 11 181 0 249 1 113 0 250 1 117 0 251 1 121 0 254 11 181 0 255 0 245 1 5 11 181 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 185 0 185 11 185 0 186 0 245 0 241 11 185 0 249 1 113 0 250 1 117 0 251 1 121 0 254 11 185 0 255 0 245 1 5 11 185 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 11 189 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 201 0 185 11 201 0 186 0 245 0 241 11 201 0 249 1 113 0 250 1 117 0 251 11 197 0 252 11 201 0 253 1 121 0 254 11 201 0 255 0 245 1 5 11 201 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 4 82 0 3 4 82 0 127 4 82 0 129 11 205 1 68 11 209 1 69] 
#[1 11 213 0 128 11 217 1 55 11 217 1 56 11 217 1 57 11 229 1 58 11 233 1 59] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 11 237 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 11 241 0 132 3 81 1 47 3 85 1 48 3 89 1 78 8 185 1 79 8 189 1 80 11 245 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 11 245 1 106 11 245 1 107 3 109 1 108 3 109 1 110] 
#[1 6 173 0 1 3 49 0 10 0 189 0 116 11 249 0 132 6 185 1 78 11 253 1 121] 
#[0 12 1 0 1] 
#[0 4 86 0 18] 
#[1 0 111 0 1 4 90 0 3 4 90 0 4 0 111 0 5 0 111 0 7 3 102 0 8 3 102 0 9 3 102 0 10 3 102 0 11 3 102 0 12 3 102 0 13 3 102 0 14 3 102 0 15 3 102 0 16 3 102 0 17 3 102 0 19 3 102 0 20 3 102 0 21 3 102 0 22 3 102 0 23 3 102 0 24 3 102 0 25 3 102 0 26 3 102 0 27 3 102 0 28 3 102 0 29 3 102 0 30 3 102 0 31 3 102 0 32 3 102 0 33 0 111 0 34 0 111 0 35 0 111 0 36 0 111 0 37 4 90 0 38 3 102 0 39 3 102 0 40 3 102 0 41 3 102 0 42 3 102 0 43 3 102 0 44 3 102 0 45 3 102 0 46 3 102 0 47 4 90 0 48 3 102 0 49 3 102 0 50 3 102 0 51 4 90 0 52 4 90 0 53 4 90 0 54 4 90 0 55 4 90 0 57 4 90 0 58 4 90 0 60 4 90 0 61 4 90 0 62 4 90 0 63 4 90 0 64 4 90 0 65 4 90 0 66 4 90 0 67 4 90 0 68 4 90 0 70 4 90 0 72 4 90 0 74 4 90 0 76 4 90 0 77 3 102 0 78 3 102 0 81 4 90 0 82 4 90 0 84 4 90 0 86 4 90 0 87 4 90 0 88 4 90 0 94 4 90 0 98 4 90 0 99 4 90 0 101 4 90 0 102 4 90 0 103 4 90 0 104 4 90 0 105 4 90 0 106 4 90 0 107 4 90 0 108 4 90 0 109 4 90 0 110 4 90 0 111 3 102 0 113 4 90 0 116 4 90 0 119 4 90 0 120 4 90 0 121 0 111 0 123 0 111 0 124 4 90 0 127 3 102 1 197 0 111 1 198 4 90 1 199] 
#[1 0 6 0 1 0 6 0 3 12 5 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 7 29 0 196 0 57 0 197 7 29 0 198 0 65 0 199 0 6 1 198] 
#[1 12 9 0 7 0 189 0 116 12 13 0 132] 
#[1 12 17 0 7 0 189 0 116 12 21 0 132] 
#[0 4 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 25 0 109] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 12 29 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 12 49 0 58 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 12 49 0 84 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 12 33 0 107 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 12 37 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 12 37 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 41 0 185 12 41 0 186 12 41 0 188 12 45 0 198 12 49 0 199 12 53 0 220 0 245 0 241 12 41 0 249 1 113 0 250 1 117 0 251 1 121 0 254 12 41 0 255 0 245 1 5 12 41 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 12 57 0 1] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 61 0 185 12 61 0 186 12 61 0 188 0 245 0 241 12 61 0 249 1 113 0 250 1 117 0 251 1 121 0 254 12 61 0 255 0 245 1 5 12 61 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 12 65 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 69 0 185 12 69 0 186 12 69 0 188 0 245 0 241 12 69 0 249 1 113 0 250 1 117 0 251 1 121 0 254 12 69 0 255 0 245 1 5 12 69 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 73 0 185 12 73 0 186 12 73 0 188 0 245 0 241 12 73 0 249 1 113 0 250 1 117 0 251 1 121 0 254 12 73 0 255 0 245 1 5 12 73 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 12 77 0 7 6 157 0 113] 
#[1 0 6 0 1 0 6 0 3 12 81 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 6 197 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 0 6 1 198] 
#[1 12 85 0 56 12 89 0 71 12 93 0 236 12 97 0 237] 
#[1 4 98 0 7 9 169 0 22 4 98 0 90 4 98 0 113 12 101 0 148] 
#[1 12 105 0 7 12 109 0 113] 
#[0 4 102 0 7 0 113] 
#[1 9 169 0 22 12 113 0 148] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 12 117 0 132 12 121 0 205 12 121 0 206 12 121 0 207 12 125 1 125 12 129 1 126] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 133 0 185 12 133 0 186 12 133 0 188 0 245 0 241 12 133 0 249 1 113 0 250 1 117 0 251 1 121 0 254 12 133 0 255 0 245 1 5 12 133 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 137 0 185 12 137 0 186 12 137 0 188 0 245 0 241 12 137 0 249 1 113 0 250 1 117 0 251 1 121 0 254 12 137 0 255 0 245 1 5 12 137 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 12 145 0 189 12 145 0 192 12 145 0 193 12 145 0 194 12 145 0 202 12 145 0 216 12 145 0 217 12 145 0 218 12 145 0 219 12 145 0 222 12 145 0 223 12 145 0 225 12 145 0 226 12 145 0 227 12 145 0 232 12 145 0 233 12 145 0 234 12 145 0 235 12 145 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 4 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 5 81 0 3 5 85 0 69 12 149 1 19 5 97 1 20 5 101 1 198] 
#[1 0 115 0 1 4 114 0 3 4 114 0 4 0 115 0 5 0 115 0 7 3 210 0 8 3 210 0 9 3 210 0 10 3 210 0 11 3 210 0 12 3 210 0 13 3 210 0 14 3 210 0 15 3 210 0 16 3 210 0 17 3 210 0 19 3 210 0 20 3 210 0 21 3 210 0 22 3 210 0 23 3 210 0 24 3 210 0 25 3 210 0 26 3 210 0 27 3 210 0 28 3 210 0 29 3 210 0 30 3 210 0 31 3 210 0 32 3 210 0 33 0 115 0 34 0 115 0 35 0 115 0 36 0 115 0 37 4 114 0 38 3 210 0 39 3 210 0 40 3 210 0 41 3 210 0 42 3 210 0 43 3 210 0 44 3 210 0 45 3 210 0 46 3 210 0 47 4 114 0 48 3 210 0 49 3 210 0 50 3 210 0 51 4 114 0 52 4 114 0 53 4 114 0 54 4 114 0 57 4 114 0 58 4 114 0 60 4 114 0 61 4 114 0 62 4 114 0 64 4 114 0 65 4 114 0 67 4 114 0 68 4 114 0 70 4 114 0 72 4 114 0 74 4 114 0 76 4 114 0 77 3 210 0 78 3 210 0 81 4 114 0 82 4 114 0 84 4 114 0 86 4 114 0 87 4 114 0 88 4 114 0 94 4 114 0 98 4 114 0 99 4 114 0 101 4 114 0 102 4 114 0 103 4 114 0 104 4 114 0 105 4 114 0 106 4 114 0 107 4 114 0 108 4 114 0 109 4 114 0 110 4 114 0 111 3 210 0 113 4 114 0 116 4 114 0 119 4 114 0 120 4 114 0 121 0 115 0 123 0 115 0 124 4 114 0 127 3 210 1 197 0 115 1 198 4 114 1 199] 
#[1 0 189 0 116 12 153 0 132] 
#[1 0 189 0 116 12 157 0 132] 
#[1 7 41 0 67 0 189 0 116 12 161 0 132 12 165 1 181 12 169 1 182] 
#[1 0 189 0 116 12 173 0 132] 
#[1 0 189 0 116 12 161 0 132 12 177 1 181 12 169 1 182] 
#[0 12 181 0 119 1 47] 
#[1 0 189 0 116 7 197 0 132 12 185 1 148] 
#[1 0 189 0 116 12 161 0 132 12 189 1 181 12 169 1 182] 
#[0 4 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 193 0 3] 
#[1 0 189 0 116 12 197 0 132] 
#[1 9 37 0 73 12 201 1 35] 
#[1 7 45 0 57 7 49 0 58 2 113 0 67 7 53 0 74 7 57 0 84 7 65 0 86 7 69 0 107 7 89 1 142 7 77 1 180 7 81 1 183 7 85 1 184 7 89 1 190 7 93 1 191] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 12 205 0 57 0 141 0 64 1 157 0 70 12 209 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 12 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 217 0 185 12 217 0 186 12 221 0 240 0 245 0 241 12 217 0 249 1 113 0 250 1 117 0 251 1 121 0 254 12 217 0 255 12 225 1 4 0 245 1 5 12 217 1 7 0 245 1 10 0 245 1 14 1 33 1 16 12 229 1 17 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 12 233 1 183 12 237 1 184 3 33 1 198] 
#[1 3 245 0 3 3 249 0 25 0 189 0 116 4 17 0 119 12 241 0 132 4 1 1 31 4 5 1 32 4 9 1 33 4 13 1 34 4 17 1 38 4 5 1 39 4 17 1 47] 
#[0 4 142 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 146 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 150 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 154 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 158 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 162 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 12 245 0 7 9 37 0 73 12 249 1 35] 
#[1 4 166 0 1 4 166 0 3 4 166 0 5 4 166 0 7 4 166 0 34 4 166 0 35 4 166 0 36 4 166 0 37 4 166 0 38 4 166 0 48 4 166 0 52 4 166 0 53 4 166 0 54 4 166 0 57 4 166 0 58 4 166 0 60 4 166 0 61 0 119 0 62 4 166 0 64 4 166 0 65 4 166 0 67 0 119 0 68 4 166 0 70 4 166 0 72 4 166 0 74 4 166 0 76 0 119 0 77 0 119 0 82 4 166 0 84 0 119 0 86 4 166 0 87 4 166 0 88 4 166 0 94 4 166 0 98 4 166 0 99 4 166 0 101 4 166 0 102 4 166 0 103 4 166 0 104 0 119 0 105 4 166 0 106 4 166 0 107 4 166 0 108 4 166 0 109 4 166 0 110 4 166 0 111 4 166 0 116 4 166 0 119 4 166 0 120 4 166 0 121 4 166 0 123 4 166 0 124 4 166 0 127 4 166 1 198 0 119 1 199] 
#[1 4 174 0 1 4 174 0 3 4 174 0 5 4 174 0 7 4 174 0 34 4 174 0 35 4 174 0 36 4 174 0 37 4 174 0 38 4 174 0 48 4 174 0 52 4 174 0 53 4 174 0 54 4 174 0 57 4 174 0 58 4 174 0 60 4 174 0 61 0 123 0 62 4 174 0 64 4 174 0 65 4 174 0 67 0 123 0 68 4 174 0 70 4 174 0 72 4 174 0 74 4 174 0 76 0 123 0 77 0 123 0 82 4 174 0 84 0 123 0 86 4 174 0 87 4 174 0 88 4 174 0 94 4 174 0 98 4 174 0 99 4 174 0 101 4 174 0 102 4 174 0 103 4 174 0 104 0 123 0 105 4 174 0 106 4 174 0 107 4 174 0 108 4 174 0 109 4 174 0 110 4 174 0 111 4 174 0 116 4 174 0 119 4 174 0 120 4 174 0 121 4 174 0 123 4 174 0 124 4 174 0 127 4 174 1 198 0 123 1 199] 
#[0 4 182 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 186 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 190 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[1 4 194 0 1 4 194 0 3 4 194 0 5 4 194 0 7 4 194 0 34 4 194 0 35 4 194 0 36 4 194 0 37 4 194 0 38 4 194 0 48 4 194 0 52 4 194 0 53 4 194 0 54 4 194 0 57 4 194 0 58 4 194 0 60 4 194 0 61 0 127 0 62 4 194 0 64 4 194 0 65 4 194 0 67 0 127 0 68 4 194 0 70 4 194 0 72 4 194 0 74 4 194 0 76 0 127 0 77 0 127 0 82 4 194 0 84 0 127 0 86 4 194 0 87 4 194 0 88 4 194 0 94 4 194 0 98 4 194 0 99 4 194 0 101 4 194 0 102 4 194 0 103 4 194 0 104 0 127 0 105 4 194 0 106 4 194 0 107 4 194 0 108 4 194 0 109 4 194 0 110 4 194 0 111 4 194 0 116 4 194 0 119 4 194 0 120 4 194 0 121 4 194 0 123 4 194 0 124 4 194 0 127 4 194 1 198 0 127 1 199] 
#[1 3 49 0 10 9 53 0 74 0 189 0 116 8 81 0 132 9 57 1 78] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 12 253 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 13 1 0 1 0 189 0 116 13 5 0 132] 
#[0 13 9 0 1] 
#[1 13 13 0 22 3 6 0 73 3 6 0 113] 
#[1 3 41 0 3 3 49 0 10 13 17 0 69 13 21 1 78 13 25 1 96 13 29 1 130] 
#[0 4 202 0 3 0 21] 
#[1 13 33 0 3 13 37 0 21] 
#[1 3 49 0 10 13 41 0 22 13 45 1 78] 
#[1 5 121 0 1 0 189 0 116 13 49 0 132] 
#[0 1 218 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 226 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 238 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 1 246 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 206 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 22 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 110 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 118 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 189 0 116 13 49 0 132] 
#[0 1 222 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 1 230 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 1 242 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 1 254 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 4 210 0 62 0 77 0 82 0 86 0 105 1 199] 
#[0 2 46 0 62 0 77 0 82 0 86 0 105 1 199] 
#[0 2 114 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 2 122 0 62 0 77 0 82 0 86 0 105 1 199] 
#[1 3 173 0 3 7 101 0 22 7 105 0 25 3 185 0 57 2 105 0 58 7 109 0 62 13 53 0 63 2 113 0 67 3 193 0 74 0 41 0 77 2 129 0 82 0 65 0 84 2 133 0 86 2 137 0 105 1 245 0 107 7 121 0 198 0 65 0 199 7 125 0 202 7 129 0 240 7 133 1 4 7 137 1 17 7 141 1 30 7 145 1 42 13 57 1 120 13 61 1 129 7 157 1 142 7 161 1 147 13 65 1 179 7 173 1 198] 
#[0 1 210 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 0 59 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 26 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 214 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 94 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 2 102 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 3 173 0 3 7 101 0 22 7 105 0 25 7 109 0 62 13 69 0 63 7 245 0 77 2 129 0 82 2 137 0 105 7 145 1 42 13 73 1 120 13 77 1 129 7 165 1 153 13 81 1 179] 
#[0 1 214 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 2 42 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 4 218 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 2 98 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 2 106 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[1 13 85 0 1 3 49 0 10 0 189 0 116 13 89 0 132 13 93 1 78 13 97 1 113 13 101 1 121] 
#[1 3 49 0 10 13 105 1 78] 
#[1 12 1 0 1 5 81 0 3 5 85 0 69 13 109 1 19 5 97 1 20 5 101 1 198] 
#[1 8 113 0 1 13 113 0 4 8 121 0 5 3 49 0 10 8 125 0 87 9 113 0 112 0 189 0 116 4 169 0 117 4 221 0 119 4 225 0 120 9 117 0 132 13 117 0 133 13 117 0 144 13 117 0 145 13 117 0 146 9 125 0 208 9 129 0 209 9 133 0 212 9 133 0 214 4 221 1 47 4 225 1 48 8 133 1 78 8 137 1 97 8 141 1 98 8 145 1 99 8 145 1 111 8 145 1 113 8 145 1 117 8 145 1 118 8 145 1 119 9 141 1 198] 
#[1 3 37 0 1 8 89 0 3 8 93 0 5 9 145 0 6 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 4 89 0 112 4 249 0 113 0 189 0 116 3 81 0 119 3 85 0 120 8 97 0 132 9 149 0 139 4 101 0 205 4 101 0 206 4 101 0 207 9 153 0 210 9 157 0 211 9 161 0 213 9 161 0 214 9 165 0 215 3 81 1 47 3 85 1 48 3 89 1 78 8 177 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 8 173 1 102 8 177 1 103 3 97 1 104 3 101 1 105 8 177 1 106 8 177 1 107 3 109 1 108 3 109 1 110 8 109 1 198] 
#[1 0 131 0 2 0 131 0 4 2 134 0 5 0 131 0 6 2 134 0 7 2 134 0 10 2 138 0 21 9 169 0 22 2 134 0 39 2 134 0 45 0 131 0 113 9 237 0 148] 
#[0 13 121 0 2] 
#[0 13 125 0 2] 
#[1 4 33 0 3 4 37 0 5 3 98 0 41 10 29 0 91 10 29 0 92 10 29 0 93 10 13 0 101 3 98 0 114 0 189 0 116 10 17 0 132 10 25 0 205 10 25 0 206 10 25 0 207 10 25 1 114 10 29 1 115] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 13 129 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 4 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 91 0 92 0 93 0 94 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 198 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 13 133 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 33 0 185 10 33 0 186 0 245 0 241 10 33 0 249 1 113 0 250 1 117 0 251 1 121 0 254 10 33 0 255 0 245 1 5 10 33 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 13 137 0 1 3 49 0 10 13 141 1 78] 
#[1 8 113 0 1 4 226 0 4 4 226 0 7 3 49 0 10 13 145 0 41 4 226 0 113 13 149 0 114 8 133 1 78 13 153 1 112 13 157 1 113] 
#[0 13 161 0 1] 
#[0 13 165 0 4] 
#[1 4 230 0 4 13 169 0 7 13 173 0 113] 
#[0 4 234 0 4 0 7 0 113] 
#[0 4 238 0 4 0 7 0 113] 
#[0 4 242 0 4 0 7 0 113] 
#[0 4 246 0 4 0 7 0 113] 
#[0 4 250 0 4 0 7 0 113] 
#[0 4 254 0 4 0 7 0 113] 
#[0 5 2 0 6 0 113] 
#[1 13 177 0 6 13 181 0 113] 
#[0 5 6 0 6 0 113] 
#[1 5 10 0 13 13 185 0 69 5 10 0 113 13 189 1 81] 
#[1 13 193 0 13 13 197 0 113] 
#[0 5 14 0 13 0 113] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 8 105 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 8 105 1 106 8 105 1 107 3 109 1 108 3 109 1 110] 
#[1 5 18 0 2 5 18 0 3 5 18 0 4 0 135 0 5 5 18 0 6 5 18 0 7 5 18 0 8 5 18 0 10 5 18 0 11 5 18 0 13 5 18 0 14 5 18 0 17 5 18 0 18 5 18 0 19 5 18 0 20 5 18 0 22 5 18 0 23 5 18 0 24 5 18 0 25 5 18 0 26 5 18 0 34 5 18 0 36 5 18 0 39 5 18 0 40 5 18 0 41 5 18 0 43 5 18 0 44 5 18 0 45 5 18 0 46 5 18 0 47 5 18 0 49 5 18 0 50 5 18 0 59 5 18 0 78 5 18 0 81 5 18 0 90 5 18 0 91 5 18 0 92 5 18 0 93 5 18 0 96 5 18 0 113 5 18 0 114 5 18 0 117 5 18 0 119 5 18 0 120 5 18 0 125 5 18 0 126 8 233 0 224 5 18 1 199] 
#[1 5 22 0 2 5 22 0 3 5 22 0 4 0 139 0 5 5 22 0 6 5 22 0 7 5 22 0 8 5 22 0 10 5 22 0 11 5 22 0 13 5 22 0 14 5 22 0 17 5 22 0 18 5 22 0 19 5 22 0 20 5 22 0 22 5 22 0 23 5 22 0 24 5 22 0 25 5 22 0 26 5 22 0 34 5 22 0 36 5 22 0 39 5 22 0 40 5 22 0 41 5 22 0 43 5 22 0 44 5 22 0 45 5 22 0 46 5 22 0 47 5 22 0 49 5 22 0 50 5 22 0 59 5 22 0 78 5 22 0 81 5 22 0 90 5 22 0 91 5 22 0 92 5 22 0 93 5 22 0 96 5 22 0 113 5 22 0 114 5 22 0 117 5 22 0 119 5 22 0 120 5 22 0 125 5 22 0 126 8 233 0 224 5 22 1 199] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 13 201 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 13 205 0 1] 
#[0 5 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[1 5 30 0 2 5 30 0 3 5 30 0 4 5 30 0 5 5 30 0 6 5 30 0 7 5 30 0 8 5 30 0 10 5 30 0 11 5 30 0 13 5 30 0 14 5 30 0 17 5 30 0 18 5 30 0 19 5 30 0 20 13 209 0 21 5 30 0 22 5 30 0 23 5 30 0 24 5 30 0 25 5 30 0 26 5 30 0 34 5 30 0 36 5 30 0 39 5 30 0 40 5 30 0 41 5 30 0 43 5 30 0 44 5 30 0 45 5 30 0 46 5 30 0 47 5 30 0 49 5 30 0 50 5 30 0 59 5 30 0 78 5 30 0 81 5 30 0 90 5 30 0 91 5 30 0 92 5 30 0 93 5 30 0 96 5 30 0 113 5 30 0 114 5 30 0 117 5 30 0 119 5 30 0 120 5 30 0 125 5 30 0 126 5 30 1 199] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 13 213 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 8 193 0 1 3 41 0 3 3 45 0 5 3 53 0 79 3 57 0 83 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 13 217 1 87 13 217 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 13 217 1 105 3 109 1 108 3 109 1 110] 
#[1 8 193 0 1 3 41 0 3 3 45 0 5 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 13 221 1 89 13 221 1 90 13 221 1 91 13 221 1 92 13 221 1 93 3 129 1 94 3 133 1 95 13 221 1 96 13 221 1 100 13 221 1 101 13 221 1 108 13 221 1 110] 
#[0 13 225 0 5] 
#[1 5 34 0 2 5 34 0 3 5 34 0 4 5 34 0 5 5 34 0 6 5 34 0 7 5 34 0 8 0 143 0 10 5 34 0 11 5 34 0 13 5 34 0 14 5 34 0 17 5 34 0 18 5 34 0 19 5 34 0 20 5 34 0 22 5 34 0 23 5 34 0 24 5 34 0 25 5 34 0 26 5 34 0 34 5 34 0 36 5 34 0 39 5 34 0 40 5 34 0 41 5 34 0 43 5 34 0 44 5 34 0 45 5 34 0 46 5 34 0 47 5 34 0 49 5 34 0 50 5 34 0 59 5 34 0 78 5 34 0 80 5 34 0 81 5 34 0 90 5 34 0 91 5 34 0 92 5 34 0 93 5 34 0 96 5 34 0 113 5 34 0 114 5 34 0 117 5 34 0 119 5 34 0 120 5 34 0 125 5 34 0 126 13 229 1 82 5 34 1 199] 
#[1 0 189 0 116 13 233 0 132] 
#[0 5 38 0 7 0 73] 
#[1 5 42 0 4 13 237 0 51 5 42 0 113] 
#[1 13 241 0 4 13 245 0 113] 
#[0 5 46 0 4 0 113] 
#[0 13 249 0 117] 
#[1 13 253 0 1 14 1 0 25 0 189 0 116 14 5 0 132] 
#[1 5 81 0 3 5 85 0 69 14 9 1 19 5 97 1 20 5 101 1 198] 
#[0 4 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 14 13 0 7] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 14 17 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 14 21 0 1 0 189 0 116 14 25 0 132] 
#[0 14 29 0 1] 
#[0 14 33 0 119 1 38 1 47] 
#[0 14 37 0 7] 
#[0 5 50 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 7 41 0 67] 
#[1 13 85 0 1 3 49 0 10 0 189 0 116 14 41 0 132 13 93 1 78 13 97 1 113 14 45 1 121] 
#[1 5 81 0 3 5 85 0 69 13 109 1 19 5 97 1 20 5 101 1 198] 
#[0 5 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 5 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 5 62 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 5 66 0 73] 
#[0 14 49 0 51] 
#[1 14 53 0 4 14 57 0 113] 
#[0 5 70 0 4 0 113] 
#[0 5 74 0 4 0 113] 
#[1 0 189 0 116 14 61 0 132 14 61 1 39] 
#[0 14 65 0 7] 
#[1 3 245 0 3 3 249 0 25 14 69 1 33 14 73 1 34] 
#[0 5 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 5 82 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 0 189 0 116 14 77 0 132] 
#[1 3 62 0 2 3 62 0 4 3 62 0 6 9 169 0 22 3 62 0 113 9 237 0 148] 
#[0 14 81 0 114] 
#[0 14 85 0 4] 
#[1 14 89 0 4 14 93 0 113] 
#[0 5 86 0 4 0 113] 
#[0 5 90 0 4 0 113] 
#[1 14 101 0 91 14 101 0 92 14 101 0 93 0 189 0 116 14 97 0 132 14 101 1 115] 
#[0 5 94 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 4 33 0 3 4 37 0 5 14 105 0 6 4 89 0 112 10 109 0 113 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 14 109 0 213 14 109 0 214 14 113 0 215 8 109 1 198] 
#[1 14 117 0 6 14 121 0 113] 
#[0 5 98 0 6 0 113] 
#[0 5 102 0 6 0 113] 
#[0 14 125 0 6] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 14 129 0 185 14 129 0 186 0 245 0 241 14 129 0 249 1 113 0 250 1 117 0 251 1 121 0 254 14 129 0 255 0 245 1 5 14 129 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 5 106 0 7 0 113] 
#[0 5 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 4 41 0 132 14 133 0 201 4 53 0 205 4 53 0 206 4 53 0 207 14 133 1 127 14 133 1 128 4 73 1 198] 
#[0 5 114 0 7 0 113] 
#[1 13 149 0 114 14 137 1 112] 
#[1 13 149 0 114 14 141 1 112] 
#[1 3 102 0 1 0 147 0 2 0 147 0 4 3 102 0 5 0 147 0 6 3 102 0 8 3 102 0 9 3 102 0 10 3 102 0 11 3 102 0 12 3 102 0 13 3 102 0 14 3 102 0 15 3 102 0 16 3 102 0 17 3 102 0 19 3 102 0 20 3 102 0 21 0 147 0 22 3 102 0 23 3 102 0 24 3 102 0 25 3 102 0 26 3 102 0 27 3 102 0 28 3 102 0 29 3 102 0 30 3 102 0 31 3 102 0 32 3 102 0 33 3 102 0 34 3 102 0 35 3 102 0 36 3 102 0 37 3 102 0 39 3 102 0 40 3 102 0 41 3 102 0 42 3 102 0 43 3 102 0 44 3 102 0 45 3 102 0 46 3 102 0 47 3 102 0 49 3 102 0 50 3 102 0 51 3 102 0 78 3 102 0 81 0 147 0 113 3 102 0 123 3 102 0 124 3 102 1 197 3 102 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 14 145 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 57 0 185 10 57 0 186 0 245 0 241 10 57 0 249 1 113 0 250 1 117 0 251 1 121 0 254 10 57 0 255 0 245 1 5 10 57 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 151 0 4 9 169 0 22 0 151 0 113 14 149 0 148] 
#[1 10 73 0 1 14 153 0 114] 
#[1 4 145 0 5 10 81 0 75 14 101 0 91 14 101 0 92 14 101 0 93 10 85 0 95 0 189 0 116 4 169 0 117 4 221 0 119 4 225 0 120 14 97 0 132 10 89 0 133 10 89 0 144 10 89 0 145 10 89 0 146 4 221 1 47 4 225 1 48 14 101 1 115] 
#[1 3 166 0 1 0 155 0 2 0 155 0 4 3 166 0 5 0 155 0 6 3 166 0 8 3 166 0 9 3 166 0 10 3 166 0 11 3 166 0 12 3 166 0 13 3 166 0 14 3 166 0 15 3 166 0 16 3 166 0 17 3 166 0 19 3 166 0 20 3 166 0 21 0 155 0 22 3 166 0 23 3 166 0 24 3 166 0 25 3 166 0 26 3 166 0 27 3 166 0 28 3 166 0 29 3 166 0 30 3 166 0 31 3 166 0 32 3 166 0 33 3 166 0 34 3 166 0 35 3 166 0 36 3 166 0 37 3 166 0 39 3 166 0 40 3 166 0 41 3 166 0 42 3 166 0 43 3 166 0 44 3 166 0 45 3 166 0 46 3 166 0 47 3 166 0 49 3 166 0 50 3 166 0 51 3 166 0 78 3 166 0 81 0 155 0 113 3 166 0 123 3 166 0 124 3 166 1 197 3 166 1 198] 
#[1 0 93 0 1 4 81 0 3 4 85 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 14 157 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 93 0 185 10 93 0 186 9 233 0 205 9 233 0 206 9 233 0 207 0 245 0 241 10 93 0 249 1 113 0 250 1 117 0 251 1 121 0 254 10 93 0 255 0 245 1 5 10 93 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 4 81 0 3 4 85 0 5 14 161 0 6 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 9 221 0 112 10 109 0 113 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 4 93 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 10 113 0 140 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 117 0 185 10 117 0 186 4 101 0 205 4 101 0 206 4 101 0 207 14 109 0 213 14 109 0 214 14 113 0 215 0 245 0 241 10 117 0 249 1 113 0 250 1 117 0 251 1 121 0 254 10 117 0 255 0 245 1 5 10 117 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 4 137 1 198] 
#[1 5 118 0 2 5 118 0 6 13 149 0 114 14 165 1 112] 
#[0 5 122 0 2 0 6] 
#[0 5 126 0 2 0 4 0 6 0 113] 
#[0 5 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 5 134 0 2 0 4 0 6 0 113] 
#[0 5 138 0 18] 
#[1 5 142 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 14 173 0 213 14 173 0 214 14 169 0 215 14 169 0 245 14 173 0 246 8 109 1 198] 
#[0 5 146 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 59 0 96 0 101 0 113 0 114 0 116 0 117 0 119 0 120 1 198] 
#[0 5 150 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 59 0 96 0 101 0 113 0 114 0 116 0 117 0 119 0 120 1 198] 
#[0 5 154 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 59 0 96 0 101 0 113 0 114 0 116 0 117 0 119 0 120 1 198] 
#[0 5 158 0 2 0 4 0 6 0 22 0 41 0 113 0 114] 
#[1 0 159 0 41 0 163 0 114 14 181 1 112] 
#[0 5 166 0 2 0 4 0 6 0 22 0 41 0 113 0 114] 
#[1 14 185 0 41 13 149 0 114 14 189 1 112] 
#[1 3 98 0 2 4 33 0 3 3 98 0 4 4 37 0 5 3 98 0 6 3 98 0 22 3 98 0 41 10 13 0 101 3 98 0 113 3 98 0 114 0 189 0 116 14 193 0 132 14 197 0 205 14 197 0 206 14 197 0 207 14 197 1 114] 
#[0 14 201 0 6] 
#[0 14 205 0 1] 
#[1 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 14 209 0 133 14 209 0 144 14 209 0 145 14 209 0 146 4 221 1 47 4 225 1 48] 
#[0 14 213 0 1] 
#[0 14 217 0 1] 
#[0 14 221 0 1] 
#[0 5 170 0 4 0 113] 
#[0 5 174 0 4 0 113] 
#[0 5 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 14 225 0 4 4 145 0 5 4 149 0 25 4 153 0 52 4 157 0 75 4 161 0 95 4 165 0 112 0 189 0 116 4 169 0 117 4 221 0 119 4 225 0 120 4 173 0 132 4 189 0 133 14 229 0 143 4 189 0 144 4 189 0 145 4 189 0 146 14 229 0 147 14 229 1 1 14 229 1 3 14 229 1 8 14 229 1 12 4 221 1 47 4 225 1 48 14 229 1 122 14 229 1 123 4 237 1 198] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 14 233 0 242 4 121 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 14 237 0 185 14 237 0 186 0 245 0 241 14 237 0 249 1 113 0 250 1 117 0 251 1 121 0 254 14 237 0 255 0 245 1 5 14 237 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 14 241 0 133 14 241 0 144 14 241 0 145 14 241 0 146 4 221 1 47 4 225 1 48] 
#[1 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 14 245 0 133 14 245 0 144 14 245 0 145 14 245 0 146 4 221 1 47 4 225 1 48] 
#[1 6 173 0 1 3 49 0 10 6 185 1 78 14 249 1 121] 
#[0 5 182 0 4 0 6 0 113] 
#[0 5 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 14 253 0 6 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 4 245 0 112 10 109 0 113 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 15 1 0 140 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 15 5 0 185 15 5 0 186 0 245 0 241 15 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 15 5 0 255 0 245 1 5 15 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 5 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 5 194 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 112 0 113 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 5 198 0 6 0 113] 
#[0 5 202 0 6 0 113] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 11 245 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 11 245 1 106 11 245 1 107 3 109 1 108 3 109 1 110] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 15 9 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 15 13 0 1 0 189 0 116 15 17 0 132] 
#[0 15 21 0 1] 
#[1 0 93 0 1 15 25 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 15 29 0 185 15 29 0 186 0 245 0 241 15 29 0 249 1 113 0 250 1 117 0 251 15 29 0 253 1 121 0 254 15 29 0 255 15 33 1 0 0 245 1 5 15 29 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 5 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 197 1 198 1 199] 
#[0 5 210 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[1 4 145 0 5 4 149 0 25 4 153 0 52 4 157 0 75 4 161 0 95 4 169 0 117 4 221 0 119 4 225 0 120 10 153 0 133 10 153 0 144 10 153 0 145 10 153 0 146 15 37 1 1 15 37 1 3 15 37 1 8 15 37 1 12 4 221 1 47 4 225 1 48 15 37 1 122 15 37 1 123 4 237 1 198] 
#[0 10 73 0 1] 
#[0 5 214 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 15 41 0 4] 
#[1 5 218 0 4 4 145 0 5 10 145 0 7 4 149 0 25 4 153 0 52 4 157 0 75 4 161 0 95 10 149 0 96 4 169 0 117 4 221 0 119 4 225 0 120 10 153 0 133 10 153 0 144 10 153 0 145 10 153 0 146 15 45 1 1 15 45 1 3 15 45 1 8 15 45 1 12 15 45 1 23 4 221 1 47 4 225 1 48 15 45 1 122 15 45 1 123 10 173 1 198] 
#[0 5 222 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[1 8 121 0 5 15 49 0 59 10 81 0 75 15 61 0 91 15 61 0 92 15 61 0 93 10 85 0 95 15 53 0 96 4 169 0 117 4 221 0 119 4 225 0 120 15 57 0 133 15 57 0 144 15 57 0 145 15 57 0 146 4 221 1 47 4 225 1 48 15 61 1 115 15 65 1 118 15 69 1 122 15 73 1 123 15 77 1 136 15 81 1 137 15 81 1 138 15 81 1 139 15 81 1 140 15 97 1 141 15 101 1 198] 
#[0 5 226 0 3] 
#[0 5 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 15 105 0 4 4 145 0 5 10 145 0 7 4 149 0 25 4 153 0 52 4 157 0 75 4 161 0 95 10 149 0 96 4 169 0 117 4 221 0 119 4 225 0 120 10 153 0 133 10 153 0 144 10 153 0 145 10 153 0 146 10 169 1 1 10 169 1 3 10 169 1 8 10 169 1 12 15 109 1 21 10 165 1 22 10 169 1 23 4 221 1 47 4 225 1 48 10 169 1 122 10 169 1 123 10 173 1 198] 
#[1 0 189 0 116 3 77 0 132 15 117 1 93 3 129 1 94 3 133 1 95 15 117 1 134] 
#[1 0 189 0 116 3 77 0 132 15 129 1 93 3 129 1 94 3 133 1 95 15 125 1 131 15 129 1 132] 
#[1 10 193 0 80 15 133 1 135] 
#[0 5 234 0 3] 
#[0 15 137 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 15 141 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 15 145 0 1] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 15 149 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 15 153 0 2] 
#[0 5 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 5 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 5 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 15 157 0 185 15 157 0 186 0 245 0 241 15 157 0 249 1 113 0 250 1 117 0 251 1 121 0 254 15 157 0 255 0 245 1 5 15 157 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 15 161 0 2 15 165 0 113] 
#[0 5 250 0 2 0 113] 
#[1 15 169 0 6 6 157 0 113] 
#[0 5 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 15 173 1 83 15 177 1 84 15 177 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 15 177 1 106 15 177 1 107 3 109 1 108 3 109 1 110] 
#[0 15 185 0 1] 
#[0 6 2 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[1 1 94 0 3 1 94 0 127 1 94 0 129 15 189 1 74] 
#[1 6 157 0 113 15 193 0 125 15 197 0 126 15 201 0 151 15 205 0 152] 
#[1 15 209 0 6 6 157 0 113] 
#[0 6 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 15 213 0 185 15 213 0 186 15 213 0 188 0 245 0 241 15 213 0 249 1 113 0 250 1 117 0 251 1 121 0 254 15 213 0 255 0 245 1 5 15 213 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 6 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 6 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 6 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 6 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 15 217 0 185 15 217 0 186 15 217 0 188 0 245 0 241 15 217 0 249 1 113 0 250 1 117 0 251 1 121 0 254 15 217 0 255 0 245 1 5 15 217 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 15 221 0 117] 
#[0 6 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 6 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 6 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 15 225 0 6 6 157 0 113] 
#[0 6 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 15 229 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 15 229 1 106 15 229 1 107 3 109 1 108 3 109 1 110] 
#[0 6 42 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 6 46 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 6 50 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[1 6 54 0 2 6 54 0 4 6 54 0 6 6 54 0 7 6 65 0 8 6 54 0 10 6 54 0 11 6 54 0 13 6 54 0 14 6 54 0 17 6 54 0 19 6 54 0 20 6 54 0 23 6 54 0 24 6 65 0 25 6 54 0 34 6 54 0 36 6 54 0 39 6 54 0 40 6 54 0 41 6 54 0 43 6 65 0 44 6 54 0 45 6 54 0 46 6 54 0 47 6 54 0 49 6 54 0 50 6 54 0 78 6 54 0 81 6 54 0 90 6 54 0 113 6 54 0 114 6 54 0 125 6 54 0 126 6 65 0 172 6 54 1 199] 
#[1 6 58 0 2 6 58 0 4 6 58 0 6 6 58 0 7 6 65 0 8 6 58 0 10 6 58 0 11 6 58 0 13 6 58 0 14 6 58 0 17 6 58 0 19 6 58 0 20 6 58 0 23 6 58 0 24 6 65 0 25 6 58 0 34 6 58 0 36 6 58 0 39 6 58 0 40 6 58 0 41 6 58 0 43 6 65 0 44 6 58 0 45 6 58 0 46 6 58 0 47 6 58 0 49 6 58 0 50 6 58 0 78 6 58 0 81 6 58 0 90 6 58 0 113 6 58 0 114 6 58 0 125 6 58 0 126 6 65 0 172 6 58 1 199] 
#[1 6 62 0 2 6 62 0 4 6 62 0 6 6 62 0 7 6 62 0 10 6 62 0 11 6 62 0 13 6 62 0 14 6 62 0 17 6 62 0 19 6 62 0 20 6 62 0 23 6 62 0 24 6 69 0 34 6 73 0 36 6 62 0 39 6 62 0 40 6 62 0 41 6 62 0 43 6 62 0 45 6 62 0 46 6 62 0 47 6 62 0 49 6 62 0 50 6 62 0 78 6 62 0 81 6 62 0 90 6 62 0 113 6 62 0 114 6 62 0 125 6 62 0 126 6 62 1 199] 
#[1 6 66 0 2 6 66 0 4 6 66 0 6 6 66 0 7 6 66 0 10 6 66 0 11 6 66 0 13 6 66 0 14 6 66 0 17 6 66 0 19 6 66 0 20 6 66 0 23 6 66 0 24 6 69 0 34 6 73 0 36 6 66 0 39 6 66 0 40 6 66 0 41 6 66 0 43 6 66 0 45 6 66 0 46 6 66 0 47 6 66 0 49 6 66 0 50 6 66 0 78 6 66 0 81 6 66 0 90 6 66 0 113 6 66 0 114 6 66 0 125 6 66 0 126 6 66 1 199] 
#[1 6 70 0 2 6 70 0 4 6 70 0 6 6 70 0 7 6 70 0 10 6 70 0 11 6 70 0 13 6 70 0 14 6 70 0 17 6 70 0 19 6 70 0 20 6 70 0 23 6 70 0 24 6 69 0 34 6 73 0 36 6 70 0 39 6 70 0 40 6 70 0 41 6 70 0 43 6 70 0 45 6 70 0 46 6 70 0 47 6 70 0 49 6 70 0 50 6 70 0 78 6 70 0 81 6 70 0 90 6 70 0 113 6 70 0 114 6 70 0 125 6 70 0 126 6 70 1 199] 
#[1 6 74 0 2 6 74 0 4 6 74 0 6 6 74 0 7 6 74 0 10 6 77 0 11 6 74 0 13 6 81 0 14 6 85 0 17 6 74 0 19 6 74 0 20 6 74 0 23 6 74 0 24 6 74 0 39 6 74 0 40 6 74 0 41 6 74 0 43 6 74 0 45 6 74 0 46 6 74 0 47 6 74 0 49 6 74 0 50 6 74 0 78 6 74 0 81 6 74 0 90 6 74 0 113 6 74 0 114 6 74 0 125 6 74 0 126 6 74 1 199] 
#[1 6 78 0 2 6 78 0 4 6 78 0 6 6 78 0 7 6 78 0 10 6 77 0 11 6 78 0 13 6 81 0 14 6 85 0 17 6 78 0 19 6 78 0 20 6 78 0 23 6 78 0 24 6 78 0 39 6 78 0 40 6 78 0 41 6 78 0 43 6 78 0 45 6 78 0 46 6 78 0 47 6 78 0 49 6 78 0 50 6 78 0 78 6 78 0 81 6 78 0 90 6 78 0 113 6 78 0 114 6 78 0 125 6 78 0 126 6 78 1 199] 
#[1 6 82 0 2 6 82 0 4 6 82 0 6 6 82 0 7 6 82 0 10 6 77 0 11 6 82 0 13 6 81 0 14 6 85 0 17 6 82 0 19 6 82 0 20 6 82 0 23 6 82 0 24 6 82 0 39 6 82 0 40 6 82 0 41 6 82 0 43 6 82 0 45 6 82 0 46 6 82 0 47 6 82 0 49 6 82 0 50 6 82 0 78 6 82 0 81 6 82 0 90 6 82 0 113 6 82 0 114 6 82 0 125 6 82 0 126 6 82 1 199] 
#[1 6 86 0 2 6 86 0 4 6 86 0 6 6 86 0 7 6 86 0 10 6 77 0 11 6 86 0 13 6 81 0 14 6 85 0 17 6 86 0 19 6 86 0 20 6 86 0 23 6 86 0 24 6 86 0 39 6 86 0 40 6 86 0 41 6 86 0 43 6 86 0 45 6 86 0 46 6 86 0 47 6 86 0 49 6 86 0 50 6 86 0 78 6 86 0 81 6 86 0 90 6 86 0 113 6 86 0 114 6 86 0 125 6 86 0 126 6 86 1 199] 
#[1 6 90 0 2 6 90 0 4 6 90 0 6 6 90 0 7 6 90 0 10 6 77 0 11 6 90 0 13 6 81 0 14 6 85 0 17 6 90 0 19 6 90 0 20 6 90 0 23 6 90 0 24 6 90 0 39 6 90 0 40 6 90 0 41 6 90 0 43 6 90 0 45 6 90 0 46 6 90 0 47 6 90 0 49 6 90 0 50 6 90 0 78 6 90 0 81 6 90 0 90 6 90 0 113 6 90 0 114 6 90 0 125 6 90 0 126 6 90 1 199] 
#[1 6 94 0 2 6 94 0 4 6 94 0 6 6 94 0 7 6 94 0 10 6 77 0 11 6 94 0 13 6 81 0 14 6 85 0 17 6 94 0 19 6 94 0 20 6 94 0 23 6 94 0 24 6 94 0 39 6 94 0 40 6 94 0 41 6 94 0 43 6 94 0 45 6 94 0 46 6 94 0 47 6 94 0 49 6 94 0 50 6 94 0 78 6 94 0 81 6 94 0 90 6 94 0 113 6 94 0 114 6 94 0 125 6 94 0 126 6 94 1 199] 
#[1 6 98 0 2 6 98 0 4 6 98 0 6 6 98 0 7 6 89 0 10 6 93 0 13 6 97 0 19 6 101 0 20 6 98 0 23 6 98 0 24 6 98 0 39 6 98 0 40 6 98 0 41 6 98 0 43 6 98 0 45 6 98 0 46 6 98 0 47 6 98 0 49 6 98 0 50 6 105 0 78 6 109 0 81 6 98 0 90 6 98 0 113 6 98 0 114 6 98 0 125 6 98 0 126 6 98 1 199] 
#[1 6 102 0 2 6 102 0 4 6 102 0 6 6 102 0 7 6 89 0 10 6 93 0 13 6 97 0 19 6 101 0 20 6 102 0 23 6 102 0 24 6 102 0 39 6 102 0 40 6 102 0 41 6 102 0 43 6 102 0 45 6 102 0 46 6 102 0 47 6 102 0 49 6 102 0 50 6 105 0 78 6 109 0 81 6 102 0 90 6 102 0 113 6 102 0 114 6 102 0 125 6 102 0 126 6 102 1 199] 
#[1 6 106 0 2 6 106 0 4 6 106 0 6 6 106 0 7 6 89 0 10 6 93 0 13 6 97 0 19 6 101 0 20 6 106 0 23 6 106 0 24 6 106 0 39 6 106 0 40 6 106 0 41 6 106 0 43 6 106 0 45 6 106 0 46 6 106 0 47 6 106 0 49 6 106 0 50 6 105 0 78 6 109 0 81 6 106 0 90 6 106 0 113 6 106 0 114 6 106 0 125 6 106 0 126 6 106 1 199] 
#[1 6 110 0 2 6 110 0 4 6 110 0 6 6 110 0 7 6 89 0 10 6 93 0 13 6 97 0 19 6 101 0 20 6 110 0 23 6 110 0 24 6 110 0 39 6 110 0 40 6 110 0 41 6 110 0 43 6 110 0 45 6 110 0 46 6 110 0 47 6 110 0 49 6 110 0 50 6 105 0 78 6 109 0 81 6 110 0 90 6 110 0 113 6 110 0 114 6 110 0 125 6 110 0 126 6 110 1 199] 
#[1 6 114 0 2 6 114 0 4 6 114 0 6 6 114 0 7 6 113 0 23 6 117 0 24 6 114 0 39 6 114 0 40 6 114 0 41 6 114 0 43 6 114 0 45 6 114 0 46 6 114 0 47 6 121 0 49 6 125 0 50 6 114 0 90 6 114 0 113 6 114 0 114 6 114 0 125 6 114 0 126 6 114 1 199] 
#[1 6 118 0 2 6 118 0 4 6 118 0 6 6 118 0 7 6 129 0 39 6 118 0 40 6 118 0 41 6 118 0 43 6 118 0 45 6 118 0 46 6 118 0 47 6 118 0 90 6 118 0 113 6 118 0 114 6 118 0 125 6 118 0 126 6 118 1 199] 
#[1 6 122 0 2 6 122 0 4 6 122 0 6 6 122 0 7 6 122 0 40 6 122 0 41 6 122 0 43 6 122 0 45 6 122 0 46 6 133 0 47 6 122 0 90 6 122 0 113 6 122 0 114 6 122 0 125 6 122 0 126 6 122 1 199] 
#[1 6 126 0 2 6 126 0 4 6 126 0 6 6 126 0 7 6 126 0 40 6 126 0 41 6 137 0 45 6 126 0 46 6 126 0 90 6 126 0 113 6 126 0 114 6 126 0 125 6 126 0 126 6 126 1 199] 
#[1 0 242 0 2 0 242 0 4 0 242 0 6 0 242 0 7 0 242 0 40 0 242 0 41 6 137 0 45 0 242 0 46 0 242 0 90 0 242 0 113 0 242 0 114 0 242 0 125 0 242 0 126 0 242 1 199] 
#[1 6 130 0 2 6 130 0 4 6 130 0 6 6 130 0 7 6 141 0 40 6 130 0 41 6 130 0 46 6 130 0 90 6 130 0 113 6 130 0 114 6 130 0 125 6 130 0 126 6 130 1 199] 
#[1 6 134 0 2 6 134 0 4 6 134 0 6 6 134 0 7 6 134 0 41 6 134 0 43 6 137 0 45 6 134 0 90 6 134 0 113 6 134 0 114 6 134 0 125 6 134 0 126 6 134 1 199] 
#[0 15 233 0 114] 
#[0 6 138 0 2 0 6 0 7 0 113 0 114 0 125 0 126 1 199] 
#[1 0 6 0 1 0 6 0 3 0 167 0 4 0 19 0 5 0 6 0 7 4 149 0 25 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 23 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 4 157 0 75 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 4 161 0 95 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 4 165 0 112 0 27 0 116 4 169 0 117 0 31 0 119 0 35 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 4 173 0 132 4 189 0 133 4 181 0 142 4 185 0 143 4 189 0 144 4 189 0 145 4 189 0 146 4 185 0 147 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 15 241 0 247 15 245 0 248 4 185 1 1 4 185 1 3 4 185 1 8 4 185 1 12 4 221 1 47 4 225 1 48 4 185 1 122 4 185 1 123 0 39 1 198] 
#[0 6 146 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 6 150 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 6 154 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[1 0 18 0 127 15 249 1 53 15 253 1 72] 
#[1 6 158 0 3 0 171 0 127 16 1 0 129 16 9 1 50 16 9 1 51 1 181 1 52 16 9 1 70 1 189 1 72 16 13 1 77] 
#[1 6 166 0 3 6 166 0 8 6 166 0 13 16 17 0 21 16 21 0 114 6 166 0 128] 
#[1 6 158 0 3 16 25 0 8 0 126 0 13 16 29 0 128 16 57 1 56 16 37 1 60 16 41 1 61 16 45 1 62 16 41 1 63 16 41 1 64 16 57 1 65 16 61 1 73 16 65 1 77] 
#[0 6 170 0 3 0 8 0 13 0 128] 
#[0 6 174 0 3 0 8 0 13 0 128] 
#[0 6 178 0 128] 
#[1 16 69 0 128 16 73 1 58] 
#[0 16 77 0 2] 
#[1 2 134 0 5 2 134 0 10 0 175 0 13 2 138 0 21 2 134 0 39 2 134 0 45 13 185 0 69 5 10 0 113 13 189 1 81] 
#[0 16 81 0 13] 
#[1 6 173 0 1 3 49 0 10 6 185 1 78 16 85 1 121] 
#[0 16 89 0 3] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 16 93 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 6 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 6 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 16 97 0 7] 
#[0 6 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 16 101 0 7] 
#[0 16 105 0 1] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 16 109 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 16 113 0 185 16 113 0 186 16 113 0 188 0 245 0 241 16 113 0 249 1 113 0 250 1 117 0 251 1 121 0 254 16 113 0 255 0 245 1 5 16 113 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 16 117 0 132 16 121 0 203 16 125 0 204 16 129 0 205 16 129 0 206 16 129 0 207 16 133 0 221 7 9 1 198] 
#[1 0 198 0 7 0 198 0 8 6 41 0 9 0 198 0 10 0 198 0 11 6 41 0 12 0 198 0 13 0 198 0 14 6 41 0 15 6 41 0 16 0 198 0 17 0 198 0 19 0 198 0 20 6 41 0 22 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 6 41 0 27 6 41 0 28 6 41 0 29 6 41 0 30 6 41 0 31 6 41 0 32 6 41 0 33 0 198 0 34 6 29 0 35 0 198 0 36 6 33 0 37 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 49 0 198 0 50 6 37 0 51 0 179 0 78 0 198 0 81 16 141 0 90 0 198 0 113 6 41 0 187 6 41 1 197] 
#[1 16 145 0 7 6 157 0 113] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 16 149 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 16 153 0 185 16 153 0 186 16 153 0 188 0 245 0 241 16 153 0 249 1 113 0 250 1 117 0 251 1 121 0 254 16 153 0 255 0 245 1 5 16 153 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 16 157 0 132 4 45 0 200 4 49 0 201 16 161 0 205 16 161 0 206 16 161 0 207 16 165 0 221 4 49 1 127 4 49 1 128 4 73 1 198] 
#[1 16 169 0 78 16 173 0 90] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 5 17 0 52 0 137 0 57 16 185 0 58 1 157 0 70 0 149 0 74 0 153 0 77 16 185 0 84 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 16 177 0 107 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 16 181 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 16 181 0 167 16 185 0 199 16 189 0 220 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 141 1 198] 
#[1 16 193 0 2 6 157 0 113] 
#[0 6 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 16 197 0 7 6 157 0 113] 
#[1 16 201 0 2 6 157 0 113] 
#[0 6 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 16 205 0 1 6 241 0 3 16 209 0 194] 
#[1 6 241 0 3 16 213 0 194] 
#[1 6 202 0 1 6 202 0 3 6 202 0 4 6 202 0 5 6 202 0 7 6 202 0 34 6 202 0 35 6 202 0 36 6 202 0 37 6 202 0 38 6 202 0 48 6 202 0 52 6 202 0 53 6 202 0 54 6 202 0 55 6 202 0 57 6 202 0 58 6 202 0 60 6 202 0 61 6 202 0 62 6 202 0 63 6 202 0 64 6 202 0 65 6 202 0 66 6 202 0 67 6 202 0 68 6 202 0 70 12 89 0 71 6 202 0 72 6 202 0 74 6 202 0 76 6 202 0 77 6 202 0 82 6 202 0 84 6 202 0 86 6 202 0 87 6 202 0 88 6 202 0 94 6 202 0 98 6 202 0 99 6 202 0 101 6 202 0 102 6 202 0 103 6 202 0 104 6 202 0 105 6 202 0 106 6 202 0 107 6 202 0 108 6 202 0 109 6 202 0 110 6 202 0 111 6 202 0 116 6 202 0 119 6 202 0 120 6 202 0 121 6 202 0 123 6 202 0 124 6 202 0 127 16 217 0 237 6 202 1 198 6 202 1 199] 
#[0 6 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 6 210 0 7 0 90 0 113] 
#[0 6 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 6 249 0 132 16 221 0 204 7 5 0 205 7 5 0 206 7 5 0 207 7 9 1 198] 
#[0 6 218 0 7 0 90 0 113] 
#[1 13 149 0 114 16 225 1 112] 
#[1 13 149 0 114 16 229 1 112] 
#[0 6 222 0 7 0 90 0 113] 
#[0 6 226 0 7 0 90 0 113] 
#[1 16 233 0 2 6 157 0 113] 
#[1 16 237 0 2 6 157 0 113] 
#[0 6 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 6 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 183 0 1 6 238 0 3 6 238 0 4 0 183 0 5 0 183 0 7 5 230 0 8 5 230 0 9 5 230 0 10 5 230 0 11 5 230 0 12 5 230 0 13 5 230 0 14 5 230 0 15 5 230 0 16 5 230 0 17 5 230 0 19 5 230 0 20 5 230 0 21 5 230 0 22 5 230 0 23 5 230 0 24 5 230 0 25 5 230 0 26 5 230 0 27 5 230 0 28 5 230 0 29 5 230 0 30 5 230 0 31 5 230 0 32 5 230 0 33 0 183 0 34 0 183 0 35 0 183 0 36 0 183 0 37 6 238 0 38 5 230 0 39 5 230 0 40 5 230 0 41 5 230 0 42 5 230 0 43 5 230 0 44 5 230 0 45 5 230 0 46 5 230 0 47 6 238 0 48 5 230 0 49 5 230 0 50 5 230 0 51 6 238 0 52 6 238 0 53 6 238 0 54 6 238 0 57 6 238 0 58 6 238 0 60 6 238 0 61 6 238 0 62 6 238 0 64 6 238 0 65 6 238 0 67 6 238 0 68 6 238 0 70 6 238 0 72 6 238 0 74 6 238 0 76 6 238 0 77 5 230 0 78 5 230 0 81 6 238 0 82 6 238 0 84 6 238 0 86 6 238 0 87 6 238 0 88 6 238 0 94 6 238 0 98 6 238 0 99 6 238 0 101 6 238 0 102 6 238 0 103 6 238 0 104 6 238 0 105 6 238 0 106 6 238 0 107 6 238 0 108 6 238 0 109 6 238 0 110 6 238 0 111 5 230 0 113 6 238 0 116 6 238 0 119 6 238 0 120 6 238 0 121 0 183 0 123 0 183 0 124 6 238 0 127 5 230 1 197 0 183 1 198 6 238 1 199] 
#[0 16 241 0 3] 
#[1 3 49 0 10 5 85 0 69 16 245 1 20 16 249 1 78 5 101 1 198] 
#[1 6 242 0 7 6 242 0 113 13 149 0 114 16 253 1 112] 
#[1 17 1 0 7 17 5 0 113] 
#[0 6 246 0 7 0 113] 
#[1 8 113 0 1 3 49 0 10 8 133 1 78 17 9 1 113] 
#[1 17 13 0 7 17 5 0 113] 
#[0 17 17 0 3] 
#[1 17 21 0 3 13 37 0 21] 
#[1 17 25 0 7 17 5 0 113] 
#[1 17 29 0 4 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 17 33 0 133 17 33 0 144 17 33 0 145 17 33 0 146 4 221 1 47 4 225 1 48 17 37 1 143 17 41 1 144 17 45 1 145] 
#[0 17 49 0 7] 
#[0 17 53 0 7] 
#[1 5 81 0 3 5 85 0 69 0 189 0 116 17 57 0 132 7 37 1 19 5 97 1 20 5 101 1 198] 
#[1 7 177 0 1 7 181 0 25 0 189 0 116 17 61 0 132] 
#[1 0 130 0 1 0 130 0 5 0 187 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 134 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 78 0 130 0 81 0 130 0 123 0 130 0 124 0 130 1 197 0 130 1 198] 
#[0 17 69 0 7] 
#[0 6 250 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 6 254 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 7 2 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 7 6 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 7 10 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[1 17 73 0 22 3 6 0 73 3 6 0 113] 
#[0 7 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 17 77 0 7] 
#[0 17 81 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 17 85 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 17 89 0 1] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 17 93 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 0 189 0 116 17 97 0 132 17 101 1 95 17 105 1 154 17 109 1 196] 
#[1 0 189 0 116 3 77 0 132 17 113 1 93 3 129 1 94 3 133 1 95 17 113 1 132] 
#[1 3 41 0 3 13 17 0 69 17 117 1 96 17 121 1 130] 
#[0 7 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 3 41 0 3 17 125 1 96] 
#[1 0 93 0 1 1 197 0 3 7 22 0 4 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 2 101 0 57 2 105 0 58 1 209 0 60 1 213 0 61 7 109 0 62 0 141 0 64 1 217 0 65 2 113 0 67 17 129 0 68 1 157 0 70 1 221 0 72 2 121 0 74 1 225 0 76 7 209 0 77 2 129 0 82 0 65 0 84 2 133 0 86 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 2 137 0 105 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 17 177 0 189 17 177 0 192 17 177 0 193 17 177 0 194 17 177 0 198 0 65 0 199 17 177 0 202 17 177 0 216 17 177 0 217 17 177 0 218 17 177 0 219 17 177 0 222 17 177 0 223 17 177 0 225 17 177 0 226 17 177 0 227 17 177 0 232 17 177 0 234 17 177 0 235 17 177 0 239 17 177 0 240 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 17 177 1 4 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 17 177 1 17 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 17 177 1 120 17 177 1 129 17 177 1 142 17 177 1 147 17 169 1 149 17 173 1 150 17 177 1 151 17 177 1 152 17 177 1 153 17 177 1 179 3 33 1 198] 
#[1 0 189 0 116 17 193 0 132] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 17 197 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 17 197 1 106 17 197 1 107 3 109 1 108 3 109 1 110] 
#[0 17 201 0 22] 
#[0 17 73 0 22] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 2 101 0 57 0 141 0 64 1 157 0 70 2 121 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 217 0 185 12 217 0 186 12 221 0 240 0 245 0 241 12 217 0 249 1 113 0 250 1 117 0 251 1 121 0 254 12 217 0 255 12 225 1 4 0 245 1 5 12 217 1 7 0 245 1 10 0 245 1 14 1 33 1 16 12 229 1 17 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 3 33 1 198] 
#[0 4 166 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 174 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 4 194 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 7 45 0 57 7 53 0 74 0 189 0 116 17 205 0 132 12 233 1 183 12 237 1 184] 
#[0 4 170 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 4 178 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 4 198 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 17 209 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 13 85 0 1 3 49 0 10 13 93 1 78 17 213 1 113 17 217 1 121] 
#[0 17 221 0 1] 
#[0 17 225 0 7] 
#[0 17 229 0 3] 
#[1 5 81 0 3 5 85 0 69 17 233 1 19 5 97 1 20 5 101 1 198] 
#[0 7 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 191 0 2 0 191 0 4 4 222 0 5 0 191 0 6 4 222 0 7 5 82 0 22 4 222 0 39 4 222 0 45 0 191 0 113] 
#[1 8 113 0 1 4 226 0 4 4 226 0 7 3 49 0 10 13 145 0 41 4 226 0 113 17 237 0 114 8 133 1 78 13 153 1 112 13 157 1 113] 
#[0 17 241 0 18] 
#[0 7 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 17 245 0 2] 
#[1 0 130 0 1 0 130 0 5 0 130 0 6 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 134 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 78 0 130 0 81 17 249 0 114 0 130 0 123 0 130 0 124 0 130 1 197 0 130 1 198] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 17 253 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 18 1 0 1] 
#[1 8 113 0 1 7 34 0 4 7 34 0 7 3 49 0 10 7 34 0 113 13 149 0 114 8 133 1 78 18 5 1 112 18 9 1 113] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 18 13 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 18 13 1 106 18 13 1 107 3 109 1 108 3 109 1 110] 
#[0 7 38 0 4 0 7 0 113] 
#[0 7 42 0 4 0 7 0 113] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 18 17 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 7 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 91 0 92 0 93 0 94 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 198 1 199] 
#[1 8 113 0 1 7 50 0 4 8 121 0 5 3 49 0 10 8 125 0 87 4 169 0 117 4 221 0 119 4 225 0 120 8 129 0 133 8 129 0 144 8 129 0 145 8 129 0 146 4 221 1 47 4 225 1 48 8 133 1 78 18 21 1 99 18 21 1 111 18 21 1 113 18 21 1 117 18 21 1 118 18 21 1 119] 
#[1 8 113 0 1 7 54 0 4 8 121 0 5 3 49 0 10 8 125 0 87 4 169 0 117 4 221 0 119 4 225 0 120 8 129 0 133 8 129 0 144 8 129 0 145 8 129 0 146 4 221 1 47 4 225 1 48 8 133 1 78 18 25 1 99 18 25 1 111 18 25 1 113 18 25 1 117 18 25 1 118 18 25 1 119] 
#[0 7 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 18 29 0 6 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 18 33 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 18 33 1 103 3 97 1 104 3 101 1 105 18 33 1 106 18 33 1 107 3 109 1 108 3 109 1 110] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 18 37 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 18 37 1 106 18 37 1 107 3 109 1 108 3 109 1 110] 
#[0 7 62 0 13 0 113] 
#[0 7 66 0 1 0 3 0 22 0 69 1 198] 
#[1 0 189 0 116 8 181 0 132 18 41 1 80] 
#[0 18 45 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 18 49 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 0 189 0 116 18 53 0 132] 
#[0 18 57 0 2] 
#[1 7 70 0 2 7 70 0 3 7 70 0 4 7 70 0 5 7 70 0 6 7 70 0 7 7 70 0 8 7 70 0 10 7 70 0 11 7 70 0 13 7 70 0 14 7 70 0 17 7 70 0 18 7 70 0 19 7 70 0 20 7 70 0 22 7 70 0 23 7 70 0 24 7 70 0 25 7 70 0 26 7 70 0 34 7 70 0 36 0 195 0 39 7 70 0 40 7 70 0 41 7 70 0 43 7 70 0 44 7 70 0 45 7 70 0 46 7 70 0 47 7 70 0 49 7 70 0 50 7 70 0 59 7 70 0 78 7 70 0 81 7 70 0 90 7 70 0 91 7 70 0 92 7 70 0 93 7 70 0 96 7 70 0 113 7 70 0 114 7 70 0 117 7 70 0 119 7 70 0 120 7 70 0 125 7 70 0 126 7 70 1 199] 
#[1 7 74 0 2 7 74 0 3 7 74 0 4 0 199 0 5 7 74 0 6 7 74 0 7 7 74 0 8 7 74 0 10 7 74 0 11 7 74 0 13 7 74 0 14 7 74 0 17 7 74 0 18 7 74 0 19 7 74 0 20 7 74 0 22 7 74 0 23 7 74 0 24 7 74 0 25 7 74 0 26 7 74 0 34 7 74 0 36 7 74 0 39 7 74 0 40 7 74 0 41 7 74 0 43 7 74 0 44 7 74 0 45 7 74 0 46 7 74 0 47 7 74 0 49 7 74 0 50 7 74 0 59 7 74 0 78 7 74 0 81 7 74 0 90 7 74 0 91 7 74 0 92 7 74 0 93 7 74 0 96 7 74 0 113 7 74 0 114 7 74 0 117 7 74 0 119 7 74 0 120 7 74 0 125 7 74 0 126 8 233 0 224 7 74 1 199] 
#[0 18 61 0 6] 
#[0 7 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 80 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[1 7 82 0 2 7 82 0 3 7 82 0 4 7 82 0 5 7 82 0 6 7 82 0 7 7 82 0 8 7 82 0 10 7 82 0 11 7 82 0 13 7 82 0 14 7 82 0 17 7 82 0 18 7 82 0 19 7 82 0 20 7 86 0 21 7 82 0 22 7 82 0 23 7 82 0 24 7 82 0 25 7 82 0 26 7 82 0 34 7 82 0 36 7 82 0 39 7 82 0 40 7 82 0 41 7 82 0 43 7 82 0 44 7 82 0 45 7 82 0 46 7 82 0 47 7 82 0 49 7 82 0 50 7 82 0 59 7 82 0 78 7 82 0 80 7 82 0 81 7 82 0 90 7 82 0 91 7 82 0 92 7 82 0 93 7 82 0 96 7 82 0 113 7 82 0 114 7 82 0 117 7 82 0 119 7 82 0 120 7 82 0 125 7 82 0 126 7 82 1 199] 
#[0 18 65 0 117] 
#[0 7 90 0 7 0 73] 
#[1 18 69 0 4 8 249 0 117 18 73 1 44] 
#[0 7 94 0 73] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 18 77 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 18 81 0 1 0 189 0 116 18 85 0 132] 
#[0 18 89 0 1] 
#[0 6 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 7 98 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 18 93 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 18 97 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 18 101 0 1] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 18 105 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 7 102 0 7] 
#[0 7 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 13 85 0 1 3 49 0 10 13 93 1 78 17 213 1 113 18 109 1 121] 
#[0 18 113 0 3] 
#[1 0 189 0 116 18 117 0 132 18 117 1 39] 
#[0 7 110 0 73] 
#[1 18 121 0 4 0 189 0 116 9 77 0 117 9 89 0 132 18 125 1 37 9 89 1 39] 
#[0 7 114 0 73] 
#[0 7 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 7 122 0 73] 
#[0 7 126 0 73] 
#[0 7 130 0 4] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 18 129 0 213 18 129 0 214 8 109 1 198] 
#[0 7 134 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 7 138 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 18 133 0 4 4 145 0 5 9 113 0 112 0 189 0 116 4 169 0 117 4 221 0 119 4 225 0 120 9 117 0 132 9 121 0 133 9 121 0 144 9 121 0 145 9 121 0 146 18 137 0 208 18 141 0 212 18 141 0 214 4 221 1 47 4 225 1 48 9 141 1 198] 
#[1 14 177 0 41 13 149 0 114 14 181 1 112] 
#[1 0 189 0 116 18 145 0 132] 
#[0 7 142 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 7 146 0 6 0 113] 
#[0 18 149 0 6] 
#[0 7 150 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 4 33 0 3 4 37 0 5 18 153 0 6 4 89 0 112 4 249 0 113 0 189 0 116 9 117 0 132 18 157 0 139 4 101 0 205 4 101 0 206 4 101 0 207 18 161 0 211 9 161 0 213 9 161 0 214 18 165 0 215 8 109 1 198] 
#[0 7 154 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 7 158 0 2 0 4 0 6 0 7 0 90 0 113] 
#[0 7 162 0 7 0 113] 
#[1 7 166 0 7 9 169 0 22 7 166 0 113 18 169 0 148] 
#[1 7 170 0 7 9 169 0 22 7 170 0 113 18 173 0 148] 
#[1 0 130 0 1 0 203 0 4 0 130 0 5 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 134 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 78 0 130 0 81 0 130 0 113 0 130 0 123 0 130 0 124 0 130 1 197 0 130 1 198] 
#[0 0 207 0 4 0 113] 
#[1 0 93 0 1 4 81 0 3 4 85 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 4 93 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 14 237 0 185 14 237 0 186 4 101 0 205 4 101 0 206 4 101 0 207 18 129 0 213 18 129 0 214 0 245 0 241 14 237 0 249 1 113 0 250 1 117 0 251 1 121 0 254 14 237 0 255 0 245 1 5 14 237 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 4 137 1 198] 
#[1 0 130 0 1 0 130 0 5 0 211 0 6 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 134 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 78 0 130 0 81 0 130 0 113 13 149 0 114 0 130 0 123 0 130 0 124 14 165 1 112 0 130 1 197 0 130 1 198] 
#[1 5 190 0 1 0 215 0 2 0 215 0 4 5 190 0 5 0 215 0 6 5 190 0 8 5 190 0 9 5 190 0 10 5 190 0 11 5 190 0 12 5 190 0 13 5 190 0 14 5 190 0 15 5 190 0 16 5 190 0 17 5 190 0 19 5 190 0 20 5 190 0 21 0 215 0 22 5 190 0 23 5 190 0 24 5 190 0 25 5 190 0 26 5 190 0 27 5 190 0 28 5 190 0 29 5 190 0 30 5 190 0 31 5 190 0 32 5 190 0 33 5 190 0 34 5 190 0 35 5 190 0 36 5 190 0 37 5 190 0 39 5 190 0 40 5 190 0 41 5 190 0 42 5 190 0 43 5 190 0 44 5 190 0 45 5 190 0 46 5 190 0 47 5 190 0 49 5 190 0 50 5 190 0 51 5 190 0 78 5 190 0 81 0 215 0 113 5 190 0 123 5 190 0 124 5 190 1 197 5 190 1 198] 
#[0 7 174 0 2 0 6] 
#[0 7 178 0 2] 
#[0 7 182 0 2 0 113] 
#[0 7 186 0 2 0 4 0 6 0 113] 
#[1 7 190 0 2 7 190 0 4 7 190 0 6 9 169 0 22 7 190 0 113 18 177 0 148] 
#[1 7 194 0 2 7 194 0 4 7 194 0 6 7 194 0 113 13 149 0 114 18 181 1 112] 
#[1 7 198 0 2 7 198 0 4 7 198 0 6 9 169 0 22 7 198 0 113 18 185 0 148] 
#[1 0 219 0 2 0 219 0 4 0 219 0 6 0 223 0 22 0 227 0 41 0 219 0 113 0 163 0 114 18 193 0 148 18 197 1 112] 
#[1 7 206 0 2 7 206 0 4 7 206 0 6 9 169 0 22 18 201 0 41 7 206 0 113 13 149 0 114 18 205 0 148 18 209 1 112] 
#[0 7 210 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 18 213 0 242 4 121 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 18 217 0 1] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 18 221 0 242 4 121 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 18 225 0 2] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 18 233 0 213 18 233 0 214 18 233 0 246 18 233 1 2 8 109 1 198] 
#[0 7 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 7 218 0 4 0 113] 
#[0 18 237 0 2] 
#[0 7 222 0 4 0 113] 
#[0 18 241 0 1] 
#[0 18 245 0 1] 
#[0 18 249 0 3] 
#[0 7 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 7 230 0 6 0 113] 
#[0 7 234 0 6 0 113] 
#[0 18 253 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 19 1 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 19 5 0 1] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 19 9 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 0 6 0 1 0 6 0 3 0 167 0 4 0 19 0 5 0 6 0 7 4 149 0 25 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 23 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 4 157 0 75 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 4 161 0 95 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 4 165 0 112 0 27 0 116 4 169 0 117 0 31 0 119 0 35 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 4 173 0 132 4 189 0 133 4 181 0 142 4 185 0 143 4 189 0 144 4 189 0 145 4 189 0 146 4 185 0 147 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 19 13 0 247 15 245 0 248 4 185 1 1 4 185 1 3 4 185 1 8 4 185 1 12 19 17 1 15 4 221 1 47 4 225 1 48 4 185 1 122 4 185 1 123 0 39 1 198] 
#[0 7 238 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 7 242 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 7 246 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 7 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 197 1 198 1 199] 
#[0 7 254 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 19 21 0 1] 
#[1 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 19 25 0 133 19 25 0 144 19 25 0 145 19 25 0 146 4 221 1 47 4 225 1 48 19 29 1 122 19 33 1 123 15 101 1 198] 
#[1 13 85 0 1 19 37 0 7 3 49 0 10 9 169 0 22 13 149 0 114 19 41 0 148 13 93 1 78 19 45 1 112 19 49 1 113 14 249 1 121] 
#[1 4 145 0 5 19 53 0 59 19 57 0 96 4 169 0 117 4 221 0 119 4 225 0 120 19 61 0 133 19 61 0 144 19 61 0 145 19 61 0 146 4 221 1 47 4 225 1 48 19 65 1 122 19 69 1 123 15 101 1 198] 
#[0 19 73 0 7] 
#[0 8 2 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 8 6 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 8 10 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 8 14 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 8 18 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 8 22 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 8 26 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 8 30 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[1 10 81 0 75 10 85 0 95] 
#[0 8 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 197 1 198 1 199] 
#[0 19 77 0 4] 
#[0 8 38 0 80] 
#[0 8 42 0 80] 
#[0 8 46 0 3 0 113] 
#[1 8 50 0 3 19 81 0 113] 
#[0 8 54 0 3 0 113] 
#[0 8 58 0 3] 
#[0 19 85 0 3] 
#[0 19 89 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 19 93 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 19 97 0 2] 
#[0 8 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 8 66 0 2 0 113] 
#[0 8 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 0 93 0 1 19 101 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 19 105 0 112 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 109 0 185 19 109 0 186 0 245 0 241 19 109 0 249 1 113 0 250 1 117 0 251 1 121 0 254 19 109 0 255 0 245 1 5 19 109 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 8 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 19 113 0 13 19 117 0 113] 
#[0 8 78 0 13 0 113] 
#[0 8 82 0 13 0 113] 
#[1 0 93 0 1 19 121 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 10 237 0 112 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 19 125 0 162 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 245 0 185 10 245 0 186 0 245 0 241 10 245 0 249 1 113 0 250 1 117 0 251 1 121 0 254 10 245 0 255 0 245 1 5 10 245 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 4 82 0 3 4 82 0 127 4 82 0 129 19 129 1 68 11 209 1 69] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 133 0 185 19 133 0 186 19 133 0 188 0 245 0 241 19 133 0 249 1 113 0 250 1 117 0 251 1 121 0 254 19 133 0 255 0 245 1 5 19 133 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 8 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 8 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 19 137 0 125 19 141 0 126] 
#[0 8 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 19 145 0 6 6 157 0 113] 
#[1 19 149 0 6 6 157 0 113] 
#[0 8 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 8 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 8 106 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 153 0 185 19 153 0 186 0 245 0 241 19 153 0 249 1 113 0 250 1 117 0 251 1 121 0 254 19 153 0 255 0 245 1 5 19 153 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 6 0 1 0 6 0 3 8 110 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 7 29 0 196 0 57 0 197 7 29 0 198 0 65 0 199 0 6 1 198] 
#[0 19 157 0 4] 
#[0 8 114 0 4] 
#[0 8 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 197 1 198 1 199] 
#[0 19 161 0 127] 
#[0 8 122 0 3 0 127 0 129] 
#[0 8 126 0 3 0 127 0 129] 
#[0 8 130 0 3 0 127 0 129] 
#[0 19 165 0 3] 
#[0 8 134 0 128] 
#[0 19 169 0 128] 
#[1 8 138 0 13 19 173 1 75] 
#[1 8 142 0 3 8 142 0 8 8 142 0 13 8 142 0 22 16 21 0 114 8 142 0 128] 
#[0 8 146 0 3 0 8 0 13 0 22 0 128] 
#[1 19 177 0 8 0 126 0 13 19 181 1 73] 
#[0 8 150 0 3 0 8 0 13 0 128] 
#[1 6 158 0 3 8 154 0 8 8 154 0 13 16 29 0 128 16 57 1 56 19 185 1 61 19 185 1 63 19 185 1 64 16 57 1 65 16 65 1 77] 
#[0 8 158 0 3 0 8 0 13 0 128] 
#[0 8 162 0 3 0 8 0 13 0 128] 
#[1 8 166 0 3 8 166 0 8 8 166 0 13 19 189 0 22 8 166 0 128 19 193 1 66] 
#[0 19 197 0 13] 
#[0 19 201 0 3] 
#[1 8 170 0 3 8 170 0 8 8 170 0 13 16 17 0 21 8 170 0 128] 
#[0 8 174 0 128] 
#[1 13 149 0 114 19 205 1 112] 
#[1 5 13 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 17 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 25 0 167 19 209 0 168 19 209 0 169 0 245 0 241 0 245 1 5 0 245 1 10 0 245 1 14 19 209 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 5 33 1 198] 
#[0 19 213 0 3] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 19 217 0 247 15 245 0 248 0 6 1 198] 
#[0 19 221 0 2] 
#[0 8 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 8 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 225 0 185 19 225 0 186 19 225 0 188 0 245 0 241 19 225 0 249 1 113 0 250 1 117 0 251 1 121 0 254 19 225 0 255 0 245 1 5 19 225 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 19 229 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 233 0 185 19 233 0 186 19 233 0 188 0 245 0 241 19 233 0 249 1 113 0 250 1 117 0 251 1 121 0 254 19 233 0 255 0 245 1 5 19 233 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 19 237 0 7 6 157 0 113] 
#[1 4 98 0 7 9 169 0 22 8 186 0 78 4 98 0 90 4 98 0 113 12 101 0 148] 
#[1 19 241 0 7 12 109 0 113] 
#[1 4 102 0 7 19 245 0 90 4 102 0 113] 
#[1 9 169 0 22 8 190 0 78 12 113 0 148] 
#[0 19 249 0 78] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 253 0 185 19 253 0 186 19 253 0 188 0 245 0 241 19 253 0 249 1 113 0 250 1 117 0 251 1 121 0 254 19 253 0 255 0 245 1 5 19 253 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 20 1 0 185 20 1 0 186 0 245 0 241 20 1 0 249 1 113 0 250 1 117 0 251 1 121 0 254 20 1 0 255 0 245 1 5 20 1 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 20 5 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 20 9 0 185 20 9 0 186 20 9 0 188 0 245 0 241 20 9 0 249 1 113 0 250 1 117 0 251 1 121 0 254 20 9 0 255 0 245 1 5 20 9 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 20 13 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 20 17 0 185 20 17 0 186 20 17 0 188 0 245 0 241 20 17 0 249 1 113 0 250 1 117 0 251 1 121 0 254 20 17 0 255 0 245 1 5 20 17 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 20 21 0 7 6 157 0 113] 
#[1 3 34 0 7 9 169 0 22 8 186 0 78 8 186 0 90 3 34 0 113 9 173 0 148] 
#[1 9 169 0 22 8 190 0 78 8 190 0 90 9 185 0 148] 
#[0 8 194 0 78 0 90] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 20 25 0 185 20 25 0 186 20 25 0 188 0 245 0 241 20 25 0 249 1 113 0 250 1 117 0 251 1 121 0 254 20 25 0 255 0 245 1 5 20 25 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 20 29 0 185 20 29 0 186 0 245 0 241 20 29 0 249 1 113 0 250 1 117 0 251 1 121 0 254 20 29 0 255 0 245 1 5 20 29 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 6 249 0 132 20 33 0 204 7 5 0 205 7 5 0 206 7 5 0 207 7 9 1 198] 
#[0 20 37 0 90] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 16 165 0 132 16 165 0 205 16 165 0 206 16 165 0 207 16 165 0 221] 
#[0 20 49 0 90] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 20 53 0 189 20 53 0 192 20 53 0 193 20 53 0 194 20 53 0 202 20 53 0 216 20 53 0 217 20 53 0 218 20 53 0 219 20 53 0 222 20 53 0 223 20 53 0 225 20 53 0 226 20 53 0 227 20 53 0 232 20 53 0 234 20 53 0 235 20 53 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 8 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 20 57 0 3 20 61 0 228] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 20 73 0 132 20 73 0 205 20 73 0 206 20 73 0 207 20 73 0 238] 
#[0 8 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 8 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 8 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 8 214 0 7 0 113] 
#[1 8 218 0 7 9 169 0 22 8 218 0 90 8 218 0 113 20 77 0 148] 
#[1 9 169 0 22 20 81 0 148] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 20 85 0 189 20 85 0 192 20 85 0 193 20 85 0 194 20 85 0 202 20 85 0 216 20 85 0 217 20 85 0 218 20 85 0 219 20 85 0 222 20 85 0 223 20 85 0 225 20 85 0 226 20 85 0 227 20 85 0 232 20 85 0 234 20 85 0 235 20 85 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 20 89 0 189 20 89 0 192 20 89 0 193 20 89 0 194 20 89 0 202 20 89 0 216 20 89 0 217 20 89 0 218 20 89 0 219 20 89 0 222 20 89 0 223 20 89 0 225 20 89 0 226 20 89 0 227 20 89 0 232 20 89 0 234 20 89 0 235 20 89 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 20 93 0 4 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 17 33 0 133 17 33 0 144 17 33 0 145 17 33 0 146 4 221 1 47 4 225 1 48 20 97 1 143 17 41 1 144 17 45 1 145] 
#[0 20 101 0 3] 
#[1 5 85 0 69 20 105 1 20 5 101 1 198] 
#[0 8 222 0 7 0 113] 
#[0 8 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 189 0 116 12 161 0 132 20 109 1 182] 
#[0 20 113 0 7] 
#[0 8 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 38 0 4 7 109 0 62 8 53 0 68 7 117 0 77 2 129 0 82 2 133 0 86 2 137 0 105 2 249 1 30 2 249 1 120 2 249 1 129 2 249 1 147 2 249 1 153 2 249 1 165 20 117 1 169 2 245 1 170 2 249 1 171 2 249 1 174 2 249 1 176 2 249 1 177 2 249 1 178 2 249 1 179] 
#[1 8 234 0 4 7 45 0 57 20 121 0 58 2 113 0 67 20 125 0 68 7 53 0 74 7 245 0 77 2 129 0 82 20 129 0 84 7 65 0 86 7 69 0 107 20 133 0 198 0 65 0 199 20 137 1 129 20 157 1 142 20 141 1 153 20 145 1 180 20 149 1 183 20 153 1 184 20 157 1 190 20 161 1 191 20 165 1 192 20 169 1 193 20 173 1 194] 
#[0 8 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 8 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 8 246 0 4 20 177 0 22 8 246 0 113] 
#[0 20 181 0 4] 
#[1 8 250 0 4 20 185 0 113] 
#[0 8 254 0 4 0 113] 
#[0 9 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 9 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 5 81 0 3 3 49 0 10 5 85 0 69 12 149 1 19 20 189 1 20 16 249 1 78 5 101 1 198] 
#[1 20 193 0 1 3 49 0 10 8 133 1 78 17 9 1 113] 
#[0 9 10 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 199] 
#[0 9 14 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 189 0 116 17 97 0 132 17 101 1 95 17 105 1 154] 
#[0 9 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 20 197 0 3] 
#[0 20 201 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 20 205 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 20 209 0 2] 
#[0 2 138 0 7 0 21] 
#[1 9 22 0 7 20 213 0 21] 
#[0 20 217 0 7] 
#[0 20 221 0 1] 
#[0 9 26 0 3] 
#[0 9 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 3 41 0 3 20 225 1 96] 
#[0 9 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 3 185 0 57 2 105 0 58 7 109 0 62 2 113 0 67 3 193 0 74 7 245 0 77 2 129 0 82 0 65 0 84 2 133 0 86 2 137 0 105 1 245 0 107 20 229 0 198 0 65 0 199 20 233 0 202 20 237 0 240 20 241 1 4 20 245 1 17 20 249 1 120 20 253 1 129 21 1 1 142 21 5 1 147 21 9 1 153 21 13 1 179 7 173 1 198] 
#[0 9 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 9 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 9 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 9 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 9 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 9 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 9 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 9 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 9 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 21 17 0 4] 
#[1 0 93 0 1 1 197 0 3 9 74 0 4 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 2 101 0 57 2 105 0 58 1 209 0 60 1 213 0 61 7 109 0 62 0 141 0 64 1 217 0 65 2 113 0 67 17 129 0 68 1 157 0 70 1 221 0 72 2 121 0 74 1 225 0 76 7 209 0 77 2 129 0 82 0 65 0 84 2 133 0 86 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 2 137 0 105 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 21 21 0 189 21 21 0 192 21 21 0 193 21 21 0 194 21 21 0 198 0 65 0 199 21 21 0 202 21 21 0 216 21 21 0 217 21 21 0 218 21 21 0 219 21 21 0 222 21 21 0 223 21 21 0 225 21 21 0 226 21 21 0 227 21 21 0 232 21 21 0 234 21 21 0 235 21 21 0 239 21 21 0 240 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 21 21 1 4 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 21 21 1 17 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 21 21 1 120 21 21 1 129 21 21 1 142 21 21 1 147 21 21 1 151 21 21 1 152 21 21 1 153 21 21 1 179 3 33 1 198] 
#[0 9 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 9 82 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 9 86 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 9 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 9 94 0 3 0 21] 
#[0 21 25 0 7] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 21 29 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 21 29 1 106 21 29 1 107 3 109 1 108 3 109 1 110] 
#[0 17 65 0 7] 
#[0 21 33 0 2] 
#[0 21 37 0 7] 
#[0 21 41 0 3] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 21 45 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 9 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 21 49 0 247 15 245 0 248 0 6 1 198] 
#[0 9 102 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 3 37 0 1 8 89 0 3 8 93 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 8 97 0 132 4 101 0 205 4 101 0 206 4 101 0 207 18 129 0 213 18 129 0 214 3 81 1 47 3 85 1 48 3 89 1 78 18 13 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 18 13 1 106 18 13 1 107 3 109 1 108 3 109 1 110 8 109 1 198] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 21 53 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 21 53 1 106 21 53 1 107 3 109 1 108 3 109 1 110] 
#[1 9 106 0 3 9 106 0 4 9 106 0 7 9 106 0 113 13 149 0 114 21 57 1 112] 
#[1 21 61 0 89 21 65 0 97] 
#[0 21 69 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 21 73 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 9 110 0 4 0 7 0 113] 
#[0 9 114 0 4 0 7 0 113] 
#[0 9 118 0 2 0 3 0 4 0 5 0 6 0 7 0 18 0 22 0 59 0 90 0 91 0 92 0 93 0 96 0 113 0 117 0 119 0 120] 
#[0 21 77 0 2] 
#[0 9 122 0 4 0 7 0 113] 
#[0 9 126 0 4 0 7 0 113] 
#[0 9 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 9 134 0 6 0 113] 
#[0 9 138 0 13 0 113] 
#[0 9 142 0 13 0 113] 
#[0 21 81 0 18] 
#[0 21 85 0 2] 
#[0 9 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 21 89 0 18] 
#[0 9 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 9 154 0 4 0 113] 
#[0 9 158 0 7 0 73] 
#[0 9 162 0 4 0 113] 
#[0 21 93 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 21 97 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 21 101 0 1] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 21 105 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 21 109 0 3] 
#[0 21 113 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 21 117 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 21 121 0 2] 
#[0 21 125 0 3] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 21 129 0 247 15 245 0 248 0 6 1 198] 
#[0 9 166 0 4 0 113] 
#[0 9 170 0 73] 
#[0 9 174 0 4 0 113] 
#[0 9 178 0 4 0 113] 
#[0 9 182 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 21 133 0 4] 
#[0 9 186 0 4 0 113] 
#[1 7 202 0 4 9 169 0 22 18 189 0 41 7 202 0 113 13 149 0 114 18 193 0 148 18 197 1 112] 
#[0 9 190 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 9 194 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 4 33 0 3 4 37 0 5 21 137 0 6 4 89 0 112 10 109 0 113 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 14 109 0 213 14 109 0 214 21 141 0 215 8 109 1 198] 
#[0 9 198 0 6 0 113] 
#[0 21 145 0 6] 
#[0 9 202 0 7 0 113] 
#[0 9 206 0 7 0 113] 
#[0 9 210 0 2 0 4 0 6 0 113] 
#[0 9 214 0 2 0 4 0 6 0 113] 
#[0 9 218 0 2 0 4 0 6 0 113] 
#[0 9 222 0 2 0 4 0 6 0 113] 
#[0 9 226 0 2 0 4 0 6 0 113] 
#[1 9 230 0 2 9 230 0 4 9 230 0 6 9 169 0 22 9 230 0 113 21 149 0 148] 
#[1 9 234 0 2 9 234 0 4 9 234 0 6 9 234 0 113 13 149 0 114 21 153 1 112] 
#[0 9 238 0 2 0 4 0 6 0 113] 
#[1 9 242 0 2 9 242 0 4 9 242 0 6 9 169 0 22 9 242 0 113 21 157 0 148] 
#[0 21 161 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 21 165 0 242 4 121 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 21 169 0 2] 
#[0 21 173 0 3] 
#[0 9 246 0 2] 
#[0 21 177 0 2] 
#[0 21 181 0 3] 
#[0 21 185 0 2] 
#[1 4 33 0 3 4 37 0 5 0 189 0 116 21 189 0 132 21 193 0 205 21 193 0 206 21 193 0 207 21 197 0 213 21 197 0 214 21 197 0 246 21 197 1 2 21 201 1 116 21 205 1 124 8 109 1 198] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 21 209 0 247 15 245 0 248 0 6 1 198] 
#[0 21 213 0 3] 
#[0 21 217 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 21 221 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 21 225 0 2] 
#[0 9 250 0 4] 
#[0 21 229 0 4] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 21 233 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 8 113 0 1 21 237 0 7 3 49 0 10 9 169 0 22 13 149 0 114 21 241 0 148 8 133 1 78 21 245 1 112 21 249 1 113] 
#[0 9 254 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 10 2 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 10 6 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 21 253 0 7] 
#[1 22 1 0 7 9 169 0 22 22 5 0 148] 
#[1 22 9 0 3 22 13 0 7] 
#[0 22 17 0 1] 
#[1 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 22 21 0 133 22 21 0 144 22 21 0 145 22 21 0 146 4 221 1 47 4 225 1 48 22 25 1 122 22 29 1 123 15 101 1 198] 
#[1 8 113 0 1 22 33 0 7 3 49 0 10 9 169 0 22 13 149 0 114 22 37 0 148 8 133 1 78 22 41 1 112 22 45 1 113] 
#[0 10 10 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 10 14 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 10 18 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 10 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 197 1 198 1 199] 
#[1 0 189 0 116 3 77 0 132 22 49 1 93 3 129 1 94 3 133 1 95 22 49 1 132] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 22 53 0 247 15 245 0 248 0 6 1 198] 
#[0 22 57 0 3] 
#[0 22 61 0 2] 
#[0 22 65 0 3] 
#[0 10 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 69 0 185 22 69 0 186 0 245 0 241 22 69 0 249 1 113 0 250 1 117 0 251 1 121 0 254 22 69 0 255 0 245 1 5 22 69 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 10 30 0 2 0 113] 
#[0 10 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 80 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 22 73 1 84 22 73 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 22 73 1 106 22 73 1 107 3 109 1 108 3 109 1 110] 
#[0 10 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 22 77 0 2 22 81 0 113] 
#[0 22 85 0 127] 
#[1 6 157 0 113 10 42 0 125 10 42 0 126] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 89 0 185 22 89 0 186 22 89 0 188 0 245 0 241 22 89 0 249 1 113 0 250 1 117 0 251 1 121 0 254 22 89 0 255 0 245 1 5 22 89 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 10 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 10 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 10 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 10 58 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 10 62 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 22 93 0 8] 
#[1 0 93 0 1 0 97 0 3 0 126 0 4 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 4 245 0 112 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 22 105 0 140 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 105 0 185 22 105 0 186 0 245 0 241 22 105 0 249 1 113 0 250 1 117 0 251 1 121 0 254 22 105 0 255 0 245 1 5 22 105 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 22 105 1 71 1 189 1 72 22 109 1 73 1 193 1 198] 
#[0 10 66 0 3 0 8 0 13 0 22 0 128] 
#[0 22 113 0 13] 
#[1 8 138 0 13 22 117 1 75] 
#[0 22 121 0 13] 
#[0 10 70 0 3 0 8 0 13 0 128] 
#[1 6 158 0 3 22 125 0 119 0 11 0 127 22 125 1 47 22 137 1 50 22 137 1 51 1 181 1 52 22 137 1 54 22 137 1 67 1 189 1 72 22 141 1 77] 
#[0 10 74 0 3 0 8 0 13 0 128] 
#[0 10 78 0 3 0 127 0 129] 
#[1 4 245 0 112 22 145 0 140] 
#[0 10 82 0 3 0 18] 
#[0 10 86 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 199] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 22 149 0 247 15 245 0 248 0 6 1 198] 
#[0 22 153 0 4] 
#[1 10 90 0 3 10 90 0 18 13 149 0 114 22 157 1 112] 
#[1 22 161 0 2 6 157 0 113] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 22 165 0 189 22 165 0 192 22 165 0 193 22 165 0 194 22 165 0 202 22 165 0 216 22 165 0 217 22 165 0 218 22 165 0 219 22 165 0 222 22 165 0 223 22 165 0 225 22 165 0 226 22 165 0 227 22 165 0 232 22 165 0 234 22 165 0 235 22 165 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 22 169 0 2 6 157 0 113] 
#[1 0 93 0 1 22 173 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 177 0 185 22 177 0 186 22 177 0 188 0 245 0 241 22 177 0 249 1 113 0 250 1 117 0 251 1 121 0 254 22 177 0 255 0 245 1 5 22 177 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 22 181 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 185 0 185 22 185 0 186 22 185 0 188 0 245 0 241 22 185 0 249 1 113 0 250 1 117 0 251 1 121 0 254 22 185 0 255 0 245 1 5 22 185 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 189 0 185 22 189 0 186 0 245 0 241 22 189 0 249 1 113 0 250 1 117 0 251 1 121 0 254 22 189 0 255 0 245 1 5 22 189 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 193 0 185 22 193 0 186 22 193 0 188 0 245 0 241 22 193 0 249 1 113 0 250 1 117 0 251 1 121 0 254 22 193 0 255 0 245 1 5 22 193 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 22 197 0 2 6 157 0 113] 
#[0 22 201 0 2] 
#[1 0 93 0 1 22 205 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 209 0 185 22 209 0 186 22 209 0 188 0 245 0 241 22 209 0 249 1 113 0 250 1 117 0 251 1 121 0 254 22 209 0 255 0 245 1 5 22 209 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 22 213 0 7 6 157 0 113] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 22 217 0 189 22 217 0 192 22 217 0 193 22 217 0 194 22 217 0 202 22 217 0 216 22 217 0 217 22 217 0 218 22 217 0 219 22 217 0 222 22 217 0 223 22 217 0 225 22 217 0 226 22 217 0 227 22 217 0 232 22 217 0 234 22 217 0 235 22 217 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 22 221 0 2 6 157 0 113] 
#[1 0 93 0 1 22 225 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 229 0 185 22 229 0 186 22 229 0 188 0 245 0 241 22 229 0 249 1 113 0 250 1 117 0 251 1 121 0 254 22 229 0 255 0 245 1 5 22 229 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 22 233 0 2 6 157 0 113] 
#[0 22 237 0 2] 
#[0 22 241 0 90] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 245 0 185 22 245 0 186 0 245 0 241 22 245 0 249 1 113 0 250 1 117 0 251 1 121 0 254 22 245 0 255 0 245 1 5 22 245 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 8 186 0 90] 
#[0 8 190 0 90] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 249 0 185 22 249 0 186 0 245 0 241 22 249 0 249 1 113 0 250 1 117 0 251 1 121 0 254 22 249 0 255 0 245 1 5 22 249 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 10 94 0 1 10 94 0 3 10 94 0 4 10 94 0 5 10 94 0 7 10 94 0 34 10 94 0 35 10 94 0 36 10 94 0 37 10 94 0 38 10 94 0 48 10 94 0 52 10 94 0 53 10 94 0 54 10 94 0 55 10 94 0 57 10 94 0 58 10 94 0 60 10 94 0 61 10 94 0 62 10 94 0 63 10 94 0 64 10 94 0 65 22 253 0 66 10 94 0 67 10 94 0 68 10 94 0 70 10 94 0 72 10 94 0 74 10 94 0 76 10 94 0 77 10 94 0 82 10 94 0 84 10 94 0 86 10 94 0 87 10 94 0 88 10 94 0 94 10 94 0 98 10 94 0 99 10 94 0 101 10 94 0 102 10 94 0 103 10 94 0 104 10 94 0 105 10 94 0 106 10 94 0 107 10 94 0 108 10 94 0 109 10 94 0 110 10 94 0 111 10 94 0 116 10 94 0 119 10 94 0 120 10 94 0 121 10 94 0 123 10 94 0 124 10 94 0 127 10 94 1 198 10 94 1 199] 
#[1 23 1 0 4 23 5 0 55 23 9 0 63 23 13 0 229 23 17 0 230 23 21 0 231] 
#[0 10 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 10 102 0 2] 
#[0 10 106 0 2] 
#[0 23 25 0 2] 
#[0 10 110 0 7 0 90 0 113] 
#[0 10 114 0 7 0 90 0 113] 
#[0 10 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 10 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 10 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 23 29 0 4] 
#[1 10 130 0 4 8 121 0 5 23 33 0 59 23 45 0 91 23 45 0 92 23 45 0 93 23 37 0 96 4 169 0 117 4 221 0 119 4 225 0 120 23 41 0 133 23 41 0 144 23 41 0 145 23 41 0 146 4 221 1 47 4 225 1 48 23 45 1 115 23 61 1 118 23 53 1 185 23 57 1 186 23 61 1 187 23 61 1 188 23 61 1 189] 
#[0 23 73 0 3] 
#[0 10 134 0 7 0 113] 
#[0 10 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 23 77 0 4] 
#[1 0 42 0 3 0 42 0 5 7 41 0 67 0 231 0 116 12 161 0 132 12 165 1 181 12 169 1 182 0 42 1 198] 
#[1 7 45 0 57 20 121 0 58 2 113 0 67 7 53 0 74 7 245 0 77 2 129 0 82 20 129 0 84 7 65 0 86 7 69 0 107 23 81 0 198 0 65 0 199 23 85 1 129 23 105 1 142 23 89 1 153 23 93 1 180 23 97 1 183 23 101 1 184 23 105 1 190 23 109 1 191] 
#[1 0 46 0 3 0 46 0 5 0 235 0 116 12 161 0 132 12 177 1 181 12 169 1 182 0 46 1 198] 
#[0 10 142 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 146 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 150 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 154 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 158 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 162 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 166 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 170 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 23 113 0 4] 
#[1 10 174 0 4 7 45 0 57 20 121 0 58 2 113 0 67 20 125 0 68 7 53 0 74 7 245 0 77 2 129 0 82 20 129 0 84 7 65 0 86 7 69 0 107 20 133 0 198 0 65 0 199 20 137 1 129 20 157 1 142 20 141 1 153 20 145 1 180 20 149 1 183 20 153 1 184 20 157 1 190 20 161 1 191 23 117 1 194] 
#[0 10 178 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 23 125 0 185 23 125 0 186 0 245 0 241 23 125 0 249 1 113 0 250 1 117 0 251 1 121 0 254 23 125 0 255 0 245 1 5 23 125 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 23 125 1 146 1 193 1 198] 
#[0 10 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 10 186 0 4 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 17 33 0 133 17 33 0 144 17 33 0 145 17 33 0 146 4 221 1 47 4 225 1 48 23 129 1 145] 
#[0 23 133 0 3] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 23 137 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 23 141 0 247 15 245 0 248 0 6 1 198] 
#[0 23 145 0 3] 
#[0 23 149 0 2] 
#[0 23 153 0 3] 
#[1 0 189 0 116 23 157 0 132] 
#[0 10 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 23 161 0 119 1 47] 
#[0 10 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 10 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 10 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 10 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 10 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 10 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 10 218 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 10 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 10 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 10 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 10 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 10 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 10 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 10 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198] 
#[0 10 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 23 165 0 7] 
#[1 9 106 0 3 9 106 0 7 13 149 0 114 23 169 1 112] 
#[0 10 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 23 173 0 247 15 245 0 248 0 6 1 198] 
#[0 23 177 0 2] 
#[0 23 181 0 4] 
#[0 11 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 11 6 0 3 0 4 0 7 0 113] 
#[0 23 185 0 6] 
#[0 23 189 0 6] 
#[1 11 10 0 4 11 10 0 7 11 10 0 113 13 149 0 114 23 193 1 112] 
#[0 23 197 0 2] 
#[1 11 14 0 3 11 14 0 4 11 14 0 7 11 14 0 113 13 149 0 114 23 201 1 112] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 23 205 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 23 205 1 106 23 205 1 107 3 109 1 108 3 109 1 110] 
#[0 23 209 0 18] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 23 213 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 23 213 1 106 23 213 1 107 3 109 1 108 3 109 1 110] 
#[0 23 217 0 3] 
#[0 23 221 0 2] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 23 225 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[0 23 229 0 2] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 23 233 0 247 15 245 0 248 0 6 1 198] 
#[0 23 237 0 3] 
#[0 23 241 0 2] 
#[0 23 245 0 3] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 23 249 0 247 15 245 0 248 0 6 1 198] 
#[0 23 253 0 4] 
#[0 11 18 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 11 22 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 24 1 0 6] 
#[0 11 26 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 11 30 0 2 0 4 0 6 0 113] 
#[0 11 34 0 2 0 4 0 6 0 113] 
#[0 11 38 0 2 0 4 0 6 0 113] 
#[0 24 5 0 3] 
#[0 24 9 0 2] 
#[0 24 13 0 3] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 24 17 0 247 15 245 0 248 0 6 1 198] 
#[0 24 21 0 3] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 24 25 0 247 15 245 0 248 0 6 1 198] 
#[1 13 149 0 114 24 29 1 112] 
#[1 3 62 0 2 9 169 0 22 11 42 0 114 9 237 0 148] 
#[1 3 66 0 2 9 169 0 22 11 46 0 114 9 245 0 148] 
#[0 24 33 0 2] 
#[1 13 149 0 114 24 37 1 112] 
#[0 24 41 0 2] 
#[0 24 45 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 19 13 0 247 15 245 0 248 24 49 1 15 0 6 1 198] 
#[0 24 53 0 3] 
#[0 24 57 0 2] 
#[0 24 61 0 3] 
#[0 11 50 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 199] 
#[0 24 65 0 2] 
#[0 11 54 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 24 69 0 7] 
#[1 24 73 0 7 9 169 0 22 24 77 0 148] 
#[1 24 81 0 3 24 85 0 7] 
#[0 11 58 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 11 62 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 24 89 0 7] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 24 93 0 247 15 245 0 248 0 6 1 198] 
#[0 11 66 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 24 97 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 8 113 0 1 24 101 0 7 3 49 0 10 9 169 0 22 13 149 0 114 24 105 0 148 8 133 1 78 24 109 1 112 24 113 1 113] 
#[0 11 70 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 11 74 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 11 78 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 24 117 0 7] 
#[1 24 121 0 7 9 169 0 22 24 125 0 148] 
#[1 24 129 0 3 24 133 0 7] 
#[0 11 82 0 3 0 113] 
#[0 24 137 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 24 141 0 247 15 245 0 248 24 145 1 6 0 6 1 198] 
#[0 24 149 0 3] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 24 153 0 247 15 245 0 248 0 6 1 198] 
#[0 11 86 0 2 0 113] 
#[0 11 90 0 13 0 113] 
#[0 11 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 19 105 0 112 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 109 0 185 19 109 0 186 0 245 0 241 19 109 0 249 1 113 0 250 1 117 0 251 1 121 0 254 19 109 0 255 0 245 1 5 19 109 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 24 157 0 8] 
#[1 6 157 0 113 11 98 0 125 11 98 0 126] 
#[1 11 213 0 128 24 161 1 55 24 161 1 56 24 161 1 57 11 229 1 58 11 233 1 59] 
#[0 11 102 0 4] 
#[0 11 106 0 4] 
#[1 0 126 0 4 24 165 1 73] 
#[0 24 169 0 4] 
#[0 11 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 197 1 198 1 199] 
#[0 24 173 0 13] 
#[0 11 114 0 3 0 127 0 129] 
#[0 11 118 0 3 0 8 0 13 0 128] 
#[0 11 122 0 3 0 8 0 13 0 128] 
#[0 11 126 0 3 0 8 0 13 0 128] 
#[0 11 130 0 3 0 8 0 13 0 128] 
#[0 24 177 0 3] 
#[1 0 18 0 4 24 181 1 72] 
#[0 24 185 0 4] 
#[0 11 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 11 138 0 3 0 18] 
#[0 24 189 0 7] 
#[0 11 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 24 193 0 189 24 193 0 192 24 193 0 193 24 193 0 194 24 193 0 202 24 193 0 216 24 193 0 217 24 193 0 218 24 193 0 219 24 193 0 222 24 193 0 223 24 193 0 225 24 193 0 226 24 193 0 227 24 193 0 232 24 193 0 234 24 193 0 235 24 193 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 24 197 0 189 24 197 0 192 24 197 0 193 24 197 0 194 24 197 0 202 24 197 0 216 24 197 0 217 24 197 0 218 24 197 0 219 24 197 0 222 24 197 0 223 24 197 0 225 24 197 0 226 24 197 0 227 24 197 0 232 24 197 0 234 24 197 0 235 24 197 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 24 201 0 2 6 157 0 113] 
#[1 0 93 0 1 24 205 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 24 209 0 185 24 209 0 186 24 209 0 188 0 245 0 241 24 209 0 249 1 113 0 250 1 117 0 251 1 121 0 254 24 209 0 255 0 245 1 5 24 209 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 24 213 0 7 6 157 0 113] 
#[0 24 217 0 2] 
#[1 24 221 0 2 6 157 0 113] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 24 225 0 189 24 225 0 192 24 225 0 193 24 225 0 194 24 225 0 202 24 225 0 216 24 225 0 217 24 225 0 218 24 225 0 219 24 225 0 222 24 225 0 223 24 225 0 225 24 225 0 226 24 225 0 227 24 225 0 232 24 225 0 234 24 225 0 235 24 225 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 24 229 0 189 24 229 0 192 24 229 0 193 24 229 0 194 24 229 0 202 24 229 0 216 24 229 0 217 24 229 0 218 24 229 0 219 24 229 0 222 24 229 0 223 24 229 0 225 24 229 0 226 24 229 0 227 24 229 0 232 24 229 0 234 24 229 0 235 24 229 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 24 233 0 189 24 233 0 192 24 233 0 193 24 233 0 194 24 233 0 202 24 233 0 216 24 233 0 217 24 233 0 218 24 233 0 219 24 233 0 222 24 233 0 223 24 233 0 225 24 233 0 226 24 233 0 227 24 233 0 232 24 233 0 234 24 233 0 235 24 233 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 24 237 0 2 6 157 0 113] 
#[1 0 93 0 1 24 241 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 24 245 0 185 24 245 0 186 24 245 0 188 0 245 0 241 24 245 0 249 1 113 0 250 1 117 0 251 1 121 0 254 24 245 0 255 0 245 1 5 24 245 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 11 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 24 249 0 189 24 249 0 192 24 249 0 193 24 249 0 194 24 249 0 202 24 249 0 216 24 249 0 217 24 249 0 218 24 249 0 219 24 249 0 222 24 249 0 223 24 249 0 225 24 249 0 226 24 249 0 227 24 249 0 232 24 249 0 234 24 249 0 235 24 249 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 24 253 0 189 24 253 0 192 24 253 0 193 24 253 0 194 24 253 0 202 24 253 0 216 24 253 0 217 24 253 0 218 24 253 0 219 24 253 0 222 24 253 0 223 24 253 0 225 24 253 0 226 24 253 0 227 24 253 0 232 24 253 0 234 24 253 0 235 24 253 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 25 1 0 2 6 157 0 113] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 25 5 0 189 25 5 0 192 25 5 0 193 25 5 0 194 25 5 0 202 25 5 0 216 25 5 0 217 25 5 0 218 25 5 0 219 25 5 0 222 25 5 0 223 25 5 0 225 25 5 0 226 25 5 0 227 25 5 0 232 25 5 0 234 25 5 0 235 25 5 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 25 9 0 189 25 9 0 192 25 9 0 193 25 9 0 194 25 9 0 202 25 9 0 216 25 9 0 217 25 9 0 218 25 9 0 219 25 9 0 222 25 9 0 223 25 9 0 225 25 9 0 226 25 9 0 227 25 9 0 232 25 9 0 234 25 9 0 235 25 9 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 25 13 0 185 25 13 0 186 0 245 0 241 25 13 0 249 1 113 0 250 1 117 0 251 1 121 0 254 25 13 0 255 0 245 1 5 25 13 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 25 17 0 2] 
#[0 25 21 0 2] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 25 25 0 189 25 25 0 192 25 25 0 193 25 25 0 194 25 25 0 202 25 25 0 216 25 25 0 217 25 25 0 218 25 25 0 219 25 25 0 222 25 25 0 223 25 25 0 225 25 25 0 226 25 25 0 227 25 25 0 232 25 25 0 234 25 25 0 235 25 25 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 11 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 25 29 0 185 25 29 0 186 25 29 0 188 0 245 0 241 25 29 0 249 1 113 0 250 1 117 0 251 1 121 0 254 25 29 0 255 0 245 1 5 25 29 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 25 33 0 114] 
#[1 25 37 0 4 23 5 0 55 23 9 0 63 25 41 0 230 25 45 0 231] 
#[0 11 154 0 4 0 55 0 63] 
#[1 25 49 0 4 23 5 0 55 25 53 0 229 23 17 0 230] 
#[1 6 241 0 3 25 57 0 194] 
#[0 11 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 25 61 0 1] 
#[1 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 25 65 0 133 25 65 0 144 25 65 0 145 25 65 0 146 4 221 1 47 4 225 1 48] 
#[1 8 113 0 1 25 69 0 7 3 49 0 10 13 149 0 114 8 133 1 78 25 73 1 112 25 77 1 113] 
#[1 4 145 0 5 25 81 0 96 4 169 0 117 4 221 0 119 4 225 0 120 25 85 0 133 25 85 0 144 25 85 0 145 25 85 0 146 4 221 1 47 4 225 1 48] 
#[0 11 162 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 25 89 0 4] 
#[1 11 166 0 4 8 121 0 5 23 33 0 59 23 45 0 91 23 45 0 92 23 45 0 93 23 37 0 96 4 169 0 117 4 221 0 119 4 225 0 120 23 41 0 133 23 41 0 144 23 41 0 145 23 41 0 146 4 221 1 47 4 225 1 48 23 45 1 115 25 93 1 118 25 93 1 187 25 93 1 188 25 93 1 189] 
#[0 11 170 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 11 174 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 11 178 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[1 10 130 0 4 8 121 0 5 23 33 0 59 23 45 0 91 23 45 0 92 23 45 0 93 23 37 0 96 4 169 0 117 4 221 0 119 4 225 0 120 23 41 0 133 23 41 0 144 23 41 0 145 23 41 0 146 4 221 1 47 4 225 1 48 23 45 1 115 23 61 1 118 25 97 1 185 23 57 1 186 23 61 1 187 23 61 1 188 23 61 1 189] 
#[0 11 182 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 11 186 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 190 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 194 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 198 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 202 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 206 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 210 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 214 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 218 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 11 222 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 226 0 4 0 113] 
#[0 11 230 0 4 0 113] 
#[0 11 234 0 4 0 113] 
#[1 0 239 0 4 8 121 0 5 10 145 0 7 4 149 0 25 4 153 0 52 23 33 0 59 4 157 0 75 23 45 0 91 23 45 0 92 23 45 0 93 4 161 0 95 25 101 0 96 4 169 0 117 4 221 0 119 4 225 0 120 25 105 0 133 25 105 0 144 25 105 0 145 25 105 0 146 10 169 1 1 10 169 1 3 10 169 1 8 10 169 1 12 15 109 1 21 10 165 1 22 10 169 1 23 4 221 1 47 4 225 1 48 23 45 1 115 23 61 1 118 10 169 1 122 10 169 1 123 23 53 1 185 23 57 1 186 23 61 1 187 23 61 1 188 23 61 1 189 10 173 1 198] 
#[0 25 109 0 2] 
#[0 25 113 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 24 141 0 247 15 245 0 248 25 117 1 6 0 6 1 198] 
#[0 25 121 0 3] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 25 125 0 247 15 245 0 248 0 6 1 198] 
#[0 7 86 0 7 0 21] 
#[0 25 129 0 2] 
#[0 11 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 243 0 3 11 6 0 7] 
#[0 25 133 0 4] 
#[1 0 247 0 3 11 14 0 7 13 149 0 114 25 137 1 112] 
#[1 0 251 0 1 11 242 0 3 11 242 0 4 0 251 0 5 0 251 0 7 11 134 0 8 11 134 0 9 11 134 0 10 11 134 0 11 11 134 0 12 11 134 0 13 11 134 0 14 11 134 0 15 11 134 0 16 11 134 0 17 11 134 0 19 11 134 0 20 11 134 0 21 11 134 0 22 11 134 0 23 11 134 0 24 11 134 0 25 11 134 0 26 11 134 0 27 11 134 0 28 11 134 0 29 11 134 0 30 11 134 0 31 11 134 0 32 11 134 0 33 0 251 0 34 0 251 0 35 0 251 0 36 0 251 0 37 11 242 0 38 11 134 0 39 11 134 0 40 11 134 0 41 11 134 0 42 11 134 0 43 11 134 0 44 11 134 0 45 11 134 0 46 11 134 0 47 11 242 0 48 11 134 0 49 11 134 0 50 11 134 0 51 11 242 0 52 11 242 0 53 11 242 0 54 11 242 0 57 11 242 0 58 11 242 0 60 11 242 0 61 11 242 0 62 11 242 0 64 11 242 0 65 11 242 0 67 11 242 0 68 11 242 0 70 11 242 0 72 11 242 0 74 11 242 0 76 11 242 0 77 11 134 0 78 11 134 0 81 11 242 0 82 11 242 0 84 11 242 0 86 11 242 0 87 11 242 0 88 11 242 0 94 11 242 0 98 11 242 0 99 11 242 0 101 11 242 0 102 11 242 0 103 11 242 0 104 11 242 0 105 11 242 0 106 11 242 0 107 11 242 0 108 11 242 0 109 11 242 0 110 11 242 0 111 11 134 0 113 11 242 0 116 11 242 0 119 11 242 0 120 11 242 0 121 0 251 0 123 0 251 0 124 11 242 0 127 11 134 1 197 0 251 1 198 11 242 1 199] 
#[1 13 149 0 114 25 141 1 112] 
#[1 13 149 0 114 25 145 1 112] 
#[0 11 246 0 4 0 7 0 113] 
#[1 11 250 0 4 11 250 0 7 11 250 0 113 13 149 0 114 25 149 1 112] 
#[0 11 254 0 3 0 4 0 7 0 113] 
#[0 12 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[1 3 37 0 1 3 41 0 3 3 45 0 5 3 49 0 10 3 53 0 79 3 57 0 83 3 61 0 87 3 65 0 101 3 69 0 106 3 73 0 108 0 189 0 116 3 81 0 119 3 85 0 120 3 77 0 132 3 81 1 47 3 85 1 48 3 89 1 78 25 153 1 85 3 97 1 86 3 101 1 87 3 101 1 88 3 109 1 89 3 109 1 90 3 109 1 91 3 109 1 92 3 109 1 93 3 129 1 94 3 133 1 95 3 109 1 96 3 109 1 100 3 109 1 101 3 97 1 104 3 101 1 105 25 153 1 106 25 153 1 107 3 109 1 108 3 109 1 110] 
#[0 12 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 19 13 0 247 15 245 0 248 25 157 1 15 0 6 1 198] 
#[0 25 161 0 3] 
#[0 25 165 0 2] 
#[0 25 169 0 3] 
#[0 25 173 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 24 141 0 247 15 245 0 248 25 177 1 6 0 6 1 198] 
#[0 25 181 0 3] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 25 185 0 247 15 245 0 248 0 6 1 198] 
#[0 25 189 0 4] 
#[0 11 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 10 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 24 141 0 247 15 245 0 248 25 193 1 6 0 6 1 198] 
#[0 25 197 0 3] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 19 13 0 247 15 245 0 248 25 201 1 15 0 6 1 198] 
#[0 25 205 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 25 209 0 247 15 245 0 248 0 6 1 198] 
#[0 25 213 0 4] 
#[0 25 217 0 3] 
#[1 13 149 0 114 25 221 1 112] 
#[0 12 14 0 2] 
#[1 25 225 0 3 13 149 0 114 25 229 1 112] 
#[0 12 18 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 25 233 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 25 237 0 247 15 245 0 248 25 241 1 11 0 6 1 198] 
#[0 25 245 0 3] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 19 13 0 247 15 245 0 248 25 249 1 15 0 6 1 198] 
#[1 25 253 0 3 26 1 0 7] 
#[0 12 22 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 12 26 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 26 5 0 7] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 26 9 0 247 15 245 0 248 0 6 1 198] 
#[0 12 30 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 12 34 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 26 13 0 4] 
#[0 26 17 0 2] 
#[0 12 38 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 26 21 0 7] 
#[1 26 25 0 7 9 169 0 22 26 29 0 148] 
#[1 26 33 0 3 26 37 0 7] 
#[0 12 42 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 12 46 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 26 41 0 7] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 26 45 0 247 15 245 0 248 0 6 1 198] 
#[0 12 50 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 12 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 12 58 0 4] 
#[0 26 49 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 24 141 0 247 15 245 0 248 26 53 1 6 0 6 1 198] 
#[0 26 57 0 4] 
#[1 12 62 0 13 26 61 1 76] 
#[1 12 62 0 13 26 65 1 76] 
#[0 26 69 0 4] 
#[0 12 66 0 3 0 127 0 129] 
#[0 12 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 197 1 198 1 199] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 26 73 0 185 26 73 0 186 0 245 0 241 26 73 0 249 1 113 0 250 1 117 0 251 1 121 0 254 26 73 0 255 0 245 1 5 26 73 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 26 77 0 4] 
#[0 12 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 12 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 82 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 86 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 26 81 0 189 26 81 0 192 26 81 0 193 26 81 0 194 26 81 0 202 26 81 0 216 26 81 0 217 26 81 0 218 26 81 0 219 26 81 0 222 26 81 0 223 26 81 0 225 26 81 0 226 26 81 0 227 26 81 0 232 26 81 0 234 26 81 0 235 26 81 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 26 85 0 189 26 85 0 192 26 85 0 193 26 85 0 194 26 85 0 202 26 85 0 216 26 85 0 217 26 85 0 218 26 85 0 219 26 85 0 222 26 85 0 223 26 85 0 225 26 85 0 226 26 85 0 227 26 85 0 232 26 85 0 234 26 85 0 235 26 85 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 26 89 0 2 6 157 0 113] 
#[1 0 93 0 1 26 93 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 157 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 153 0 88 0 165 0 98 0 169 0 101 1 157 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 26 97 0 185 26 97 0 186 26 97 0 188 0 245 0 241 26 97 0 249 1 113 0 250 1 117 0 251 1 121 0 254 26 97 0 255 0 245 1 5 26 97 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 26 101 0 189 26 101 0 192 26 101 0 193 26 101 0 194 26 101 0 202 26 101 0 216 26 101 0 217 26 101 0 218 26 101 0 219 26 101 0 222 26 101 0 223 26 101 0 225 26 101 0 226 26 101 0 227 26 101 0 232 26 101 0 234 26 101 0 235 26 101 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 26 105 0 189 26 105 0 192 26 105 0 193 26 105 0 194 26 105 0 202 26 105 0 216 26 105 0 217 26 105 0 218 26 105 0 219 26 105 0 222 26 105 0 223 26 105 0 225 26 105 0 226 26 105 0 227 26 105 0 232 26 105 0 234 26 105 0 235 26 105 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 12 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 26 109 0 189 26 109 0 192 26 109 0 193 26 109 0 194 26 109 0 202 26 109 0 216 26 109 0 217 26 109 0 218 26 109 0 219 26 109 0 222 26 109 0 223 26 109 0 225 26 109 0 226 26 109 0 227 26 109 0 232 26 109 0 234 26 109 0 235 26 109 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 26 113 0 189 26 113 0 192 26 113 0 193 26 113 0 194 26 113 0 202 26 113 0 216 26 113 0 217 26 113 0 218 26 113 0 219 26 113 0 222 26 113 0 223 26 113 0 225 26 113 0 226 26 113 0 227 26 113 0 232 26 113 0 234 26 113 0 235 26 113 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 26 117 0 2 6 157 0 113] 
#[0 12 102 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 26 121 0 189 26 121 0 192 26 121 0 193 26 121 0 194 26 121 0 202 26 121 0 216 26 121 0 217 26 121 0 218 26 121 0 219 26 121 0 222 26 121 0 223 26 121 0 225 26 121 0 226 26 121 0 227 26 121 0 232 26 121 0 234 26 121 0 235 26 121 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 12 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 26 125 0 2] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 26 129 0 189 26 129 0 192 26 129 0 193 26 129 0 194 26 129 0 202 26 129 0 216 26 129 0 217 26 129 0 218 26 129 0 219 26 129 0 222 26 129 0 223 26 129 0 225 26 129 0 226 26 129 0 227 26 129 0 232 26 129 0 234 26 129 0 235 26 129 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 26 133 0 189 26 133 0 192 26 133 0 193 26 133 0 194 26 133 0 202 26 133 0 216 26 133 0 217 26 133 0 218 26 133 0 219 26 133 0 222 26 133 0 223 26 133 0 225 26 133 0 226 26 133 0 227 26 133 0 232 26 133 0 234 26 133 0 235 26 133 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 12 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 6 157 0 113 26 137 0 114] 
#[1 0 6 0 1 0 6 0 3 12 122 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 12 122 0 55 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 26 141 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 0 6 1 198] 
#[0 12 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 130 0 4 0 55 0 63] 
#[1 26 145 0 4 23 5 0 55 26 149 0 229 23 17 0 230] 
#[0 12 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 26 153 0 4 23 5 0 55 25 41 0 230] 
#[0 12 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 26 157 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 8 113 0 1 26 161 0 7 3 49 0 10 13 149 0 114 8 133 1 78 26 165 1 112 26 169 1 113] 
#[0 12 142 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 26 173 0 7] 
#[0 26 177 0 7] 
#[1 4 145 0 5 4 169 0 117 4 221 0 119 4 225 0 120 26 181 0 133 26 181 0 144 26 181 0 145 26 181 0 146 4 221 1 47 4 225 1 48] 
#[1 8 113 0 1 26 185 0 7 3 49 0 10 13 149 0 114 8 133 1 78 26 189 1 112 26 193 1 113] 
#[0 12 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 150 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 26 197 0 4] 
#[1 4 145 0 5 4 149 0 25 4 153 0 52 4 157 0 75 4 161 0 95 4 169 0 117 4 221 0 119 4 225 0 120 26 201 0 133 26 201 0 144 26 201 0 145 26 201 0 146 15 37 1 1 15 37 1 3 15 37 1 8 15 37 1 12 4 221 1 47 4 225 1 48 15 37 1 122 15 37 1 123 4 237 1 198] 
#[1 26 205 0 1 25 69 0 7 3 49 0 10 13 149 0 114 8 133 1 78 25 73 1 112 25 77 1 113] 
#[1 23 153 0 3 9 106 0 7 13 149 0 114 21 57 1 112] 
#[1 0 255 0 1 12 154 0 3 12 154 0 4 0 255 0 5 0 255 0 7 12 54 0 8 12 54 0 9 12 54 0 10 12 54 0 11 12 54 0 12 12 54 0 13 12 54 0 14 12 54 0 15 12 54 0 16 12 54 0 17 12 54 0 19 12 54 0 20 12 54 0 21 12 54 0 22 12 54 0 23 12 54 0 24 12 54 0 25 12 54 0 26 12 54 0 27 12 54 0 28 12 54 0 29 12 54 0 30 12 54 0 31 12 54 0 32 12 54 0 33 0 255 0 34 0 255 0 35 0 255 0 36 0 255 0 37 12 154 0 38 12 54 0 39 12 54 0 40 12 54 0 41 12 54 0 42 12 54 0 43 12 54 0 44 12 54 0 45 12 54 0 46 12 54 0 47 12 154 0 48 12 54 0 49 12 54 0 50 12 54 0 51 12 154 0 52 12 154 0 53 12 154 0 54 12 154 0 57 12 154 0 58 12 154 0 60 12 154 0 61 12 154 0 62 12 154 0 64 12 154 0 65 12 154 0 67 12 154 0 68 12 154 0 70 12 154 0 72 12 154 0 74 12 154 0 76 12 154 0 77 12 54 0 78 12 54 0 81 12 154 0 82 12 154 0 84 12 154 0 86 12 154 0 87 12 154 0 88 12 154 0 94 12 154 0 98 12 154 0 99 12 154 0 101 12 154 0 102 12 154 0 103 12 154 0 104 12 154 0 105 12 154 0 106 12 154 0 107 12 154 0 108 12 154 0 109 12 154 0 110 12 154 0 111 12 54 0 113 12 154 0 116 12 154 0 119 12 154 0 120 12 154 0 121 0 255 0 123 0 255 0 124 12 154 0 127 12 54 1 197 0 255 1 198 12 154 1 199] 
#[0 26 209 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 24 141 0 247 15 245 0 248 26 213 1 6 0 6 1 198] 
#[0 26 217 0 4] 
#[0 26 221 0 7] 
#[1 1 3 0 1 12 158 0 3 12 158 0 4 1 3 0 5 1 3 0 7 12 74 0 8 12 74 0 9 12 74 0 10 12 74 0 11 12 74 0 12 12 74 0 13 12 74 0 14 12 74 0 15 12 74 0 16 12 74 0 17 12 74 0 19 12 74 0 20 12 74 0 21 12 74 0 22 12 74 0 23 12 74 0 24 12 74 0 25 12 74 0 26 12 74 0 27 12 74 0 28 12 74 0 29 12 74 0 30 12 74 0 31 12 74 0 32 12 74 0 33 1 3 0 34 1 3 0 35 1 3 0 36 1 3 0 37 12 158 0 38 12 74 0 39 12 74 0 40 12 74 0 41 12 74 0 42 12 74 0 43 12 74 0 44 12 74 0 45 12 74 0 46 12 74 0 47 12 158 0 48 12 74 0 49 12 74 0 50 12 74 0 51 12 158 0 52 12 158 0 53 12 158 0 54 12 158 0 57 12 158 0 58 12 158 0 60 12 158 0 61 12 158 0 62 12 158 0 64 12 158 0 65 12 158 0 67 12 158 0 68 12 158 0 70 12 158 0 72 12 158 0 74 12 158 0 76 12 158 0 77 12 74 0 78 12 74 0 81 12 158 0 82 12 158 0 84 12 158 0 86 12 158 0 87 12 158 0 88 12 158 0 94 12 158 0 98 12 158 0 99 12 158 0 101 12 158 0 102 12 158 0 103 12 158 0 104 12 158 0 105 12 158 0 106 12 158 0 107 12 158 0 108 12 158 0 109 12 158 0 110 12 158 0 111 12 74 0 113 12 158 0 116 12 158 0 119 12 158 0 120 12 158 0 121 1 3 0 123 1 3 0 124 12 158 0 127 12 74 1 197 1 3 1 198 12 158 1 199] 
#[1 1 7 0 3 11 254 0 7] 
#[0 12 162 0 4 0 5 0 7 0 59 0 91 0 92 0 93 0 96 0 113 0 117 0 119 0 120] 
#[0 12 166 0 4 0 5 0 7 0 59 0 91 0 92 0 93 0 96 0 113 0 117 0 119 0 120] 
#[0 12 170 0 4 0 7 0 113] 
#[0 12 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 199] 
#[0 26 225 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 25 237 0 247 15 245 0 248 26 229 1 11 0 6 1 198] 
#[0 26 233 0 3] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 19 13 0 247 15 245 0 248 26 237 1 15 0 6 1 198] 
#[0 12 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 26 241 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 24 141 0 247 15 245 0 248 26 245 1 6 0 6 1 198] 
#[0 26 249 0 4] 
#[0 12 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 26 253 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 25 237 0 247 15 245 0 248 27 1 1 11 0 6 1 198] 
#[0 27 5 0 4] 
#[0 12 178 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 27 9 0 4] 
#[0 12 182 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 27 13 0 247 15 245 0 248 0 6 1 198] 
#[0 27 17 0 3] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 27 21 0 247 15 245 0 248 0 6 1 198] 
#[0 27 25 0 3] 
#[0 12 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 12 190 0 4] 
#[0 27 29 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 25 237 0 247 15 245 0 248 27 33 1 11 0 6 1 198] 
#[0 27 37 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 27 41 0 247 15 245 0 248 0 6 1 198] 
#[0 12 194 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 12 198 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 27 45 0 4] 
#[0 12 202 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[1 27 49 0 3 27 53 0 7] 
#[0 12 206 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 12 210 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 27 57 0 7] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 27 61 0 247 15 245 0 248 0 6 1 198] 
#[0 12 214 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 12 218 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 27 65 0 4] 
#[0 12 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 27 69 0 4] 
#[0 12 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 27 73 0 13] 
#[0 27 77 0 13] 
#[0 12 230 0 3 0 127 0 129] 
#[1 0 18 0 4 27 81 1 72] 
#[0 12 234 0 3 0 8 0 13 0 128] 
#[0 12 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 27 85 0 189 27 85 0 192 27 85 0 193 27 85 0 194 27 85 0 202 27 85 0 216 27 85 0 217 27 85 0 218 27 85 0 219 27 85 0 222 27 85 0 223 27 85 0 225 27 85 0 226 27 85 0 227 27 85 0 232 27 85 0 234 27 85 0 235 27 85 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 27 89 0 189 27 89 0 192 27 89 0 193 27 89 0 194 27 89 0 202 27 89 0 216 27 89 0 217 27 89 0 218 27 89 0 219 27 89 0 222 27 89 0 223 27 89 0 225 27 89 0 226 27 89 0 227 27 89 0 232 27 89 0 234 27 89 0 235 27 89 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[1 27 93 0 2 6 157 0 113] 
#[0 12 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 12 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 13 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 27 97 0 189 27 97 0 192 27 97 0 193 27 97 0 194 27 97 0 202 27 97 0 216 27 97 0 217 27 97 0 218 27 97 0 219 27 97 0 222 27 97 0 223 27 97 0 225 27 97 0 226 27 97 0 227 27 97 0 232 27 97 0 234 27 97 0 235 27 97 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 13 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 27 101 0 189 27 101 0 192 27 101 0 193 27 101 0 194 27 101 0 202 27 101 0 216 27 101 0 217 27 101 0 218 27 101 0 219 27 101 0 222 27 101 0 223 27 101 0 225 27 101 0 226 27 101 0 227 27 101 0 232 27 101 0 234 27 101 0 235 27 101 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 13 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 13 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 6 0 1 0 6 0 3 13 18 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 13 18 0 55 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 13 18 0 63 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 27 105 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 0 6 1 198] 
#[1 0 6 0 1 0 6 0 3 13 22 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 13 22 0 55 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 7 29 0 196 0 57 0 197 7 29 0 198 0 65 0 199 0 6 1 198] 
#[0 13 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 27 109 0 4 23 5 0 55 25 41 0 230] 
#[0 13 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 27 113 0 2] 
#[0 13 34 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 27 117 0 7] 
#[0 27 121 0 7] 
#[0 13 38 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 42 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[1 8 113 0 1 27 125 0 7 3 49 0 10 13 149 0 114 8 133 1 78 27 129 1 112 27 133 1 113] 
#[0 13 46 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 27 137 0 7] 
#[0 27 141 0 7] 
#[0 13 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 26 205 0 1 26 161 0 7 3 49 0 10 13 149 0 114 8 133 1 78 26 165 1 112 26 169 1 113] 
#[1 0 82 0 2 4 33 0 3 4 37 0 5 4 89 0 112 0 189 0 116 9 117 0 132 4 101 0 205 4 101 0 206 4 101 0 207 4 133 0 213 4 133 0 214 4 129 0 215 14 233 0 242 27 145 0 243 4 125 0 244 4 129 0 245 4 133 0 246 8 109 1 198] 
#[1 1 11 0 1 13 54 0 3 13 54 0 4 1 11 0 5 1 11 0 7 12 222 0 8 12 222 0 9 12 222 0 10 12 222 0 11 12 222 0 12 12 222 0 13 12 222 0 14 12 222 0 15 12 222 0 16 12 222 0 17 12 222 0 19 12 222 0 20 12 222 0 21 12 222 0 22 12 222 0 23 12 222 0 24 12 222 0 25 12 222 0 26 12 222 0 27 12 222 0 28 12 222 0 29 12 222 0 30 12 222 0 31 12 222 0 32 12 222 0 33 1 11 0 34 1 11 0 35 1 11 0 36 1 11 0 37 13 54 0 38 12 222 0 39 12 222 0 40 12 222 0 41 12 222 0 42 12 222 0 43 12 222 0 44 12 222 0 45 12 222 0 46 12 222 0 47 13 54 0 48 12 222 0 49 12 222 0 50 12 222 0 51 13 54 0 52 13 54 0 53 13 54 0 54 13 54 0 57 13 54 0 58 13 54 0 60 13 54 0 61 13 54 0 62 13 54 0 64 13 54 0 65 13 54 0 67 13 54 0 68 13 54 0 70 13 54 0 72 13 54 0 74 13 54 0 76 13 54 0 77 12 222 0 78 12 222 0 81 13 54 0 82 13 54 0 84 13 54 0 86 13 54 0 87 13 54 0 88 13 54 0 94 13 54 0 98 13 54 0 99 13 54 0 101 13 54 0 102 13 54 0 103 13 54 0 104 13 54 0 105 13 54 0 106 13 54 0 107 13 54 0 108 13 54 0 109 13 54 0 110 13 54 0 111 12 222 0 113 13 54 0 116 13 54 0 119 13 54 0 120 13 54 0 121 1 11 0 123 1 11 0 124 13 54 0 127 12 222 1 197 1 11 1 198 13 54 1 199] 
#[0 27 149 0 4] 
#[1 1 15 0 1 13 58 0 3 13 58 0 4 1 15 0 5 1 15 0 7 12 226 0 8 12 226 0 9 12 226 0 10 12 226 0 11 12 226 0 12 12 226 0 13 12 226 0 14 12 226 0 15 12 226 0 16 12 226 0 17 12 226 0 19 12 226 0 20 12 226 0 21 12 226 0 22 12 226 0 23 12 226 0 24 12 226 0 25 12 226 0 26 12 226 0 27 12 226 0 28 12 226 0 29 12 226 0 30 12 226 0 31 12 226 0 32 12 226 0 33 1 15 0 34 1 15 0 35 1 15 0 36 1 15 0 37 13 58 0 38 12 226 0 39 12 226 0 40 12 226 0 41 12 226 0 42 12 226 0 43 12 226 0 44 12 226 0 45 12 226 0 46 12 226 0 47 13 58 0 48 12 226 0 49 12 226 0 50 12 226 0 51 13 58 0 52 13 58 0 53 13 58 0 54 13 58 0 57 13 58 0 58 13 58 0 60 13 58 0 61 13 58 0 62 13 58 0 64 13 58 0 65 13 58 0 67 13 58 0 68 13 58 0 70 13 58 0 72 13 58 0 74 13 58 0 76 13 58 0 77 12 226 0 78 12 226 0 81 13 58 0 82 13 58 0 84 13 58 0 86 13 58 0 87 13 58 0 88 13 58 0 94 13 58 0 98 13 58 0 99 13 58 0 101 13 58 0 102 13 58 0 103 13 58 0 104 13 58 0 105 13 58 0 106 13 58 0 107 13 58 0 108 13 58 0 109 13 58 0 110 13 58 0 111 12 226 0 113 13 58 0 116 13 58 0 119 13 58 0 120 13 58 0 121 1 15 0 123 1 15 0 124 13 58 0 127 12 226 1 197 1 15 1 198 13 58 1 199] 
#[0 13 62 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 13 66 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 27 153 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 25 237 0 247 15 245 0 248 27 157 1 11 0 6 1 198] 
#[0 27 161 0 4] 
#[0 13 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 27 165 0 4] 
#[0 13 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 13 70 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 27 169 0 4] 
#[0 13 74 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 13 78 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 27 173 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 27 177 0 247 15 245 0 248 0 6 1 198] 
#[0 27 181 0 4] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 27 185 0 247 15 245 0 248 0 6 1 198] 
#[0 13 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 27 189 0 4] 
#[0 13 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 27 193 0 4] 
#[0 13 90 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[1 0 6 0 1 0 6 0 3 6 142 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 237 0 195 2 85 0 196 0 57 0 197 2 85 0 198 0 65 0 199 27 197 0 247 15 245 0 248 0 6 1 198] 
#[0 13 94 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 13 98 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 27 201 0 4] 
#[0 13 102 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 13 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 13 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 128 1 197 1 198 1 199] 
#[0 13 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 197 1 198 1 199] 
#[0 27 205 0 4] 
#[0 13 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 13 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 93 0 1 1 197 0 3 0 101 0 5 1 201 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 205 0 54 0 137 0 57 1 209 0 60 1 213 0 61 0 141 0 64 1 217 0 65 1 157 0 70 1 221 0 72 0 149 0 74 1 225 0 76 0 153 0 77 0 157 0 87 1 153 0 88 1 229 0 94 0 165 0 98 1 233 0 99 0 169 0 101 1 237 0 102 1 157 0 103 1 241 0 104 0 177 0 106 1 245 0 107 0 181 0 108 1 249 0 109 1 253 0 110 0 185 0 111 2 1 0 116 1 161 0 119 1 165 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 5 0 185 2 5 0 186 2 5 0 188 27 209 0 189 27 209 0 192 27 209 0 193 27 209 0 194 27 209 0 202 27 209 0 216 27 209 0 217 27 209 0 218 27 209 0 219 27 209 0 222 27 209 0 223 27 209 0 225 27 209 0 226 27 209 0 227 27 209 0 232 27 209 0 234 27 209 0 235 27 209 0 239 0 245 0 241 2 5 0 249 1 113 0 250 1 117 0 251 1 121 0 254 2 5 0 255 0 245 1 5 2 5 1 7 0 245 1 10 0 245 1 14 1 33 1 16 0 245 1 18 1 153 1 45 1 157 1 46 1 161 1 47 1 165 1 48 0 245 1 49 0 245 1 50 0 245 1 51 1 181 1 52 0 245 1 54 1 189 1 72 1 193 1 198] 
#[0 13 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 13 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[1 0 6 0 1 0 6 0 3 13 134 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 13 134 0 55 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 13 134 0 63 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 7 29 0 196 0 57 0 197 7 29 0 198 0 65 0 199 0 6 1 198] 
#[0 13 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 27 213 0 7] 
#[0 13 142 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 146 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 150 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 27 217 0 7] 
#[0 27 221 0 7] 
#[0 13 154 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 158 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 1 19 0 2] 
#[1 1 23 0 1 13 162 0 3 13 162 0 4 1 23 0 5 1 23 0 7 13 106 0 8 13 106 0 9 13 106 0 10 13 106 0 11 13 106 0 12 13 106 0 13 13 106 0 14 13 106 0 15 13 106 0 16 13 106 0 17 13 106 0 19 13 106 0 20 13 106 0 21 13 106 0 22 13 106 0 23 13 106 0 24 13 106 0 25 13 106 0 26 13 106 0 27 13 106 0 28 13 106 0 29 13 106 0 30 13 106 0 31 13 106 0 32 13 106 0 33 1 23 0 34 1 23 0 35 1 23 0 36 1 23 0 37 13 162 0 38 13 106 0 39 13 106 0 40 13 106 0 41 13 106 0 42 13 106 0 43 13 106 0 44 13 106 0 45 13 106 0 46 13 106 0 47 13 162 0 48 13 106 0 49 13 106 0 50 13 106 0 51 13 162 0 52 13 162 0 53 13 162 0 54 13 162 0 57 13 162 0 58 13 162 0 60 13 162 0 61 13 162 0 62 13 162 0 64 13 162 0 65 13 162 0 67 13 162 0 68 13 162 0 70 13 162 0 72 13 162 0 74 13 162 0 76 13 162 0 77 13 106 0 78 13 106 0 81 13 162 0 82 13 162 0 84 13 162 0 86 13 162 0 87 13 162 0 88 13 162 0 94 13 162 0 98 13 162 0 99 13 162 0 101 13 162 0 102 13 162 0 103 13 162 0 104 13 162 0 105 13 162 0 106 13 162 0 107 13 162 0 108 13 162 0 109 13 162 0 110 13 162 0 111 13 106 0 113 13 162 0 116 13 162 0 119 13 162 0 120 13 162 0 121 1 23 0 123 1 23 0 124 13 162 0 127 13 106 1 197 1 23 1 198 13 162 1 199] 
#[0 13 166 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 27 225 0 4] 
#[0 13 170 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 13 162 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 13 174 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 13 178 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 27 229 0 4] 
#[0 13 182 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 27 233 0 4] 
#[0 13 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 197 1 198 1 199] 
#[0 13 190 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 27 237 0 4] 
#[0 13 194 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198] 
#[0 13 198 0 3 0 8 0 13 0 128] 
#[0 13 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 13 206 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 210 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 214 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 218 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 198 1 199] 
#[0 13 222 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 13 226 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 198] 
#[0 13 230 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 198]
	).
]

{ #category : #private }
JSParser >> actionsForCurrentToken [
	| actions |
	currentToken ids first = scanner questionDotId
		ifTrue: [ (scanner peekCharacter ifNil: [ $a ]) isDigit
				ifTrue: [ currentToken := scanner tokenClass
						value: '?'
						start: currentToken startPosition
						ids: (Array with: scanner questionId).
					self position: currentToken startPosition ] ].
	actions := super actionsForCurrentToken.
	(currentToken ids first ~= scanner identifierId
		and: [ (currentToken ids includes: scanner identifierId)
				and: [ (self keywords includes: currentToken value) not ] ])
		ifTrue: [ self addActionsFor: scanner identifierId to: actions ].
	(currentToken ids first ~= scanner identifierNameId
		and: [ currentToken ids includes: scanner identifierNameId ])
		ifTrue: [ self addActionsFor: scanner identifierNameId to: actions ].
	(currentToken ids first == scanner regular_expressionId
		and: [ actions isEmpty ])
		ifTrue: [ (currentToken value at: 2) == $=
				ifTrue: [ currentToken := scanner tokenClass
						value: '/='
						start: currentToken startPosition
						ids: (Array with: scanner slashEqualId).
					self position: currentToken startPosition + 1 ]
				ifFalse: [ currentToken := scanner tokenClass
						value: '/'
						start: currentToken startPosition
						ids: (Array with: scanner slashId).
					self position: currentToken startPosition ].
			^ self actionsForCurrentToken ].
	(actions isEmpty and:
		[ self canInsertSemicolon ])
		ifTrue: [ self addActionsFor: self scanner semicolonId to: actions.
			actions notEmpty
				ifTrue: [ currentState
						attributeNamed: #lastInsertedSemicolonPosition
						put: scanner position.
					self position: currentToken startPosition - 1.
					currentToken := currentToken class
						value: ';'
						start: nil
						ids: (Array with: self scanner semicolonId) ] ].
	actions isEmpty
		ifTrue: [ (currentToken ids includes: scanner rightBraceId)
				ifTrue: [ | i scannerState stackItem |
					i := nodeStack size.
					scannerState := nil.
					[ i > 0 and: [ scannerState isNil ] ]
						whileTrue: [ stackItem := nodeStack at: i.
							stackItem = #template
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
							^ self actionsForCurrentToken ] ] ].
	^ actions
]

{ #category : #private }
JSParser >> canInsertSemicolon [
	| item |
	((currentState attributeNamed: #lastInsertedSemicolonPosition)
		ifNil: [ -1 ]) < scanner position
		ifFalse: [ ^ false ].
	nodeStack size > 1
		ifFalse: [ ^ true ].
	(nodeStack at: nodeStack size - 1) = #startExpressionStatement
		ifFalse: [ ^ true ].
	item := nodeStack last.
	(item isKindOf: SmaCCToken)
		ifFalse: [ ^ true ].
	(item ids includes: scanner identifierId)
		ifFalse: [ ^ true ].
	^ item ids size <= 2
		or: [ (#('let' 'const') includes: item value) not ]
]

{ #category : #private }
JSParser >> checkEOL [
	| stackTop position |
	(self isEOFToken or: [ currentToken ids includes: scanner semicolonId ])
		ifTrue: [ ^ self ].
	nodeStack isEmpty
		ifTrue: [ ^ self ].
	stackTop := nodeStack last.
	position := [ ((stackTop isKindOf: SmaCCToken)
		ifTrue: [ stackTop ]
		ifFalse: [ (stackTop isKindOf: SmaCCDeferredChoice)
				ifTrue: [ stackTop possibleItems first ] ]) stopPosition ]
		on: Error
		do: [ :ex | currentToken startPosition ].
	(scanner hasNewlineBetween: position and: currentToken startPosition)
		ifTrue: [ currentState attributeNamed: #lastInsertedSemicolonPosition put: scanner position.
			self position: currentToken startPosition - 1.
			currentToken := currentToken class value: ';' start: nil ids: (Array with: self scanner semicolonId) ]
]

{ #category : #private }
JSParser >> defaultScope [
	^ #jsx
]

{ #category : #private }
JSParser >> handleError: anInteger [
	(currentToken value = ';' and: [ currentToken startPosition isNil ])
		ifTrue: [ currentToken := nil.
			self getNextToken ].
	^ super handleError: anInteger
]

{ #category : #private }
JSParser >> isJSX [
	^ true
]

{ #category : #private }
JSParser >> keywords [
	^ self class keywords
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientBinding2: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientClassDeclaration1: nodes [
	| result |
	result := JSClassExpressionNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result extendsToken: ((nodes at: 3) at: 1).
	result superclass: ((nodes at: 3) at: 2).
	result implementsToken: ((nodes at: 3) at: 3).
	result addNodes: ((nodes at: 3) at: 4) to: result types.
	result addTokens: ((nodes at: 3) at: 5) to: result commas.
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result elements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientClassDeclaration2: nodes [
	| result |
	result := JSClassExpressionNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result extendsToken: ((nodes at: 4) at: 1).
	result superclass: ((nodes at: 4) at: 2).
	result implementsToken: ((nodes at: 4) at: 3).
	result addNodes: ((nodes at: 4) at: 4) to: result types.
	result addTokens: ((nodes at: 4) at: 5) to: result commas.
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result elements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientConstructorDeclaration1: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result constructorToken: (nodes at: 1).
	result left: (nodes at: 2).
	result restParameter: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientDeclaration1: nodes [
	| result |
	result := JSAmbientDeclarationNode new.
	result declareToken: (nodes at: 1).
	result declaration: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientFunctionDeclaration1: nodes [
	| result |
	result := JSEmptyFunctionNode new.
	result functionToken: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientModuleDeclaration1: nodes [
	| result |
	result := JSAmbientModuleDeclarationNode new.
	result declareToken: (nodes at: 1).
	result moduleToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result elements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientNamespaceElement3: nodes [
	| result |
	result := JSExportNamespaceElementNode new.
	result declaration: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration10: nodes [
	| result |
	result := JSMethodSignatureNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration11: nodes [
	| result |
	result := JSMethodSignatureNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration12: nodes [
	| result |
	result := JSMethodSignatureNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration9: nodes [
	| result |
	result := JSMethodSignatureNode new.
	result name: (nodes at: 1).
	result signature: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArgumentList1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArgumentList2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	self add: (nodes at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArgumentList3: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArgumentList4: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArguments1: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArguments2: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 6).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArguments3: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 6).
	self add: (nodes at: 3) to: (result at: 6).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArguments4: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArguments5: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 4) at: 3) to: (result at: 5).
	self addAll: ((nodes at: 4) at: 4) to: (result at: 6).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern1: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern2: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result restElement: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern3: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern4: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result commas.
	result restElement: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern5: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result elements.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern6: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result elements.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern7: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result elements.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result restElement: (nodes at: 4).
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern8: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result elements.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result addTokens: (nodes at: 4) to: result commas.
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern9: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result elements.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result addTokens: (nodes at: 4) to: result commas.
	result restElement: (nodes at: 5).
	result rightBracket: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayLiteral1: nodes [
	| result |
	result := JSArrayLiteralNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayLiteral2: nodes [
	| result |
	result := JSArrayLiteralNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayLiteral3: nodes [
	| result |
	result := JSArrayLiteralNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayLiteral4: nodes [
	| result |
	result := JSArrayLiteralNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addTokens: (nodes at: 3) to: result commas.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayType1: nodes [
	| result |
	result := JSArrayTypeNode new.
	result type: (nodes at: 1).
	result leftBracket: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrowFormalParameters1: nodes [
	| result |
	result := Array new: 8.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrowFormalParameters2: nodes [
	| result |
	result := nodes at: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrowFunction1: nodes [
	| result |
	result := JSArrowFunctionNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result parameters.
	result left: ((nodes at: 1) at: 2).
	result restParameter: ((nodes at: 1) at: 3).
	result addTokens: ((nodes at: 1) at: 4) to: result commas.
	result right: ((nodes at: 1) at: 5).
	result colonToken: ((nodes at: 1) at: 6).
	result type: ((nodes at: 1) at: 7).
	result typeParameters: ((nodes at: 1) at: 8).
	result arrow: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result leftBracket: ((nodes at: 3) at: 2).
	result rightBracket: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrowParameterDeclaration1: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrowParameters1: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrowParameters2: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 2 put: ((nodes at: 1) at: 1).
	result at: 3 put: ((nodes at: 1) at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 4).
	result at: 5 put: ((nodes at: 1) at: 5).
	result at: 6 put: ((nodes at: 1) at: 6).
	result at: 7 put: ((nodes at: 1) at: 7).
	result at: 8 put: ((nodes at: 1) at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAssignmentExpression5: nodes [
	| result |
	result := JSAssignmentExpressionNode new.
	result lhs: (nodes at: 1).
	result operator: (nodes at: 2).
	result rhs: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAsyncArrowFunction1: nodes [
	| result |
	result := JSAsyncArrowFunctionNode new.
	result asyncToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result parameters.
	result left: ((nodes at: 2) at: 2).
	result restParameter: ((nodes at: 2) at: 3).
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result right: ((nodes at: 2) at: 5).
	result colonToken: ((nodes at: 2) at: 6).
	result type: ((nodes at: 2) at: 7).
	result typeParameters: ((nodes at: 2) at: 8).
	result arrow: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result leftBrace: ((nodes at: 4) at: 2).
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAsyncFunctionExpression1: nodes [
	| result |
	result := JSAsyncFunctionNode new.
	result asyncToken: (nodes at: 1).
	result functionToken: (nodes at: 2).
	result left: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result right: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAsyncFunctionExpression2: nodes [
	| result |
	result := JSAsyncFunctionNode new.
	result asyncToken: (nodes at: 1).
	result functionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result left: (nodes at: 4).
	result restParameter: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result parameters.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result right: (nodes at: 6).
	result leftBrace: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result statements.
	result rightBrace: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAsyncGeneratorExpression1: nodes [
	| result |
	result := JSAsyncGeneratorFunctionNode new.
	result asyncToken: (nodes at: 1).
	result functionToken: (nodes at: 2).
	result star: (nodes at: 3).
	result left: (nodes at: 4).
	result restParameter: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result parameters.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result right: (nodes at: 6).
	result leftBrace: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result statements.
	result rightBrace: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAsyncGeneratorExpression2: nodes [
	| result |
	result := JSAsyncGeneratorFunctionNode new.
	result asyncToken: (nodes at: 1).
	result functionToken: (nodes at: 2).
	result star: (nodes at: 3).
	result name: (nodes at: 4).
	result left: (nodes at: 5).
	result restParameter: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result parameters.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result right: (nodes at: 7).
	result leftBrace: (nodes at: 8).
	result addNodes: (nodes at: 9) to: result statements.
	result rightBrace: (nodes at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAsyncGeneratorMethod1: nodes [
	| result |
	result := JSAsyncGeneratorMethodDefinitionNode new.
	result asyncToken: (nodes at: 1).
	result star: (nodes at: 2).
	result name: (nodes at: 3).
	result left: (nodes at: 4).
	result restParameter: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result parameters.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result right: (nodes at: 6).
	result leftBrace: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result statements.
	result rightBrace: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAsyncMethod1: nodes [
	| result |
	result := JSAsyncMethodDefinitionNode new.
	result asyncToken: (nodes at: 1).
	result name: (nodes at: 2).
	result left: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result right: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAwaitExpression1: nodes [
	| result |
	result := JSAwaitExpressionNode new.
	result awaitToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement11: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 2).
	result questionMarkToken: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement13: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result modifier: (nodes at: 2).
	result variable: (nodes at: 3).
	result questionMarkToken: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElementList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElementList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: ((nodes at: 3) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElisionElement1: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElisionElement2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 2).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingProperty2: nodes [
	| result |
	result := JSBindingPropertyNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result element: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingRestElement1: nodes [
	| result |
	result := JSRestVariableDeclarationNode new.
	result ellipsis: (nodes at: 1).
	result variable: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingRestElement3: nodes [
	| result |
	result := JSRestVariableDeclarationNode new.
	result ellipsis: (nodes at: 1).
	result variable: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingRestProperty1: nodes [
	| result |
	result := JSBindingRestPropertyNode new.
	result ellipsis: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBlock1: nodes [
	| result |
	result := JSBlockStatementNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBlock2: nodes [
	| result |
	result := JSBlockStatementNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result statements.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBreakStatement1: nodes [
	| result |
	result := JSBreakStatementNode new.
	result breakToken: (nodes at: 1).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBreakStatement2: nodes [
	| result |
	result := JSBreakStatementNode new.
	result breakToken: (nodes at: 1).
	result label: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCallExpression1: nodes [
	| result |
	result := JSCallExpressionNode new.
	result expression: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result right: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 2) at: 3) to: result arguments.
	result addTokens: ((nodes at: 2) at: 4) to: result ellipsises.
	result addNodes: ((nodes at: 2) at: 5) to: result varArguments.
	result addTokens: ((nodes at: 2) at: 6) to: result commas.
	result typeArguments: ((nodes at: 2) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCallExpression5: nodes [
	| result |
	result := JSIndexedPropertyExpressionNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result leftBracket: (nodes at: 2).
	result addNode: (nodes at: 3) to: result expressions.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCallSignature1: nodes [
	| result |
	result := JSCallSignatureNode new.
	result left: (nodes at: 1).
	result restParameter: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result parameters.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCallSignature2: nodes [
	| result |
	result := JSCallSignatureNode new.
	result left: (nodes at: 1).
	result restParameter: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result parameters.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCallSignature3: nodes [
	| result |
	result := JSCallSignatureNode new.
	result typeParameters: (nodes at: 1).
	result left: (nodes at: 2).
	result restParameter: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCallSignature4: nodes [
	| result |
	result := JSCallSignatureNode new.
	result typeParameters: (nodes at: 1).
	result left: (nodes at: 2).
	result restParameter: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseBlock1: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseBlock2: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 3).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseBlock3: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 3).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseBlock4: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 3).
	self addAll: (nodes at: 3) to: (result at: 3).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseBlock5: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 3).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseBlock6: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 3).
	self addAll: (nodes at: 4) to: (result at: 3).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseClause1: nodes [
	| result |
	result := JSCaseClauseNode new.
	result caseToken: (nodes at: 1).
	result caseExpression: (nodes at: 2).
	result colonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseClause2: nodes [
	| result |
	result := JSCaseClauseNode new.
	result caseToken: (nodes at: 1).
	result caseExpression: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCatch1: nodes [
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
JSParser >> reduceActionForCatch2: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (nodes at: 1).
	result at: 5 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCheckEOL1: nodes [
	self checkEOL.
	^ nil
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration3: nodes [
	| result |
	result := JSClassExpressionNode new.
	result typeParameters: (nodes at: 2).
	result leftBrace: ((nodes at: 3) at: 1).
	result rightBrace: ((nodes at: 3) at: 2).
	result addNodes: ((nodes at: 3) at: 3) to: result elements.
	result extendsToken: ((nodes at: 3) at: 4).
	result superclass: ((nodes at: 3) at: 5).
	result implementsToken: ((nodes at: 3) at: 6).
	result addNodes: ((nodes at: 3) at: 7) to: result types.
	result addTokens: ((nodes at: 3) at: 8) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration4: nodes [
	| result |
	result := JSClassExpressionNode new.
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result rightBrace: ((nodes at: 4) at: 2).
	result addNodes: ((nodes at: 4) at: 3) to: result elements.
	result extendsToken: ((nodes at: 4) at: 4).
	result superclass: ((nodes at: 4) at: 5).
	result implementsToken: ((nodes at: 4) at: 6).
	result addNodes: ((nodes at: 4) at: 7) to: result types.
	result addTokens: ((nodes at: 4) at: 8) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassElement2: nodes [
	| result |
	result := nodes at: 2.
	result staticToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassExpression1: nodes [
	| result |
	result := JSClassExpressionNode new.
	result classToken: (nodes at: 1).
	result leftBrace: ((nodes at: 2) at: 1).
	result rightBrace: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 2) at: 3) to: result elements.
	result extendsToken: ((nodes at: 2) at: 4).
	result superclass: ((nodes at: 2) at: 5).
	result implementsToken: ((nodes at: 2) at: 6).
	result addNodes: ((nodes at: 2) at: 7) to: result types.
	result addTokens: ((nodes at: 2) at: 8) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassExpression2: nodes [
	| result |
	result := JSClassExpressionNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: ((nodes at: 3) at: 1).
	result rightBrace: ((nodes at: 3) at: 2).
	result addNodes: ((nodes at: 3) at: 3) to: result elements.
	result extendsToken: ((nodes at: 3) at: 4).
	result superclass: ((nodes at: 3) at: 5).
	result implementsToken: ((nodes at: 3) at: 6).
	result addNodes: ((nodes at: 3) at: 7) to: result types.
	result addTokens: ((nodes at: 3) at: 8) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassHeritage1: nodes [
	| result |
	result := Array new: 5.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassHeritage2: nodes [
	| result |
	result := Array new: 5.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 3 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassHeritage3: nodes [
	| result |
	result := Array new: 5.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 2) at: 1).
	result at: 2 put: ((nodes at: 2) at: 2).
	result at: 3 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassTail1: nodes [
	| result |
	result := Array new: 8.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassTail2: nodes [
	| result |
	result := Array new: 8.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 3).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassTail3: nodes [
	| result |
	result := Array new: 8.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 4 put: ((nodes at: 1) at: 1).
	result at: 5 put: ((nodes at: 1) at: 2).
	result at: 6 put: ((nodes at: 1) at: 3).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 7).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 8).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassTail4: nodes [
	| result |
	result := Array new: 8.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 4 put: ((nodes at: 1) at: 1).
	result at: 5 put: ((nodes at: 1) at: 2).
	result at: 6 put: ((nodes at: 1) at: 3).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 7).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 8).
	result at: 1 put: (nodes at: 2).
	self addAll: (nodes at: 3) to: (result at: 3).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForComputedPropertyName1: nodes [
	| result |
	result := JSComputedPropertyNameNode new.
	result leftBrace: (nodes at: 1).
	result expression: (nodes at: 2).
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConciseBody1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConciseBody2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 1).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConditionalExpression2: nodes [
	| result |
	result := JSConditionalExpressionNode new.
	result condition: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result trueExpression: (nodes at: 3).
	result colonToken: (nodes at: 4).
	result falseExpression: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConstructSignature1: nodes [
	| result |
	result := JSConstructSignatureNode new.
	result newToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result restParameter: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConstructSignature2: nodes [
	| result |
	result := JSConstructSignatureNode new.
	result newToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result restParameter: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result rightParen: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConstructSignature3: nodes [
	| result |
	result := JSConstructSignatureNode new.
	result newToken: (nodes at: 1).
	result typeParameters: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConstructSignature4: nodes [
	| result |
	result := JSConstructSignatureNode new.
	result newToken: (nodes at: 1).
	result typeParameters: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result rightParen: (nodes at: 5).
	result colonToken: ((nodes at: 6) at: 1).
	result type: ((nodes at: 6) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConstructorDeclaration1: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result constructorToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result restParameter: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result rightParen: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConstructorDeclaration2: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result modifier: (nodes at: 1).
	result constructorToken: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result rightParen: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConstructorDeclaration3: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result constructorToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result restParameter: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result rightParen: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConstructorDeclaration4: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result modifier: (nodes at: 1).
	result constructorToken: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result rightParen: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConstructorType1: nodes [
	| result |
	result := JSConstructorTypeNode new.
	result newToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result restParameter: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result addToken: (nodes at: 4) to: result rightParens.
	result arrow: (nodes at: 5).
	result type: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConstructorType2: nodes [
	| result |
	result := JSConstructorTypeNode new.
	result newToken: (nodes at: 1).
	result typeParameters: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result addToken: (nodes at: 5) to: result rightParens.
	result arrow: (nodes at: 6).
	result type: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForContinueStatement1: nodes [
	| result |
	result := JSContinueStatementNode new.
	result continueToken: (nodes at: 1).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForContinueStatement2: nodes [
	| result |
	result := JSContinueStatementNode new.
	result continueToken: (nodes at: 1).
	result label: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCoverInitializedName1: nodes [
	| result |
	result := JSPropertyAssignmentNode new.
	result name: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForDebuggerStatement1: nodes [
	| result |
	result := JSDebuggerStatementNode new.
	result debuggerToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForDefaultClause1: nodes [
	| result |
	result := JSDefaultClauseNode new.
	result defaultToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForDefaultClause2: nodes [
	| result |
	result := JSDefaultClauseNode new.
	result defaultToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForDestructuringVariableDeclaration1: nodes [
	| result |
	result := JSVariablePatternDeclarationNode new.
	result pattern: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	result equalToken: ((nodes at: 3) at: 1).
	result value: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForElementList4: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 2).
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForElementList6: nodes [
	| result |
	result := nodes at: 1.
	self addAll: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForEmptyStatement1: nodes [
	| result |
	result := JSEmptyStatementNode new.
	result semicolon: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForEnumDeclaration1: nodes [
	| result |
	result := JSEnumDeclarationNode new.
	result enumToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForEnumDeclaration2: nodes [
	| result |
	result := JSEnumDeclarationNode new.
	result enumToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result values.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForEnumDeclaration3: nodes [
	| result |
	result := JSEnumDeclarationNode new.
	result constToken: (nodes at: 1).
	result enumToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForEnumDeclaration4: nodes [
	| result |
	result := JSEnumDeclarationNode new.
	result constToken: (nodes at: 1).
	result enumToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result values.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForEnumMember1: nodes [
	| result |
	result := JSEnumMemberNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForEnumMember2: nodes [
	| result |
	result := JSEnumMemberNode new.
	result name: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExponentiationExpression2: nodes [
	| result |
	result := JSBinaryExpressionNode new.
	result leftExpression: (nodes at: 1).
	result operator: (nodes at: 2).
	result rightExpression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportAssignment1: nodes [
	| result |
	result := JSExportAssignmentNode new.
	result exportToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration1: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result star: ((nodes at: 2) at: 1).
	result asToken: ((nodes at: 2) at: 2).
	result name: ((nodes at: 2) at: 3).
	result leftBrace: ((nodes at: 2) at: 4).
	result rightBrace: ((nodes at: 2) at: 5).
	result addNodes: ((nodes at: 2) at: 6) to: result specifiers.
	result addTokens: ((nodes at: 2) at: 7) to: result commas.
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration2: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result leftBrace: ((nodes at: 2) at: 1).
	result rightBrace: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 2) at: 3) to: result specifiers.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration3: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result statement: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration4: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result declaration: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration5: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result defaultToken: (nodes at: 2).
	result statement: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDeclarationElement2: nodes [
	| result |
	result := JSExportDeclarationElementNode new.
	result exportToken: (nodes at: 1).
	result declaration: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDefaultDeclarationElement1: nodes [
	| result |
	result := JSExportDefaultDeclarationElementNode new.
	result exportToken: (nodes at: 1).
	result defaultToken: (nodes at: 2).
	result declaration: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDefaultDeclarationElement3: nodes [
	| result |
	result := JSExportDefaultDeclarationElementNode new.
	result exportToken: (nodes at: 1).
	result defaultToken: (nodes at: 2).
	result declaration: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDefaultImplementationElement1: nodes [
	| result |
	result := JSExportDefaultImplementationElementNode new.
	result exportToken: (nodes at: 1).
	result defaultToken: (nodes at: 2).
	result declaration: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDefaultImplementationElement4: nodes [
	| result |
	result := JSExportDefaultImplementationElementNode new.
	result exportToken: (nodes at: 1).
	result defaultToken: (nodes at: 2).
	result declaration: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportFromClause1: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportFromClause2: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportFromClause3: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 4 put: ((nodes at: 1) at: 1).
	result at: 5 put: ((nodes at: 1) at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 6).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportImplementationElement2: nodes [
	| result |
	result := JSExportImplementationElementNode new.
	result exportToken: (nodes at: 1).
	result declaration: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportListDeclaration1: nodes [
	| result |
	result := JSExportListDeclarationNode new.
	result exportToken: (nodes at: 1).
	result star: (nodes at: 2).
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportListDeclaration2: nodes [
	| result |
	result := JSExportListDeclarationNode new.
	result exportToken: (nodes at: 1).
	result leftBrace: ((nodes at: 2) at: 1).
	result rightBrace: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 2) at: 3) to: result specifiers.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportListDeclaration3: nodes [
	| result |
	result := JSExportListDeclarationNode new.
	result exportToken: (nodes at: 1).
	result leftBrace: ((nodes at: 2) at: 1).
	result rightBrace: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 2) at: 3) to: result specifiers.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportNamespaceElement2: nodes [
	| result |
	result := JSExportNamespaceElementNode new.
	result exportToken: (nodes at: 1).
	result declaration: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportSpecifier1: nodes [
	| result |
	result := JSExportSpecifierNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportSpecifier2: nodes [
	| result |
	result := JSExportSpecifierNode new.
	result name: (nodes at: 1).
	result asToken: (nodes at: 2).
	result _as: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExpression2: nodes [
	| result |
	result := JSCommaExpressionNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result comma: (nodes at: 2).
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExpressionStatement1: nodes [
	| result |
	result := JSExpressionStatementNode new.
	result expression: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFormalParameters1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFormalParameters2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFormalParameters3: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFormalParameters4: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	self add: (nodes at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFormalParameters5: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	self add: (nodes at: 2) to: (result at: 3).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFromClause1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFunctionDeclaration5: nodes [
	| result |
	result := JSEmptyFunctionNode new.
	result functionToken: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFunctionDeclaration6: nodes [
	| result |
	result := JSEmptyFunctionNode new.
	result functionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFunctionExpression1: nodes [
	| result |
	result := JSFunctionNode new.
	result functionToken: (nodes at: 1).
	result left: (nodes at: 2).
	result restParameter: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFunctionExpression2: nodes [
	| result |
	result := JSFunctionNode new.
	result functionToken: (nodes at: 1).
	result name: (nodes at: 2).
	result left: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result right: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFunctionExpression3: nodes [
	| result |
	result := JSFunctionNode new.
	result functionToken: (nodes at: 2).
	result left: ((nodes at: 3) at: 1).
	result restParameter: ((nodes at: 3) at: 2).
	result addNodes: ((nodes at: 3) at: 3) to: result parameters.
	result addTokens: ((nodes at: 3) at: 4) to: result commas.
	result right: ((nodes at: 3) at: 5).
	result colonToken: ((nodes at: 3) at: 6).
	result type: ((nodes at: 3) at: 7).
	result typeParameters: ((nodes at: 3) at: 8).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result statements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFunctionExpression4: nodes [
	| result |
	result := JSFunctionNode new.
	result functionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result left: ((nodes at: 4) at: 1).
	result restParameter: ((nodes at: 4) at: 2).
	result addNodes: ((nodes at: 4) at: 3) to: result parameters.
	result addTokens: ((nodes at: 4) at: 4) to: result commas.
	result right: ((nodes at: 4) at: 5).
	result colonToken: ((nodes at: 4) at: 6).
	result type: ((nodes at: 4) at: 7).
	result typeParameters: ((nodes at: 4) at: 8).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFunctionType1: nodes [
	| result |
	result := JSFunctionTypeNode new.
	result addToken: (nodes at: 1) to: result leftParens.
	result restParameter: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result parameters.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result addToken: (nodes at: 3) to: result rightParens.
	result arrow: (nodes at: 4).
	result type: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFunctionType2: nodes [
	| result |
	result := JSFunctionTypeNode new.
	result typeParameters: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result restParameter: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result addToken: (nodes at: 4) to: result rightParens.
	result arrow: (nodes at: 5).
	result type: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForGeneratorExpression1: nodes [
	| result |
	result := JSGeneratorFunctionNode new.
	result functionToken: (nodes at: 1).
	result star: (nodes at: 2).
	result left: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result right: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForGeneratorExpression2: nodes [
	| result |
	result := JSGeneratorFunctionNode new.
	result functionToken: (nodes at: 1).
	result star: (nodes at: 2).
	result name: (nodes at: 3).
	result left: (nodes at: 4).
	result restParameter: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result parameters.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result right: (nodes at: 6).
	result leftBrace: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result statements.
	result rightBrace: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForGeneratorMethod1: nodes [
	| result |
	result := JSGeneratorMethodDefinitionNode new.
	result star: (nodes at: 1).
	result name: (nodes at: 2).
	result left: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result right: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForGetAccessor1: nodes [
	| result |
	result := JSGetMethodDefinitionNode new.
	result getToken: (nodes at: 2).
	result name: (nodes at: 3).
	result left: (nodes at: 4).
	result right: (nodes at: 5).
	result colonToken: ((nodes at: 6) at: 1).
	result type: ((nodes at: 6) at: 2).
	result leftBrace: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result statements.
	result rightBrace: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIdentifier1: nodes [
	| result |
	result := JSNameExpressionNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIfStatement1: nodes [
	| result |
	result := JSIfStatementNode new.
	result ifToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	result trueStatement: (nodes at: 5).
	result elseToken: (nodes at: 6).
	result elseStatement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIfStatement2: nodes [
	| result |
	result := JSIfStatementNode new.
	result ifToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	result trueStatement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImplementationScript1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImplementsClause1: nodes [
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
JSParser >> reduceActionForImportAliasDeclaration1: nodes [
	| result |
	result := JSImportAliasDeclarationNode new.
	result importToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result value: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportCall1: nodes [
	| result |
	result := JSImportCallExpressionNode new.
	result importToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportClause1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportClause4: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportDeclaration1: nodes [
	| result |
	result := JSImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result imports.
	result comma: ((nodes at: 2) at: 2).
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportDeclaration2: nodes [
	| result |
	result := JSImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result from: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportRequireDeclaration1: nodes [
	| result |
	result := JSImportRequireDeclarationNode new.
	result importToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result requireToken: (nodes at: 4).
	result leftParen: (nodes at: 5).
	result value: (nodes at: 6).
	result rightParen: (nodes at: 7).
	result semicolon: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportSpecifier1: nodes [
	| result |
	result := JSImportSpecifierNode new.
	result binding: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportSpecifier2: nodes [
	| result |
	result := JSImportSpecifierNode new.
	result name: (nodes at: 1).
	result asToken: (nodes at: 2).
	result binding: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIndexMemberDeclaration1: nodes [
	| result |
	result := JSIndexMemberDeclarationNode new.
	result signature: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIndexSignature2: nodes [
	| result |
	result := JSIndexSignatureNode new.
	result leftBracket: (nodes at: 1).
	result name: (nodes at: 2).
	result addToken: (nodes at: 3) to: result colonTokens.
	result value: (nodes at: 4).
	result rightBracket: (nodes at: 5).
	result addToken: ((nodes at: 6) at: 1) to: result colonTokens.
	result type: ((nodes at: 6) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForInterfaceDeclaration1: nodes [
	| result |
	result := JSInterfaceDeclarationNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForInterfaceDeclaration2: nodes [
	| result |
	result := JSInterfaceDeclarationNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result extendsToken: ((nodes at: 3) at: 1).
	result extends: ((nodes at: 3) at: 2).
	result type: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForInterfaceDeclaration3: nodes [
	| result |
	result := JSInterfaceDeclarationNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result type: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForInterfaceDeclaration4: nodes [
	| result |
	result := JSInterfaceDeclarationNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result extendsToken: ((nodes at: 4) at: 1).
	result extends: ((nodes at: 4) at: 2).
	result type: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIntersectionType1: nodes [
	| result |
	result := JSIntersectionTypeNode new.
	result leftType: (nodes at: 1).
	result operator: (nodes at: 2).
	result rightType: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement10: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result initialExpression: (nodes at: 3).
	result addToken: (nodes at: 4) to: result semicolons.
	result condition: (nodes at: 5).
	result addToken: (nodes at: 6) to: result semicolons.
	result iteratorExpression: (nodes at: 7).
	result right: (nodes at: 8).
	result statement: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement11: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result variables.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result addToken: (nodes at: 5) to: result semicolons.
	result addToken: (nodes at: 6) to: result semicolons.
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement12: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result variables.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result addToken: (nodes at: 5) to: result semicolons.
	result addToken: (nodes at: 6) to: result semicolons.
	result iteratorExpression: (nodes at: 7).
	result right: (nodes at: 8).
	result statement: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement13: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result variables.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result addToken: (nodes at: 5) to: result semicolons.
	result condition: (nodes at: 6).
	result addToken: (nodes at: 7) to: result semicolons.
	result right: (nodes at: 8).
	result statement: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement14: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result variables.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result addToken: (nodes at: 5) to: result semicolons.
	result condition: (nodes at: 6).
	result addToken: (nodes at: 7) to: result semicolons.
	result iteratorExpression: (nodes at: 8).
	result right: (nodes at: 9).
	result statement: (nodes at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement15: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result declaration: (nodes at: 3).
	result addToken: (nodes at: 4) to: result semicolons.
	result right: (nodes at: 5).
	result statement: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement16: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result declaration: (nodes at: 3).
	result addToken: (nodes at: 4) to: result semicolons.
	result iteratorExpression: (nodes at: 5).
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement17: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result declaration: (nodes at: 3).
	result condition: (nodes at: 4).
	result addToken: (nodes at: 5) to: result semicolons.
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement18: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result declaration: (nodes at: 3).
	result condition: (nodes at: 4).
	result addToken: (nodes at: 5) to: result semicolons.
	result iteratorExpression: (nodes at: 6).
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement19: nodes [
	| result |
	result := JSForInStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result variable: (nodes at: 3).
	result inToken: (nodes at: 4).
	result expression: (nodes at: 5).
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement1: nodes [
	| result |
	result := JSDoWhileStatementNode new.
	result doToken: (nodes at: 1).
	result statement: (nodes at: 2).
	result whileToken: (nodes at: 3).
	result left: (nodes at: 4).
	result expression: (nodes at: 5).
	result right: (nodes at: 6).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement20: nodes [
	| result |
	result := JSForInStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: (nodes at: 3).
	result variable: (nodes at: 4).
	result inToken: (nodes at: 5).
	result expression: (nodes at: 6).
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement21: nodes [
	| result |
	result := JSForInStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: ((nodes at: 3) at: 1).
	result variable: ((nodes at: 3) at: 2).
	result inToken: (nodes at: 4).
	result expression: (nodes at: 5).
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement22: nodes [
	| result |
	result := JSForOfStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result variable: (nodes at: 3).
	result ofToken: (nodes at: 4).
	result expression: (nodes at: 5).
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement23: nodes [
	| result |
	result := JSForOfStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: (nodes at: 3).
	result variable: (nodes at: 4).
	result ofToken: (nodes at: 5).
	result expression: (nodes at: 6).
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement24: nodes [
	| result |
	result := JSForOfStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: ((nodes at: 3) at: 1).
	result variable: ((nodes at: 3) at: 2).
	result ofToken: (nodes at: 4).
	result expression: (nodes at: 5).
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement25: nodes [
	| result |
	result := JSForOfStatementNode new.
	result forToken: (nodes at: 1).
	result awaitToken: (nodes at: 2).
	result left: (nodes at: 3).
	result variable: (nodes at: 4).
	result ofToken: (nodes at: 5).
	result expression: (nodes at: 6).
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement26: nodes [
	| result |
	result := JSForOfStatementNode new.
	result forToken: (nodes at: 1).
	result awaitToken: (nodes at: 2).
	result left: (nodes at: 3).
	result varToken: (nodes at: 4).
	result variable: (nodes at: 5).
	result ofToken: (nodes at: 6).
	result expression: (nodes at: 7).
	result right: (nodes at: 8).
	result statement: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement27: nodes [
	| result |
	result := JSForOfStatementNode new.
	result forToken: (nodes at: 1).
	result awaitToken: (nodes at: 2).
	result left: (nodes at: 3).
	result varToken: ((nodes at: 4) at: 1).
	result variable: ((nodes at: 4) at: 2).
	result ofToken: (nodes at: 5).
	result expression: (nodes at: 6).
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement2: nodes [
	| result |
	result := JSWhileStatementNode new.
	result whileToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement3: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result addToken: (nodes at: 3) to: result semicolons.
	result addToken: (nodes at: 4) to: result semicolons.
	result right: (nodes at: 5).
	result statement: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement4: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result addToken: (nodes at: 3) to: result semicolons.
	result addToken: (nodes at: 4) to: result semicolons.
	result iteratorExpression: (nodes at: 5).
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement5: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result addToken: (nodes at: 3) to: result semicolons.
	result condition: (nodes at: 4).
	result addToken: (nodes at: 5) to: result semicolons.
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement6: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result addToken: (nodes at: 3) to: result semicolons.
	result condition: (nodes at: 4).
	result addToken: (nodes at: 5) to: result semicolons.
	result iteratorExpression: (nodes at: 6).
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement7: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result initialExpression: (nodes at: 3).
	result addToken: (nodes at: 4) to: result semicolons.
	result addToken: (nodes at: 5) to: result semicolons.
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement8: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result initialExpression: (nodes at: 3).
	result addToken: (nodes at: 4) to: result semicolons.
	result addToken: (nodes at: 5) to: result semicolons.
	result iteratorExpression: (nodes at: 6).
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement9: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result initialExpression: (nodes at: 3).
	result addToken: (nodes at: 4) to: result semicolons.
	result condition: (nodes at: 5).
	result addToken: (nodes at: 6) to: result semicolons.
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXAttribute1: nodes [
	| result |
	result := JSXAttributeNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXAttribute2: nodes [
	| result |
	result := JSXAttributeNode new.
	result name: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXChild1: nodes [
	| result |
	result := JSXTextNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXChild3: nodes [
	| result |
	result := JSXCodeExpressionNode new.
	result leftBrace: (nodes at: 2).
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXChild4: nodes [
	| result |
	result := JSXCodeExpressionNode new.
	result leftBrace: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXClosingElement1: nodes [
	| result |
	result := JSXClosingElementNode new.
	result ltToken: (nodes at: 2).
	result slashToken: (nodes at: 3).
	result name: (nodes at: 4).
	result gtToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXElement2: nodes [
	| result |
	result := JSXElementNode new.
	result openingElement: (nodes at: 1).
	result addNodes: (nodes at: 3) to: result items.
	result closingElement: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXElementName1: nodes [
	| result |
	result := JSXElementNameNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXFragment1: nodes [
	| result |
	result := JSXFragmentNode new.
	result addToken: (nodes at: 1) to: result ltTokens.
	result addToken: (nodes at: 3) to: result gtTokens.
	result addNodes: (nodes at: 5) to: result items.
	result addToken: (nodes at: 6) to: result ltTokens.
	result slashToken: (nodes at: 7).
	result addToken: (nodes at: 9) to: result gtTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXMemberExpression1: nodes [
	| result |
	result := JSXMemberExpressionNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result identifiers.
	result addTokens: ((nodes at: 1) at: 2) to: result periodTokens.
	result addToken: (nodes at: 2) to: result identifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXNamespacedName1: nodes [
	| result |
	result := JSXNamespacedNameNode new.
	result addToken: (nodes at: 1) to: result identifiers.
	result colonToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result identifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXOpeningElement1: nodes [
	| result |
	result := JSXOpeningElementNode new.
	result ltToken: (nodes at: 2).
	result name: (nodes at: 3).
	result gtToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXOpeningElement2: nodes [
	| result |
	result := JSXOpeningElementNode new.
	result ltToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result _attributes.
	result gtToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXSelfClosingElement1: nodes [
	| result |
	result := JSXSelfClosingElementNode new.
	result ltToken: (nodes at: 2).
	result name: (nodes at: 3).
	result slashToken: (nodes at: 4).
	result gtToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXSelfClosingElement2: nodes [
	| result |
	result := JSXSelfClosingElementNode new.
	result ltToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result _attributes.
	result slashToken: (nodes at: 5).
	result gtToken: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForJSXSpreadAttribute1: nodes [
	| result |
	result := JSXSpreadAttributeNode new.
	result leftBrace: (nodes at: 2).
	result element: (nodes at: 3).
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLabelledStatement1: nodes [
	| result |
	result := JSLabelledStatementNode new.
	result label: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result statement: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLexicalBinding2: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLexicalBinding3: nodes [
	| result |
	result := JSVariablePatternDeclarationNode new.
	result pattern: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLexicalDeclaration1: nodes [
	| result |
	result := JSLexicalDeclarationNode new.
	result typeToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result bindings.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLiteral1: nodes [
	| result |
	result := JSNullLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLiteral2: nodes [
	| result |
	result := JSBooleanLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLiteral3: nodes [
	| result |
	result := JSNumericLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLiteral4: nodes [
	| result |
	result := JSStringLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLiteralType1: nodes [
	| result |
	result := JSLiteralTypeNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration1: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result accessor: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration2: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result staticToken: (nodes at: 1).
	result accessor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration3: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result modifier: (nodes at: 1).
	result accessor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration4: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result accessor: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberExpression2: nodes [
	| result |
	result := JSIndexedPropertyExpressionNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result leftBracket: (nodes at: 2).
	result fieldExpression: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberExpression3: nodes [
	| result |
	result := JSNamedPropertyExpressionNode new.
	result expression: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberExpression4: nodes [
	| result |
	result := JSTaggedTemplateLiteralNode new.
	result expression: (nodes at: 1).
	result template: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberExpression7: nodes [
	| result |
	result := JSNewExpressionNode new.
	result newToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result left: ((nodes at: 3) at: 1).
	result right: ((nodes at: 3) at: 2).
	result addNodes: ((nodes at: 3) at: 3) to: result arguments.
	result addTokens: ((nodes at: 3) at: 4) to: result ellipsises.
	result addNodes: ((nodes at: 3) at: 5) to: result varArguments.
	result addTokens: ((nodes at: 3) at: 6) to: result commas.
	result typeArguments: ((nodes at: 3) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration1: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result name: (nodes at: 1).
	result signature: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result statements.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration2: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result statements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration3: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result statements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration4: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration5: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result name: (nodes at: 1).
	result signature: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration6: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration7: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration8: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration10: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result equalToken: ((nodes at: 3) at: 1).
	result value: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration11: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration12: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration13: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration14: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration15: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration16: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration1: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result name: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration2: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result name: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration3: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration4: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	result equalToken: ((nodes at: 3) at: 1).
	result value: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration5: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration6: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equalToken: ((nodes at: 3) at: 1).
	result value: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration7: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration8: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration9: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMethodDefinition1: nodes [
	| result |
	result := JSMethodDefinitionNode new.
	result name: (nodes at: 1).
	result left: (nodes at: 2).
	result restParameter: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMethodDefinition5: nodes [
	| result |
	result := JSGetMethodDefinitionNode new.
	result getToken: (nodes at: 1).
	result name: (nodes at: 2).
	result left: (nodes at: 3).
	result right: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMethodDefinition6: nodes [
	| result |
	result := JSSetMethodDefinitionNode new.
	result setToken: (nodes at: 1).
	result name: (nodes at: 2).
	result left: (nodes at: 3).
	result addNode: (nodes at: 4) to: result parameters.
	result right: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMethodDefinition7: nodes [
	| result |
	result := JSMethodDefinitionNode new.
	result name: (nodes at: 2).
	result left: ((nodes at: 3) at: 1).
	result restParameter: ((nodes at: 3) at: 2).
	result addNodes: ((nodes at: 3) at: 3) to: result parameters.
	result addTokens: ((nodes at: 3) at: 4) to: result commas.
	result right: ((nodes at: 3) at: 5).
	result colonToken: ((nodes at: 3) at: 6).
	result type: ((nodes at: 3) at: 7).
	result typeParameters: ((nodes at: 3) at: 8).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result statements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMethodSignature1: nodes [
	| result |
	result := JSMethodSignatureNode new.
	result name: (nodes at: 1).
	result signature: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMethodSignature2: nodes [
	| result |
	result := JSMethodSignatureNode new.
	result name: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result signature: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForModule1: nodes [
	| result |
	result := JSModuleNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForModule2: nodes [
	| result |
	result := JSModuleNode new.
	result addNodes: (nodes at: 1) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForModuleBody1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForModuleItemList1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForModuleItemList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNameSpaceImport1: nodes [
	| result |
	result := JSNameSpaceImportNode new.
	result star: (nodes at: 1).
	result asToken: (nodes at: 2).
	result import: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNamedExports1: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNamedExports2: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNamedExports3: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 4).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNamedImports1: nodes [
	| result |
	result := JSNamedImportsNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNamedImports2: nodes [
	| result |
	result := JSNamedImportsNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result specifiers.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNamedImports3: nodes [
	| result |
	result := JSNamedImportsNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result specifiers.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNamespaceDeclaration1: nodes [
	| result |
	result := JSNamespaceDeclarationNode new.
	result namespaceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result names.
	result addTokens: ((nodes at: 2) at: 2) to: result periodTokens.
	result leftBrace: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result elements.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNamespaceName1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNamespaceName2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNewExpression2: nodes [
	| result |
	result := JSNewExpressionNode new.
	result newToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNewTarget1: nodes [
	| result |
	result := JSNewTargetExpressionNode new.
	result newToken: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result targetToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectBindingPattern1: nodes [
	| result |
	result := JSObjectBindingPatternNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectBindingPattern2: nodes [
	| result |
	result := JSObjectBindingPatternNode new.
	result leftBrace: (nodes at: 1).
	result restProperty: (nodes at: 2).
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectBindingPattern3: nodes [
	| result |
	result := JSObjectBindingPatternNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result properties.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectBindingPattern4: nodes [
	| result |
	result := JSObjectBindingPatternNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result properties.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectBindingPattern5: nodes [
	| result |
	result := JSObjectBindingPatternNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result properties.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result restProperty: (nodes at: 4).
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectLiteral1: nodes [
	| result |
	result := JSObjectLiteralNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectLiteral2: nodes [
	| result |
	result := JSObjectLiteralNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectLiteral3: nodes [
	| result |
	result := JSObjectLiteralNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectType1: nodes [
	| result |
	result := JSObjectTypeNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectType2: nodes [
	| result |
	result := JSObjectTypeNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result types.
	result addTokens: ((nodes at: 2) at: 2) to: result separators.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForOptionalChain1: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForOptionalChain2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForOptionalExpression1: nodes [
	| result |
	result := JSOptionalExpressionNode new.
	result expression: (nodes at: 1).
	result questionDotToken: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result options.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForOptionalFirst1: nodes [
	| result |
	result := JSOptionalArgumentsNode new.
	result left: ((nodes at: 1) at: 1).
	result right: ((nodes at: 1) at: 2).
	result addNodes: ((nodes at: 1) at: 3) to: result arguments.
	result addTokens: ((nodes at: 1) at: 4) to: result ellipsises.
	result addNodes: ((nodes at: 1) at: 5) to: result varArguments.
	result addTokens: ((nodes at: 1) at: 6) to: result commas.
	result typeArguments: ((nodes at: 1) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForOptionalFirst2: nodes [
	| result |
	result := JSOptionalIndexedNode new.
	result leftBracket: (nodes at: 1).
	result value: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForOptionalFirst3: nodes [
	| result |
	result := JSOptionalNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForOptionalFirst4: nodes [
	| result |
	result := JSOptionalTemplateNode new.
	result template: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForOptionalRest3: nodes [
	| result |
	result := JSOptionalNameNode new.
	result periodToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForParenthesizedExpression1: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPredefinedType1: nodes [
	| result |
	result := JSVoidTypeNode new.
	result voidToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPrefixType2: nodes [
	| result |
	result := JSKeyOfTypeNode new.
	result keyofToken: (nodes at: 1).
	result type: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPrefixType3: nodes [
	| result |
	result := JSInferTypeNode new.
	result inferToken: (nodes at: 1).
	result type: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPrimaryExpression1: nodes [
	| result |
	result := JSThisExpressionNode new.
	result thisToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertyDefinition3: nodes [
	| result |
	result := JSPropertyAssignmentNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertyDefinition5: nodes [
	| result |
	result := JSCopyPropertyNode new.
	result ellipsis: (nodes at: 1).
	result object: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature1: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature2: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature3: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result name: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature4: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result name: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForRegularExpressionLiteral1: nodes [
	| result |
	result := JSRegularExpressionLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForReturnStatement1: nodes [
	| result |
	result := JSReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForReturnStatement2: nodes [
	| result |
	result := JSReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result expression: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForScript1: nodes [
	| result |
	result := JSScriptNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForScript2: nodes [
	| result |
	result := JSScriptNode new.
	result addNodes: (nodes at: 1) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSetAccessor1: nodes [
	| result |
	result := JSSetMethodDefinitionNode new.
	result setToken: (nodes at: 2).
	result name: (nodes at: 3).
	result left: (nodes at: 4).
	result addNode: (nodes at: 5) to: result parameters.
	result right: (nodes at: 6).
	result colonToken: ((nodes at: 7) at: 1).
	result type: ((nodes at: 7) at: 2).
	result leftBrace: (nodes at: 8).
	result addNodes: (nodes at: 9) to: result statements.
	result rightBrace: (nodes at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSetAccessor2: nodes [
	| result |
	result := JSSetMethodDefinitionNode new.
	result setToken: (nodes at: 2).
	result name: (nodes at: 3).
	result left: (nodes at: 4).
	result addNode: (nodes at: 5) to: result parameters.
	result right: (nodes at: 6).
	result leftBrace: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result statements.
	result rightBrace: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSimpleLexicalBinding1: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSimpleLexicalBinding2: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSimpleVariableDeclaration1: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSimpleVariableDeclaration2: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	result equalToken: ((nodes at: 3) at: 1).
	result value: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding10: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result modifier: (nodes at: 2).
	result variable: (nodes at: 3).
	result questionMarkToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding5: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result modifier: (nodes at: 2).
	result variable: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding6: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result modifier: (nodes at: 2).
	result variable: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding7: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result modifier: (nodes at: 2).
	result variable: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding8: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result modifier: (nodes at: 2).
	result variable: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding9: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 2).
	result questionMarkToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSourceFile1: nodes [
	| result |
	result := JSTSSourceFileNode new.
	result addNodes: (nodes at: 1) to: result elements.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSpreadElement1: nodes [
	| result |
	result := JSSpreadExpressionNode new.
	result ellipsis: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForStartJSXText1: nodes [
	^ #jsxText
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForStartStatementListItem1: nodes [
	^ #startExpressionStatement
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForStartTemplateLiteral1: nodes [
	^ #template
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSuperCall1: nodes [
	| result |
	result := JSSuperCallExpressionNode new.
	result superToken: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result right: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 2) at: 3) to: result arguments.
	result addTokens: ((nodes at: 2) at: 4) to: result ellipsises.
	result addNodes: ((nodes at: 2) at: 5) to: result varArguments.
	result addTokens: ((nodes at: 2) at: 6) to: result commas.
	result typeArguments: ((nodes at: 2) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSuperProperty1: nodes [
	| result |
	result := JSSuperIndexedPropertyExpressionNode new.
	result superToken: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSuperProperty2: nodes [
	| result |
	result := JSSuperNamedPropertyExpressionNode new.
	result superToken: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSwitchStatement1: nodes [
	| result |
	result := JSSwitchStatementNode new.
	result switchToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	result leftBrace: ((nodes at: 5) at: 1).
	result rightBrace: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result clauses.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSwitchToDefault1: nodes [
	self scope: #default.
	^ #default
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSwitchToJSX1: nodes [
	self scope: #jsx.
	^ nil
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSwitchToJSXText1: nodes [
	self scope: #jsxText.
	^ nil
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSwitchToJSXTextOrDefault11: nodes [
	^ self switchToJSXTextOrDefault: 1
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSwitchToJSXTextOrDefault21: nodes [
	^ self switchToJSXTextOrDefault: 2
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTemplateLiteral1: nodes [
	| result |
	result := JSTemplateLiteralNode new.
	result addToken: (nodes at: 1) to: result parts.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTemplateLiteral2: nodes [
	| result |
	result := JSTemplateLiteralNode new.
	result addToken: (nodes at: 2) to: result parts.
	result addNode: (nodes at: 3) to: result expressions.
	result addTokens: ((nodes at: 4) at: 1) to: result parts.
	result addNodes: ((nodes at: 4) at: 2) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTemplateMiddleList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTemplateMiddleList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTemplateSpans2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForThisType1: nodes [
	| result |
	result := JSThisTypeNode new.
	result thisToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForThrowStatement1: nodes [
	| result |
	result := JSThrowStatementNode new.
	result throwToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTryStatement1: nodes [
	| result |
	result := JSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result tryBlock: (nodes at: 2).
	result catchToken: ((nodes at: 3) at: 1).
	result left: ((nodes at: 3) at: 2).
	result exceptionType: ((nodes at: 3) at: 3).
	result right: ((nodes at: 3) at: 4).
	result catchBlock: ((nodes at: 3) at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTryStatement2: nodes [
	| result |
	result := JSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result tryBlock: (nodes at: 2).
	result finallyToken: ((nodes at: 3) at: 1).
	result finallyBlock: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTryStatement3: nodes [
	| result |
	result := JSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result tryBlock: (nodes at: 2).
	result catchToken: ((nodes at: 3) at: 1).
	result left: ((nodes at: 3) at: 2).
	result exceptionType: ((nodes at: 3) at: 3).
	result right: ((nodes at: 3) at: 4).
	result catchBlock: ((nodes at: 3) at: 5).
	result finallyToken: ((nodes at: 4) at: 1).
	result finallyBlock: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTupleType1: nodes [
	| result |
	result := JSTupleTypeNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result types.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTupleType2: nodes [
	| result |
	result := JSTupleTypeNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result types.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeAliasDeclaration1: nodes [
	| result |
	result := JSTypeAliasDeclarationNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result type: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeAliasDeclaration2: nodes [
	| result |
	result := JSTypeAliasDeclarationNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result equalToken: (nodes at: 4).
	result type: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeArguments1: nodes [
	| result |
	result := JSTypeArgumentsNode new.
	result leftAngle: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result arguments.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightAngle: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeCallSignature1: nodes [
	| result |
	result := Array new: 8.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 6 put: ((nodes at: 4) at: 1).
	result at: 7 put: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeCallSignature2: nodes [
	| result |
	result := Array new: 8.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 8 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 4).
	result at: 6 put: ((nodes at: 5) at: 1).
	result at: 7 put: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeCallSignature3: nodes [
	| result |
	result := Array new: 8.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 8 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeName1: nodes [
	| result |
	result := JSTypeNameNode new.
	result addNode: (nodes at: 1) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeName2: nodes [
	| result |
	result := JSTypeNameNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result names.
	result addTokens: ((nodes at: 1) at: 2) to: result periodTokens.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addNode: (nodes at: 3) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeParameter1: nodes [
	| result |
	result := JSTypeParameterNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeParameter2: nodes [
	| result |
	result := JSTypeParameterNode new.
	result name: (nodes at: 1).
	result extendsToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeParameters1: nodes [
	| result |
	result := JSTypeParametersNode new.
	result leftAngle: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result parameters.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightAngle: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeQuery1: nodes [
	| result |
	result := JSTypeQueryNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeQueryExpression1: nodes [
	| result |
	result := JSTypeQueryExpressionNode new.
	result addNode: (nodes at: 1) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeQueryExpression2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addNode: (nodes at: 3) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeReference1: nodes [
	| result |
	result := JSTypeReferenceNode new.
	result type: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypeReference2: nodes [
	| result |
	result := JSTypeReferenceNode new.
	result type: (nodes at: 1).
	result typeArguments: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTypedPropertySetParameterList1: nodes [
	| result |
	result := JSTypedParameterNode new.
	result variable: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForUnaryExpression10: nodes [
	| result |
	result := JSCastExpressionNode new.
	result leftAngle: (nodes at: 2).
	result type: (nodes at: 3).
	result rightAngle: (nodes at: 4).
	result expression: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForUnaryExpression11: nodes [
	| result |
	result := JSAsExpressionNode new.
	result expression: (nodes at: 1).
	result asToken: (nodes at: 2).
	result type: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForUnaryExpression5: nodes [
	| result |
	result := JSUnaryExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForUnionType1: nodes [
	| result |
	result := JSUnionTypeNode new.
	result leftType: (nodes at: 1).
	result operator: (nodes at: 2).
	result rightType: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForUpdateExpression2: nodes [
	| result |
	result := JSPostfixExpressionNode new.
	result expression: (nodes at: 1).
	result operator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForUpdateExpression4: nodes [
	| result |
	result := JSPrefixExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForVariableStatement1: nodes [
	| result |
	result := JSVariableStatementNode new.
	result varToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result variables.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForWithStatement1: nodes [
	| result |
	result := JSWithStatementNode new.
	result withToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForYieldExpression1: nodes [
	| result |
	result := JSYieldExpressionNode new.
	result yieldToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForYieldExpression2: nodes [
	| result |
	result := JSYieldExpressionNode new.
	result yieldToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForYieldExpression3: nodes [
	| result |
	result := JSYieldExpressionNode new.
	result yieldToken: (nodes at: 1).
	result star: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #private }
JSParser >> switchToJSXTextOrDefault: anInteger [
	| count i value |
	i := nodeStack size.
	count := 0.
	[ i > 0 and: [ count < anInteger ] ]
		whileTrue: [ value := nodeStack at: i.
			value == #default
				ifTrue: [ ^ self scope: #default ].
			value == #jsxText
				ifTrue: [ count := count + 1 ].
			i := i - 1 ].
	self
		scope:
			(count >= anInteger
				ifTrue: [ #jsxText ]
				ifFalse: [ #default ])
]
