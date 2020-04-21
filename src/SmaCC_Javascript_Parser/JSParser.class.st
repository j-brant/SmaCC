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
#[ 0 6 4 141] 
#[ 0 6 4 149] 
#[ 0 6 0 189] 
#[ 0 6 0 193] 
#[ 0 6 0 197] 
#[ 0 6 4 233] 
#[ 1 206 1 210] 
#[ 1 214 1 218] 
#[ 1 222 1 226] 
#[ 1 234 1 238] 
#[ 1 242 1 246] 
#[ 1 242 1 246 1 250] 
#[ 2 18 2 22] 
#[ 2 38 2 42] 
#[ 2 90 2 94] 
#[ 2 98 2 102] 
#[ 2 106 2 110] 
#[ 2 114 2 118] 
#[ 2 146 8 221] 
#[ 2 150 8 225] 
#[ 1 102 2 158] 
#[ 0 130 3 58] 
#[ 0 130 9 165] 
#[ 3 98 4 86] 
#[ 3 206 4 110] 
#[ 4 162 4 166] 
#[ 4 170 4 174] 
#[ 4 190 4 194] 
#[ 2 130 3 58] 
#[ 1 102 5 14] 
#[ 1 102 5 18] 
#[ 5 30 10 253] 
#[ 3 98 5 78] 
#[ 3 58 3 106] 
#[ 3 162 5 90] 
#[ 5 158 14 173] 
#[ 5 158 13 145] 
#[ 4 137 6 138] 
#[ 0 18 6 158] 
#[ 2 130 5 6] 
#[ 0 198 16 133] 
#[ 5 226 6 234] 
#[ 0 130 17 61] 
#[ 4 218 5 78] 
#[ 7 66 8 225] 
#[ 1 102 7 70] 
#[ 0 130 7 126] 
#[ 5 122 5 170] 
#[ 0 130 5 114] 
#[ 5 186 7 138] 
#[ 5 158 7 198] 
#[ 5 158 9 165] 
#[ 5 158 18 185] 
#[ 0 42 0 189] 
#[ 0 46 0 189] 
#[ 10 126 15 101] 
#[ 10 78 11 2] 
#[ 10 86 11 10] 
#[ 11 130 11 238] 
#[ 12 50 12 150] 
#[ 12 70 12 154] 
#[ 11 134 11 250] 
#[ 12 218 13 50] 
#[ 12 222 13 54] 
#[ 3 78 17 241] 
#[ 13 102 13 158]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2020-04-21T17:01:46.550765-05:00'
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
:	Identifier 'parameter'	##
|	ArrowFormalParameters	##
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
	#(281 0 #reduceActionForModule1: 35965953 false ) 
	#(150 0 #reduceActionForStartTemplateLiteral1: 12189697 true ) 
	#(327 0 #reduceActionForSwitchToJSX1: 41232385 true ) 
	#(279 0 #reduceActionForScript1: 35907585 false ) 
	#(424 0 #reduceActionForDeclarationModule1: 57460737 false ) 
	#(413 0 #reduceActionForDeclarationModule1: 56079361 false ) 
	#(417 0 #reduceActionForDeclarationModule1: 56622081 false ) 
	#(421 0 #reduceActionForDeclarationModule1: 57019393 false ) 
	#(199 1 #liftFirstValue: 23024642 false ) 
	#(199 1 #liftFirstValue: 23024641 false ) 
	#(284 1 #liftFirstValue: 36099075 false ) 
	#(196 1 #liftFirstValue: 22755330 false ) 
	#(131 1 #liftFirstValue: 8611841 false ) 
	#(281 1 #reduceActionForModule2: 35965954 false ) 
	#(282 1 #reduceActionForModuleBody1: 35994625 false ) 
	#(283 1 #reduceActionForModuleItemList1: 36025345 false ) 
	#(284 1 #liftFirstValue: 36099073 false ) 
	#(284 1 #liftFirstValue: 36099074 false ) 
	#(243 0 #reduceActionForFormalParameters1: 31006721 false ) 
	#(301 1 #liftFirstValue: 38571010 false ) 
	#(300 1 #liftFirstValue: 38547457 false ) 
	#(134 1 #reduceActionForPrimaryExpression1: 9019393 false ) 
	#(301 1 #liftFirstValue: 38571009 false ) 
	#(262 1 #reduceActionForYieldExpression1: 33484801 false ) 
	#(132 1 #reduceActionForIdentifier1: 8724481 false ) 
	#(302 1 #liftFirstValue: 38607873 false ) 
	#(303 1 #liftFirstValue: 38643713 false ) 
	#(304 1 #reduceActionForRegularExpressionLiteral1: 38681601 false ) 
	#(149 1 #reduceActionForTemplateLiteral1: 12034049 false ) 
	#(328 0 #reduceActionForSwitchToJSXText1: 41273345 true ) 
	#(134 1 #liftFirstValue: 9019394 false ) 
	#(250 1 #reduceActionForArrowParameters1: 31562753 false ) 
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
	#(305 1 #liftFirstValue: 38933505 false ) 
	#(329 0 #reduceActionForStartJSXText1: 41322497 true ) 
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
	#(280 1 #reduceActionForModuleBody1: 35936257 false ) 
	#(195 1 #reduceActionForModuleItemList1: 22658049 false ) 
	#(279 1 #reduceActionForScript2: 35907586 false ) 
	#(416 1 #liftFirstValue: 56361985 false ) 
	#(416 1 #liftFirstValue: 56361986 false ) 
	#(416 1 #liftFirstValue: 56361987 false ) 
	#(416 1 #liftFirstValue: 56361988 false ) 
	#(416 1 #liftFirstValue: 56361989 false ) 
	#(423 1 #liftFirstValue: 57219074 false ) 
	#(426 1 #liftFirstValue: 57641986 false ) 
	#(416 1 #liftFirstValue: 56361991 false ) 
	#(420 1 #liftFirstValue: 56880130 false ) 
	#(416 1 #liftFirstValue: 56361990 false ) 
	#(420 1 #liftFirstValue: 56880129 false ) 
	#(416 1 #liftFirstValue: 56361992 false ) 
	#(416 1 #liftFirstValue: 56361993 false ) 
	#(420 1 #liftFirstValue: 56880131 false ) 
	#(416 1 #liftFirstValue: 56361995 false ) 
	#(423 1 #liftFirstValue: 57219075 false ) 
	#(420 1 #liftFirstValue: 56880133 false ) 
	#(410 1 #reduceActionForSourceFile1: 55838721 false ) 
	#(410 1 #reduceActionForSourceFile1: 55838722 false ) 
	#(411 1 #reduceActionForModuleBody1: 55939073 false ) 
	#(413 1 #reduceActionForModuleBody1: 56079362 false ) 
	#(414 1 #reduceActionForModuleItemList1: 56135681 false ) 
	#(415 1 #liftFirstValue: 56279041 false ) 
	#(423 1 #liftFirstValue: 57219073 false ) 
	#(412 1 #reduceActionForModuleBody1: 56013825 false ) 
	#(417 1 #reduceActionForModuleBody1: 56622082 false ) 
	#(418 1 #reduceActionForModuleItemList1: 56672257 false ) 
	#(419 1 #liftFirstValue: 56803329 false ) 
	#(426 1 #liftFirstValue: 57641985 false ) 
	#(411 1 #reduceActionForModuleBody1: 55939074 false ) 
	#(421 1 #reduceActionForModuleBody1: 57019394 false ) 
	#(422 1 #reduceActionForModuleItemList1: 57075713 false ) 
	#(412 1 #reduceActionForModuleBody1: 56013826 false ) 
	#(424 1 #reduceActionForModuleBody1: 57460738 false ) 
	#(425 1 #reduceActionForModuleItemList1: 57510913 false ) 
	#(423 1 #liftFirstValue: 57219076 false ) 
	#(423 1 #liftFirstValue: 57219077 false ) 
	#(426 1 #liftFirstValue: 57641987 false ) 
	#(423 1 #liftFirstValue: 57219078 false ) 
	#(426 1 #liftFirstValue: 57641988 false ) 
	#(423 1 #liftFirstValue: 57219079 false ) 
	#(426 1 #liftFirstValue: 57641989 false ) 
	#(423 1 #liftFirstValue: 57219080 false ) 
	#(426 1 #liftFirstValue: 57641990 false ) 
	#(416 1 #liftFirstValue: 56361994 false ) 
	#(420 1 #liftFirstValue: 56880132 false ) 
	#(415 1 #liftFirstValue: 56279042 false ) 
	#(419 1 #liftFirstValue: 56803330 false ) 
	#(365 1 #reduceActionForThisType1: 44804097 false ) 
	#(347 1 #reduceActionForPredefinedType1: 42843137 false ) 
	#(349 1 #reduceActionForTypeName1: 42989569 false ) 
	#(350 1 #reduceActionForNamespaceName1: 43096065 false ) 
	#(345 1 #reduceActionForLiteralType1: 42680321 false ) 
	#(345 1 #reduceActionForLiteralType1: 42680322 false ) 
	#(340 1 #liftFirstValue: 42144769 false ) 
	#(341 1 #liftFirstValue: 42221570 false ) 
	#(342 1 #liftFirstValue: 42298370 false ) 
	#(343 1 #liftFirstValue: 42359809 false ) 
	#(344 1 #liftFirstValue: 42503177 false ) 
	#(344 1 #liftFirstValue: 42503169 false ) 
	#(344 1 #liftFirstValue: 42503170 false ) 
	#(344 1 #liftFirstValue: 42503171 false ) 
	#(344 1 #liftFirstValue: 42503172 false ) 
	#(344 1 #liftFirstValue: 42503173 false ) 
	#(344 1 #liftFirstValue: 42503174 false ) 
	#(341 1 #liftFirstValue: 42221569 false ) 
	#(342 1 #liftFirstValue: 42298369 false ) 
	#(340 1 #liftFirstValue: 42144770 false ) 
	#(340 1 #liftFirstValue: 42144771 false ) 
	#(344 1 #liftFirstValue: 42503175 false ) 
	#(344 1 #liftFirstValue: 42503176 false ) 
	#(296 1 #reduceActionForExportFromClause1: 37997569 false ) 
	#(295 2 #reduceActionForExportDeclaration4: 37313540 false ) 
	#(190 1 #liftFirstValue: 22267905 false ) 
	#(190 1 #liftFirstValue: 22267907 false ) 
	#(295 2 #reduceActionForExportDeclaration3: 37313539 false ) 
	#(191 1 #liftFirstValue: 22346753 false ) 
	#(191 1 #liftFirstValue: 22346754 false ) 
	#(191 1 #liftFirstValue: 22346756 false ) 
	#(191 1 #liftFirstValue: 22346755 false ) 
	#(190 1 #liftFirstValue: 22267906 false ) 
	#(296 1 #reduceActionForExportFromClause3: 37997571 false ) 
	#(294 1 #liftFirstValue: 37278721 false ) 
	#(286 1 #reduceActionForImportClause1: 36345857 false ) 
	#(286 1 #reduceActionForImportClause1: 36345858 false ) 
	#(286 1 #reduceActionForImportClause1: 36345859 false ) 
	#(287 1 #liftFirstValue: 36598785 false ) 
	#(293 1 #liftFirstValue: 37236737 false ) 
	#(196 2 #liftSecondValue: 22755329 false ) 
	#(201 1 #reduceActionForLexicalBinding1: 23154689 false ) 
	#(200 1 #reduceActionForNamespaceName1: 23056385 false ) 
	#(205 1 #liftFirstValue: 23701505 false ) 
	#(205 1 #liftFirstValue: 23701506 false ) 
	#(201 1 #liftFirstValue: 23154692 false ) 
	#(201 1 #liftFirstValue: 23154693 false ) 
	#(283 2 #reduceActionForModuleItemList2: 36025346 false ) 
	#(214 1 #reduceActionForLexicalBinding1: 25097217 false ) 
	#(213 1 #reduceActionForLexicalBinding1: 24992770 false ) 
	#(246 1 #liftFirstValue: 31376385 false ) 
	#(213 1 #liftFirstValue: 24992769 false ) 
	#(245 1 #liftFirstValue: 31330305 false ) 
	#(242 1 #reduceActionForModuleBody1: 30961665 false ) 
	#(243 1 #reduceActionForFormalParameters3: 31006723 false ) 
	#(243 1 #reduceActionForFormalParameters2: 31006722 false ) 
	#(244 1 #reduceActionForNamespaceName1: 31208449 false ) 
	#(369 0 #nil 45686788 false ) 
	#(141 2 #reduceActionForObjectLiteral1: 10935297 false ) 
	#(133 1 #reduceActionForIdentifier1: 8918017 false ) 
	#(143 1 #liftFirstValue: 11327489 false ) 
	#(145 1 #liftFirstValue: 11638785 false ) 
	#(142 1 #reduceActionForNamespaceName1: 11192321 false ) 
	#(144 1 #liftFirstValue: 11576321 false ) 
	#(144 1 #liftFirstValue: 11576322 false ) 
	#(143 1 #liftFirstValue: 11327490 false ) 
	#(143 1 #liftFirstValue: 11327492 false ) 
	#(256 1 #liftFirstValue: 32108546 false ) 
	#(256 1 #liftFirstValue: 32108548 false ) 
	#(256 1 #liftFirstValue: 32108547 false ) 
	#(145 1 #reduceActionForIdentifier1: 11638786 false ) 
	#(145 1 #reduceActionForIdentifier1: 11638787 false ) 
	#(256 1 #liftFirstValue: 32108552 false ) 
	#(256 1 #liftFirstValue: 32108553 false ) 
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
	#(271 2 #reduceActionForAwaitExpression1: 35211265 false ) 
	#(273 2 #reduceActionForClassExpression1: 35384321 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900674 false ) 
	#(157 2 #reduceActionForNewExpression2: 13358082 false ) 
	#(159 2 #reduceActionForSuperCall1: 13931521 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900676 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900675 false ) 
	#(262 2 #reduceActionForYieldExpression2: 33484802 false ) 
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
	#(324 0 #reduceActionForDeclarationModule1: 40918017 false ) 
	#(253 2 #reduceActionForArrowFormalParameters2: 31793154 false ) 
	#(194 2 #reduceActionForBlock1: 22560769 false ) 
	#(239 2 #reduceActionForDebuggerStatement1: 30452737 false ) 
	#(204 1 #reduceActionForLexicalBinding1: 23540737 false ) 
	#(203 1 #reduceActionForNamespaceName1: 23404545 false ) 
	#(217 2 #reduceActionForExpressionStatement1: 25415681 false ) 
	#(195 2 #reduceActionForModuleItemList2: 22658050 false ) 
	#(272 2 #reduceActionForClassExpression1: 35288065 false ) 
	#(445 1 #liftFirstValue: 62351361 false ) 
	#(434 2 #reduceActionForAmbientDeclaration1: 60279809 false ) 
	#(434 2 #reduceActionForAmbientDeclaration1: 60279810 false ) 
	#(434 2 #reduceActionForAmbientDeclaration1: 60279811 false ) 
	#(434 2 #reduceActionForAmbientDeclaration1: 60279812 false ) 
	#(434 2 #reduceActionForAmbientDeclaration1: 60279813 false ) 
	#(428 2 #reduceActionForExportImplementationElement2: 58096642 false ) 
	#(428 2 #reduceActionForExportImplementationElement2: 58096641 false ) 
	#(428 2 #reduceActionForExportImplementationElement2: 58096643 false ) 
	#(428 2 #reduceActionForExportImplementationElement2: 58096644 false ) 
	#(428 2 #reduceActionForExportImplementationElement2: 58096645 false ) 
	#(428 2 #reduceActionForExportImplementationElement2: 58096651 false ) 
	#(428 2 #reduceActionForExportImplementationElement2: 58096647 false ) 
	#(429 2 #reduceActionForExportDeclarationElement2: 58839042 false ) 
	#(428 2 #reduceActionForExportImplementationElement2: 58096646 false ) 
	#(429 2 #reduceActionForExportDeclarationElement2: 58839041 false ) 
	#(428 2 #reduceActionForExportImplementationElement2: 58096648 false ) 
	#(428 2 #reduceActionForExportImplementationElement2: 58096649 false ) 
	#(429 2 #reduceActionForExportDeclarationElement2: 58839044 false ) 
	#(428 2 #reduceActionForExportImplementationElement2: 58096650 false ) 
	#(429 2 #reduceActionForExportDeclarationElement2: 58839043 false ) 
	#(403 1 #reduceActionForNamespaceName1: 54325249 false ) 
	#(414 2 #reduceActionForModuleItemList2: 56135682 false ) 
	#(418 2 #reduceActionForModuleItemList2: 56672258 false ) 
	#(422 2 #reduceActionForModuleItemList2: 57075714 false ) 
	#(425 2 #reduceActionForModuleItemList2: 57510914 false ) 
	#(351 2 #reduceActionForObjectType1: 43200513 false ) 
	#(366 1 #reduceActionForPropertySignature1: 44841985 false ) 
	#(352 1 #reduceActionForModuleBody1: 43282433 false ) 
	#(353 1 #reduceActionForNamespaceName1: 43378689 false ) 
	#(354 1 #liftFirstValue: 43533313 false ) 
	#(354 1 #liftFirstValue: 43533314 false ) 
	#(354 1 #liftFirstValue: 43533315 false ) 
	#(354 1 #liftFirstValue: 43533316 false ) 
	#(354 1 #liftFirstValue: 43533317 false ) 
	#(358 1 #liftFirstValue: 43971585 false ) 
	#(357 1 #reduceActionForNamespaceName1: 43863041 false ) 
	#(335 1 #reduceActionForTypeParameter1: 41830401 false ) 
	#(334 1 #reduceActionForNamespaceName1: 41717761 false ) 
	#(343 2 #reduceActionForPrefixType3: 42359811 false ) 
	#(343 2 #reduceActionForPrefixType2: 42359810 false ) 
	#(364 1 #reduceActionForTypeQueryExpression1: 44680193 false ) 
	#(363 2 #reduceActionForTypeQuery1: 44606465 false ) 
	#(348 2 #reduceActionForTypeReference1: 42895361 false ) 
	#(297 2 #reduceActionForNamedExports1: 38105089 false ) 
	#(299 1 #reduceActionForExportSpecifier1: 38425601 false ) 
	#(298 1 #reduceActionForNamespaceName1: 38321153 false ) 
	#(295 3 #reduceActionForExportDeclaration2: 37313538 false ) 
	#(190 2 #liftSecondValue: 22267909 false ) 
	#(190 2 #liftSecondValue: 22267908 false ) 
	#(190 2 #liftSecondValue: 22267910 false ) 
	#(289 2 #reduceActionForNamedImports1: 36723713 false ) 
	#(291 1 #reduceActionForNamespaceName1: 37006337 false ) 
	#(292 1 #reduceActionForImportSpecifier1: 37110785 false ) 
	#(285 3 #reduceActionForImportDeclaration2: 36173826 false ) 
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
	#(253 3 #reduceActionForArrowFormalParameters1: 31793153 false ) 
	#(243 2 #reduceActionForFormalParameters4: 31006724 false ) 
	#(370 1 #liftFirstValue: 47030274 false ) 
	#(370 1 #liftFirstValue: 47030275 false ) 
	#(370 1 #liftFirstValue: 47030273 false ) 
	#(369 1 #reduceActionForIdentifier1: 45686786 false ) 
	#(369 1 #liftFirstValue: 45686785 false ) 
	#(369 1 #liftFirstValue: 45686787 false ) 
	#(143 2 #reduceActionForPropertyDefinition5: 11327493 false ) 
	#(147 2 #reduceActionForCoverInitializedName1: 11886593 false ) 
	#(141 3 #reduceActionForObjectLiteral2: 10935298 false ) 
	#(140 2 #reduceActionForSpreadElement1: 10836993 false ) 
	#(137 3 #reduceActionForArrayLiteral3: 10302467 false ) 
	#(137 3 #reduceActionForArrayLiteral2: 10302466 false ) 
	#(139 2 #reduceActionForModuleItemList2: 10781698 false ) 
	#(138 2 #reduceActionForElementList4: 10563588 false ) 
	#(138 2 #reduceActionForElementList4: 10563586 false ) 
	#(274 2 #reduceActionForClassTail1: 35464193 false ) 
	#(278 1 #reduceActionForEmptyStatement1: 35757059 false ) 
	#(278 1 #liftFirstValue: 35757057 false ) 
	#(276 1 #reduceActionForModuleBody1: 35637249 false ) 
	#(277 1 #reduceActionForModuleItemList1: 35668993 false ) 
	#(275 2 #reduceActionForClassHeritage1: 35556353 false ) 
	#(273 3 #reduceActionForClassExpression2: 35384322 false ) 
	#(275 2 #reduceActionForClassHeritage2: 35556354 false ) 
	#(156 3 #reduceActionForNewTarget1: 13254657 false ) 
	#(153 3 #reduceActionForMemberExpression7: 12460039 false ) 
	#(161 2 #reduceActionForArguments1: 14142465 false ) 
	#(162 1 #reduceActionForArgumentList1: 14327809 false ) 
	#(154 3 #reduceActionForSuperProperty2: 12961794 false ) 
	#(262 3 #reduceActionForYieldExpression3: 33484803 false ) 
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
	#(248 0 #reduceActionForDeclarationModule1: 31453185 false ) 
	#(252 1 #liftFirstValue: 31752193 false ) 
	#(249 3 #reduceActionForArrowFunction1: 31495169 false ) 
	#(251 1 #reduceActionForConciseBody1: 31637505 false ) 
	#(332 0 #reduceActionForSwitchToDefault1: 41484289 true ) 
	#(323 1 #reduceActionForModuleBody1: 40903681 false ) 
	#(310 1 #reduceActionForJSXElementName1: 39759873 false ) 
	#(310 1 #liftFirstValue: 39759874 false ) 
	#(310 1 #liftFirstValue: 39759875 false ) 
	#(314 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 40086529 false ) 
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
	#(272 3 #reduceActionForClassExpression2: 35288066 false ) 
	#(437 1 #reduceActionForLexicalBinding1: 61077505 false ) 
	#(436 1 #reduceActionForNamespaceName1: 60964865 false ) 
	#(430 3 #reduceActionForExportDefaultImplementationElement1: 59132929 false ) 
	#(430 3 #reduceActionForExportDefaultImplementationElement1: 59132930 false ) 
	#(430 3 #reduceActionForExportDefaultImplementationElement1: 59132931 false ) 
	#(431 3 #reduceActionForExportDefaultDeclarationElement1: 59558913 false ) 
	#(431 3 #reduceActionForExportDefaultDeclarationElement1: 59558914 false ) 
	#(432 3 #reduceActionForExportListDeclaration3: 59893763 false ) 
	#(384 3 #reduceActionForInterfaceDeclaration1: 51456001 false ) 
	#(404 0 #reduceActionForDeclarationModule1: 54430721 false ) 
	#(272 3 #reduceActionForClassDeclaration3: 35288067 false ) 
	#(346 3 #reduceActionForParenthesizedExpression1: 42755073 false ) 
	#(366 2 #reduceActionForPropertySignature3: 44841987 false ) 
	#(366 2 #reduceActionForPropertySignature2: 44841986 false ) 
	#(374 2 #reduceActionForMethodSignature1: 48265217 false ) 
	#(351 3 #reduceActionForObjectType2: 43200514 false ) 
	#(352 2 #reduceActionForOptionalChain2: 43282434 false ) 
	#(352 2 #reduceActionForOptionalChain2: 43282436 false ) 
	#(356 3 #reduceActionForTupleType1: 43748353 false ) 
	#(335 2 #reduceActionForTypeParameter2: 41830402 false ) 
	#(333 3 #reduceActionForTypeParameters1: 41638913 false ) 
	#(359 3 #reduceActionForUnionType1: 43998209 false ) 
	#(360 3 #reduceActionForIntersectionType1: 44119041 false ) 
	#(348 3 #reduceActionForTypeReference2: 42895362 false ) 
	#(349 3 #reduceActionForTypeName2: 42989570 false ) 
	#(350 3 #reduceActionForNamespaceName2: 43096066 false ) 
	#(297 3 #reduceActionForNamedExports2: 38105090 false ) 
	#(296 3 #reduceActionForExportFromClause2: 37997570 false ) 
	#(295 4 #reduceActionForExportDeclaration5: 37313541 false ) 
	#(290 2 #reduceActionForFromClause1: 36955137 false ) 
	#(295 4 #reduceActionForExportDeclaration1: 37313537 false ) 
	#(289 3 #reduceActionForNamedImports2: 36723714 false ) 
	#(288 3 #reduceActionForNameSpaceImport1: 36642817 false ) 
	#(285 4 #reduceActionForImportDeclaration1: 36173825 false ) 
	#(286 3 #reduceActionForImportClause4: 36345860 false ) 
	#(286 3 #reduceActionForImportClause4: 36345861 false ) 
	#(208 2 #reduceActionForBindingRestProperty1: 24518657 false ) 
	#(206 3 #reduceActionForObjectBindingPattern2: 23764994 false ) 
	#(206 3 #reduceActionForObjectBindingPattern3: 23764995 false ) 
	#(207 3 #reduceActionForArrayBindingPattern3: 24153091 false ) 
	#(211 2 #reduceActionForBindingElisionElement2: 24817666 false ) 
	#(207 3 #reduceActionForArrayBindingPattern5: 24153093 false ) 
	#(207 3 #reduceActionForArrayBindingPattern2: 24153090 false ) 
	#(148 2 #reduceActionForFromClause1: 11969537 false ) 
	#(200 3 #reduceActionForNamespaceName2: 23056386 false ) 
	#(382 3 #reduceActionForSimpleLexicalBinding1: 50919425 false ) 
	#(383 3 #reduceActionForSimpleLexicalBinding1: 51028993 false ) 
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
	#(255 1 #reduceActionForConciseBody1: 31987713 false ) 
	#(254 4 #reduceActionForAsyncArrowFunction1: 31885313 false ) 
	#(278 2 #reduceActionForClassElement2: 35757058 false ) 
	#(274 3 #reduceActionForClassTail2: 35464194 false ) 
	#(277 2 #reduceActionForModuleItemList2: 35668994 false ) 
	#(395 1 #reduceActionForMemberAccessorDeclaration1: 53450753 false ) 
	#(395 1 #reduceActionForMemberAccessorDeclaration1: 53450757 false ) 
	#(278 2 #liftSecondValue: 35757060 false ) 
	#(278 2 #liftSecondValue: 35757061 false ) 
	#(392 1 #liftFirstValue: 52820993 false ) 
	#(392 1 #liftFirstValue: 52820994 false ) 
	#(392 1 #liftFirstValue: 52820995 false ) 
	#(278 2 #liftSecondValue: 35757062 false ) 
	#(274 3 #reduceActionForClassTail3: 35464195 false ) 
	#(389 1 #liftFirstValue: 52112385 false ) 
	#(388 2 #reduceActionForFromClause1: 52052993 false ) 
	#(387 1 #liftFirstValue: 51827713 false ) 
	#(390 2 #reduceActionForImplementsClause1: 52154369 false ) 
	#(386 1 #reduceActionForNamespaceName1: 51696641 false ) 
	#(275 3 #reduceActionForClassHeritage3: 35556355 false ) 
	#(160 4 #reduceActionForImportCall1: 14002177 false ) 
	#(162 2 #reduceActionForArgumentList2: 14327810 false ) 
	#(161 3 #reduceActionForArguments2: 14142466 false ) 
	#(154 4 #reduceActionForSuperProperty1: 12961793 false ) 
	#(338 1 #reduceActionForNamespaceName1: 42015745 false ) 
	#(339 1 #liftFirstValue: 42122241 false ) 
	#(151 1 #reduceActionForNamespaceName1: 12227585 false ) 
	#(149 4 #reduceActionForTemplateLiteral2: 12034050 false ) 
	#(153 4 #reduceActionForMemberExpression2: 12460034 false ) 
	#(165 2 #reduceActionForOptionalRest3: 14897155 false ) 
	#(158 4 #reduceActionForCallExpression5: 13448197 false ) 
	#(169 4 #reduceActionForUnaryExpression11: 15900683 false ) 
	#(248 1 #reduceActionForModuleBody1: 31453186 false ) 
	#(247 1 #reduceActionForModuleBody1: 31412225 false ) 
	#(305 4 #reduceActionForJSXElement2: 38933506 false ) 
	#(325 1 #reduceActionForJSXChild1: 40938497 false ) 
	#(325 1 #liftFirstValue: 40938498 false ) 
	#(324 2 #reduceActionForModuleItemList2: 40918018 false ) 
	#(313 2 #reduceActionForFromClause1: 40086529 false ) 
	#(330 0 #reduceActionForSwitchToJSXTextOrDefault11: 41351169 true ) 
	#(320 1 #reduceActionForJSXElementName1: 40510465 false ) 
	#(320 1 #liftFirstValue: 40510466 false ) 
	#(317 1 #reduceActionForModuleItemList1: 40213505 false ) 
	#(315 1 #reduceActionForModuleBody1: 40197121 false ) 
	#(316 1 #liftFirstValue: 40213505 false ) 
	#(316 1 #liftFirstValue: 40213506 false ) 
	#(319 1 #reduceActionForJSXAttribute1: 40427521 false ) 
	#(312 2 #reduceActionForJSXMemberExpression1: 40064001 false ) 
	#(314 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 40086530 false ) 
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
	#(380 2 #reduceActionForSimpleVariableDeclaration1: 50619393 false ) 
	#(437 2 #reduceActionForAmbientBinding2: 61077506 false ) 
	#(435 3 #reduceActionForLexicalDeclaration1: 60668931 false ) 
	#(435 3 #reduceActionForLexicalDeclaration1: 60668930 false ) 
	#(447 0 #reduceActionForDeclarationModule1: 62571521 false ) 
	#(435 3 #reduceActionForLexicalDeclaration1: 60668929 false ) 
	#(397 4 #reduceActionForEnumDeclaration1: 53750785 false ) 
	#(400 1 #reduceActionForEnumMember1: 54036481 false ) 
	#(398 1 #reduceActionForModuleBody1: 53898241 false ) 
	#(399 1 #reduceActionForNamespaceName1: 53944321 false ) 
	#(433 4 #reduceActionForExportAssignment1: 60147713 false ) 
	#(432 4 #reduceActionForExportListDeclaration1: 59893761 false ) 
	#(431 4 #reduceActionForExportDefaultDeclarationElement3: 59558915 false ) 
	#(430 4 #reduceActionForExportDefaultImplementationElement4: 59132932 false ) 
	#(432 4 #reduceActionForExportListDeclaration2: 59893762 false ) 
	#(409 1 #liftFirstValue: 55727105 false ) 
	#(385 2 #reduceActionForFromClause1: 51611649 false ) 
	#(384 4 #reduceActionForInterfaceDeclaration3: 51456003 false ) 
	#(384 4 #reduceActionForInterfaceDeclaration2: 51456002 false ) 
	#(406 1 #liftFirstValue: 54566913 false ) 
	#(406 1 #liftFirstValue: 54566914 false ) 
	#(406 1 #liftFirstValue: 54566915 false ) 
	#(406 1 #liftFirstValue: 54566916 false ) 
	#(406 1 #liftFirstValue: 54566917 false ) 
	#(406 1 #liftFirstValue: 54566919 false ) 
	#(406 1 #liftFirstValue: 54566918 false ) 
	#(406 1 #liftFirstValue: 54566920 false ) 
	#(406 1 #liftFirstValue: 54566921 false ) 
	#(404 1 #reduceActionForModuleBody1: 54430722 false ) 
	#(405 1 #reduceActionForModuleItemList1: 54468609 false ) 
	#(406 1 #liftFirstValue: 54566924 false ) 
	#(406 1 #liftFirstValue: 54566923 false ) 
	#(406 1 #liftFirstValue: 54566922 false ) 
	#(403 3 #reduceActionForNamespaceName2: 54325250 false ) 
	#(240 4 #reduceActionForFunctionDeclaration5: 30538757 false ) 
	#(272 4 #reduceActionForClassDeclaration4: 35288068 false ) 
	#(368 3 #reduceActionForCallSignature1: 45064193 false ) 
	#(366 3 #reduceActionForPropertySignature4: 44841988 false ) 
	#(374 3 #reduceActionForMethodSignature2: 48265218 false ) 
	#(367 2 #reduceActionForFromClause1: 45010945 false ) 
	#(353 3 #reduceActionForNamespaceName2: 43378690 false ) 
	#(353 3 #reduceActionForNamespaceName2: 43378691 false ) 
	#(356 4 #reduceActionForTupleType2: 43748354 false ) 
	#(357 3 #reduceActionForNamespaceName2: 43863042 false ) 
	#(336 2 #reduceActionForFromClause1: 41884673 false ) 
	#(334 3 #reduceActionForNamespaceName2: 41717762 false ) 
	#(364 3 #reduceActionForTypeQueryExpression2: 44680194 false ) 
	#(355 4 #reduceActionForArrayType1: 43640833 false ) 
	#(299 3 #reduceActionForExportSpecifier2: 38425602 false ) 
	#(297 4 #reduceActionForNamedExports3: 38105091 false ) 
	#(298 3 #reduceActionForNamespaceName2: 38321154 false ) 
	#(292 3 #reduceActionForImportSpecifier2: 37110786 false ) 
	#(289 4 #reduceActionForNamedImports3: 36723715 false ) 
	#(291 3 #reduceActionForNamespaceName2: 37006338 false ) 
	#(212 3 #reduceActionForBindingProperty2: 24879106 false ) 
	#(206 4 #reduceActionForObjectBindingPattern4: 23764996 false ) 
	#(209 3 #reduceActionForNamespaceName2: 24590338 false ) 
	#(207 4 #reduceActionForArrayBindingPattern4: 24153092 false ) 
	#(207 4 #reduceActionForArrayBindingPattern6: 24153094 false ) 
	#(210 3 #reduceActionForBindingElementList2: 24709122 false ) 
	#(382 4 #reduceActionForSimpleLexicalBinding2: 50919426 false ) 
	#(383 4 #reduceActionForSimpleLexicalBinding2: 51028994 false ) 
	#(214 4 #reduceActionForSimpleLexicalBinding2: 25097220 false ) 
	#(213 4 #reduceActionForBindingElement11: 24992779 false ) 
	#(213 4 #reduceActionForSimpleLexicalBinding2: 24992773 false ) 
	#(214 4 #reduceActionForSingleNameBinding10: 25097226 false ) 
	#(214 4 #reduceActionForSingleNameBinding8: 25097224 false ) 
	#(214 4 #reduceActionForSingleNameBinding5: 25097221 false ) 
	#(213 4 #reduceActionForSingleNameBinding10: 24992780 false ) 
	#(213 4 #reduceActionForSingleNameBinding8: 24992777 false ) 
	#(213 4 #reduceActionForSingleNameBinding5: 24992774 false ) 
	#(257 1 #liftFirstValue: 32706561 false ) 
	#(270 1 #reduceActionForModuleBody1: 35175425 false ) 
	#(395 2 #reduceActionForMemberAccessorDeclaration2: 53450754 false ) 
	#(395 2 #reduceActionForMemberAccessorDeclaration2: 53450758 false ) 
	#(393 2 #reduceActionForMemberVariableDeclaration1: 52935681 false ) 
	#(395 2 #reduceActionForMemberAccessorDeclaration3: 53450755 false ) 
	#(395 2 #reduceActionForMemberAccessorDeclaration3: 53450759 false ) 
	#(396 2 #reduceActionForIndexMemberDeclaration1: 53659649 false ) 
	#(274 4 #reduceActionForClassTail4: 35464196 false ) 
	#(161 4 #reduceActionForArguments3: 14142467 false ) 
	#(162 3 #reduceActionForArgumentList3: 14327811 false ) 
	#(337 3 #reduceActionForTypeArguments1: 41937921 false ) 
	#(161 4 #reduceActionForArguments4: 14142468 false ) 
	#(152 2 #reduceActionForTemplateMiddleList1: 12314625 false ) 
	#(151 2 #reduceActionForTemplateSpans2: 12227586 false ) 
	#(166 3 #reduceActionForOptionalFirst2: 15184898 false ) 
	#(165 3 #reduceActionForOptionalFirst2: 14897154 false ) 
	#(185 5 #reduceActionForConditionalExpression2: 19878914 false ) 
	#(251 3 #reduceActionForConciseBody2: 31637506 false ) 
	#(311 3 #reduceActionForJSXNamespacedName1: 39940097 false ) 
	#(317 2 #reduceActionForModuleItemList2: 40213506 false ) 
	#(319 2 #reduceActionForJSXAttribute2: 40427522 false ) 
	#(307 5 #reduceActionForJSXOpeningElement1: 39267329 false ) 
	#(376 4 #reduceActionForTypeCallSignature1: 48708609 false ) 
	#(169 5 #reduceActionForUnaryExpression10: 15900682 false ) 
	#(376 4 #reduceActionForTypeCallSignature3: 48708611 false ) 
	#(218 5 #reduceActionForIfStatement2: 25495554 false ) 
	#(227 5 #reduceActionForSwitchStatement1: 29134849 false ) 
	#(238 1 #liftFirstValue: 30401537 false ) 
	#(238 1 #liftFirstValue: 30401538 false ) 
	#(380 3 #reduceActionForSimpleVariableDeclaration2: 50619394 false ) 
	#(381 3 #reduceActionForDestructuringVariableDeclaration1: 50724865 false ) 
	#(219 5 #reduceActionForIterationStatement2: 25786370 false ) 
	#(226 5 #reduceActionForWithStatement1: 29002753 false ) 
	#(397 5 #reduceActionForEnumDeclaration3: 53750787 false ) 
	#(440 0 #reduceActionForDeclarationModule1: 61513729 false ) 
	#(436 3 #reduceActionForNamespaceName2: 60964866 false ) 
	#(438 4 #reduceActionForAmbientFunctionDeclaration1: 61160449 false ) 
	#(449 1 #reduceActionForAmbientNamespaceElement3: 62750723 false ) 
	#(449 1 #reduceActionForAmbientNamespaceElement3: 62750729 false ) 
	#(449 1 #reduceActionForAmbientNamespaceElement3: 62750735 false ) 
	#(449 1 #reduceActionForAmbientNamespaceElement3: 62750721 false ) 
	#(449 1 #reduceActionForAmbientNamespaceElement3: 62750725 false ) 
	#(449 1 #reduceActionForAmbientNamespaceElement3: 62750727 false ) 
	#(449 1 #reduceActionForAmbientNamespaceElement3: 62750731 false ) 
	#(449 1 #reduceActionForAmbientNamespaceElement3: 62750733 false ) 
	#(447 1 #reduceActionForModuleBody1: 62571522 false ) 
	#(448 1 #reduceActionForModuleItemList1: 62623745 false ) 
	#(397 5 #reduceActionForEnumDeclaration2: 53750786 false ) 
	#(398 2 #reduceActionForOptionalChain2: 53898242 false ) 
	#(408 5 #reduceActionForImportAliasDeclaration1: 55589889 false ) 
	#(384 5 #reduceActionForInterfaceDeclaration4: 51456004 false ) 
	#(407 2 #reduceActionForExportNamespaceElement2: 54847490 false ) 
	#(407 2 #reduceActionForExportNamespaceElement2: 54847489 false ) 
	#(407 2 #reduceActionForExportNamespaceElement2: 54847491 false ) 
	#(407 2 #reduceActionForExportNamespaceElement2: 54847492 false ) 
	#(407 2 #reduceActionForExportNamespaceElement2: 54847493 false ) 
	#(407 2 #reduceActionForExportNamespaceElement2: 54847495 false ) 
	#(407 2 #reduceActionForExportNamespaceElement2: 54847494 false ) 
	#(407 2 #reduceActionForExportNamespaceElement2: 54847496 false ) 
	#(407 2 #reduceActionForExportNamespaceElement2: 54847497 false ) 
	#(407 2 #reduceActionForExportNamespaceElement2: 54847499 false ) 
	#(407 2 #reduceActionForExportNamespaceElement2: 54847498 false ) 
	#(402 5 #reduceActionForNamespaceDeclaration1: 54183937 false ) 
	#(405 2 #reduceActionForModuleItemList2: 54468610 false ) 
	#(375 5 #reduceActionForTypeAliasDeclaration1: 48370689 false ) 
	#(240 5 #reduceActionForFunctionDeclaration6: 30538758 false ) 
	#(361 5 #reduceActionForFunctionType1: 44225537 false ) 
	#(368 4 #reduceActionForCallSignature2: 45064194 false ) 
	#(372 4 #reduceActionForConstructSignature1: 47771649 false ) 
	#(368 4 #reduceActionForCallSignature3: 45064195 false ) 
	#(206 5 #reduceActionForObjectBindingPattern5: 23764997 false ) 
	#(207 5 #reduceActionForArrayBindingPattern8: 24153096 false ) 
	#(207 5 #reduceActionForArrayBindingPattern7: 24153095 false ) 
	#(214 5 #reduceActionForSingleNameBinding6: 25097222 false ) 
	#(213 5 #reduceActionForBindingElement13: 24992781 false ) 
	#(213 5 #reduceActionForSingleNameBinding6: 24992775 false ) 
	#(371 1 #liftFirstValue: 47092737 false ) 
	#(371 1 #liftFirstValue: 47092738 false ) 
	#(255 3 #reduceActionForConciseBody2: 31987714 false ) 
	#(393 3 #reduceActionForMemberVariableDeclaration5: 52935685 false ) 
	#(393 3 #reduceActionForMemberVariableDeclaration2: 52935682 false ) 
	#(393 3 #reduceActionForMemberVariableDeclaration3: 52935683 false ) 
	#(394 3 #reduceActionForMemberFunctionDeclaration5: 53105669 false ) 
	#(395 3 #reduceActionForMemberAccessorDeclaration4: 53450756 false ) 
	#(395 3 #reduceActionForMemberAccessorDeclaration4: 53450760 false ) 
	#(393 3 #reduceActionForMemberVariableDeclaration9: 52935689 false ) 
	#(386 3 #reduceActionForNamespaceName2: 51696642 false ) 
	#(162 4 #reduceActionForArgumentList4: 14327812 false ) 
	#(338 3 #reduceActionForNamespaceName2: 42015746 false ) 
	#(161 5 #reduceActionForArguments5: 14142469 false ) 
	#(152 3 #reduceActionForTemplateMiddleList2: 12314626 false ) 
	#(326 1 #liftFirstValue: 41170946 false ) 
	#(326 1 #liftFirstValue: 41170945 false ) 
	#(306 6 #reduceActionForJSXSelfClosingElement1: 39084033 false ) 
	#(307 6 #reduceActionForJSXOpeningElement2: 39267330 false ) 
	#(322 1 #reduceActionForLiteral4: 40675329 false ) 
	#(322 1 #liftFirstValue: 40675331 false ) 
	#(322 1 #liftFirstValue: 40675332 false ) 
	#(321 2 #reduceActionForFromClause1: 40601601 false ) 
	#(241 6 #reduceActionForFunctionExpression3: 30750723 false ) 
	#(376 5 #reduceActionForTypeCallSignature2: 48708610 false ) 
	#(219 6 #reduceActionForIterationStatement3: 25786371 false ) 
	#(219 6 #reduceActionForIterationStatement15: 25786383 false ) 
	#(228 2 #reduceActionForCaseBlock1: 29260801 false ) 
	#(229 1 #reduceActionForModuleItemList1: 29445121 false ) 
	#(397 6 #reduceActionForEnumDeclaration4: 53750788 false ) 
	#(442 1 #liftFirstValue: 61688835 false ) 
	#(440 1 #reduceActionForModuleBody1: 61513730 false ) 
	#(441 1 #reduceActionForModuleItemList1: 61561857 false ) 
	#(442 1 #liftFirstValue: 61688833 false ) 
	#(442 1 #liftFirstValue: 61688834 false ) 
	#(450 6 #reduceActionForAmbientModuleDeclaration1: 63522817 false ) 
	#(449 2 #reduceActionForExportNamespaceElement2: 62750724 false ) 
	#(449 2 #reduceActionForExportNamespaceElement2: 62750730 false ) 
	#(449 2 #reduceActionForExportNamespaceElement2: 62750736 false ) 
	#(449 2 #reduceActionForExportNamespaceElement2: 62750722 false ) 
	#(449 2 #reduceActionForExportNamespaceElement2: 62750726 false ) 
	#(449 2 #reduceActionForExportNamespaceElement2: 62750728 false ) 
	#(449 2 #reduceActionForExportNamespaceElement2: 62750732 false ) 
	#(449 2 #reduceActionForExportNamespaceElement2: 62750734 false ) 
	#(446 5 #reduceActionForNamespaceDeclaration1: 62395393 false ) 
	#(448 2 #reduceActionForModuleItemList2: 62623746 false ) 
	#(401 1 #liftFirstValue: 54141953 false ) 
	#(400 3 #reduceActionForEnumMember2: 54036482 false ) 
	#(399 3 #reduceActionForNamespaceName2: 53944322 false ) 
	#(375 6 #reduceActionForTypeAliasDeclaration2: 48370690 false ) 
	#(240 6 #reduceActionForFunctionExpression3: 30538755 false ) 
	#(372 5 #reduceActionForConstructSignature2: 47771650 false ) 
	#(372 5 #reduceActionForConstructSignature3: 47771651 false ) 
	#(368 5 #reduceActionForCallSignature4: 45064196 false ) 
	#(362 6 #reduceActionForConstructorType1: 44405761 false ) 
	#(361 6 #reduceActionForFunctionType2: 44225538 false ) 
	#(207 6 #reduceActionForArrayBindingPattern9: 24153097 false ) 
	#(379 2 #reduceActionForTypedPropertySetParameterList1: 49741825 false ) 
	#(256 6 #reduceActionForMethodDefinition7: 32108551 false ) 
	#(393 4 #reduceActionForMemberVariableDeclaration6: 52935686 false ) 
	#(393 4 #reduceActionForMemberVariableDeclaration7: 52935687 false ) 
	#(394 4 #reduceActionForMemberFunctionDeclaration6: 53105670 false ) 
	#(393 4 #reduceActionForMemberVariableDeclaration4: 52935684 false ) 
	#(393 4 #reduceActionForMemberVariableDeclaration13: 52935693 false ) 
	#(393 4 #reduceActionForMemberVariableDeclaration10: 52935690 false ) 
	#(393 4 #reduceActionForMemberVariableDeclaration11: 52935691 false ) 
	#(394 4 #reduceActionForMemberFunctionDeclaration7: 53105671 false ) 
	#(241 7 #reduceActionForFunctionExpression1: 30750721 false ) 
	#(261 1 #reduceActionForModuleBody1: 33453057 false ) 
	#(331 0 #reduceActionForSwitchToJSXTextOrDefault21: 41417729 true ) 
	#(325 4 #reduceActionForJSXChild3: 40938499 false ) 
	#(306 7 #reduceActionForJSXSelfClosingElement2: 39084034 false ) 
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
	#(444 2 #reduceActionForMemberVariableDeclaration1: 62008321 false ) 
	#(439 6 #reduceActionForAmbientClassDeclaration1: 61307905 false ) 
	#(441 2 #reduceActionForModuleItemList2: 61561858 false ) 
	#(240 7 #reduceActionForFunctionExpression1: 30538753 false ) 
	#(240 7 #reduceActionForFunctionExpression4: 30538756 false ) 
	#(373 6 #reduceActionForIndexSignature2: 47964162 false ) 
	#(373 6 #reduceActionForIndexSignature2: 47964161 false ) 
	#(372 6 #reduceActionForConstructSignature4: 47771652 false ) 
	#(362 7 #reduceActionForConstructorType2: 44405762 false ) 
	#(256 7 #reduceActionForMethodDefinition5: 32108549 false ) 
	#(256 7 #reduceActionForMethodDefinition1: 32108545 false ) 
	#(269 8 #reduceActionForAsyncFunctionExpression1: 34925569 false ) 
	#(266 1 #reduceActionForModuleBody1: 34419713 false ) 
	#(391 5 #reduceActionForConstructorDeclaration3: 52362243 false ) 
	#(393 5 #reduceActionForMemberVariableDeclaration8: 52935688 false ) 
	#(394 5 #reduceActionForMemberFunctionDeclaration1: 53105665 false ) 
	#(393 5 #reduceActionForMemberVariableDeclaration14: 52935694 false ) 
	#(393 5 #reduceActionForMemberVariableDeclaration15: 52935695 false ) 
	#(394 5 #reduceActionForMemberFunctionDeclaration8: 53105672 false ) 
	#(393 5 #reduceActionForMemberVariableDeclaration12: 52935692 false ) 
	#(260 8 #reduceActionForGeneratorExpression1: 33217537 false ) 
	#(241 8 #reduceActionForFunctionExpression2: 30750722 false ) 
	#(325 5 #reduceActionForJSXChild4: 40938500 false ) 
	#(318 5 #reduceActionForJSXSpreadAttribute1: 40278017 false ) 
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
	#(444 3 #reduceActionForMemberVariableDeclaration5: 62008323 false ) 
	#(444 3 #reduceActionForMemberVariableDeclaration3: 62008322 false ) 
	#(444 3 #reduceActionForAmbientPropertyMemberDeclaration9: 62008329 false ) 
	#(444 3 #reduceActionForMemberVariableDeclaration9: 62008325 false ) 
	#(439 7 #reduceActionForAmbientClassDeclaration2: 61307906 false ) 
	#(259 8 #reduceActionForGeneratorExpression1: 32980993 false ) 
	#(240 8 #reduceActionForFunctionExpression2: 30538754 false ) 
	#(427 8 #reduceActionForImportRequireDeclaration1: 57877505 false ) 
	#(268 8 #reduceActionForAsyncFunctionExpression1: 34675713 false ) 
	#(258 8 #reduceActionForGeneratorMethod1: 32764929 false ) 
	#(267 8 #reduceActionForAsyncMethod1: 34456577 false ) 
	#(256 8 #reduceActionForMethodDefinition6: 32108550 false ) 
	#(265 9 #reduceActionForAsyncGeneratorExpression1: 34145281 false ) 
	#(269 9 #reduceActionForAsyncFunctionExpression2: 34925570 false ) 
	#(394 6 #reduceActionForMemberFunctionDeclaration2: 53105666 false ) 
	#(391 6 #reduceActionForConstructorDeclaration4: 52362244 false ) 
	#(393 6 #reduceActionForMemberVariableDeclaration16: 52935696 false ) 
	#(394 6 #reduceActionForMemberFunctionDeclaration3: 53105667 false ) 
	#(260 9 #reduceActionForGeneratorExpression2: 33217538 false ) 
	#(309 9 #reduceActionForJSXFragment1: 39571457 false ) 
	#(308 6 #reduceActionForJSXClosingElement1: 39411713 false ) 
	#(219 9 #reduceActionForIterationStatement12: 25786380 false ) 
	#(219 9 #reduceActionForIterationStatement13: 25786381 false ) 
	#(219 9 #reduceActionForIterationStatement10: 25786378 false ) 
	#(219 9 #reduceActionForIterationStatement26: 25786394 false ) 
	#(230 4 #reduceActionForCaseClause2: 29517826 false ) 
	#(228 5 #reduceActionForCaseBlock6: 29260806 false ) 
	#(444 4 #reduceActionForMemberVariableDeclaration7: 62008324 false ) 
	#(444 4 #reduceActionForAmbientPropertyMemberDeclaration10: 62008330 false ) 
	#(444 4 #reduceActionForMemberVariableDeclaration13: 62008327 false ) 
	#(444 4 #reduceActionForMemberVariableDeclaration11: 62008326 false ) 
	#(444 4 #reduceActionForAmbientPropertyMemberDeclaration11: 62008331 false ) 
	#(259 9 #reduceActionForGeneratorExpression2: 32980994 false ) 
	#(264 9 #reduceActionForAsyncGeneratorExpression1: 33869825 false ) 
	#(268 9 #reduceActionForAsyncFunctionExpression2: 34675714 false ) 
	#(263 9 #reduceActionForAsyncGeneratorMethod1: 33616897 false ) 
	#(377 9 #reduceActionForGetAccessor1: 49071105 false ) 
	#(378 9 #reduceActionForSetAccessor2: 49276930 false ) 
	#(265 10 #reduceActionForAsyncGeneratorExpression2: 34145282 false ) 
	#(391 7 #reduceActionForConstructorDeclaration1: 52362241 false ) 
	#(394 7 #reduceActionForMemberFunctionDeclaration4: 53105668 false ) 
	#(322 5 #reduceActionForJSXChild4: 40675330 false ) 
	#(219 10 #reduceActionForIterationStatement14: 25786382 false ) 
	#(443 5 #reduceActionForAmbientConstructorDeclaration1: 61801473 false ) 
	#(444 5 #reduceActionForMemberVariableDeclaration15: 62008328 false ) 
	#(444 5 #reduceActionForAmbientPropertyMemberDeclaration12: 62008332 false ) 
	#(264 10 #reduceActionForAsyncGeneratorExpression2: 33869826 false ) 
	#(378 10 #reduceActionForSetAccessor1: 49276929 false ) 
	#(378 10 #reduceActionForSetAccessor1: 49276931 false ) 
	#(391 8 #reduceActionForConstructorDeclaration2: 52362242 false )
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
	^ #('<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<question>' '<questionDot>' '<questionQuestion>' '<percent>' '<bar>' '<barBar>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<private>' '<protected>' '<public>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'FunctionDeclaration' 'FunctionExpression' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorMethod' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorBody' 'AsyncMethod' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSNewTargetExpressionNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSVariableDeclarationNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSVariableDeclarationNode #JSGeneratorMethodDefinitionNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorMethodDefinitionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #OrderedCollection #JSAsyncMethodDefinitionNode #JSAsyncFunctionNode #JSAsyncFunctionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSProgramNode #JSMemberVariableDeclarationNode #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 37 0 68 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 7 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 0 49 0 131 0 81 0 196 0 57 0 197 0 81 0 198 0 65 0 199 0 49 1 25 0 73 1 26 0 77 1 27 0 81 1 28 0 81 1 29 0 81 1 39 0 6 1 197 0 10 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 1 101 0 185 1 101 0 186 1 101 0 188 0 245 0 241 1 101 0 249 1 113 0 250 1 117 0 253 1 101 0 254 0 245 1 4 1 101 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 2 5 0 189 2 5 0 192 2 5 0 193 2 5 0 194 2 5 0 202 2 5 0 216 2 5 0 217 2 5 0 218 2 5 0 219 2 5 0 222 2 5 0 223 2 5 0 225 2 5 0 226 2 5 0 227 2 5 0 232 2 5 0 234 2 5 0 235 2 5 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 2 77 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 2 85 1 23 2 89 1 24 0 6 1 197 0 22 1 198] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 37 0 68 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 7 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 0 81 0 196 0 57 0 197 0 81 0 198 0 65 0 199 2 93 1 25 0 73 1 26 0 77 1 27 0 81 1 28 0 81 1 29 0 81 1 39 0 6 1 197 0 10 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 2 97 0 57 2 101 0 58 1 205 0 60 1 209 0 61 2 105 0 62 0 141 0 64 1 213 0 65 2 109 0 67 2 113 0 68 1 153 0 70 1 217 0 72 2 117 0 74 1 221 0 76 2 121 0 77 2 125 0 82 0 65 0 84 2 129 0 86 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 2 133 0 105 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 2 205 0 189 2 205 0 192 2 205 0 193 2 205 0 194 2 205 0 198 0 65 0 199 2 205 0 202 2 205 0 216 2 205 0 217 2 205 0 218 2 205 0 219 2 205 0 222 2 205 0 223 2 205 0 225 2 205 0 226 2 205 0 227 2 205 0 232 2 205 0 234 2 205 0 235 2 205 0 239 2 205 0 240 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 2 205 1 3 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 2 205 1 16 0 245 1 17 2 157 1 29 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 2 161 1 119 2 165 1 128 2 205 1 141 2 173 1 146 2 177 1 152 2 181 1 154 2 185 1 155 2 189 1 156 2 193 1 157 2 197 1 158 2 201 1 159 2 205 1 160 2 209 1 161 2 213 1 162 2 217 1 163 2 221 1 164 2 225 1 165 2 229 1 166 2 233 1 167 2 237 1 168 2 241 1 169 2 245 1 170 2 233 1 171 2 233 1 172 2 245 1 173 2 233 1 174 2 245 1 175 3 13 1 176 3 17 1 177 3 21 1 178 3 25 1 194 3 29 1 197 0 15 1 198] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 3 89 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 3 89 1 105 3 89 1 106 3 105 1 107 3 105 1 109] 
#[0 0 42 0 3 0 5 0 116 1 197] 
#[1 3 169 0 3 3 173 0 25 3 177 0 52 3 181 0 57 0 65 0 58 3 185 0 63 3 189 0 74 0 65 0 84 1 241 0 107 3 193 0 190 3 193 0 191 3 193 0 198 0 65 0 199 3 205 0 202 3 193 0 240 3 193 1 3 3 193 1 8 3 193 1 12 3 193 1 16 3 229 1 40 3 233 1 41 3 237 1 197] 
#[1 3 241 0 3 3 245 0 25 0 189 0 116 4 13 0 119 4 1 0 132 3 253 1 30 4 1 1 31 4 5 1 32 4 9 1 33 4 13 1 37 4 1 1 38 4 13 1 46] 
#[0 0 46 0 3 0 5 0 116 1 197] 
#[0 0 0 1 198] 
#[0 0 50 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 4 25 0 189 4 25 0 192 4 25 0 193 4 25 0 194 4 25 0 202 4 25 0 216 4 25 0 217 4 25 0 218 4 25 0 219 4 25 0 222 4 25 0 223 4 25 0 225 4 25 0 226 4 25 0 227 4 25 0 232 4 25 0 234 4 25 0 235 4 25 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 0 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 4 37 0 132 4 41 0 200 4 45 0 201 4 49 0 205 4 49 0 206 4 49 0 207 4 45 1 126 4 45 1 127 4 69 1 197] 
#[0 0 58 1 198] 
#[0 0 62 1 198] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 37 0 68 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 7 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 4 73 0 196 0 57 0 197 4 73 0 198 0 65 0 199 4 73 1 28 4 73 1 29 4 73 1 39 0 6 1 197 0 66 1 198] 
#[0 0 70 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 0 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 0 78 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 0 82 0 2 4 77 0 3 4 81 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 4 85 0 112 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 4 89 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 4 93 0 185 4 93 0 186 4 93 0 188 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 0 245 0 241 4 113 0 242 4 117 0 243 4 121 0 244 4 125 0 245 4 129 0 246 4 93 0 249 1 113 0 250 1 117 0 253 4 93 0 254 0 245 1 4 4 93 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 4 133 1 197] 
#[1 4 137 0 4 4 141 0 5 4 145 0 25 4 149 0 52 4 153 0 75 4 157 0 95 4 161 0 112 0 189 0 116 4 165 0 117 4 217 0 119 4 221 0 120 4 169 0 132 4 185 0 133 4 177 0 142 4 181 0 143 4 185 0 144 4 185 0 145 4 185 0 146 4 181 0 147 4 181 1 0 4 181 1 2 4 181 1 7 4 181 1 11 4 217 1 46 4 221 1 47 4 181 1 121 4 181 1 122 4 233 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 4 237 0 6 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 4 241 0 112 4 245 0 113 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 4 249 0 138 4 253 0 139 5 1 0 140 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 5 5 0 185 5 5 0 186 0 245 0 241 5 5 0 249 1 113 0 250 1 117 0 253 5 5 0 254 0 245 1 4 5 5 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 5 25 0 168 5 25 0 169 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 5 25 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 5 33 0 168 5 33 0 169 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 5 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 5 37 0 168 5 37 0 169 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 5 37 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 5 41 0 168 5 41 0 169 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 5 41 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 5 45 0 168 5 45 0 169 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 5 45 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 5 49 0 168 5 49 0 169 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 5 49 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 53 0 1 5 57 0 74 0 189 0 116 5 61 0 132 5 65 0 250 1 117 0 253 5 69 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 5 73 0 168 5 73 0 169 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 5 73 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 77 0 3 5 81 0 69 0 189 0 116 5 85 0 132 5 89 1 18 5 93 1 19 5 97 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 5 101 0 168 5 101 0 169 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 5 101 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 5 105 0 1 5 109 0 25 0 189 0 116 5 113 0 132] 
#[0 5 117 0 1] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 5 121 0 21 5 13 0 52 0 137 0 57 1 153 0 70 0 149 0 74 0 157 0 87 1 149 0 88 5 125 0 98 0 169 0 101 1 153 0 103 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 5 129 0 132 5 129 0 134 5 129 0 135 5 129 0 136 5 129 0 137 5 129 0 141 5 129 0 149 0 241 0 150 5 129 0 153 5 129 0 154 5 129 0 155 5 129 0 156 5 133 0 157 5 129 0 241 5 129 1 4 5 129 1 9 5 129 1 13 5 129 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 5 129 1 48 5 129 1 49 5 129 1 50 1 177 1 51 5 129 1 53 1 185 1 71 5 137 1 197] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 5 141 0 1 5 145 0 5 5 149 0 21 5 153 0 161 5 157 1 197] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 5 161 0 168 5 161 0 169 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 5 161 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 5 165 0 168 5 165 0 169 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 5 165 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 0 93 0 1 0 102 0 2 0 97 0 3 0 102 0 4 0 101 0 5 0 102 0 6 0 102 0 7 5 169 0 25 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 102 0 90 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 102 0 113 0 102 0 114 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 102 0 125 0 102 0 126 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 5 173 0 185 5 173 0 186 0 245 0 241 5 173 0 249 1 113 0 250 1 117 0 253 5 173 0 254 0 245 1 4 5 173 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197 0 102 1 198] 
#[0 0 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 59 0 69 0 73 0 78 0 80 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 123 0 124 0 125 0 126 0 128 1 196 1 197 1 198] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 0 126 0 13 5 177 1 72] 
#[1 0 130 0 1 0 130 0 2 0 130 0 4 0 130 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 134 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 78 0 130 0 81 0 130 0 90 0 130 0 113 0 130 0 114 0 130 0 123 0 130 0 124 0 130 0 125 0 130 0 126 0 130 1 196 0 130 1 197 0 130 1 198] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 5 181 0 124] 
#[1 5 141 0 1 0 162 0 2 0 162 0 3 0 162 0 4 5 185 0 5 0 162 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 19 0 162 0 20 5 189 0 21 0 162 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 39 0 162 0 40 0 162 0 41 5 193 0 42 0 162 0 43 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 49 0 162 0 50 0 162 0 51 0 162 0 78 0 162 0 81 0 162 0 90 0 162 0 113 0 162 0 114 0 205 0 123 0 14 0 124 0 162 0 125 0 162 0 126 5 197 0 149 0 241 0 150 5 201 0 161 5 205 0 164 0 162 1 196 5 157 1 197 0 162 1 198] 
#[0 0 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 196 1 198] 
#[1 5 141 0 1 0 182 0 2 0 182 0 3 0 182 0 4 5 209 0 5 0 182 0 6 0 182 0 7 0 182 0 8 0 182 0 9 0 182 0 10 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 15 0 182 0 16 0 182 0 17 0 182 0 19 0 182 0 20 5 213 0 21 0 182 0 22 0 182 0 23 0 182 0 24 0 182 0 25 0 182 0 26 0 182 0 27 0 182 0 28 0 182 0 29 0 182 0 30 0 182 0 31 0 182 0 32 0 182 0 33 0 182 0 34 0 182 0 35 0 182 0 36 0 182 0 37 0 182 0 39 0 182 0 40 0 182 0 41 5 193 0 42 0 182 0 43 0 182 0 44 0 182 0 45 0 182 0 46 0 182 0 47 0 182 0 49 0 182 0 50 0 182 0 51 0 182 0 78 0 182 0 81 0 182 0 90 0 182 0 113 0 182 0 114 0 205 0 123 0 14 0 124 0 182 0 125 0 182 0 126 5 217 0 149 0 241 0 150 5 221 0 161 5 225 0 164 0 182 1 196 5 157 1 197 0 182 1 198] 
#[0 0 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 6 0 194 0 7 0 194 0 8 0 194 0 9 0 194 0 10 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 15 0 194 0 16 0 194 0 17 0 194 0 19 0 194 0 20 0 194 0 22 0 194 0 23 0 194 0 24 0 194 0 25 0 194 0 26 0 194 0 27 0 194 0 28 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 39 0 194 0 40 0 194 0 41 5 193 0 42 0 194 0 43 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 47 0 194 0 49 0 194 0 50 0 194 0 51 0 194 0 78 0 194 0 81 0 194 0 90 0 194 0 113 0 194 0 114 0 194 0 125 0 194 0 126 5 229 0 164 0 194 1 196 0 194 1 198] 
#[1 0 198 0 2 0 198 0 4 0 198 0 6 0 198 0 7 0 198 0 8 6 37 0 9 0 198 0 10 0 198 0 11 6 37 0 12 0 198 0 13 0 198 0 14 6 37 0 15 6 37 0 16 0 198 0 17 0 198 0 19 0 198 0 20 6 37 0 22 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 6 37 0 27 6 37 0 28 6 37 0 29 6 37 0 30 6 37 0 31 6 37 0 32 6 37 0 33 0 198 0 34 6 25 0 35 0 198 0 36 6 29 0 37 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 49 0 198 0 50 6 33 0 51 0 198 0 78 0 198 0 81 0 198 0 90 0 198 0 113 0 198 0 114 0 198 0 125 0 198 0 126 6 37 0 187 6 37 1 196 0 198 1 198] 
#[0 0 202 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[1 0 206 0 2 0 206 0 4 0 206 0 6 0 206 0 7 0 206 0 8 0 206 0 10 0 206 0 11 0 206 0 13 0 206 0 14 0 206 0 17 0 206 0 19 0 206 0 20 0 206 0 23 0 206 0 24 0 206 0 25 6 45 0 26 0 206 0 34 0 206 0 36 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 43 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 49 0 206 0 50 0 206 0 78 0 206 0 81 0 206 0 90 0 206 0 113 0 206 0 114 0 206 0 125 0 206 0 126 0 206 1 198] 
#[0 0 210 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[1 0 214 0 2 0 214 0 4 0 214 0 6 0 214 0 7 6 61 0 8 0 214 0 10 0 214 0 11 0 214 0 13 0 214 0 14 0 214 0 17 0 214 0 19 0 214 0 20 0 214 0 23 0 214 0 24 6 61 0 25 0 214 0 34 0 214 0 36 0 214 0 39 0 214 0 40 0 214 0 41 0 214 0 43 6 61 0 44 0 214 0 45 0 214 0 46 0 214 0 47 0 214 0 49 0 214 0 50 0 214 0 78 0 214 0 81 0 214 0 90 0 214 0 113 0 214 0 114 0 214 0 125 0 214 0 126 6 61 0 172 0 214 1 198] 
#[1 0 218 0 2 0 218 0 4 0 218 0 6 0 218 0 7 0 218 0 10 0 218 0 11 0 218 0 13 0 218 0 14 0 218 0 17 0 218 0 19 0 218 0 20 0 218 0 23 0 218 0 24 6 65 0 34 6 69 0 36 0 218 0 39 0 218 0 40 0 218 0 41 0 218 0 43 0 218 0 45 0 218 0 46 0 218 0 47 0 218 0 49 0 218 0 50 0 218 0 78 0 218 0 81 0 218 0 90 0 218 0 113 0 218 0 114 0 218 0 125 0 218 0 126 0 218 1 198] 
#[1 0 222 0 2 0 222 0 4 0 222 0 6 0 222 0 7 0 222 0 10 6 73 0 11 0 222 0 13 6 77 0 14 6 81 0 17 0 222 0 19 0 222 0 20 0 222 0 23 0 222 0 24 0 222 0 39 0 222 0 40 0 222 0 41 0 222 0 43 0 222 0 45 0 222 0 46 0 222 0 47 0 222 0 49 0 222 0 50 0 222 0 78 0 222 0 81 0 222 0 90 0 222 0 113 0 222 0 114 0 222 0 125 0 222 0 126 0 222 1 198] 
#[1 0 226 0 2 0 226 0 4 0 226 0 6 0 226 0 7 6 85 0 10 6 89 0 13 6 93 0 19 6 97 0 20 0 226 0 23 0 226 0 24 0 226 0 39 0 226 0 40 0 226 0 41 0 226 0 43 0 226 0 45 0 226 0 46 0 226 0 47 0 226 0 49 0 226 0 50 6 101 0 78 6 105 0 81 0 226 0 90 0 226 0 113 0 226 0 114 0 226 0 125 0 226 0 126 0 226 1 198] 
#[1 0 230 0 2 0 230 0 4 0 230 0 6 0 230 0 7 6 109 0 23 6 113 0 24 0 230 0 39 0 230 0 40 0 230 0 41 0 230 0 43 0 230 0 45 0 230 0 46 0 230 0 47 6 117 0 49 6 121 0 50 0 230 0 90 0 230 0 113 0 230 0 114 0 230 0 125 0 230 0 126 0 230 1 198] 
#[1 0 234 0 2 0 234 0 4 0 234 0 6 0 234 0 7 6 125 0 39 0 234 0 40 0 234 0 41 0 234 0 43 0 234 0 45 0 234 0 46 0 234 0 47 0 234 0 90 0 234 0 113 0 234 0 114 0 234 0 125 0 234 0 126 0 234 1 198] 
#[1 0 238 0 2 0 238 0 4 0 238 0 6 0 238 0 7 0 238 0 40 0 238 0 41 0 238 0 43 0 238 0 45 0 238 0 46 6 129 0 47 0 238 0 90 0 238 0 113 0 238 0 114 0 238 0 125 0 238 0 126 0 238 1 198] 
#[1 0 242 0 2 0 242 0 4 0 242 0 6 0 242 0 7 0 242 0 40 0 242 0 41 0 246 0 43 6 133 0 45 0 242 0 46 0 242 0 90 0 242 0 113 0 242 0 114 0 242 0 125 0 242 0 126 0 242 1 198] 
#[1 0 250 0 2 0 250 0 4 0 250 0 6 0 250 0 7 6 137 0 40 0 250 0 41 0 250 0 46 0 250 0 90 0 250 0 113 0 250 0 114 0 250 0 125 0 250 0 126 0 250 1 198] 
#[1 0 254 0 2 0 254 0 4 0 254 0 6 0 254 0 7 0 254 0 41 6 141 0 46 0 254 0 90 0 254 0 113 0 254 0 114 0 254 0 125 0 254 0 126 0 254 1 198] 
#[1 1 2 0 2 1 2 0 4 1 2 0 6 1 2 0 7 1 2 0 41 1 6 0 43 1 2 0 90 1 2 0 113 1 2 0 114 1 2 0 125 1 2 0 126 1 2 1 198] 
#[0 6 145 0 43] 
#[1 1 10 0 2 1 10 0 4 1 10 0 6 1 10 0 7 6 149 0 41 1 10 0 90 1 10 0 113 1 10 0 114 1 10 0 125 1 10 0 126 1 10 1 198] 
#[0 1 14 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 1 18 0 2 0 6 0 7 0 113 0 114 0 125 0 126 1 198] 
#[1 6 153 0 113 0 0 1 198] 
#[0 1 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 1 26 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 6 157 0 18] 
#[0 1 30 0 18] 
#[0 1 34 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 1 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 1 42 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 1 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 1 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 1 54 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 1 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 1 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 1 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 1 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 1 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 1 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 1 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 1 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 196 1 197 1 198] 
#[1 1 90 0 3 1 90 0 127 1 90 0 129 6 161 1 73] 
#[0 1 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 6 165 0 127] 
#[1 6 169 0 1 6 173 0 10 6 177 0 74 6 181 1 77 6 185 1 120] 
#[1 0 6 0 1 0 6 0 3 6 189 0 4 0 19 0 5 0 6 0 7 4 145 0 25 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 23 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 4 153 0 75 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 4 157 0 95 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 4 161 0 112 0 27 0 116 4 165 0 117 0 31 0 119 0 35 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 4 169 0 132 4 185 0 133 4 177 0 142 4 181 0 143 4 185 0 144 4 185 0 145 4 185 0 146 4 181 0 147 6 193 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 4 181 1 0 4 181 1 2 4 181 1 7 4 181 1 11 4 217 1 46 4 221 1 47 4 181 1 121 4 181 1 122 0 39 1 197] 
#[0 1 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 1 102 0 7 1 102 0 116 6 197 0 224] 
#[1 1 102 0 7 1 102 0 116 6 201 0 224] 
#[0 6 205 0 7] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 6 209 0 189 6 209 0 192 6 209 0 193 6 209 0 194 6 209 0 202 6 209 0 216 6 209 0 217 6 209 0 218 6 209 0 219 6 209 0 222 6 209 0 223 6 209 0 225 6 209 0 226 6 209 0 227 6 209 0 232 6 209 0 234 6 209 0 235 6 209 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 6 213 0 1 6 217 0 53] 
#[0 6 221 0 1] 
#[1 1 102 0 1 1 102 0 3 1 102 0 5 1 102 0 7 1 102 0 34 1 102 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 48 1 102 0 52 1 102 0 53 1 102 0 57 1 102 0 64 1 102 0 70 1 102 0 74 1 102 0 77 1 102 0 87 1 102 0 88 1 102 0 98 1 102 0 101 1 102 0 103 1 102 0 106 1 102 0 108 1 102 0 111 1 102 0 116 1 102 0 119 1 102 0 120 1 102 0 121 1 102 0 123 1 102 0 124 1 102 0 127 6 225 0 224 1 102 1 197] 
#[0 6 229 0 1] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 6 233 0 185 6 233 0 186 6 233 0 188 0 245 0 241 6 233 0 249 1 113 0 250 1 117 0 253 6 233 0 254 0 245 1 4 6 233 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 6 237 0 3 6 241 0 194] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 6 245 0 132 6 249 0 203 6 253 0 204 7 1 0 205 7 1 0 206 7 1 0 207 7 5 1 197] 
#[0 7 9 0 1] 
#[0 7 13 0 1] 
#[1 0 106 0 1 0 106 0 5 0 106 0 7 0 106 0 8 0 106 0 9 0 106 0 10 0 106 0 11 0 106 0 12 0 106 0 13 0 106 0 14 0 106 0 15 0 106 0 16 0 106 0 17 0 106 0 18 0 106 0 19 0 106 0 20 0 106 0 21 0 106 0 22 0 106 0 23 0 106 0 24 0 106 0 25 0 106 0 26 0 106 0 27 0 106 0 28 0 106 0 29 0 106 0 30 0 106 0 31 0 106 0 32 0 106 0 33 0 106 0 34 0 106 0 35 0 106 0 36 0 106 0 37 0 106 0 39 0 106 0 40 0 106 0 41 0 106 0 42 0 106 0 43 0 106 0 44 0 106 0 45 0 106 0 46 0 106 0 47 0 106 0 49 0 106 0 50 0 106 0 51 0 106 0 78 0 106 0 81 0 106 0 113 7 17 0 114 0 106 0 123 0 106 0 124 0 106 1 196 0 106 1 197] 
#[1 7 21 0 7 6 153 0 113] 
#[0 0 0 1 198] 
#[0 1 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 162 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 166 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 7 25 0 196 0 57 0 197 7 25 0 198 0 65 0 199 0 6 1 197 1 174 1 198] 
#[0 1 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 0 0 1 198] 
#[0 1 182 1 198] 
#[0 0 0 1 198] 
#[1 5 77 0 3 5 81 0 69 0 189 0 116 7 29 0 132 7 33 1 18 5 93 1 19 5 97 1 197] 
#[1 0 42 0 3 0 42 0 5 7 37 0 67 0 42 0 116 0 42 1 197] 
#[1 7 41 0 57 7 45 0 58 2 109 0 67 7 49 0 74 7 53 0 84 7 57 0 85 7 61 0 86 7 65 0 107 7 85 1 141 7 73 1 179 7 77 1 182 7 81 1 183 7 85 1 189 7 89 1 190] 
#[1 0 189 0 116 7 93 0 132] 
#[1 3 169 0 3 7 97 0 22 7 101 0 25 3 181 0 57 2 101 0 58 7 105 0 62 7 109 0 63 2 109 0 67 3 189 0 74 7 113 0 77 2 125 0 82 0 65 0 84 2 129 0 86 2 133 0 105 1 241 0 107 7 117 0 198 0 65 0 199 7 121 0 202 7 125 0 240 7 129 1 3 7 133 1 16 7 137 1 29 7 141 1 41 7 145 1 119 7 149 1 128 7 153 1 141 7 157 1 146 7 161 1 152 7 165 1 178 7 169 1 197] 
#[1 7 173 0 1 7 177 0 25 0 189 0 116 7 181 0 132] 
#[1 5 117 0 1 3 241 0 3 3 245 0 25 0 189 0 116 4 13 0 119 7 185 0 132 3 253 1 30 4 1 1 31 4 5 1 32 4 9 1 33 4 13 1 37 4 1 1 38 4 13 1 46] 
#[1 0 189 0 116 7 189 0 132] 
#[1 0 189 0 116 7 193 0 132 7 197 1 147] 
#[1 0 189 0 116 7 201 0 132] 
#[0 1 186 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 190 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 194 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 198 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 202 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 1 206 0 1 1 206 0 3 1 206 0 5 1 206 0 7 1 206 0 34 1 206 0 35 1 206 0 36 1 206 0 37 1 206 0 38 1 206 0 48 1 206 0 52 1 206 0 53 1 206 0 54 1 206 0 57 1 206 0 58 1 206 0 60 1 206 0 61 0 43 0 62 1 206 0 64 1 206 0 65 1 206 0 67 0 43 0 68 1 206 0 70 1 206 0 72 1 206 0 74 1 206 0 76 0 43 0 77 0 43 0 82 1 206 0 84 0 43 0 86 1 206 0 87 1 206 0 88 1 206 0 94 1 206 0 98 1 206 0 99 1 206 0 101 1 206 0 102 1 206 0 103 1 206 0 104 0 43 0 105 1 206 0 106 1 206 0 107 1 206 0 108 1 206 0 109 1 206 0 110 1 206 0 111 1 206 0 116 1 206 0 119 1 206 0 120 1 206 0 121 1 206 0 123 1 206 0 124 1 206 0 127 1 206 1 197 0 43 1 198] 
#[1 1 214 0 1 1 214 0 3 1 214 0 5 1 214 0 7 1 214 0 34 1 214 0 35 1 214 0 36 1 214 0 37 1 214 0 38 1 214 0 48 1 214 0 52 1 214 0 53 1 214 0 54 1 214 0 57 1 214 0 58 1 214 0 60 1 214 0 61 0 47 0 62 1 214 0 64 1 214 0 65 1 214 0 67 0 47 0 68 1 214 0 70 1 214 0 72 1 214 0 74 1 214 0 76 0 47 0 77 0 47 0 82 1 214 0 84 0 47 0 86 1 214 0 87 1 214 0 88 1 214 0 94 1 214 0 98 1 214 0 99 1 214 0 101 1 214 0 102 1 214 0 103 1 214 0 104 0 47 0 105 1 214 0 106 1 214 0 107 1 214 0 108 1 214 0 109 1 214 0 110 1 214 0 111 1 214 0 116 1 214 0 119 1 214 0 120 1 214 0 121 1 214 0 123 1 214 0 124 1 214 0 127 1 214 1 197 0 47 1 198] 
#[1 1 222 0 1 1 222 0 3 1 222 0 5 1 222 0 7 1 222 0 34 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 38 1 222 0 48 1 222 0 52 1 222 0 53 1 222 0 54 1 222 0 57 1 222 0 58 1 222 0 60 1 222 0 61 0 51 0 62 1 222 0 64 1 222 0 65 1 222 0 67 0 51 0 68 1 222 0 70 1 222 0 72 1 222 0 74 1 222 0 76 0 51 0 77 0 51 0 82 1 222 0 84 0 51 0 86 1 222 0 87 1 222 0 88 1 222 0 94 1 222 0 98 1 222 0 99 1 222 0 101 1 222 0 102 1 222 0 103 1 222 0 104 0 51 0 105 1 222 0 106 1 222 0 107 1 222 0 108 1 222 0 109 1 222 0 110 1 222 0 111 1 222 0 116 1 222 0 119 1 222 0 120 1 222 0 121 1 222 0 123 1 222 0 124 1 222 0 127 1 222 1 197 0 51 1 198] 
#[0 1 230 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 7 1 234 0 34 1 234 0 35 1 234 0 36 1 234 0 37 1 234 0 38 1 234 0 48 1 234 0 52 1 234 0 53 1 234 0 54 1 234 0 57 1 234 0 58 1 234 0 60 1 234 0 61 0 55 0 62 1 234 0 64 1 234 0 65 1 234 0 67 0 55 0 68 1 234 0 70 1 234 0 72 1 234 0 74 1 234 0 76 0 55 0 77 0 55 0 82 1 234 0 84 0 55 0 86 1 234 0 87 1 234 0 88 1 234 0 94 1 234 0 98 1 234 0 99 1 234 0 101 1 234 0 102 1 234 0 103 1 234 0 104 0 55 0 105 1 234 0 106 1 234 0 107 1 234 0 108 1 234 0 109 1 234 0 110 1 234 0 111 1 234 0 116 1 234 0 119 1 234 0 120 1 234 0 121 1 234 0 123 1 234 0 124 1 234 0 127 1 234 1 197 0 55 1 198] 
#[1 0 59 0 1 0 59 0 3 0 59 0 5 0 59 0 7 0 59 0 34 0 59 0 35 0 59 0 36 0 59 0 37 0 59 0 38 0 59 0 48 0 59 0 52 0 59 0 53 0 59 0 54 0 59 0 57 0 59 0 58 0 59 0 60 0 59 0 61 0 63 0 62 0 59 0 64 0 59 0 65 0 59 0 67 0 63 0 68 0 59 0 70 0 59 0 72 0 59 0 74 0 59 0 76 0 63 0 77 0 63 0 82 0 59 0 84 0 63 0 86 0 59 0 87 0 59 0 88 0 59 0 94 0 59 0 98 0 59 0 99 0 59 0 101 0 59 0 102 0 59 0 103 0 59 0 104 0 63 0 105 0 59 0 106 0 59 0 107 0 59 0 108 0 59 0 109 0 59 0 110 0 59 0 111 0 59 0 116 0 59 0 119 0 59 0 120 0 59 0 121 0 59 0 123 0 59 0 124 0 59 0 127 0 59 1 197 0 63 1 198] 
#[0 0 0 1 198] 
#[0 1 254 1 198] 
#[0 2 2 1 198] 
#[0 2 6 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 2 97 0 57 2 101 0 58 1 205 0 60 1 209 0 61 2 105 0 62 0 141 0 64 1 213 0 65 2 109 0 67 1 153 0 70 1 217 0 72 2 117 0 74 1 221 0 76 7 205 0 77 2 125 0 82 0 65 0 84 2 129 0 86 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 2 133 0 105 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 7 225 0 189 7 225 0 192 7 225 0 193 7 225 0 194 7 225 0 198 0 65 0 199 7 225 0 202 7 225 0 216 7 225 0 217 7 225 0 218 7 225 0 219 7 225 0 222 7 225 0 223 7 225 0 225 7 225 0 226 7 225 0 227 7 225 0 232 7 225 0 234 7 225 0 235 7 225 0 239 7 225 0 240 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 7 225 1 3 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 7 225 1 16 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 7 225 1 119 7 225 1 128 7 225 1 141 7 225 1 146 7 225 1 152 7 225 1 159 7 225 1 160 7 225 1 178 7 225 1 194 3 29 1 197 2 10 1 198] 
#[0 2 14 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 67 0 1 0 67 0 3 0 67 0 5 0 67 0 7 0 67 0 34 0 67 0 35 0 67 0 36 0 67 0 37 0 67 0 38 0 67 0 48 0 67 0 52 0 67 0 53 0 67 0 54 0 67 0 57 0 67 0 58 0 67 0 60 0 67 0 61 0 67 0 62 0 67 0 64 0 67 0 65 0 67 0 67 2 22 0 68 0 67 0 70 0 67 0 72 0 67 0 74 0 67 0 76 0 67 0 77 0 67 0 82 0 67 0 84 0 67 0 86 0 67 0 87 0 67 0 88 0 67 0 94 0 67 0 98 0 67 0 99 0 67 0 101 0 67 0 102 0 67 0 103 0 67 0 104 0 67 0 105 0 67 0 106 0 67 0 107 0 67 0 108 0 67 0 109 0 67 0 110 0 67 0 111 0 67 0 116 0 67 0 119 0 67 0 120 0 67 0 121 0 67 0 123 0 67 0 124 0 67 0 127 0 67 1 197 0 67 1 198] 
#[0 2 26 1 198] 
#[1 2 105 0 62 7 241 0 77 2 125 0 82 2 129 0 86 2 133 0 105 8 5 1 119 8 5 1 128 8 5 1 146 8 5 1 152 8 5 1 163 8 5 1 164 8 5 1 178 8 5 1 194 2 30 1 198] 
#[0 2 34 0 62 0 77 0 82 0 86 0 105 1 198] 
#[1 0 71 0 62 2 42 0 68 0 71 0 77 0 71 0 82 0 71 0 86 0 71 0 105 0 71 1 198] 
#[0 2 46 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 2 97 0 57 2 101 0 58 1 205 0 60 1 209 0 61 7 105 0 62 0 141 0 64 1 213 0 65 2 109 0 67 8 21 0 68 1 153 0 70 1 217 0 72 2 117 0 74 1 221 0 76 2 121 0 77 2 125 0 82 0 65 0 84 2 129 0 86 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 2 133 0 105 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 8 37 0 189 8 37 0 192 8 37 0 193 8 37 0 194 8 37 0 198 0 65 0 199 8 37 0 202 8 37 0 216 8 37 0 217 8 37 0 218 8 37 0 219 8 37 0 222 8 37 0 223 8 37 0 225 8 37 0 226 8 37 0 227 8 37 0 232 8 37 0 234 8 37 0 235 8 37 0 239 8 37 0 240 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 8 37 1 3 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 8 37 1 16 0 245 1 17 8 37 1 29 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 8 37 1 119 8 37 1 128 8 37 1 141 8 37 1 146 8 29 1 152 8 37 1 160 8 37 1 167 8 37 1 171 8 37 1 172 8 37 1 174 8 37 1 176 8 37 1 177 8 37 1 178 3 29 1 197 2 50 1 198] 
#[0 2 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 58 1 198] 
#[1 2 62 0 4 7 105 0 62 8 49 0 68 7 113 0 77 2 125 0 82 2 129 0 86 2 133 0 105 8 61 1 29 8 61 1 119 8 61 1 128 8 61 1 146 8 61 1 152 8 61 1 164 8 61 1 170 8 61 1 173 8 61 1 175 8 61 1 176 8 61 1 177 8 61 1 178 2 62 1 198] 
#[0 2 66 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 2 70 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 78 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 2 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 86 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[1 2 90 0 1 2 90 0 3 2 90 0 5 2 90 0 7 2 90 0 34 2 90 0 35 2 90 0 36 2 90 0 37 2 90 0 38 2 90 0 48 2 90 0 52 2 90 0 53 2 90 0 54 2 90 0 57 2 90 0 58 2 90 0 60 2 90 0 61 0 75 0 62 2 90 0 64 2 90 0 65 2 90 0 67 0 75 0 68 2 90 0 70 2 90 0 72 2 90 0 74 2 90 0 76 0 75 0 77 0 75 0 82 2 90 0 84 0 75 0 86 2 90 0 87 2 90 0 88 2 90 0 94 2 90 0 98 2 90 0 99 2 90 0 101 2 90 0 102 2 90 0 103 2 90 0 104 0 75 0 105 2 90 0 106 2 90 0 107 2 90 0 108 2 90 0 109 2 90 0 110 2 90 0 111 2 90 0 116 2 90 0 119 2 90 0 120 2 90 0 121 2 90 0 123 2 90 0 124 2 90 0 127 2 90 1 197 0 75 1 198] 
#[1 2 98 0 1 2 98 0 3 2 98 0 5 2 98 0 7 2 98 0 34 2 98 0 35 2 98 0 36 2 98 0 37 2 98 0 38 2 98 0 48 2 98 0 52 2 98 0 53 2 98 0 54 2 98 0 57 2 98 0 58 2 98 0 60 2 98 0 61 0 79 0 62 2 98 0 64 2 98 0 65 2 98 0 67 0 79 0 68 2 98 0 70 2 98 0 72 2 98 0 74 2 98 0 76 0 79 0 77 0 79 0 82 2 98 0 84 0 79 0 86 2 98 0 87 2 98 0 88 2 98 0 94 2 98 0 98 2 98 0 99 2 98 0 101 2 98 0 102 2 98 0 103 2 98 0 104 0 79 0 105 2 98 0 106 2 98 0 107 2 98 0 108 2 98 0 109 2 98 0 110 2 98 0 111 2 98 0 116 2 98 0 119 2 98 0 120 2 98 0 121 2 98 0 123 2 98 0 124 2 98 0 127 2 98 1 197 0 79 1 198] 
#[1 2 106 0 1 2 106 0 3 2 106 0 5 2 106 0 7 2 106 0 34 2 106 0 35 2 106 0 36 2 106 0 37 2 106 0 38 2 106 0 48 2 106 0 52 2 106 0 53 2 106 0 54 2 106 0 57 2 106 0 58 2 106 0 60 2 106 0 61 0 83 0 62 2 106 0 64 2 106 0 65 2 106 0 67 0 83 0 68 2 106 0 70 2 106 0 72 2 106 0 74 2 106 0 76 0 83 0 77 0 83 0 82 2 106 0 84 0 83 0 86 2 106 0 87 2 106 0 88 2 106 0 94 2 106 0 98 2 106 0 99 2 106 0 101 2 106 0 102 2 106 0 103 2 106 0 104 0 83 0 105 2 106 0 106 2 106 0 107 2 106 0 108 2 106 0 109 2 106 0 110 2 106 0 111 2 106 0 116 2 106 0 119 2 106 0 120 2 106 0 121 2 106 0 123 2 106 0 124 2 106 0 127 2 106 1 197 0 83 1 198] 
#[1 2 114 0 1 2 114 0 3 2 114 0 5 2 114 0 7 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 38 2 114 0 48 2 114 0 52 2 114 0 53 2 114 0 54 2 114 0 57 2 114 0 58 2 114 0 60 2 114 0 61 0 87 0 62 2 114 0 64 2 114 0 65 2 114 0 67 2 114 0 70 2 114 0 72 2 114 0 74 2 114 0 76 0 87 0 77 0 87 0 82 2 114 0 84 0 87 0 86 2 114 0 87 2 114 0 88 2 114 0 94 2 114 0 98 2 114 0 99 2 114 0 101 2 114 0 102 2 114 0 103 2 114 0 104 0 87 0 105 2 114 0 106 2 114 0 107 2 114 0 108 2 114 0 109 2 114 0 110 2 114 0 111 2 114 0 116 2 114 0 119 2 114 0 120 2 114 0 121 2 114 0 123 2 114 0 124 2 114 0 127 2 114 1 197 0 87 1 198] 
#[1 6 169 0 1 6 173 0 10 8 73 0 74 0 189 0 116 8 77 0 132 8 81 1 77 6 185 1 120] 
#[1 3 33 0 1 0 82 0 2 8 85 0 3 8 89 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 4 85 0 112 0 189 0 116 3 77 0 119 3 81 0 120 8 93 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 8 97 0 243 4 121 0 244 4 125 0 245 4 129 0 246 3 77 1 46 3 81 1 47 3 85 1 77 8 101 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 8 101 1 105 8 101 1 106 3 105 1 107 3 105 1 109 8 105 1 197] 
#[1 8 109 0 1 8 113 0 4 8 117 0 5 3 45 0 10 8 121 0 87 4 165 0 117 4 217 0 119 4 221 0 120 8 125 0 133 8 125 0 144 8 125 0 145 8 125 0 146 4 217 1 46 4 221 1 47 8 129 1 77 8 133 1 96 8 137 1 97 8 141 1 98 8 141 1 110 8 141 1 112 8 141 1 116 8 141 1 117 8 141 1 118] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 8 173 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 8 169 1 101 8 173 1 102 3 93 1 103 3 97 1 104 8 173 1 105 8 173 1 106 3 105 1 107 3 105 1 109] 
#[1 0 189 0 116 8 177 0 132 8 181 1 78 8 185 1 79] 
#[1 8 189 0 1 3 37 0 3 3 41 0 5 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 8 193 1 88 8 193 1 89 8 193 1 90 8 193 1 91 8 193 1 92 3 125 1 93 3 129 1 94 8 193 1 95 8 193 1 99 8 193 1 100 8 193 1 107 8 193 1 109] 
#[1 8 189 0 1 3 37 0 3 3 41 0 5 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 8 197 1 88 8 197 1 89 8 197 1 90 8 197 1 91 8 197 1 92 3 125 1 93 3 129 1 94 8 197 1 95 8 197 1 99 8 197 1 100 8 197 1 107 8 197 1 109] 
#[1 8 201 0 1 3 45 0 10 8 205 1 77] 
#[0 2 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[1 0 189 0 116 8 209 0 132 8 213 1 108] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 5 2 130 0 6 2 130 0 7 2 130 0 8 2 130 0 10 2 130 0 11 2 130 0 13 2 130 0 14 2 130 0 17 2 130 0 18 2 130 0 19 2 130 0 20 2 134 0 21 2 130 0 22 2 130 0 23 2 130 0 24 2 130 0 25 2 130 0 26 2 130 0 34 2 130 0 36 2 130 0 39 2 130 0 40 2 130 0 41 2 130 0 43 2 130 0 44 2 130 0 45 2 130 0 46 2 130 0 47 2 130 0 49 2 130 0 50 2 130 0 59 2 130 0 78 2 130 0 80 2 130 0 81 2 130 0 90 2 130 0 91 2 130 0 92 2 130 0 93 2 130 0 96 2 130 0 113 2 130 0 114 2 130 0 117 2 130 0 119 2 130 0 120 2 130 0 125 2 130 0 126 2 130 1 198] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 2 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 8 217 0 1] 
#[0 0 0 1 198] 
#[1 2 146 0 2 2 146 0 3 2 146 0 4 2 146 0 5 2 146 0 6 2 146 0 7 2 146 0 8 2 146 0 10 2 146 0 11 2 146 0 13 2 146 0 14 2 146 0 17 2 146 0 18 2 146 0 19 2 146 0 20 2 146 0 22 2 146 0 23 2 146 0 24 2 146 0 25 2 146 0 26 2 146 0 34 2 146 0 36 2 146 0 39 2 146 0 40 2 146 0 41 2 146 0 43 2 146 0 44 0 91 0 45 2 146 0 46 2 146 0 47 2 146 0 49 2 146 0 50 2 146 0 59 2 146 0 78 2 146 0 81 2 146 0 90 2 146 0 91 2 146 0 92 2 146 0 93 2 146 0 96 2 146 0 113 2 146 0 114 2 146 0 117 2 146 0 119 2 146 0 120 2 146 0 125 2 146 0 126 2 146 1 198] 
#[1 2 150 0 2 2 150 0 3 2 150 0 4 2 150 0 5 2 150 0 6 2 150 0 7 2 150 0 8 2 150 0 10 2 150 0 11 2 150 0 13 2 150 0 14 2 150 0 17 2 150 0 18 2 150 0 19 2 150 0 20 2 150 0 22 2 150 0 23 2 150 0 24 2 150 0 25 2 150 0 26 2 150 0 34 2 150 0 36 0 95 0 39 2 150 0 40 2 150 0 41 2 150 0 43 2 150 0 44 2 150 0 45 2 150 0 46 2 150 0 47 2 150 0 49 2 150 0 50 2 150 0 59 2 150 0 78 2 150 0 81 2 150 0 90 2 150 0 91 2 150 0 92 2 150 0 93 2 150 0 96 2 150 0 113 2 150 0 114 2 150 0 117 2 150 0 119 2 150 0 120 2 150 0 125 2 150 0 126 2 150 1 198] 
#[0 2 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[1 2 158 0 2 2 158 0 3 2 158 0 4 0 99 0 5 2 158 0 6 2 158 0 7 2 158 0 8 2 158 0 10 2 158 0 11 2 158 0 13 2 158 0 14 2 158 0 17 2 158 0 18 2 158 0 19 2 158 0 20 2 158 0 22 2 158 0 23 2 158 0 24 2 158 0 25 2 158 0 26 2 158 0 34 2 158 0 36 2 158 0 39 2 158 0 40 2 158 0 41 2 158 0 43 2 158 0 44 2 158 0 45 2 158 0 46 2 158 0 47 2 158 0 49 2 158 0 50 2 158 0 59 2 158 0 78 2 158 0 81 2 158 0 90 2 158 0 91 2 158 0 92 2 158 0 93 2 158 0 96 2 158 0 113 2 158 0 114 2 158 0 117 2 158 0 119 2 158 0 120 2 158 0 125 2 158 0 126 8 229 0 224 2 158 1 198] 
#[0 2 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 2 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[1 1 102 0 2 1 102 0 3 1 102 0 4 1 102 0 5 1 102 0 6 1 102 0 7 1 102 0 8 1 102 0 10 1 102 0 11 1 102 0 13 1 102 0 14 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 22 1 102 0 23 1 102 0 24 1 102 0 25 1 102 0 26 1 102 0 34 1 102 0 36 1 102 0 39 1 102 0 40 1 102 0 41 1 102 0 43 1 102 0 44 1 102 0 45 1 102 0 46 1 102 0 47 1 102 0 49 1 102 0 50 1 102 0 59 1 102 0 78 1 102 0 80 1 102 0 81 1 102 0 90 1 102 0 91 1 102 0 92 1 102 0 93 1 102 0 96 1 102 0 113 1 102 0 114 1 102 0 117 1 102 0 119 1 102 0 120 1 102 0 125 1 102 0 126 8 233 0 224 1 102 1 198] 
#[0 8 237 0 21] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[1 8 241 0 4 8 245 0 117 8 249 1 42 8 253 1 43] 
#[1 9 1 0 51 2 214 0 73] 
#[0 9 5 0 74] 
#[1 5 77 0 3 5 81 0 69 0 189 0 116 9 9 0 132 9 13 1 18 5 93 1 19 5 97 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 9 17 0 185 9 17 0 186 0 245 0 241 9 17 0 249 1 113 0 250 1 117 0 253 9 17 0 254 0 245 1 4 9 17 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 9 21 0 1 9 25 0 25 0 189 0 116 9 29 0 132] 
#[0 2 218 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 222 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 226 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 230 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 234 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 238 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 242 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 246 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 250 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 9 33 0 73 9 37 1 34] 
#[1 9 41 0 7 2 254 0 73] 
#[1 3 45 0 10 9 45 0 58 2 109 0 67 9 49 0 74 2 125 0 82 2 133 0 105 0 189 0 116 8 77 0 132 9 53 1 77 9 57 1 119 9 61 1 128 9 65 1 141] 
#[1 9 69 0 4 0 189 0 116 9 73 0 117 9 85 0 132 9 77 1 35 9 81 1 36 9 85 1 38] 
#[0 9 89 0 51] 
#[0 3 2 0 4 0 73 0 113] 
#[1 9 33 0 73 9 93 1 34] 
#[1 3 6 0 73 9 97 0 113] 
#[0 3 10 0 73] 
#[0 3 14 0 73] 
#[0 9 101 0 7] 
#[0 3 18 0 73 0 113] 
#[0 3 22 0 7] 
#[0 3 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 9 105 0 4 4 141 0 5 9 109 0 112 0 189 0 116 4 165 0 117 4 217 0 119 4 221 0 120 9 113 0 132 9 117 0 133 9 117 0 144 9 117 0 145 9 117 0 146 9 121 0 208 9 125 0 209 9 129 0 212 9 129 0 214 4 217 1 46 4 221 1 47 9 137 1 197] 
#[1 4 29 0 3 4 33 0 5 9 141 0 6 4 85 0 112 4 245 0 113 0 189 0 116 9 113 0 132 9 145 0 139 4 97 0 205 4 97 0 206 4 97 0 207 9 149 0 210 9 153 0 211 9 157 0 213 9 157 0 214 9 161 0 215 8 105 1 197] 
#[1 3 30 0 7 9 165 0 22 3 30 0 113 9 169 0 148] 
#[1 9 173 0 7 9 177 0 113] 
#[0 3 34 0 7 0 113] 
#[1 9 165 0 22 9 181 0 148] 
#[0 3 38 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 3 42 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 3 46 0 7 0 113] 
#[0 3 50 0 7 0 113] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 9 185 0 132 9 189 0 205 9 189 0 206 9 189 0 207] 
#[0 3 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 9 193 0 4 4 141 0 5 4 145 0 25 4 149 0 52 4 153 0 75 4 157 0 95 9 197 0 112 0 189 0 116 4 165 0 117 4 217 0 119 4 221 0 120 9 201 0 132 9 205 0 133 4 177 0 142 4 181 0 143 9 205 0 144 9 205 0 145 9 205 0 146 4 181 0 147 9 121 0 208 9 125 0 209 9 129 0 212 9 129 0 214 4 181 1 0 4 181 1 2 4 181 1 7 4 181 1 11 4 217 1 46 4 221 1 47 4 181 1 121 4 181 1 122 9 209 1 197] 
#[1 0 93 0 1 4 77 0 3 4 81 0 5 9 213 0 6 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 9 217 0 112 4 245 0 113 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 4 89 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 4 249 0 138 9 221 0 139 5 1 0 140 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 5 5 0 185 5 5 0 186 4 97 0 205 4 97 0 206 4 97 0 207 9 149 0 210 9 153 0 211 9 157 0 213 9 157 0 214 9 161 0 215 0 245 0 241 5 5 0 249 1 113 0 250 1 117 0 253 5 5 0 254 0 245 1 4 5 5 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 4 133 1 197] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 9 225 0 132 9 229 0 205 9 229 0 206 9 229 0 207] 
#[1 0 130 0 1 0 103 0 2 0 103 0 4 0 130 0 5 0 103 0 6 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 134 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 107 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 78 0 130 0 81 0 103 0 113 0 130 0 123 0 130 0 124 9 233 0 148 0 130 1 196 0 130 1 197] 
#[1 9 237 0 2 6 153 0 113] 
#[1 3 62 0 2 3 62 0 4 3 62 0 6 9 165 0 22 3 62 0 113 9 241 0 148] 
#[0 3 66 0 2 0 113] 
#[0 3 70 0 2 0 4 0 6 0 113] 
#[0 3 74 0 2] 
#[0 9 245 0 2] 
#[0 3 78 0 2] 
#[1 3 82 0 2 9 249 0 113] 
#[0 3 86 0 2] 
#[0 3 90 0 2 0 113] 
#[1 6 169 0 1 4 29 0 3 4 33 0 5 6 173 0 10 3 94 0 41 6 177 0 74 10 25 0 91 10 25 0 92 10 25 0 93 10 9 0 101 3 94 0 114 0 189 0 116 10 13 0 132 10 21 0 205 10 21 0 206 10 21 0 207 6 181 1 77 10 21 1 113 10 25 1 114 6 185 1 120] 
#[0 3 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 29 0 185 10 29 0 186 0 245 0 241 10 29 0 249 1 113 0 250 1 117 0 253 10 29 0 254 0 245 1 4 10 29 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 10 33 0 133 10 33 0 144 10 33 0 145 10 33 0 146 4 217 1 46 4 221 1 47] 
#[1 4 141 0 5 10 37 0 25 4 165 0 117 4 217 0 119 4 221 0 120 10 41 0 133 10 41 0 144 10 41 0 145 10 41 0 146 4 217 1 46 4 221 1 47] 
#[1 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 10 45 0 133 10 45 0 144 10 45 0 145 10 45 0 146 4 217 1 46 4 221 1 47] 
#[1 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 10 49 0 133 10 49 0 144 10 49 0 145 10 49 0 146 4 217 1 46 4 221 1 47] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 53 0 185 10 53 0 186 0 245 0 241 10 53 0 249 1 113 0 250 1 117 0 253 10 53 0 254 0 245 1 4 10 53 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 3 102 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[1 3 106 0 4 9 165 0 22 3 106 0 113 10 57 0 148] 
#[0 3 110 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[1 10 61 0 4 10 65 0 113] 
#[0 3 114 0 4 0 113] 
#[1 10 69 0 1 10 73 0 114] 
#[0 3 118 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 3 122 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 3 126 0 4 0 113] 
#[0 3 130 0 4 0 113] 
#[0 3 134 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 3 138 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 3 142 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 3 146 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 3 150 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 3 154 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 3 158 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[1 4 141 0 5 10 77 0 75 10 81 0 95 4 165 0 117 4 217 0 119 4 221 0 120 10 85 0 133 10 85 0 144 10 85 0 145 10 85 0 146 4 217 1 46 4 221 1 47] 
#[0 3 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 89 0 185 10 89 0 186 0 245 0 241 10 89 0 249 1 113 0 250 1 117 0 253 10 89 0 254 0 245 1 4 10 89 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 3 166 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 112 0 113 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[1 10 93 0 6 4 245 0 113 10 97 0 139] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 10 101 0 6 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 4 241 0 112 10 105 0 113 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 10 109 0 140 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 113 0 185 10 113 0 186 0 245 0 241 10 113 0 249 1 113 0 250 1 117 0 253 10 113 0 254 0 245 1 4 10 113 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 3 170 0 6 0 113] 
#[0 3 174 0 6 0 113] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 4 93 0 185 4 93 0 186 4 93 0 188 0 245 0 241 4 93 0 249 1 113 0 250 1 117 0 253 4 93 0 254 0 245 1 4 4 93 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 5 57 0 74] 
#[0 0 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 0 198 0 2 0 198 0 4 0 198 0 6 0 198 0 7 0 198 0 8 0 198 0 10 0 198 0 11 0 198 0 13 0 198 0 14 0 198 0 17 0 198 0 19 0 198 0 20 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 34 6 25 0 35 0 198 0 36 6 29 0 37 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 49 0 198 0 50 6 33 0 51 0 198 0 78 0 198 0 81 0 198 0 90 0 198 0 113 0 198 0 114 0 198 0 125 0 198 0 126 0 198 1 198] 
#[0 3 178 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[1 10 117 0 10 6 177 0 74] 
#[0 3 182 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 3 186 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 3 190 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 3 194 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 3 198 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 4 113 0 242 4 117 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 10 121 0 1 10 125 0 25 0 189 0 116 10 129 0 132] 
#[0 0 134 0 18] 
#[0 10 133 0 18] 
#[1 6 169 0 1 3 45 0 10 6 181 1 77 6 185 1 120] 
#[0 3 202 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[1 10 137 0 4 4 141 0 5 10 141 0 7 4 145 0 25 4 149 0 52 4 153 0 75 4 157 0 95 10 145 0 96 4 165 0 117 4 217 0 119 4 221 0 120 10 149 0 133 10 149 0 144 10 149 0 145 10 149 0 146 10 165 1 0 10 165 1 2 10 165 1 7 10 165 1 11 10 157 1 20 10 161 1 21 10 165 1 22 4 217 1 46 4 221 1 47 10 165 1 121 10 165 1 122 10 169 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 5 13 0 52 0 137 0 57 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 10 173 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 10 173 0 167 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 137 1 197] 
#[1 5 77 0 3 5 81 0 69 10 177 1 18 5 93 1 19 5 97 1 197] 
#[0 3 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 10 181 0 3] 
#[1 10 185 0 69 10 189 0 80 10 193 1 132 10 197 1 134] 
#[0 3 210 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 10 201 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 10 205 0 1 0 189 0 116 10 209 0 132] 
#[0 10 213 0 1] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 217 0 185 10 217 0 186 0 245 0 241 10 217 0 249 1 113 0 250 1 117 0 253 10 217 0 254 0 245 1 4 10 217 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 10 221 0 100] 
#[1 5 145 0 5 5 149 0 21] 
#[1 5 141 0 1 0 162 0 2 0 162 0 3 0 162 0 4 5 185 0 5 0 162 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 19 0 162 0 20 5 189 0 21 0 162 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 39 0 162 0 40 0 162 0 41 0 162 0 43 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 49 0 162 0 50 0 162 0 51 0 162 0 78 0 162 0 81 0 162 0 90 0 162 0 113 0 162 0 114 0 205 0 123 0 14 0 124 0 162 0 125 0 162 0 126 5 197 0 149 0 241 0 150 10 225 0 161 0 162 1 196 5 157 1 197 0 162 1 198] 
#[0 3 214 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 196 1 198] 
#[0 6 177 0 74] 
#[1 0 93 0 1 10 229 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 10 233 0 112 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 10 237 0 162 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 241 0 185 10 241 0 186 0 245 0 241 10 241 0 249 1 113 0 250 1 117 0 253 10 241 0 254 0 245 1 4 10 241 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 245 0 185 10 245 0 186 10 245 0 188 0 245 0 241 10 245 0 249 1 113 0 250 1 117 0 253 10 245 0 254 0 245 1 4 10 245 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 10 249 0 117] 
#[0 3 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 10 253 0 10 11 1 1 81] 
#[0 3 222 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 3 226 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 5 0 185 11 5 0 186 0 245 0 241 11 5 0 249 1 113 0 250 1 117 0 253 11 5 0 254 0 245 1 4 11 5 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 3 230 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 11 9 0 13] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 13 0 185 11 13 0 186 11 13 0 188 0 245 0 241 11 13 0 249 1 113 0 250 1 117 0 253 11 13 0 254 0 245 1 4 11 13 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 17 0 185 11 17 0 186 11 17 0 188 0 245 0 241 11 17 0 249 1 113 0 250 1 117 0 253 11 17 0 254 0 245 1 4 11 17 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 11 21 0 117] 
#[1 5 141 0 1 11 25 0 5 11 29 0 117 0 205 0 123 0 14 0 124 11 33 0 149 0 241 0 150 11 37 0 161 11 41 0 166 5 157 1 197] 
#[0 3 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 3 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 5 141 0 1 3 242 0 2 3 242 0 3 3 242 0 4 11 45 0 5 3 242 0 6 3 242 0 7 3 242 0 8 3 242 0 9 3 242 0 10 3 242 0 11 3 242 0 12 3 242 0 13 3 242 0 14 3 242 0 15 3 242 0 16 3 242 0 17 3 242 0 19 3 242 0 20 11 49 0 21 3 242 0 22 3 242 0 23 3 242 0 24 3 242 0 25 3 242 0 26 3 242 0 27 3 242 0 28 3 242 0 29 3 242 0 30 3 242 0 31 3 242 0 32 3 242 0 33 3 242 0 34 3 242 0 35 3 242 0 36 3 242 0 37 3 242 0 39 3 242 0 40 3 242 0 41 3 242 0 42 3 242 0 43 3 242 0 44 3 242 0 45 3 242 0 46 3 242 0 47 3 242 0 49 3 242 0 50 3 242 0 51 3 242 0 78 3 242 0 81 3 242 0 90 3 242 0 113 3 242 0 114 0 205 0 123 0 14 0 124 3 242 0 125 3 242 0 126 11 53 0 149 0 241 0 150 11 57 0 161 11 61 0 165 3 242 1 196 5 157 1 197 3 242 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 65 0 185 11 65 0 186 11 65 0 188 0 245 0 241 11 65 0 249 1 113 0 250 1 117 0 253 11 65 0 254 0 245 1 4 11 65 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 11 69 0 117] 
#[0 3 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 3 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 5 141 0 1 3 254 0 2 3 254 0 3 3 254 0 4 11 45 0 5 3 254 0 6 3 254 0 7 3 254 0 8 3 254 0 9 3 254 0 10 3 254 0 11 3 254 0 12 3 254 0 13 3 254 0 14 3 254 0 15 3 254 0 16 3 254 0 17 3 254 0 19 3 254 0 20 11 49 0 21 3 254 0 22 3 254 0 23 3 254 0 24 3 254 0 25 3 254 0 26 3 254 0 27 3 254 0 28 3 254 0 29 3 254 0 30 3 254 0 31 3 254 0 32 3 254 0 33 3 254 0 34 3 254 0 35 3 254 0 36 3 254 0 37 3 254 0 39 3 254 0 40 3 254 0 41 3 254 0 42 3 254 0 43 3 254 0 44 3 254 0 45 3 254 0 46 3 254 0 47 3 254 0 49 3 254 0 50 3 254 0 51 3 254 0 78 3 254 0 81 3 254 0 90 3 254 0 113 3 254 0 114 0 205 0 123 0 14 0 124 3 254 0 125 3 254 0 126 11 53 0 149 0 241 0 150 11 57 0 161 11 61 0 165 3 254 1 196 5 157 1 197 3 254 1 198] 
#[1 5 141 0 1 4 2 0 2 4 2 0 3 4 2 0 4 11 45 0 5 4 2 0 6 4 2 0 7 4 2 0 8 4 2 0 9 4 2 0 10 4 2 0 11 4 2 0 12 4 2 0 13 4 2 0 14 4 2 0 15 4 2 0 16 4 2 0 17 4 2 0 19 4 2 0 20 11 49 0 21 4 2 0 22 4 2 0 23 4 2 0 24 4 2 0 25 4 2 0 26 4 2 0 27 4 2 0 28 4 2 0 29 4 2 0 30 4 2 0 31 4 2 0 32 4 2 0 33 4 2 0 34 4 2 0 35 4 2 0 36 4 2 0 37 4 2 0 39 4 2 0 40 4 2 0 41 4 2 0 42 4 2 0 43 4 2 0 44 4 2 0 45 4 2 0 46 4 2 0 47 4 2 0 49 4 2 0 50 4 2 0 51 4 2 0 78 4 2 0 81 4 2 0 90 4 2 0 113 4 2 0 114 0 205 0 123 0 14 0 124 4 2 0 125 4 2 0 126 11 53 0 149 0 241 0 150 11 57 0 161 11 61 0 165 4 2 1 196 5 157 1 197 4 2 1 198] 
#[0 4 6 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 10 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 14 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 18 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 22 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 26 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 30 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 34 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 38 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 42 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 46 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 50 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 54 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 4 58 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 11 73 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 77 0 185 11 77 0 186 0 245 0 241 11 77 0 249 1 113 0 250 1 117 0 253 11 77 0 254 0 245 1 4 11 77 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 4 62 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 11 81 0 170 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[0 4 66 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 70 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 4 74 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 11 85 0 170 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 11 89 0 170 11 89 0 171 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 11 93 0 170 11 93 0 171 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 11 97 0 173 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 11 101 0 173 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 11 105 0 173 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 11 109 0 174 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 11 113 0 174 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 11 117 0 174 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 11 121 0 174 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 11 125 0 174 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 11 129 0 174 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 11 133 0 175 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 11 137 0 175 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 11 141 0 175 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 11 145 0 175 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 11 149 0 176 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 11 153 0 177 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 11 157 0 178 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 11 161 0 179 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 11 165 0 179 11 169 0 180 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 11 173 0 179 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 177 0 185 11 177 0 186 0 245 0 241 11 177 0 249 1 113 0 250 1 117 0 253 11 177 0 254 0 245 1 4 11 177 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 181 0 185 11 181 0 186 0 245 0 241 11 181 0 249 1 113 0 250 1 117 0 253 11 181 0 254 0 245 1 4 11 181 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 11 185 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 11 197 0 185 11 197 0 186 0 245 0 241 11 197 0 249 1 113 0 250 11 193 0 251 11 197 0 252 1 117 0 253 11 197 0 254 0 245 1 4 11 197 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 4 78 0 3 4 78 0 127 4 78 0 129 11 201 1 67 11 205 1 68] 
#[1 11 209 0 128 11 213 1 54 11 213 1 55 11 213 1 56 11 225 1 57 11 229 1 58] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 11 233 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 11 237 0 132 3 77 1 46 3 81 1 47 3 85 1 77 8 181 1 78 8 185 1 79 11 241 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 11 241 1 105 11 241 1 106 3 105 1 107 3 105 1 109] 
#[1 6 169 0 1 3 45 0 10 0 189 0 116 11 245 0 132 6 181 1 77 11 249 1 120] 
#[0 11 253 0 1] 
#[0 4 82 0 18] 
#[1 0 111 0 1 4 86 0 3 4 86 0 4 0 111 0 5 0 111 0 7 3 98 0 8 3 98 0 9 3 98 0 10 3 98 0 11 3 98 0 12 3 98 0 13 3 98 0 14 3 98 0 15 3 98 0 16 3 98 0 17 3 98 0 19 3 98 0 20 3 98 0 21 3 98 0 22 3 98 0 23 3 98 0 24 3 98 0 25 3 98 0 26 3 98 0 27 3 98 0 28 3 98 0 29 3 98 0 30 3 98 0 31 3 98 0 32 3 98 0 33 0 111 0 34 0 111 0 35 0 111 0 36 0 111 0 37 4 86 0 38 3 98 0 39 3 98 0 40 3 98 0 41 3 98 0 42 3 98 0 43 3 98 0 44 3 98 0 45 3 98 0 46 3 98 0 47 4 86 0 48 3 98 0 49 3 98 0 50 3 98 0 51 4 86 0 52 4 86 0 53 4 86 0 54 4 86 0 55 4 86 0 57 4 86 0 58 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 63 4 86 0 64 4 86 0 65 4 86 0 66 4 86 0 67 4 86 0 68 4 86 0 70 4 86 0 72 4 86 0 74 4 86 0 76 4 86 0 77 3 98 0 78 3 98 0 81 4 86 0 82 4 86 0 84 4 86 0 86 4 86 0 87 4 86 0 88 4 86 0 94 4 86 0 98 4 86 0 99 4 86 0 101 4 86 0 102 4 86 0 103 4 86 0 104 4 86 0 105 4 86 0 106 4 86 0 107 4 86 0 108 4 86 0 109 4 86 0 110 4 86 0 111 3 98 0 113 4 86 0 116 4 86 0 119 4 86 0 120 4 86 0 121 0 111 0 123 0 111 0 124 4 86 0 127 3 98 1 196 0 111 1 197 4 86 1 198] 
#[1 0 6 0 1 0 6 0 3 12 1 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 7 25 0 196 0 57 0 197 7 25 0 198 0 65 0 199 0 6 1 197] 
#[1 12 5 0 7 0 189 0 116 12 9 0 132] 
#[1 12 13 0 7 0 189 0 116 12 17 0 132] 
#[0 4 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 21 0 109] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 12 25 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 12 45 0 58 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 12 45 0 84 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 12 29 0 107 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 12 33 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 12 33 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 37 0 185 12 37 0 186 12 37 0 188 12 41 0 198 12 45 0 199 12 49 0 220 0 245 0 241 12 37 0 249 1 113 0 250 1 117 0 253 12 37 0 254 0 245 1 4 12 37 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 12 53 0 1] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 57 0 185 12 57 0 186 12 57 0 188 0 245 0 241 12 57 0 249 1 113 0 250 1 117 0 253 12 57 0 254 0 245 1 4 12 57 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 12 61 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 65 0 185 12 65 0 186 12 65 0 188 0 245 0 241 12 65 0 249 1 113 0 250 1 117 0 253 12 65 0 254 0 245 1 4 12 65 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 69 0 185 12 69 0 186 12 69 0 188 0 245 0 241 12 69 0 249 1 113 0 250 1 117 0 253 12 69 0 254 0 245 1 4 12 69 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 12 73 0 7 6 153 0 113] 
#[1 0 6 0 1 0 6 0 3 12 77 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 6 193 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 0 6 1 197] 
#[1 12 81 0 56 12 85 0 71 12 89 0 236 12 93 0 237] 
#[1 4 94 0 7 9 165 0 22 4 94 0 90 4 94 0 113 12 97 0 148] 
#[1 12 101 0 7 12 105 0 113] 
#[0 4 98 0 7 0 113] 
#[1 9 165 0 22 12 109 0 148] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 12 113 0 132 12 117 0 205 12 117 0 206 12 117 0 207 12 121 1 124 12 125 1 125] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 129 0 185 12 129 0 186 12 129 0 188 0 245 0 241 12 129 0 249 1 113 0 250 1 117 0 253 12 129 0 254 0 245 1 4 12 129 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 133 0 185 12 133 0 186 12 133 0 188 0 245 0 241 12 133 0 249 1 113 0 250 1 117 0 253 12 133 0 254 0 245 1 4 12 133 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 12 141 0 189 12 141 0 192 12 141 0 193 12 141 0 194 12 141 0 202 12 141 0 216 12 141 0 217 12 141 0 218 12 141 0 219 12 141 0 222 12 141 0 223 12 141 0 225 12 141 0 226 12 141 0 227 12 141 0 232 12 141 0 233 12 141 0 234 12 141 0 235 12 141 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 4 102 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 5 77 0 3 5 81 0 69 12 145 1 18 5 93 1 19 5 97 1 197] 
#[1 0 115 0 1 4 110 0 3 4 110 0 4 0 115 0 5 0 115 0 7 3 206 0 8 3 206 0 9 3 206 0 10 3 206 0 11 3 206 0 12 3 206 0 13 3 206 0 14 3 206 0 15 3 206 0 16 3 206 0 17 3 206 0 19 3 206 0 20 3 206 0 21 3 206 0 22 3 206 0 23 3 206 0 24 3 206 0 25 3 206 0 26 3 206 0 27 3 206 0 28 3 206 0 29 3 206 0 30 3 206 0 31 3 206 0 32 3 206 0 33 0 115 0 34 0 115 0 35 0 115 0 36 0 115 0 37 4 110 0 38 3 206 0 39 3 206 0 40 3 206 0 41 3 206 0 42 3 206 0 43 3 206 0 44 3 206 0 45 3 206 0 46 3 206 0 47 4 110 0 48 3 206 0 49 3 206 0 50 3 206 0 51 4 110 0 52 4 110 0 53 4 110 0 54 4 110 0 57 4 110 0 58 4 110 0 60 4 110 0 61 4 110 0 62 4 110 0 64 4 110 0 65 4 110 0 67 4 110 0 68 4 110 0 70 4 110 0 72 4 110 0 74 4 110 0 76 4 110 0 77 3 206 0 78 3 206 0 81 4 110 0 82 4 110 0 84 4 110 0 86 4 110 0 87 4 110 0 88 4 110 0 94 4 110 0 98 4 110 0 99 4 110 0 101 4 110 0 102 4 110 0 103 4 110 0 104 4 110 0 105 4 110 0 106 4 110 0 107 4 110 0 108 4 110 0 109 4 110 0 110 4 110 0 111 3 206 0 113 4 110 0 116 4 110 0 119 4 110 0 120 4 110 0 121 0 115 0 123 0 115 0 124 4 110 0 127 3 206 1 196 0 115 1 197 4 110 1 198] 
#[1 0 189 0 116 12 149 0 132] 
#[1 0 189 0 116 12 153 0 132] 
#[1 7 37 0 67 0 189 0 116 12 157 0 132 12 161 1 180 12 165 1 181] 
#[1 0 189 0 116 12 169 0 132] 
#[1 0 189 0 116 12 157 0 132 12 173 1 180 12 165 1 181] 
#[0 12 177 0 119 1 46] 
#[1 0 189 0 116 7 193 0 132 12 181 1 147] 
#[1 0 189 0 116 12 157 0 132 12 185 1 180 12 165 1 181] 
#[0 4 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 189 0 3] 
#[1 0 189 0 116 12 193 0 132] 
#[1 9 33 0 73 12 197 1 34] 
#[1 7 41 0 57 7 45 0 58 2 109 0 67 7 49 0 74 7 53 0 84 7 61 0 86 7 65 0 107 7 85 1 141 7 73 1 179 7 77 1 182 7 81 1 183 7 85 1 189 7 89 1 190] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 12 201 0 57 0 141 0 64 1 153 0 70 12 205 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 12 209 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 213 0 185 12 213 0 186 12 217 0 240 0 245 0 241 12 213 0 249 1 113 0 250 1 117 0 253 12 213 0 254 12 221 1 3 0 245 1 4 12 213 1 6 0 245 1 9 0 245 1 13 1 33 1 15 12 225 1 16 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 12 229 1 182 12 233 1 183 3 29 1 197] 
#[1 3 241 0 3 3 245 0 25 0 189 0 116 4 13 0 119 12 237 0 132 3 253 1 30 4 1 1 31 4 5 1 32 4 9 1 33 4 13 1 37 4 1 1 38 4 13 1 46] 
#[0 4 138 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 142 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 146 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 150 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 154 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 158 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 12 241 0 7 9 33 0 73 12 245 1 34] 
#[1 4 162 0 1 4 162 0 3 4 162 0 5 4 162 0 7 4 162 0 34 4 162 0 35 4 162 0 36 4 162 0 37 4 162 0 38 4 162 0 48 4 162 0 52 4 162 0 53 4 162 0 54 4 162 0 57 4 162 0 58 4 162 0 60 4 162 0 61 0 119 0 62 4 162 0 64 4 162 0 65 4 162 0 67 0 119 0 68 4 162 0 70 4 162 0 72 4 162 0 74 4 162 0 76 0 119 0 77 0 119 0 82 4 162 0 84 0 119 0 86 4 162 0 87 4 162 0 88 4 162 0 94 4 162 0 98 4 162 0 99 4 162 0 101 4 162 0 102 4 162 0 103 4 162 0 104 0 119 0 105 4 162 0 106 4 162 0 107 4 162 0 108 4 162 0 109 4 162 0 110 4 162 0 111 4 162 0 116 4 162 0 119 4 162 0 120 4 162 0 121 4 162 0 123 4 162 0 124 4 162 0 127 4 162 1 197 0 119 1 198] 
#[1 4 170 0 1 4 170 0 3 4 170 0 5 4 170 0 7 4 170 0 34 4 170 0 35 4 170 0 36 4 170 0 37 4 170 0 38 4 170 0 48 4 170 0 52 4 170 0 53 4 170 0 54 4 170 0 57 4 170 0 58 4 170 0 60 4 170 0 61 0 123 0 62 4 170 0 64 4 170 0 65 4 170 0 67 0 123 0 68 4 170 0 70 4 170 0 72 4 170 0 74 4 170 0 76 0 123 0 77 0 123 0 82 4 170 0 84 0 123 0 86 4 170 0 87 4 170 0 88 4 170 0 94 4 170 0 98 4 170 0 99 4 170 0 101 4 170 0 102 4 170 0 103 4 170 0 104 0 123 0 105 4 170 0 106 4 170 0 107 4 170 0 108 4 170 0 109 4 170 0 110 4 170 0 111 4 170 0 116 4 170 0 119 4 170 0 120 4 170 0 121 4 170 0 123 4 170 0 124 4 170 0 127 4 170 1 197 0 123 1 198] 
#[0 4 178 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 182 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 186 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[1 4 190 0 1 4 190 0 3 4 190 0 5 4 190 0 7 4 190 0 34 4 190 0 35 4 190 0 36 4 190 0 37 4 190 0 38 4 190 0 48 4 190 0 52 4 190 0 53 4 190 0 54 4 190 0 57 4 190 0 58 4 190 0 60 4 190 0 61 0 127 0 62 4 190 0 64 4 190 0 65 4 190 0 67 0 127 0 68 4 190 0 70 4 190 0 72 4 190 0 74 4 190 0 76 0 127 0 77 0 127 0 82 4 190 0 84 0 127 0 86 4 190 0 87 4 190 0 88 4 190 0 94 4 190 0 98 4 190 0 99 4 190 0 101 4 190 0 102 4 190 0 103 4 190 0 104 0 127 0 105 4 190 0 106 4 190 0 107 4 190 0 108 4 190 0 109 4 190 0 110 4 190 0 111 4 190 0 116 4 190 0 119 4 190 0 120 4 190 0 121 4 190 0 123 4 190 0 124 4 190 0 127 4 190 1 197 0 127 1 198] 
#[1 3 45 0 10 9 49 0 74 0 189 0 116 8 77 0 132 9 53 1 77] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 12 249 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 12 253 0 1 0 189 0 116 13 1 0 132] 
#[0 13 5 0 1] 
#[1 13 9 0 22 3 2 0 73 3 2 0 113] 
#[1 3 37 0 3 3 45 0 10 13 13 0 69 13 17 1 77 13 21 1 95 13 25 1 129] 
#[0 4 198 0 3 0 21] 
#[1 13 29 0 3 13 33 0 21] 
#[1 3 45 0 10 13 37 0 22 13 41 1 77] 
#[1 5 117 0 1 0 189 0 116 13 45 0 132] 
#[0 1 214 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 222 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 234 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 1 242 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 202 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 18 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 114 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 189 0 116 13 45 0 132] 
#[0 1 218 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 1 226 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 1 238 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 1 250 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 4 206 0 62 0 77 0 82 0 86 0 105 1 198] 
#[0 2 38 0 62 0 77 0 82 0 86 0 105 1 198] 
#[0 2 110 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 2 118 0 62 0 77 0 82 0 86 0 105 1 198] 
#[1 3 169 0 3 7 97 0 22 7 101 0 25 3 181 0 57 2 101 0 58 7 105 0 62 13 49 0 63 2 109 0 67 3 189 0 74 0 41 0 77 2 125 0 82 0 65 0 84 2 129 0 86 2 133 0 105 1 241 0 107 7 117 0 198 0 65 0 199 7 121 0 202 7 125 0 240 7 129 1 3 7 133 1 16 7 137 1 29 7 141 1 41 13 53 1 119 13 57 1 128 7 153 1 141 7 157 1 146 13 61 1 178 7 169 1 197] 
#[0 1 206 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 0 59 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 22 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 210 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 90 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 2 98 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 3 169 0 3 7 97 0 22 7 101 0 25 7 105 0 62 13 65 0 63 7 241 0 77 2 125 0 82 2 133 0 105 7 141 1 41 13 69 1 119 13 73 1 128 7 161 1 152 13 77 1 178] 
#[0 1 210 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 2 42 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 4 214 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 2 94 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 2 102 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[1 13 81 0 1 3 45 0 10 0 189 0 116 13 85 0 132 13 89 1 77 13 93 1 112 13 97 1 120] 
#[1 3 45 0 10 13 101 1 77] 
#[1 11 253 0 1 5 77 0 3 5 81 0 69 13 105 1 18 5 93 1 19 5 97 1 197] 
#[1 8 109 0 1 13 109 0 4 8 117 0 5 3 45 0 10 8 121 0 87 9 109 0 112 0 189 0 116 4 165 0 117 4 217 0 119 4 221 0 120 9 113 0 132 13 113 0 133 13 113 0 144 13 113 0 145 13 113 0 146 9 121 0 208 9 125 0 209 9 129 0 212 9 129 0 214 4 217 1 46 4 221 1 47 8 129 1 77 8 133 1 96 8 137 1 97 8 141 1 98 8 141 1 110 8 141 1 112 8 141 1 116 8 141 1 117 8 141 1 118 9 137 1 197] 
#[1 3 33 0 1 8 85 0 3 8 89 0 5 9 141 0 6 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 4 85 0 112 4 245 0 113 0 189 0 116 3 77 0 119 3 81 0 120 8 93 0 132 9 145 0 139 4 97 0 205 4 97 0 206 4 97 0 207 9 149 0 210 9 153 0 211 9 157 0 213 9 157 0 214 9 161 0 215 3 77 1 46 3 81 1 47 3 85 1 77 8 173 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 8 169 1 101 8 173 1 102 3 93 1 103 3 97 1 104 8 173 1 105 8 173 1 106 3 105 1 107 3 105 1 109 8 105 1 197] 
#[1 0 131 0 2 0 131 0 4 2 130 0 5 0 131 0 6 2 130 0 7 2 130 0 10 2 134 0 21 9 165 0 22 2 130 0 39 2 130 0 45 0 131 0 113 9 233 0 148] 
#[0 13 117 0 2] 
#[0 13 121 0 2] 
#[1 4 29 0 3 4 33 0 5 3 94 0 41 10 25 0 91 10 25 0 92 10 25 0 93 10 9 0 101 3 94 0 114 0 189 0 116 10 13 0 132 10 21 0 205 10 21 0 206 10 21 0 207 10 21 1 113 10 25 1 114] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 13 125 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 4 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 91 0 92 0 93 0 94 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 197 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 13 129 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 29 0 185 10 29 0 186 0 245 0 241 10 29 0 249 1 113 0 250 1 117 0 253 10 29 0 254 0 245 1 4 10 29 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 13 133 0 1 3 45 0 10 13 137 1 77] 
#[1 8 109 0 1 4 222 0 4 4 222 0 7 3 45 0 10 13 141 0 41 4 222 0 113 13 145 0 114 8 129 1 77 13 149 1 111 13 153 1 112] 
#[0 13 157 0 1] 
#[0 13 161 0 4] 
#[1 4 226 0 4 13 165 0 7 13 169 0 113] 
#[0 4 230 0 4 0 7 0 113] 
#[0 4 234 0 4 0 7 0 113] 
#[0 4 238 0 4 0 7 0 113] 
#[0 4 242 0 4 0 7 0 113] 
#[0 4 246 0 4 0 7 0 113] 
#[0 4 250 0 4 0 7 0 113] 
#[0 4 254 0 6 0 113] 
#[1 13 173 0 6 13 177 0 113] 
#[0 5 2 0 6 0 113] 
#[1 5 6 0 13 13 181 0 69 5 6 0 113 13 185 1 80] 
#[1 13 189 0 13 13 193 0 113] 
#[0 5 10 0 13 0 113] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 8 101 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 8 101 1 105 8 101 1 106 3 105 1 107 3 105 1 109] 
#[1 5 14 0 2 5 14 0 3 5 14 0 4 0 135 0 5 5 14 0 6 5 14 0 7 5 14 0 8 5 14 0 10 5 14 0 11 5 14 0 13 5 14 0 14 5 14 0 17 5 14 0 18 5 14 0 19 5 14 0 20 5 14 0 22 5 14 0 23 5 14 0 24 5 14 0 25 5 14 0 26 5 14 0 34 5 14 0 36 5 14 0 39 5 14 0 40 5 14 0 41 5 14 0 43 5 14 0 44 5 14 0 45 5 14 0 46 5 14 0 47 5 14 0 49 5 14 0 50 5 14 0 59 5 14 0 78 5 14 0 81 5 14 0 90 5 14 0 91 5 14 0 92 5 14 0 93 5 14 0 96 5 14 0 113 5 14 0 114 5 14 0 117 5 14 0 119 5 14 0 120 5 14 0 125 5 14 0 126 8 229 0 224 5 14 1 198] 
#[1 5 18 0 2 5 18 0 3 5 18 0 4 0 139 0 5 5 18 0 6 5 18 0 7 5 18 0 8 5 18 0 10 5 18 0 11 5 18 0 13 5 18 0 14 5 18 0 17 5 18 0 18 5 18 0 19 5 18 0 20 5 18 0 22 5 18 0 23 5 18 0 24 5 18 0 25 5 18 0 26 5 18 0 34 5 18 0 36 5 18 0 39 5 18 0 40 5 18 0 41 5 18 0 43 5 18 0 44 5 18 0 45 5 18 0 46 5 18 0 47 5 18 0 49 5 18 0 50 5 18 0 59 5 18 0 78 5 18 0 81 5 18 0 90 5 18 0 91 5 18 0 92 5 18 0 93 5 18 0 96 5 18 0 113 5 18 0 114 5 18 0 117 5 18 0 119 5 18 0 120 5 18 0 125 5 18 0 126 8 229 0 224 5 18 1 198] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 13 197 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 13 201 0 1] 
#[0 5 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[1 5 26 0 2 5 26 0 3 5 26 0 4 5 26 0 5 5 26 0 6 5 26 0 7 5 26 0 8 5 26 0 10 5 26 0 11 5 26 0 13 5 26 0 14 5 26 0 17 5 26 0 18 5 26 0 19 5 26 0 20 13 205 0 21 5 26 0 22 5 26 0 23 5 26 0 24 5 26 0 25 5 26 0 26 5 26 0 34 5 26 0 36 5 26 0 39 5 26 0 40 5 26 0 41 5 26 0 43 5 26 0 44 5 26 0 45 5 26 0 46 5 26 0 47 5 26 0 49 5 26 0 50 5 26 0 59 5 26 0 78 5 26 0 81 5 26 0 90 5 26 0 91 5 26 0 92 5 26 0 93 5 26 0 96 5 26 0 113 5 26 0 114 5 26 0 117 5 26 0 119 5 26 0 120 5 26 0 125 5 26 0 126 5 26 1 198] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 13 209 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 8 189 0 1 3 37 0 3 3 41 0 5 3 49 0 79 3 53 0 83 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 13 213 1 86 13 213 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 13 213 1 104 3 105 1 107 3 105 1 109] 
#[1 8 189 0 1 3 37 0 3 3 41 0 5 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 13 217 1 88 13 217 1 89 13 217 1 90 13 217 1 91 13 217 1 92 3 125 1 93 3 129 1 94 13 217 1 95 13 217 1 99 13 217 1 100 13 217 1 107 13 217 1 109] 
#[0 13 221 0 5] 
#[1 5 30 0 2 5 30 0 3 5 30 0 4 5 30 0 5 5 30 0 6 5 30 0 7 5 30 0 8 0 143 0 10 5 30 0 11 5 30 0 13 5 30 0 14 5 30 0 17 5 30 0 18 5 30 0 19 5 30 0 20 5 30 0 22 5 30 0 23 5 30 0 24 5 30 0 25 5 30 0 26 5 30 0 34 5 30 0 36 5 30 0 39 5 30 0 40 5 30 0 41 5 30 0 43 5 30 0 44 5 30 0 45 5 30 0 46 5 30 0 47 5 30 0 49 5 30 0 50 5 30 0 59 5 30 0 78 5 30 0 80 5 30 0 81 5 30 0 90 5 30 0 91 5 30 0 92 5 30 0 93 5 30 0 96 5 30 0 113 5 30 0 114 5 30 0 117 5 30 0 119 5 30 0 120 5 30 0 125 5 30 0 126 13 225 1 81 5 30 1 198] 
#[1 0 189 0 116 13 229 0 132] 
#[0 5 34 0 7 0 73] 
#[1 5 38 0 4 13 233 0 51 5 38 0 113] 
#[1 13 237 0 4 13 241 0 113] 
#[0 5 42 0 4 0 113] 
#[0 13 245 0 117] 
#[1 13 249 0 1 13 253 0 25 0 189 0 116 14 1 0 132] 
#[1 5 77 0 3 5 81 0 69 14 5 1 18 5 93 1 19 5 97 1 197] 
#[0 4 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 14 9 0 7] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 14 13 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 14 17 0 1 0 189 0 116 14 21 0 132] 
#[0 14 25 0 1] 
#[0 14 29 0 119 1 37 1 46] 
#[0 14 33 0 7] 
#[0 5 46 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 7 37 0 67] 
#[1 13 81 0 1 3 45 0 10 0 189 0 116 14 37 0 132 13 89 1 77 13 93 1 112 14 41 1 120] 
#[1 5 77 0 3 5 81 0 69 13 105 1 18 5 93 1 19 5 97 1 197] 
#[0 5 50 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 5 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 5 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 5 62 0 73] 
#[0 14 45 0 51] 
#[1 14 49 0 4 14 53 0 113] 
#[0 5 66 0 4 0 113] 
#[0 5 70 0 4 0 113] 
#[1 0 189 0 116 14 57 0 132 14 57 1 38] 
#[0 14 61 0 7] 
#[1 3 241 0 3 3 245 0 25 14 65 1 32 14 69 1 33] 
#[0 5 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 5 78 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 0 189 0 116 14 73 0 132] 
#[1 3 58 0 2 3 58 0 4 3 58 0 6 9 165 0 22 3 58 0 113 9 233 0 148] 
#[0 14 77 0 114] 
#[0 14 81 0 4] 
#[1 14 85 0 4 14 89 0 113] 
#[0 5 82 0 4 0 113] 
#[0 5 86 0 4 0 113] 
#[1 14 97 0 91 14 97 0 92 14 97 0 93 0 189 0 116 14 93 0 132 14 97 1 114] 
#[0 5 90 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 4 29 0 3 4 33 0 5 14 101 0 6 4 85 0 112 10 105 0 113 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 14 105 0 213 14 105 0 214 14 109 0 215 8 105 1 197] 
#[1 14 113 0 6 14 117 0 113] 
#[0 5 94 0 6 0 113] 
#[0 5 98 0 6 0 113] 
#[0 14 121 0 6] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 14 125 0 185 14 125 0 186 0 245 0 241 14 125 0 249 1 113 0 250 1 117 0 253 14 125 0 254 0 245 1 4 14 125 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 5 102 0 7 0 113] 
#[0 5 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 4 37 0 132 14 129 0 201 4 49 0 205 4 49 0 206 4 49 0 207 14 129 1 126 14 129 1 127 4 69 1 197] 
#[0 5 110 0 7 0 113] 
#[1 13 145 0 114 14 133 1 111] 
#[1 13 145 0 114 14 137 1 111] 
#[1 3 98 0 1 0 147 0 2 0 147 0 4 3 98 0 5 0 147 0 6 3 98 0 8 3 98 0 9 3 98 0 10 3 98 0 11 3 98 0 12 3 98 0 13 3 98 0 14 3 98 0 15 3 98 0 16 3 98 0 17 3 98 0 19 3 98 0 20 3 98 0 21 0 147 0 22 3 98 0 23 3 98 0 24 3 98 0 25 3 98 0 26 3 98 0 27 3 98 0 28 3 98 0 29 3 98 0 30 3 98 0 31 3 98 0 32 3 98 0 33 3 98 0 34 3 98 0 35 3 98 0 36 3 98 0 37 3 98 0 39 3 98 0 40 3 98 0 41 3 98 0 42 3 98 0 43 3 98 0 44 3 98 0 45 3 98 0 46 3 98 0 47 3 98 0 49 3 98 0 50 3 98 0 51 3 98 0 78 3 98 0 81 0 147 0 113 3 98 0 123 3 98 0 124 3 98 1 196 3 98 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 14 141 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 53 0 185 10 53 0 186 0 245 0 241 10 53 0 249 1 113 0 250 1 117 0 253 10 53 0 254 0 245 1 4 10 53 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 151 0 4 9 165 0 22 0 151 0 113 14 145 0 148] 
#[1 10 69 0 1 14 149 0 114] 
#[1 4 141 0 5 10 77 0 75 14 97 0 91 14 97 0 92 14 97 0 93 10 81 0 95 0 189 0 116 4 165 0 117 4 217 0 119 4 221 0 120 14 93 0 132 10 85 0 133 10 85 0 144 10 85 0 145 10 85 0 146 4 217 1 46 4 221 1 47 14 97 1 114] 
#[1 3 162 0 1 0 155 0 2 0 155 0 4 3 162 0 5 0 155 0 6 3 162 0 8 3 162 0 9 3 162 0 10 3 162 0 11 3 162 0 12 3 162 0 13 3 162 0 14 3 162 0 15 3 162 0 16 3 162 0 17 3 162 0 19 3 162 0 20 3 162 0 21 0 155 0 22 3 162 0 23 3 162 0 24 3 162 0 25 3 162 0 26 3 162 0 27 3 162 0 28 3 162 0 29 3 162 0 30 3 162 0 31 3 162 0 32 3 162 0 33 3 162 0 34 3 162 0 35 3 162 0 36 3 162 0 37 3 162 0 39 3 162 0 40 3 162 0 41 3 162 0 42 3 162 0 43 3 162 0 44 3 162 0 45 3 162 0 46 3 162 0 47 3 162 0 49 3 162 0 50 3 162 0 51 3 162 0 78 3 162 0 81 0 155 0 113 3 162 0 123 3 162 0 124 3 162 1 196 3 162 1 197] 
#[1 0 93 0 1 4 77 0 3 4 81 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 14 153 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 89 0 185 10 89 0 186 9 229 0 205 9 229 0 206 9 229 0 207 0 245 0 241 10 89 0 249 1 113 0 250 1 117 0 253 10 89 0 254 0 245 1 4 10 89 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 4 77 0 3 4 81 0 5 14 157 0 6 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 9 217 0 112 10 105 0 113 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 4 89 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 10 109 0 140 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 113 0 185 10 113 0 186 4 97 0 205 4 97 0 206 4 97 0 207 14 105 0 213 14 105 0 214 14 109 0 215 0 245 0 241 10 113 0 249 1 113 0 250 1 117 0 253 10 113 0 254 0 245 1 4 10 113 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 4 133 1 197] 
#[1 5 114 0 2 5 114 0 6 13 145 0 114 14 161 1 111] 
#[0 5 118 0 2 0 6] 
#[0 5 122 0 2 0 4 0 6 0 113] 
#[0 5 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 5 130 0 2 0 4 0 6 0 113] 
#[0 5 134 0 18] 
#[1 5 138 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 14 169 0 213 14 169 0 214 14 165 0 215 14 165 0 245 14 169 0 246 8 105 1 197] 
#[0 5 142 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 59 0 96 0 101 0 113 0 114 0 116 0 117 0 119 0 120 1 197] 
#[0 5 146 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 59 0 96 0 101 0 113 0 114 0 116 0 117 0 119 0 120 1 197] 
#[0 5 150 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 59 0 96 0 101 0 113 0 114 0 116 0 117 0 119 0 120 1 197] 
#[0 5 154 0 2 0 4 0 6 0 22 0 41 0 113 0 114] 
#[1 0 159 0 41 0 163 0 114 14 177 1 111] 
#[0 5 162 0 2 0 4 0 6 0 22 0 41 0 113 0 114] 
#[1 14 181 0 41 13 145 0 114 14 185 1 111] 
#[1 3 94 0 2 4 29 0 3 3 94 0 4 4 33 0 5 3 94 0 6 3 94 0 22 3 94 0 41 10 9 0 101 3 94 0 113 3 94 0 114 0 189 0 116 14 189 0 132 14 193 0 205 14 193 0 206 14 193 0 207 14 193 1 113] 
#[0 14 197 0 6] 
#[0 14 201 0 1] 
#[1 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 14 205 0 133 14 205 0 144 14 205 0 145 14 205 0 146 4 217 1 46 4 221 1 47] 
#[0 14 209 0 1] 
#[0 14 213 0 1] 
#[0 14 217 0 1] 
#[0 5 166 0 4 0 113] 
#[0 5 170 0 4 0 113] 
#[0 5 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 14 221 0 4 4 141 0 5 4 145 0 25 4 149 0 52 4 153 0 75 4 157 0 95 4 161 0 112 0 189 0 116 4 165 0 117 4 217 0 119 4 221 0 120 4 169 0 132 4 185 0 133 14 225 0 143 4 185 0 144 4 185 0 145 4 185 0 146 14 225 0 147 14 225 1 0 14 225 1 2 14 225 1 7 14 225 1 11 4 217 1 46 4 221 1 47 14 225 1 121 14 225 1 122 4 233 1 197] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 14 229 0 242 4 117 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 14 233 0 185 14 233 0 186 0 245 0 241 14 233 0 249 1 113 0 250 1 117 0 253 14 233 0 254 0 245 1 4 14 233 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 14 237 0 133 14 237 0 144 14 237 0 145 14 237 0 146 4 217 1 46 4 221 1 47] 
#[1 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 14 241 0 133 14 241 0 144 14 241 0 145 14 241 0 146 4 217 1 46 4 221 1 47] 
#[1 6 169 0 1 3 45 0 10 6 181 1 77 14 245 1 120] 
#[0 5 178 0 4 0 6 0 113] 
#[0 5 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 14 249 0 6 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 4 241 0 112 10 105 0 113 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 14 253 0 140 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 15 1 0 185 15 1 0 186 0 245 0 241 15 1 0 249 1 113 0 250 1 117 0 253 15 1 0 254 0 245 1 4 15 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 5 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 5 190 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 112 0 113 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 5 194 0 6 0 113] 
#[0 5 198 0 6 0 113] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 11 241 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 11 241 1 105 11 241 1 106 3 105 1 107 3 105 1 109] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 15 5 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 15 9 0 1 0 189 0 116 15 13 0 132] 
#[0 15 17 0 1] 
#[1 0 93 0 1 15 21 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 15 25 0 185 15 25 0 186 0 245 0 241 15 25 0 249 1 113 0 250 15 25 0 252 1 117 0 253 15 25 0 254 15 29 0 255 0 245 1 4 15 25 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 5 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 196 1 197 1 198] 
#[0 5 206 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[1 4 141 0 5 4 145 0 25 4 149 0 52 4 153 0 75 4 157 0 95 4 165 0 117 4 217 0 119 4 221 0 120 10 149 0 133 10 149 0 144 10 149 0 145 10 149 0 146 15 33 1 0 15 33 1 2 15 33 1 7 15 33 1 11 4 217 1 46 4 221 1 47 15 33 1 121 15 33 1 122 4 233 1 197] 
#[0 10 69 0 1] 
#[0 5 210 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 15 37 0 4] 
#[1 5 214 0 4 4 141 0 5 10 141 0 7 4 145 0 25 4 149 0 52 4 153 0 75 4 157 0 95 10 145 0 96 4 165 0 117 4 217 0 119 4 221 0 120 10 149 0 133 10 149 0 144 10 149 0 145 10 149 0 146 15 41 1 0 15 41 1 2 15 41 1 7 15 41 1 11 15 41 1 22 4 217 1 46 4 221 1 47 15 41 1 121 15 41 1 122 10 169 1 197] 
#[0 5 218 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[1 8 117 0 5 15 45 0 59 10 77 0 75 15 57 0 91 15 57 0 92 15 57 0 93 10 81 0 95 15 49 0 96 4 165 0 117 4 217 0 119 4 221 0 120 15 53 0 133 15 53 0 144 15 53 0 145 15 53 0 146 4 217 1 46 4 221 1 47 15 57 1 114 15 61 1 117 15 65 1 121 15 69 1 122 15 73 1 135 15 77 1 136 15 77 1 137 15 77 1 138 15 77 1 139 15 93 1 140 15 97 1 197] 
#[0 5 222 0 3] 
#[0 5 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 15 101 0 4 4 141 0 5 10 141 0 7 4 145 0 25 4 149 0 52 4 153 0 75 4 157 0 95 10 145 0 96 4 165 0 117 4 217 0 119 4 221 0 120 10 149 0 133 10 149 0 144 10 149 0 145 10 149 0 146 10 165 1 0 10 165 1 2 10 165 1 7 10 165 1 11 15 105 1 20 10 161 1 21 10 165 1 22 4 217 1 46 4 221 1 47 10 165 1 121 10 165 1 122 10 169 1 197] 
#[1 0 189 0 116 3 73 0 132 15 113 1 92 3 125 1 93 3 129 1 94 15 113 1 133] 
#[1 0 189 0 116 3 73 0 132 15 125 1 92 3 125 1 93 3 129 1 94 15 121 1 130 15 125 1 131] 
#[1 10 189 0 80 15 129 1 134] 
#[0 5 230 0 3] 
#[0 15 133 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 15 137 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 15 141 0 1] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 15 145 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 15 149 0 2] 
#[0 5 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 5 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 5 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 15 153 0 185 15 153 0 186 0 245 0 241 15 153 0 249 1 113 0 250 1 117 0 253 15 153 0 254 0 245 1 4 15 153 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 15 157 0 2 15 161 0 113] 
#[0 5 246 0 2 0 113] 
#[1 15 165 0 6 6 153 0 113] 
#[0 5 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 15 169 1 82 15 173 1 83 15 173 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 15 173 1 105 15 173 1 106 3 105 1 107 3 105 1 109] 
#[0 15 181 0 1] 
#[0 5 254 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[1 1 90 0 3 1 90 0 127 1 90 0 129 15 185 1 73] 
#[1 6 153 0 113 15 189 0 125 15 193 0 126 15 197 0 151 15 201 0 152] 
#[1 15 205 0 6 6 153 0 113] 
#[0 6 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 15 209 0 185 15 209 0 186 15 209 0 188 0 245 0 241 15 209 0 249 1 113 0 250 1 117 0 253 15 209 0 254 0 245 1 4 15 209 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 6 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 6 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 6 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 6 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 15 213 0 185 15 213 0 186 15 213 0 188 0 245 0 241 15 213 0 249 1 113 0 250 1 117 0 253 15 213 0 254 0 245 1 4 15 213 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 15 217 0 117] 
#[0 6 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 6 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 6 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 15 221 0 6 6 153 0 113] 
#[0 6 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 15 225 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 15 225 1 105 15 225 1 106 3 105 1 107 3 105 1 109] 
#[0 6 38 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 6 42 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 6 46 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[1 6 50 0 2 6 50 0 4 6 50 0 6 6 50 0 7 6 61 0 8 6 50 0 10 6 50 0 11 6 50 0 13 6 50 0 14 6 50 0 17 6 50 0 19 6 50 0 20 6 50 0 23 6 50 0 24 6 61 0 25 6 50 0 34 6 50 0 36 6 50 0 39 6 50 0 40 6 50 0 41 6 50 0 43 6 61 0 44 6 50 0 45 6 50 0 46 6 50 0 47 6 50 0 49 6 50 0 50 6 50 0 78 6 50 0 81 6 50 0 90 6 50 0 113 6 50 0 114 6 50 0 125 6 50 0 126 6 61 0 172 6 50 1 198] 
#[1 6 54 0 2 6 54 0 4 6 54 0 6 6 54 0 7 6 61 0 8 6 54 0 10 6 54 0 11 6 54 0 13 6 54 0 14 6 54 0 17 6 54 0 19 6 54 0 20 6 54 0 23 6 54 0 24 6 61 0 25 6 54 0 34 6 54 0 36 6 54 0 39 6 54 0 40 6 54 0 41 6 54 0 43 6 61 0 44 6 54 0 45 6 54 0 46 6 54 0 47 6 54 0 49 6 54 0 50 6 54 0 78 6 54 0 81 6 54 0 90 6 54 0 113 6 54 0 114 6 54 0 125 6 54 0 126 6 61 0 172 6 54 1 198] 
#[1 6 58 0 2 6 58 0 4 6 58 0 6 6 58 0 7 6 58 0 10 6 58 0 11 6 58 0 13 6 58 0 14 6 58 0 17 6 58 0 19 6 58 0 20 6 58 0 23 6 58 0 24 6 65 0 34 6 69 0 36 6 58 0 39 6 58 0 40 6 58 0 41 6 58 0 43 6 58 0 45 6 58 0 46 6 58 0 47 6 58 0 49 6 58 0 50 6 58 0 78 6 58 0 81 6 58 0 90 6 58 0 113 6 58 0 114 6 58 0 125 6 58 0 126 6 58 1 198] 
#[1 6 62 0 2 6 62 0 4 6 62 0 6 6 62 0 7 6 62 0 10 6 62 0 11 6 62 0 13 6 62 0 14 6 62 0 17 6 62 0 19 6 62 0 20 6 62 0 23 6 62 0 24 6 65 0 34 6 69 0 36 6 62 0 39 6 62 0 40 6 62 0 41 6 62 0 43 6 62 0 45 6 62 0 46 6 62 0 47 6 62 0 49 6 62 0 50 6 62 0 78 6 62 0 81 6 62 0 90 6 62 0 113 6 62 0 114 6 62 0 125 6 62 0 126 6 62 1 198] 
#[1 6 66 0 2 6 66 0 4 6 66 0 6 6 66 0 7 6 66 0 10 6 66 0 11 6 66 0 13 6 66 0 14 6 66 0 17 6 66 0 19 6 66 0 20 6 66 0 23 6 66 0 24 6 65 0 34 6 69 0 36 6 66 0 39 6 66 0 40 6 66 0 41 6 66 0 43 6 66 0 45 6 66 0 46 6 66 0 47 6 66 0 49 6 66 0 50 6 66 0 78 6 66 0 81 6 66 0 90 6 66 0 113 6 66 0 114 6 66 0 125 6 66 0 126 6 66 1 198] 
#[1 6 70 0 2 6 70 0 4 6 70 0 6 6 70 0 7 6 70 0 10 6 73 0 11 6 70 0 13 6 77 0 14 6 81 0 17 6 70 0 19 6 70 0 20 6 70 0 23 6 70 0 24 6 70 0 39 6 70 0 40 6 70 0 41 6 70 0 43 6 70 0 45 6 70 0 46 6 70 0 47 6 70 0 49 6 70 0 50 6 70 0 78 6 70 0 81 6 70 0 90 6 70 0 113 6 70 0 114 6 70 0 125 6 70 0 126 6 70 1 198] 
#[1 6 74 0 2 6 74 0 4 6 74 0 6 6 74 0 7 6 74 0 10 6 73 0 11 6 74 0 13 6 77 0 14 6 81 0 17 6 74 0 19 6 74 0 20 6 74 0 23 6 74 0 24 6 74 0 39 6 74 0 40 6 74 0 41 6 74 0 43 6 74 0 45 6 74 0 46 6 74 0 47 6 74 0 49 6 74 0 50 6 74 0 78 6 74 0 81 6 74 0 90 6 74 0 113 6 74 0 114 6 74 0 125 6 74 0 126 6 74 1 198] 
#[1 6 78 0 2 6 78 0 4 6 78 0 6 6 78 0 7 6 78 0 10 6 73 0 11 6 78 0 13 6 77 0 14 6 81 0 17 6 78 0 19 6 78 0 20 6 78 0 23 6 78 0 24 6 78 0 39 6 78 0 40 6 78 0 41 6 78 0 43 6 78 0 45 6 78 0 46 6 78 0 47 6 78 0 49 6 78 0 50 6 78 0 78 6 78 0 81 6 78 0 90 6 78 0 113 6 78 0 114 6 78 0 125 6 78 0 126 6 78 1 198] 
#[1 6 82 0 2 6 82 0 4 6 82 0 6 6 82 0 7 6 82 0 10 6 73 0 11 6 82 0 13 6 77 0 14 6 81 0 17 6 82 0 19 6 82 0 20 6 82 0 23 6 82 0 24 6 82 0 39 6 82 0 40 6 82 0 41 6 82 0 43 6 82 0 45 6 82 0 46 6 82 0 47 6 82 0 49 6 82 0 50 6 82 0 78 6 82 0 81 6 82 0 90 6 82 0 113 6 82 0 114 6 82 0 125 6 82 0 126 6 82 1 198] 
#[1 6 86 0 2 6 86 0 4 6 86 0 6 6 86 0 7 6 86 0 10 6 73 0 11 6 86 0 13 6 77 0 14 6 81 0 17 6 86 0 19 6 86 0 20 6 86 0 23 6 86 0 24 6 86 0 39 6 86 0 40 6 86 0 41 6 86 0 43 6 86 0 45 6 86 0 46 6 86 0 47 6 86 0 49 6 86 0 50 6 86 0 78 6 86 0 81 6 86 0 90 6 86 0 113 6 86 0 114 6 86 0 125 6 86 0 126 6 86 1 198] 
#[1 6 90 0 2 6 90 0 4 6 90 0 6 6 90 0 7 6 90 0 10 6 73 0 11 6 90 0 13 6 77 0 14 6 81 0 17 6 90 0 19 6 90 0 20 6 90 0 23 6 90 0 24 6 90 0 39 6 90 0 40 6 90 0 41 6 90 0 43 6 90 0 45 6 90 0 46 6 90 0 47 6 90 0 49 6 90 0 50 6 90 0 78 6 90 0 81 6 90 0 90 6 90 0 113 6 90 0 114 6 90 0 125 6 90 0 126 6 90 1 198] 
#[1 6 94 0 2 6 94 0 4 6 94 0 6 6 94 0 7 6 85 0 10 6 89 0 13 6 93 0 19 6 97 0 20 6 94 0 23 6 94 0 24 6 94 0 39 6 94 0 40 6 94 0 41 6 94 0 43 6 94 0 45 6 94 0 46 6 94 0 47 6 94 0 49 6 94 0 50 6 101 0 78 6 105 0 81 6 94 0 90 6 94 0 113 6 94 0 114 6 94 0 125 6 94 0 126 6 94 1 198] 
#[1 6 98 0 2 6 98 0 4 6 98 0 6 6 98 0 7 6 85 0 10 6 89 0 13 6 93 0 19 6 97 0 20 6 98 0 23 6 98 0 24 6 98 0 39 6 98 0 40 6 98 0 41 6 98 0 43 6 98 0 45 6 98 0 46 6 98 0 47 6 98 0 49 6 98 0 50 6 101 0 78 6 105 0 81 6 98 0 90 6 98 0 113 6 98 0 114 6 98 0 125 6 98 0 126 6 98 1 198] 
#[1 6 102 0 2 6 102 0 4 6 102 0 6 6 102 0 7 6 85 0 10 6 89 0 13 6 93 0 19 6 97 0 20 6 102 0 23 6 102 0 24 6 102 0 39 6 102 0 40 6 102 0 41 6 102 0 43 6 102 0 45 6 102 0 46 6 102 0 47 6 102 0 49 6 102 0 50 6 101 0 78 6 105 0 81 6 102 0 90 6 102 0 113 6 102 0 114 6 102 0 125 6 102 0 126 6 102 1 198] 
#[1 6 106 0 2 6 106 0 4 6 106 0 6 6 106 0 7 6 85 0 10 6 89 0 13 6 93 0 19 6 97 0 20 6 106 0 23 6 106 0 24 6 106 0 39 6 106 0 40 6 106 0 41 6 106 0 43 6 106 0 45 6 106 0 46 6 106 0 47 6 106 0 49 6 106 0 50 6 101 0 78 6 105 0 81 6 106 0 90 6 106 0 113 6 106 0 114 6 106 0 125 6 106 0 126 6 106 1 198] 
#[1 6 110 0 2 6 110 0 4 6 110 0 6 6 110 0 7 6 109 0 23 6 113 0 24 6 110 0 39 6 110 0 40 6 110 0 41 6 110 0 43 6 110 0 45 6 110 0 46 6 110 0 47 6 117 0 49 6 121 0 50 6 110 0 90 6 110 0 113 6 110 0 114 6 110 0 125 6 110 0 126 6 110 1 198] 
#[1 6 114 0 2 6 114 0 4 6 114 0 6 6 114 0 7 6 125 0 39 6 114 0 40 6 114 0 41 6 114 0 43 6 114 0 45 6 114 0 46 6 114 0 47 6 114 0 90 6 114 0 113 6 114 0 114 6 114 0 125 6 114 0 126 6 114 1 198] 
#[1 6 118 0 2 6 118 0 4 6 118 0 6 6 118 0 7 6 118 0 40 6 118 0 41 6 118 0 43 6 118 0 45 6 118 0 46 6 129 0 47 6 118 0 90 6 118 0 113 6 118 0 114 6 118 0 125 6 118 0 126 6 118 1 198] 
#[1 6 122 0 2 6 122 0 4 6 122 0 6 6 122 0 7 6 122 0 40 6 122 0 41 6 133 0 45 6 122 0 46 6 122 0 90 6 122 0 113 6 122 0 114 6 122 0 125 6 122 0 126 6 122 1 198] 
#[1 0 242 0 2 0 242 0 4 0 242 0 6 0 242 0 7 0 242 0 40 0 242 0 41 6 133 0 45 0 242 0 46 0 242 0 90 0 242 0 113 0 242 0 114 0 242 0 125 0 242 0 126 0 242 1 198] 
#[1 6 126 0 2 6 126 0 4 6 126 0 6 6 126 0 7 6 137 0 40 6 126 0 41 6 126 0 46 6 126 0 90 6 126 0 113 6 126 0 114 6 126 0 125 6 126 0 126 6 126 1 198] 
#[1 6 130 0 2 6 130 0 4 6 130 0 6 6 130 0 7 6 130 0 41 6 130 0 43 6 133 0 45 6 130 0 90 6 130 0 113 6 130 0 114 6 130 0 125 6 130 0 126 6 130 1 198] 
#[0 15 229 0 114] 
#[0 6 134 0 2 0 6 0 7 0 113 0 114 0 125 0 126 1 198] 
#[1 0 6 0 1 0 6 0 3 0 167 0 4 0 19 0 5 0 6 0 7 4 145 0 25 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 23 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 4 153 0 75 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 4 157 0 95 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 4 161 0 112 0 27 0 116 4 165 0 117 0 31 0 119 0 35 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 4 169 0 132 4 185 0 133 4 177 0 142 4 181 0 143 4 185 0 144 4 185 0 145 4 185 0 146 4 181 0 147 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 15 237 0 247 15 241 0 248 4 181 1 0 4 181 1 2 4 181 1 7 4 181 1 11 4 217 1 46 4 221 1 47 4 181 1 121 4 181 1 122 0 39 1 197] 
#[0 6 142 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 6 146 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 6 150 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[1 0 18 0 127 15 245 1 52 15 249 1 71] 
#[1 6 154 0 3 0 171 0 127 15 253 0 129 16 5 1 49 16 5 1 50 1 177 1 51 16 5 1 69 1 185 1 71 16 9 1 76] 
#[1 6 162 0 3 6 162 0 8 6 162 0 13 16 13 0 21 16 17 0 114 6 162 0 128] 
#[1 6 154 0 3 16 21 0 8 0 126 0 13 16 25 0 128 16 53 1 55 16 33 1 59 16 37 1 60 16 41 1 61 16 37 1 62 16 37 1 63 16 53 1 64 16 57 1 72 16 61 1 76] 
#[0 6 166 0 3 0 8 0 13 0 128] 
#[0 6 170 0 3 0 8 0 13 0 128] 
#[0 6 174 0 128] 
#[1 16 65 0 128 16 69 1 57] 
#[0 16 73 0 2] 
#[1 2 130 0 5 2 130 0 10 0 175 0 13 2 134 0 21 2 130 0 39 2 130 0 45 13 181 0 69 5 6 0 113 13 185 1 80] 
#[0 16 77 0 13] 
#[1 6 169 0 1 3 45 0 10 6 181 1 77 16 81 1 120] 
#[0 16 85 0 3] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 16 89 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 6 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 6 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 16 93 0 7] 
#[0 6 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 16 97 0 7] 
#[0 16 101 0 1] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 16 105 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 16 109 0 185 16 109 0 186 16 109 0 188 0 245 0 241 16 109 0 249 1 113 0 250 1 117 0 253 16 109 0 254 0 245 1 4 16 109 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 16 113 0 132 16 117 0 203 16 121 0 204 16 125 0 205 16 125 0 206 16 125 0 207 16 129 0 221 7 5 1 197] 
#[1 0 198 0 7 0 198 0 8 6 37 0 9 0 198 0 10 0 198 0 11 6 37 0 12 0 198 0 13 0 198 0 14 6 37 0 15 6 37 0 16 0 198 0 17 0 198 0 19 0 198 0 20 6 37 0 22 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 6 37 0 27 6 37 0 28 6 37 0 29 6 37 0 30 6 37 0 31 6 37 0 32 6 37 0 33 0 198 0 34 6 25 0 35 0 198 0 36 6 29 0 37 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 49 0 198 0 50 6 33 0 51 0 179 0 78 0 198 0 81 16 137 0 90 0 198 0 113 6 37 0 187 6 37 1 196] 
#[1 16 141 0 7 6 153 0 113] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 16 145 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 16 149 0 185 16 149 0 186 16 149 0 188 0 245 0 241 16 149 0 249 1 113 0 250 1 117 0 253 16 149 0 254 0 245 1 4 16 149 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 16 153 0 132 4 41 0 200 4 45 0 201 16 157 0 205 16 157 0 206 16 157 0 207 16 161 0 221 4 45 1 126 4 45 1 127 4 69 1 197] 
#[1 16 165 0 78 16 169 0 90] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 5 13 0 52 0 137 0 57 16 181 0 58 1 153 0 70 0 149 0 74 0 153 0 77 16 181 0 84 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 16 173 0 107 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 16 177 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 16 177 0 167 16 181 0 199 16 185 0 220 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 137 1 197] 
#[1 16 189 0 2 6 153 0 113] 
#[0 6 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 16 193 0 7 6 153 0 113] 
#[1 16 197 0 2 6 153 0 113] 
#[0 6 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 86 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 16 201 0 1 6 237 0 3 16 205 0 194] 
#[1 6 237 0 3 16 209 0 194] 
#[1 6 198 0 1 6 198 0 3 6 198 0 4 6 198 0 5 6 198 0 7 6 198 0 34 6 198 0 35 6 198 0 36 6 198 0 37 6 198 0 38 6 198 0 48 6 198 0 52 6 198 0 53 6 198 0 54 6 198 0 55 6 198 0 57 6 198 0 58 6 198 0 60 6 198 0 61 6 198 0 62 6 198 0 63 6 198 0 64 6 198 0 65 6 198 0 66 6 198 0 67 6 198 0 68 6 198 0 70 12 85 0 71 6 198 0 72 6 198 0 74 6 198 0 76 6 198 0 77 6 198 0 82 6 198 0 84 6 198 0 86 6 198 0 87 6 198 0 88 6 198 0 94 6 198 0 98 6 198 0 99 6 198 0 101 6 198 0 102 6 198 0 103 6 198 0 104 6 198 0 105 6 198 0 106 6 198 0 107 6 198 0 108 6 198 0 109 6 198 0 110 6 198 0 111 6 198 0 116 6 198 0 119 6 198 0 120 6 198 0 121 6 198 0 123 6 198 0 124 6 198 0 127 16 213 0 237 6 198 1 197 6 198 1 198] 
#[0 6 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 6 206 0 7 0 90 0 113] 
#[0 6 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 6 245 0 132 16 217 0 204 7 1 0 205 7 1 0 206 7 1 0 207 7 5 1 197] 
#[0 6 214 0 7 0 90 0 113] 
#[1 13 145 0 114 16 221 1 111] 
#[1 13 145 0 114 16 225 1 111] 
#[0 6 218 0 7 0 90 0 113] 
#[0 6 222 0 7 0 90 0 113] 
#[1 16 229 0 2 6 153 0 113] 
#[1 16 233 0 2 6 153 0 113] 
#[0 6 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 6 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 183 0 1 6 234 0 3 6 234 0 4 0 183 0 5 0 183 0 7 5 226 0 8 5 226 0 9 5 226 0 10 5 226 0 11 5 226 0 12 5 226 0 13 5 226 0 14 5 226 0 15 5 226 0 16 5 226 0 17 5 226 0 19 5 226 0 20 5 226 0 21 5 226 0 22 5 226 0 23 5 226 0 24 5 226 0 25 5 226 0 26 5 226 0 27 5 226 0 28 5 226 0 29 5 226 0 30 5 226 0 31 5 226 0 32 5 226 0 33 0 183 0 34 0 183 0 35 0 183 0 36 0 183 0 37 6 234 0 38 5 226 0 39 5 226 0 40 5 226 0 41 5 226 0 42 5 226 0 43 5 226 0 44 5 226 0 45 5 226 0 46 5 226 0 47 6 234 0 48 5 226 0 49 5 226 0 50 5 226 0 51 6 234 0 52 6 234 0 53 6 234 0 54 6 234 0 57 6 234 0 58 6 234 0 60 6 234 0 61 6 234 0 62 6 234 0 64 6 234 0 65 6 234 0 67 6 234 0 68 6 234 0 70 6 234 0 72 6 234 0 74 6 234 0 76 6 234 0 77 5 226 0 78 5 226 0 81 6 234 0 82 6 234 0 84 6 234 0 86 6 234 0 87 6 234 0 88 6 234 0 94 6 234 0 98 6 234 0 99 6 234 0 101 6 234 0 102 6 234 0 103 6 234 0 104 6 234 0 105 6 234 0 106 6 234 0 107 6 234 0 108 6 234 0 109 6 234 0 110 6 234 0 111 5 226 0 113 6 234 0 116 6 234 0 119 6 234 0 120 6 234 0 121 0 183 0 123 0 183 0 124 6 234 0 127 5 226 1 196 0 183 1 197 6 234 1 198] 
#[0 16 237 0 3] 
#[1 3 45 0 10 5 81 0 69 16 241 1 19 16 245 1 77 5 97 1 197] 
#[1 6 238 0 7 6 238 0 113 13 145 0 114 16 249 1 111] 
#[1 16 253 0 7 17 1 0 113] 
#[0 6 242 0 7 0 113] 
#[1 8 109 0 1 3 45 0 10 8 129 1 77 17 5 1 112] 
#[1 17 9 0 7 17 1 0 113] 
#[0 17 13 0 3] 
#[1 17 17 0 3 13 33 0 21] 
#[1 17 21 0 7 17 1 0 113] 
#[1 17 25 0 4 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 17 29 0 133 17 29 0 144 17 29 0 145 17 29 0 146 4 217 1 46 4 221 1 47 17 33 1 142 17 37 1 143 17 41 1 144] 
#[0 17 45 0 7] 
#[0 17 49 0 7] 
#[1 5 77 0 3 5 81 0 69 0 189 0 116 17 53 0 132 7 33 1 18 5 93 1 19 5 97 1 197] 
#[1 7 173 0 1 7 177 0 25 0 189 0 116 17 57 0 132] 
#[1 0 130 0 1 0 130 0 5 0 187 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 134 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 78 0 130 0 81 0 130 0 123 0 130 0 124 0 130 1 196 0 130 1 197] 
#[0 17 65 0 7] 
#[0 6 246 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 6 250 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 6 254 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 7 2 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 7 6 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[1 17 69 0 22 3 2 0 73 3 2 0 113] 
#[0 7 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 17 73 0 7] 
#[0 17 77 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 17 81 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 17 85 0 1] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 17 89 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 0 189 0 116 17 93 0 132 17 97 1 94 17 101 1 153 17 105 1 195] 
#[1 0 189 0 116 3 73 0 132 17 109 1 92 3 125 1 93 3 129 1 94 17 109 1 131] 
#[1 3 37 0 3 13 13 0 69 17 113 1 95 17 117 1 129] 
#[0 7 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 3 37 0 3 17 121 1 95] 
#[1 0 93 0 1 1 193 0 3 7 18 0 4 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 2 97 0 57 2 101 0 58 1 205 0 60 1 209 0 61 7 105 0 62 0 141 0 64 1 213 0 65 2 109 0 67 17 125 0 68 1 153 0 70 1 217 0 72 2 117 0 74 1 221 0 76 7 205 0 77 2 125 0 82 0 65 0 84 2 129 0 86 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 2 133 0 105 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 17 173 0 189 17 173 0 192 17 173 0 193 17 173 0 194 17 173 0 198 0 65 0 199 17 173 0 202 17 173 0 216 17 173 0 217 17 173 0 218 17 173 0 219 17 173 0 222 17 173 0 223 17 173 0 225 17 173 0 226 17 173 0 227 17 173 0 232 17 173 0 234 17 173 0 235 17 173 0 239 17 173 0 240 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 17 173 1 3 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 17 173 1 16 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 17 173 1 119 17 173 1 128 17 173 1 141 17 173 1 146 17 165 1 148 17 169 1 149 17 173 1 150 17 173 1 151 17 173 1 152 17 173 1 178 3 29 1 197] 
#[1 0 189 0 116 17 189 0 132] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 17 193 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 17 193 1 105 17 193 1 106 3 105 1 107 3 105 1 109] 
#[0 17 197 0 22] 
#[0 17 69 0 22] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 2 97 0 57 0 141 0 64 1 153 0 70 2 117 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 12 213 0 185 12 213 0 186 12 217 0 240 0 245 0 241 12 213 0 249 1 113 0 250 1 117 0 253 12 213 0 254 12 221 1 3 0 245 1 4 12 213 1 6 0 245 1 9 0 245 1 13 1 33 1 15 12 225 1 16 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 3 29 1 197] 
#[0 4 162 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 170 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 4 190 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 7 41 0 57 7 49 0 74 0 189 0 116 17 201 0 132 12 229 1 182 12 233 1 183] 
#[0 4 166 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 4 174 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 4 194 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 17 205 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 13 81 0 1 3 45 0 10 13 89 1 77 17 209 1 112 17 213 1 120] 
#[0 17 217 0 1] 
#[0 17 221 0 7] 
#[0 17 225 0 3] 
#[1 5 77 0 3 5 81 0 69 17 229 1 18 5 93 1 19 5 97 1 197] 
#[0 7 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 191 0 2 0 191 0 4 4 218 0 5 0 191 0 6 4 218 0 7 5 78 0 22 4 218 0 39 4 218 0 45 0 191 0 113] 
#[1 8 109 0 1 4 222 0 4 4 222 0 7 3 45 0 10 13 141 0 41 4 222 0 113 17 233 0 114 8 129 1 77 13 149 1 111 13 153 1 112] 
#[0 17 237 0 18] 
#[0 7 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 17 241 0 2] 
#[1 0 130 0 1 0 130 0 5 0 130 0 6 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 134 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 78 0 130 0 81 17 245 0 114 0 130 0 123 0 130 0 124 0 130 1 196 0 130 1 197] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 17 249 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 17 253 0 1] 
#[1 8 109 0 1 7 30 0 4 7 30 0 7 3 45 0 10 7 30 0 113 13 145 0 114 8 129 1 77 18 1 1 111 18 5 1 112] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 18 9 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 18 9 1 105 18 9 1 106 3 105 1 107 3 105 1 109] 
#[0 7 34 0 4 0 7 0 113] 
#[0 7 38 0 4 0 7 0 113] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 18 13 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 7 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 91 0 92 0 93 0 94 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 197 1 198] 
#[1 8 109 0 1 7 46 0 4 8 117 0 5 3 45 0 10 8 121 0 87 4 165 0 117 4 217 0 119 4 221 0 120 8 125 0 133 8 125 0 144 8 125 0 145 8 125 0 146 4 217 1 46 4 221 1 47 8 129 1 77 18 17 1 98 18 17 1 110 18 17 1 112 18 17 1 116 18 17 1 117 18 17 1 118] 
#[1 8 109 0 1 7 50 0 4 8 117 0 5 3 45 0 10 8 121 0 87 4 165 0 117 4 217 0 119 4 221 0 120 8 125 0 133 8 125 0 144 8 125 0 145 8 125 0 146 4 217 1 46 4 221 1 47 8 129 1 77 18 21 1 98 18 21 1 110 18 21 1 112 18 21 1 116 18 21 1 117 18 21 1 118] 
#[0 7 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 18 25 0 6 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 18 29 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 18 29 1 102 3 93 1 103 3 97 1 104 18 29 1 105 18 29 1 106 3 105 1 107 3 105 1 109] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 18 33 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 18 33 1 105 18 33 1 106 3 105 1 107 3 105 1 109] 
#[0 7 58 0 13 0 113] 
#[0 7 62 0 1 0 3 0 22 0 69 1 197] 
#[1 0 189 0 116 8 177 0 132 18 37 1 79] 
#[0 18 41 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 18 45 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 0 189 0 116 18 49 0 132] 
#[0 18 53 0 2] 
#[1 7 66 0 2 7 66 0 3 7 66 0 4 7 66 0 5 7 66 0 6 7 66 0 7 7 66 0 8 7 66 0 10 7 66 0 11 7 66 0 13 7 66 0 14 7 66 0 17 7 66 0 18 7 66 0 19 7 66 0 20 7 66 0 22 7 66 0 23 7 66 0 24 7 66 0 25 7 66 0 26 7 66 0 34 7 66 0 36 0 195 0 39 7 66 0 40 7 66 0 41 7 66 0 43 7 66 0 44 7 66 0 45 7 66 0 46 7 66 0 47 7 66 0 49 7 66 0 50 7 66 0 59 7 66 0 78 7 66 0 81 7 66 0 90 7 66 0 91 7 66 0 92 7 66 0 93 7 66 0 96 7 66 0 113 7 66 0 114 7 66 0 117 7 66 0 119 7 66 0 120 7 66 0 125 7 66 0 126 7 66 1 198] 
#[1 7 70 0 2 7 70 0 3 7 70 0 4 0 199 0 5 7 70 0 6 7 70 0 7 7 70 0 8 7 70 0 10 7 70 0 11 7 70 0 13 7 70 0 14 7 70 0 17 7 70 0 18 7 70 0 19 7 70 0 20 7 70 0 22 7 70 0 23 7 70 0 24 7 70 0 25 7 70 0 26 7 70 0 34 7 70 0 36 7 70 0 39 7 70 0 40 7 70 0 41 7 70 0 43 7 70 0 44 7 70 0 45 7 70 0 46 7 70 0 47 7 70 0 49 7 70 0 50 7 70 0 59 7 70 0 78 7 70 0 81 7 70 0 90 7 70 0 91 7 70 0 92 7 70 0 93 7 70 0 96 7 70 0 113 7 70 0 114 7 70 0 117 7 70 0 119 7 70 0 120 7 70 0 125 7 70 0 126 8 229 0 224 7 70 1 198] 
#[0 18 57 0 6] 
#[0 7 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 80 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[1 7 78 0 2 7 78 0 3 7 78 0 4 7 78 0 5 7 78 0 6 7 78 0 7 7 78 0 8 7 78 0 10 7 78 0 11 7 78 0 13 7 78 0 14 7 78 0 17 7 78 0 18 7 78 0 19 7 78 0 20 7 82 0 21 7 78 0 22 7 78 0 23 7 78 0 24 7 78 0 25 7 78 0 26 7 78 0 34 7 78 0 36 7 78 0 39 7 78 0 40 7 78 0 41 7 78 0 43 7 78 0 44 7 78 0 45 7 78 0 46 7 78 0 47 7 78 0 49 7 78 0 50 7 78 0 59 7 78 0 78 7 78 0 80 7 78 0 81 7 78 0 90 7 78 0 91 7 78 0 92 7 78 0 93 7 78 0 96 7 78 0 113 7 78 0 114 7 78 0 117 7 78 0 119 7 78 0 120 7 78 0 125 7 78 0 126 7 78 1 198] 
#[0 18 61 0 117] 
#[0 7 86 0 7 0 73] 
#[1 18 65 0 4 8 245 0 117 18 69 1 43] 
#[0 7 90 0 73] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 18 73 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 18 77 0 1 0 189 0 116 18 81 0 132] 
#[0 18 85 0 1] 
#[0 6 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 7 94 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 18 89 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 18 93 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 18 97 0 1] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 18 101 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 7 98 0 7] 
#[0 7 102 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 13 81 0 1 3 45 0 10 13 89 1 77 17 209 1 112 18 105 1 120] 
#[0 18 109 0 3] 
#[1 0 189 0 116 18 113 0 132 18 113 1 38] 
#[0 7 106 0 73] 
#[1 18 117 0 4 0 189 0 116 9 73 0 117 9 85 0 132 18 121 1 36 9 85 1 38] 
#[0 7 110 0 73] 
#[0 7 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 7 118 0 73] 
#[0 7 122 0 73] 
#[0 7 126 0 4] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 18 125 0 213 18 125 0 214 8 105 1 197] 
#[0 7 130 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 7 134 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 18 129 0 4 4 141 0 5 9 109 0 112 0 189 0 116 4 165 0 117 4 217 0 119 4 221 0 120 9 113 0 132 9 117 0 133 9 117 0 144 9 117 0 145 9 117 0 146 18 133 0 208 18 137 0 212 18 137 0 214 4 217 1 46 4 221 1 47 9 137 1 197] 
#[1 14 173 0 41 13 145 0 114 14 177 1 111] 
#[1 0 189 0 116 18 141 0 132] 
#[0 7 138 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 7 142 0 6 0 113] 
#[0 18 145 0 6] 
#[0 7 146 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 4 29 0 3 4 33 0 5 18 149 0 6 4 85 0 112 4 245 0 113 0 189 0 116 9 113 0 132 18 153 0 139 4 97 0 205 4 97 0 206 4 97 0 207 18 157 0 211 9 157 0 213 9 157 0 214 18 161 0 215 8 105 1 197] 
#[0 7 150 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 7 154 0 2 0 4 0 6 0 7 0 90 0 113] 
#[0 7 158 0 7 0 113] 
#[1 7 162 0 7 9 165 0 22 7 162 0 113 18 165 0 148] 
#[1 7 166 0 7 9 165 0 22 7 166 0 113 18 169 0 148] 
#[1 0 130 0 1 0 203 0 4 0 130 0 5 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 134 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 78 0 130 0 81 0 130 0 113 0 130 0 123 0 130 0 124 0 130 1 196 0 130 1 197] 
#[0 0 207 0 4 0 113] 
#[1 0 93 0 1 4 77 0 3 4 81 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 4 89 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 14 233 0 185 14 233 0 186 4 97 0 205 4 97 0 206 4 97 0 207 18 125 0 213 18 125 0 214 0 245 0 241 14 233 0 249 1 113 0 250 1 117 0 253 14 233 0 254 0 245 1 4 14 233 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 4 133 1 197] 
#[1 0 130 0 1 0 130 0 5 0 211 0 6 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 134 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 78 0 130 0 81 0 130 0 113 13 145 0 114 0 130 0 123 0 130 0 124 14 161 1 111 0 130 1 196 0 130 1 197] 
#[1 5 186 0 1 0 215 0 2 0 215 0 4 5 186 0 5 0 215 0 6 5 186 0 8 5 186 0 9 5 186 0 10 5 186 0 11 5 186 0 12 5 186 0 13 5 186 0 14 5 186 0 15 5 186 0 16 5 186 0 17 5 186 0 19 5 186 0 20 5 186 0 21 0 215 0 22 5 186 0 23 5 186 0 24 5 186 0 25 5 186 0 26 5 186 0 27 5 186 0 28 5 186 0 29 5 186 0 30 5 186 0 31 5 186 0 32 5 186 0 33 5 186 0 34 5 186 0 35 5 186 0 36 5 186 0 37 5 186 0 39 5 186 0 40 5 186 0 41 5 186 0 42 5 186 0 43 5 186 0 44 5 186 0 45 5 186 0 46 5 186 0 47 5 186 0 49 5 186 0 50 5 186 0 51 5 186 0 78 5 186 0 81 0 215 0 113 5 186 0 123 5 186 0 124 5 186 1 196 5 186 1 197] 
#[0 7 170 0 2 0 6] 
#[0 7 174 0 2] 
#[0 7 178 0 2 0 113] 
#[0 7 182 0 2 0 4 0 6 0 113] 
#[1 7 186 0 2 7 186 0 4 7 186 0 6 9 165 0 22 7 186 0 113 18 173 0 148] 
#[1 7 190 0 2 7 190 0 4 7 190 0 6 7 190 0 113 13 145 0 114 18 177 1 111] 
#[1 7 194 0 2 7 194 0 4 7 194 0 6 9 165 0 22 7 194 0 113 18 181 0 148] 
#[1 0 219 0 2 0 219 0 4 0 219 0 6 0 223 0 22 0 227 0 41 0 219 0 113 0 163 0 114 18 189 0 148 18 193 1 111] 
#[1 7 202 0 2 7 202 0 4 7 202 0 6 9 165 0 22 18 197 0 41 7 202 0 113 13 145 0 114 18 201 0 148 18 205 1 111] 
#[0 7 206 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 18 209 0 242 4 117 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 18 213 0 1] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 18 217 0 242 4 117 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 18 221 0 2] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 18 229 0 213 18 229 0 214 18 229 0 246 18 229 1 1 8 105 1 197] 
#[0 7 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 7 214 0 4 0 113] 
#[0 18 233 0 2] 
#[0 7 218 0 4 0 113] 
#[0 18 237 0 1] 
#[0 18 241 0 1] 
#[0 18 245 0 3] 
#[0 7 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 7 226 0 6 0 113] 
#[0 7 230 0 6 0 113] 
#[0 18 249 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 18 253 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 19 1 0 1] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 19 5 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 0 6 0 1 0 6 0 3 0 167 0 4 0 19 0 5 0 6 0 7 4 145 0 25 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 23 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 4 153 0 75 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 4 157 0 95 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 4 161 0 112 0 27 0 116 4 165 0 117 0 31 0 119 0 35 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 4 169 0 132 4 185 0 133 4 177 0 142 4 181 0 143 4 185 0 144 4 185 0 145 4 185 0 146 4 181 0 147 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 19 9 0 247 15 241 0 248 4 181 1 0 4 181 1 2 4 181 1 7 4 181 1 11 19 13 1 14 4 217 1 46 4 221 1 47 4 181 1 121 4 181 1 122 0 39 1 197] 
#[0 7 234 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 7 238 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 7 242 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 7 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 196 1 197 1 198] 
#[0 7 250 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 19 17 0 1] 
#[1 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 19 21 0 133 19 21 0 144 19 21 0 145 19 21 0 146 4 217 1 46 4 221 1 47 19 25 1 121 19 29 1 122 15 97 1 197] 
#[1 13 81 0 1 19 33 0 7 3 45 0 10 9 165 0 22 13 145 0 114 19 37 0 148 13 89 1 77 19 41 1 111 19 45 1 112 14 245 1 120] 
#[1 4 141 0 5 19 49 0 59 19 53 0 96 4 165 0 117 4 217 0 119 4 221 0 120 19 57 0 133 19 57 0 144 19 57 0 145 19 57 0 146 4 217 1 46 4 221 1 47 19 61 1 121 19 65 1 122 15 97 1 197] 
#[0 19 69 0 7] 
#[0 7 254 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 8 2 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 8 6 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 8 10 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 8 14 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 8 18 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 8 22 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 8 26 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[1 10 77 0 75 10 81 0 95] 
#[0 8 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 196 1 197 1 198] 
#[0 19 73 0 4] 
#[0 8 34 0 80] 
#[0 8 38 0 80] 
#[0 8 42 0 3 0 113] 
#[1 8 46 0 3 19 77 0 113] 
#[0 8 50 0 3 0 113] 
#[0 8 54 0 3] 
#[0 19 81 0 3] 
#[0 19 85 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 19 89 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 19 93 0 2] 
#[0 8 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 8 62 0 2 0 113] 
#[0 8 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 0 93 0 1 19 97 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 19 101 0 112 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 105 0 185 19 105 0 186 0 245 0 241 19 105 0 249 1 113 0 250 1 117 0 253 19 105 0 254 0 245 1 4 19 105 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 8 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 19 109 0 13 19 113 0 113] 
#[0 8 74 0 13 0 113] 
#[0 8 78 0 13 0 113] 
#[1 0 93 0 1 19 117 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 10 233 0 112 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 19 121 0 162 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 10 241 0 185 10 241 0 186 0 245 0 241 10 241 0 249 1 113 0 250 1 117 0 253 10 241 0 254 0 245 1 4 10 241 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 4 78 0 3 4 78 0 127 4 78 0 129 19 125 1 67 11 205 1 68] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 129 0 185 19 129 0 186 19 129 0 188 0 245 0 241 19 129 0 249 1 113 0 250 1 117 0 253 19 129 0 254 0 245 1 4 19 129 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 8 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 8 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 19 133 0 125 19 137 0 126] 
#[0 8 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 19 141 0 6 6 153 0 113] 
#[1 19 145 0 6 6 153 0 113] 
#[0 8 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 8 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 8 102 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 149 0 185 19 149 0 186 0 245 0 241 19 149 0 249 1 113 0 250 1 117 0 253 19 149 0 254 0 245 1 4 19 149 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 6 0 1 0 6 0 3 8 106 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 7 25 0 196 0 57 0 197 7 25 0 198 0 65 0 199 0 6 1 197] 
#[0 19 153 0 4] 
#[0 8 110 0 4] 
#[0 8 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 196 1 197 1 198] 
#[0 19 157 0 127] 
#[0 8 118 0 3 0 127 0 129] 
#[0 8 122 0 3 0 127 0 129] 
#[0 8 126 0 3 0 127 0 129] 
#[0 19 161 0 3] 
#[0 8 130 0 128] 
#[0 19 165 0 128] 
#[1 8 134 0 13 19 169 1 74] 
#[1 8 138 0 3 8 138 0 8 8 138 0 13 8 138 0 22 16 17 0 114 8 138 0 128] 
#[0 8 142 0 3 0 8 0 13 0 22 0 128] 
#[1 19 173 0 8 0 126 0 13 19 177 1 72] 
#[0 8 146 0 3 0 8 0 13 0 128] 
#[1 6 154 0 3 8 150 0 8 8 150 0 13 16 25 0 128 16 53 1 55 19 181 1 60 19 181 1 62 19 181 1 63 16 53 1 64 16 61 1 76] 
#[0 8 154 0 3 0 8 0 13 0 128] 
#[0 8 158 0 3 0 8 0 13 0 128] 
#[1 8 162 0 3 8 162 0 8 8 162 0 13 19 185 0 22 8 162 0 128 19 189 1 65] 
#[0 19 193 0 13] 
#[0 19 197 0 3] 
#[1 8 166 0 3 8 166 0 8 8 166 0 13 16 13 0 21 8 166 0 128] 
#[0 8 170 0 128] 
#[1 13 145 0 114 19 201 1 111] 
#[1 5 9 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 5 13 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 245 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 5 21 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 5 21 0 167 19 205 0 168 19 205 0 169 0 245 0 241 0 245 1 4 0 245 1 9 0 245 1 13 19 205 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 5 29 1 197] 
#[0 19 209 0 3] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 19 213 0 247 15 241 0 248 0 6 1 197] 
#[0 19 217 0 2] 
#[0 8 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 8 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 221 0 185 19 221 0 186 19 221 0 188 0 245 0 241 19 221 0 249 1 113 0 250 1 117 0 253 19 221 0 254 0 245 1 4 19 221 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 19 225 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 229 0 185 19 229 0 186 19 229 0 188 0 245 0 241 19 229 0 249 1 113 0 250 1 117 0 253 19 229 0 254 0 245 1 4 19 229 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 19 233 0 7 6 153 0 113] 
#[1 4 94 0 7 9 165 0 22 8 182 0 78 4 94 0 90 4 94 0 113 12 97 0 148] 
#[1 19 237 0 7 12 105 0 113] 
#[1 4 98 0 7 19 241 0 90 4 98 0 113] 
#[1 9 165 0 22 8 186 0 78 12 109 0 148] 
#[0 19 245 0 78] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 249 0 185 19 249 0 186 19 249 0 188 0 245 0 241 19 249 0 249 1 113 0 250 1 117 0 253 19 249 0 254 0 245 1 4 19 249 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 253 0 185 19 253 0 186 0 245 0 241 19 253 0 249 1 113 0 250 1 117 0 253 19 253 0 254 0 245 1 4 19 253 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 20 1 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 20 5 0 185 20 5 0 186 20 5 0 188 0 245 0 241 20 5 0 249 1 113 0 250 1 117 0 253 20 5 0 254 0 245 1 4 20 5 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 20 9 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 20 13 0 185 20 13 0 186 20 13 0 188 0 245 0 241 20 13 0 249 1 113 0 250 1 117 0 253 20 13 0 254 0 245 1 4 20 13 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 20 17 0 7 6 153 0 113] 
#[1 3 30 0 7 9 165 0 22 8 182 0 78 8 182 0 90 3 30 0 113 9 169 0 148] 
#[1 9 165 0 22 8 186 0 78 8 186 0 90 9 181 0 148] 
#[0 8 190 0 78 0 90] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 20 21 0 185 20 21 0 186 20 21 0 188 0 245 0 241 20 21 0 249 1 113 0 250 1 117 0 253 20 21 0 254 0 245 1 4 20 21 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 20 25 0 185 20 25 0 186 0 245 0 241 20 25 0 249 1 113 0 250 1 117 0 253 20 25 0 254 0 245 1 4 20 25 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 6 245 0 132 20 29 0 204 7 1 0 205 7 1 0 206 7 1 0 207 7 5 1 197] 
#[0 20 33 0 90] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 16 161 0 132 16 161 0 205 16 161 0 206 16 161 0 207 16 161 0 221] 
#[0 20 45 0 90] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 20 49 0 189 20 49 0 192 20 49 0 193 20 49 0 194 20 49 0 202 20 49 0 216 20 49 0 217 20 49 0 218 20 49 0 219 20 49 0 222 20 49 0 223 20 49 0 225 20 49 0 226 20 49 0 227 20 49 0 232 20 49 0 234 20 49 0 235 20 49 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 8 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 20 53 0 3 20 57 0 228] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 20 69 0 132 20 69 0 205 20 69 0 206 20 69 0 207 20 69 0 238] 
#[0 8 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 8 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 8 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 8 210 0 7 0 113] 
#[1 8 214 0 7 9 165 0 22 8 214 0 90 8 214 0 113 20 73 0 148] 
#[1 9 165 0 22 20 77 0 148] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 20 81 0 189 20 81 0 192 20 81 0 193 20 81 0 194 20 81 0 202 20 81 0 216 20 81 0 217 20 81 0 218 20 81 0 219 20 81 0 222 20 81 0 223 20 81 0 225 20 81 0 226 20 81 0 227 20 81 0 232 20 81 0 234 20 81 0 235 20 81 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 20 85 0 189 20 85 0 192 20 85 0 193 20 85 0 194 20 85 0 202 20 85 0 216 20 85 0 217 20 85 0 218 20 85 0 219 20 85 0 222 20 85 0 223 20 85 0 225 20 85 0 226 20 85 0 227 20 85 0 232 20 85 0 234 20 85 0 235 20 85 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 20 89 0 4 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 17 29 0 133 17 29 0 144 17 29 0 145 17 29 0 146 4 217 1 46 4 221 1 47 20 93 1 142 17 37 1 143 17 41 1 144] 
#[0 20 97 0 3] 
#[1 5 81 0 69 20 101 1 19 5 97 1 197] 
#[0 8 218 0 7 0 113] 
#[0 8 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 189 0 116 12 157 0 132 20 105 1 181] 
#[0 20 109 0 7] 
#[0 8 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 26 0 4 7 105 0 62 8 49 0 68 7 113 0 77 2 125 0 82 2 129 0 86 2 133 0 105 2 245 1 29 2 245 1 119 2 245 1 128 2 245 1 146 2 245 1 152 2 245 1 164 20 113 1 168 2 241 1 169 2 245 1 170 2 245 1 173 2 245 1 175 2 245 1 176 2 245 1 177 2 245 1 178] 
#[1 8 230 0 4 7 41 0 57 20 117 0 58 2 109 0 67 20 121 0 68 7 49 0 74 7 241 0 77 2 125 0 82 20 125 0 84 7 61 0 86 7 65 0 107 20 129 0 198 0 65 0 199 20 133 1 128 20 153 1 141 20 137 1 152 20 141 1 179 20 145 1 182 20 149 1 183 20 153 1 189 20 157 1 190 20 161 1 191 20 165 1 192 20 169 1 193] 
#[0 8 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 8 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 8 242 0 4 20 173 0 22 8 242 0 113] 
#[0 20 177 0 4] 
#[1 8 246 0 4 20 181 0 113] 
#[0 8 250 0 4 0 113] 
#[0 8 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 9 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 5 77 0 3 3 45 0 10 5 81 0 69 12 145 1 18 20 185 1 19 16 245 1 77 5 97 1 197] 
#[1 20 189 0 1 3 45 0 10 8 129 1 77 17 5 1 112] 
#[0 9 6 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 198] 
#[0 9 10 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 189 0 116 17 93 0 132 17 97 1 94 17 101 1 153] 
#[0 9 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 20 193 0 3] 
#[0 20 197 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 20 201 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 20 205 0 2] 
#[0 2 134 0 7 0 21] 
#[1 9 18 0 7 20 209 0 21] 
#[0 20 213 0 7] 
#[0 20 217 0 1] 
#[0 9 22 0 3] 
#[0 9 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 3 37 0 3 20 221 1 95] 
#[0 9 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 3 181 0 57 2 101 0 58 7 105 0 62 2 109 0 67 3 189 0 74 7 241 0 77 2 125 0 82 0 65 0 84 2 129 0 86 2 133 0 105 1 241 0 107 20 225 0 198 0 65 0 199 20 229 0 202 20 233 0 240 20 237 1 3 20 241 1 16 20 245 1 119 20 249 1 128 20 253 1 141 21 1 1 146 21 5 1 152 21 9 1 178 7 169 1 197] 
#[0 9 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 9 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 9 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 9 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 9 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 9 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 9 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 9 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 9 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 21 13 0 4] 
#[1 0 93 0 1 1 193 0 3 9 70 0 4 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 2 97 0 57 2 101 0 58 1 205 0 60 1 209 0 61 7 105 0 62 0 141 0 64 1 213 0 65 2 109 0 67 17 125 0 68 1 153 0 70 1 217 0 72 2 117 0 74 1 221 0 76 7 205 0 77 2 125 0 82 0 65 0 84 2 129 0 86 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 2 133 0 105 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 21 17 0 189 21 17 0 192 21 17 0 193 21 17 0 194 21 17 0 198 0 65 0 199 21 17 0 202 21 17 0 216 21 17 0 217 21 17 0 218 21 17 0 219 21 17 0 222 21 17 0 223 21 17 0 225 21 17 0 226 21 17 0 227 21 17 0 232 21 17 0 234 21 17 0 235 21 17 0 239 21 17 0 240 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 21 17 1 3 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 21 17 1 16 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 21 17 1 119 21 17 1 128 21 17 1 141 21 17 1 146 21 17 1 150 21 17 1 151 21 17 1 152 21 17 1 178 3 29 1 197] 
#[0 9 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 9 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 9 82 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 9 86 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 9 90 0 3 0 21] 
#[0 21 21 0 7] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 21 25 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 21 25 1 105 21 25 1 106 3 105 1 107 3 105 1 109] 
#[0 17 61 0 7] 
#[0 21 29 0 2] 
#[0 21 33 0 7] 
#[0 21 37 0 3] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 21 41 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 9 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 21 45 0 247 15 241 0 248 0 6 1 197] 
#[0 9 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 3 33 0 1 8 85 0 3 8 89 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 8 93 0 132 4 97 0 205 4 97 0 206 4 97 0 207 18 125 0 213 18 125 0 214 3 77 1 46 3 81 1 47 3 85 1 77 18 9 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 18 9 1 105 18 9 1 106 3 105 1 107 3 105 1 109 8 105 1 197] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 21 49 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 21 49 1 105 21 49 1 106 3 105 1 107 3 105 1 109] 
#[1 9 102 0 3 9 102 0 4 9 102 0 7 9 102 0 113 13 145 0 114 21 53 1 111] 
#[1 21 57 0 89 21 61 0 97] 
#[0 21 65 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 21 69 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 9 106 0 4 0 7 0 113] 
#[0 9 110 0 4 0 7 0 113] 
#[0 9 114 0 2 0 3 0 4 0 5 0 6 0 7 0 18 0 22 0 59 0 90 0 91 0 92 0 93 0 96 0 113 0 117 0 119 0 120] 
#[0 21 73 0 2] 
#[0 9 118 0 4 0 7 0 113] 
#[0 9 122 0 4 0 7 0 113] 
#[0 9 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 9 130 0 6 0 113] 
#[0 9 134 0 13 0 113] 
#[0 9 138 0 13 0 113] 
#[0 21 77 0 18] 
#[0 21 81 0 2] 
#[0 9 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 21 85 0 18] 
#[0 9 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 9 150 0 4 0 113] 
#[0 9 154 0 7 0 73] 
#[0 9 158 0 4 0 113] 
#[0 21 89 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 21 93 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 21 97 0 1] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 21 101 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 21 105 0 3] 
#[0 21 109 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 21 113 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 21 117 0 2] 
#[0 21 121 0 3] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 21 125 0 247 15 241 0 248 0 6 1 197] 
#[0 9 162 0 4 0 113] 
#[0 9 166 0 73] 
#[0 9 170 0 4 0 113] 
#[0 9 174 0 4 0 113] 
#[0 9 178 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 21 129 0 4] 
#[0 9 182 0 4 0 113] 
#[1 7 198 0 4 9 165 0 22 18 185 0 41 7 198 0 113 13 145 0 114 18 189 0 148 18 193 1 111] 
#[0 9 186 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 9 190 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 4 29 0 3 4 33 0 5 21 133 0 6 4 85 0 112 10 105 0 113 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 14 105 0 213 14 105 0 214 21 137 0 215 8 105 1 197] 
#[0 9 194 0 6 0 113] 
#[0 21 141 0 6] 
#[0 9 198 0 7 0 113] 
#[0 9 202 0 7 0 113] 
#[0 9 206 0 2 0 4 0 6 0 113] 
#[0 9 210 0 2 0 4 0 6 0 113] 
#[0 9 214 0 2 0 4 0 6 0 113] 
#[0 9 218 0 2 0 4 0 6 0 113] 
#[0 9 222 0 2 0 4 0 6 0 113] 
#[1 9 226 0 2 9 226 0 4 9 226 0 6 9 165 0 22 9 226 0 113 21 145 0 148] 
#[1 9 230 0 2 9 230 0 4 9 230 0 6 9 230 0 113 13 145 0 114 21 149 1 111] 
#[0 9 234 0 2 0 4 0 6 0 113] 
#[1 9 238 0 2 9 238 0 4 9 238 0 6 9 165 0 22 9 238 0 113 21 153 0 148] 
#[0 21 157 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 21 161 0 242 4 117 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 21 165 0 2] 
#[0 21 169 0 3] 
#[0 9 242 0 2] 
#[0 21 173 0 2] 
#[0 21 177 0 3] 
#[0 21 181 0 2] 
#[1 4 29 0 3 4 33 0 5 0 189 0 116 21 185 0 132 21 189 0 205 21 189 0 206 21 189 0 207 21 193 0 213 21 193 0 214 21 193 0 246 21 193 1 1 21 197 1 115 21 201 1 123 8 105 1 197] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 21 205 0 247 15 241 0 248 0 6 1 197] 
#[0 21 209 0 3] 
#[0 21 213 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 21 217 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 21 221 0 2] 
#[0 9 246 0 4] 
#[0 21 225 0 4] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 21 229 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 8 109 0 1 21 233 0 7 3 45 0 10 9 165 0 22 13 145 0 114 21 237 0 148 8 129 1 77 21 241 1 111 21 245 1 112] 
#[0 9 250 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 9 254 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 10 2 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 21 249 0 7] 
#[1 21 253 0 7 9 165 0 22 22 1 0 148] 
#[1 22 5 0 3 22 9 0 7] 
#[0 22 13 0 1] 
#[1 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 22 17 0 133 22 17 0 144 22 17 0 145 22 17 0 146 4 217 1 46 4 221 1 47 22 21 1 121 22 25 1 122 15 97 1 197] 
#[1 8 109 0 1 22 29 0 7 3 45 0 10 9 165 0 22 13 145 0 114 22 33 0 148 8 129 1 77 22 37 1 111 22 41 1 112] 
#[0 10 6 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 10 10 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 10 14 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 10 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 196 1 197 1 198] 
#[1 0 189 0 116 3 73 0 132 22 45 1 92 3 125 1 93 3 129 1 94 22 45 1 131] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 22 49 0 247 15 241 0 248 0 6 1 197] 
#[0 22 53 0 3] 
#[0 22 57 0 2] 
#[0 22 61 0 3] 
#[0 10 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 65 0 185 22 65 0 186 0 245 0 241 22 65 0 249 1 113 0 250 1 117 0 253 22 65 0 254 0 245 1 4 22 65 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 10 26 0 2 0 113] 
#[0 10 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 80 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 22 69 1 83 22 69 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 22 69 1 105 22 69 1 106 3 105 1 107 3 105 1 109] 
#[0 10 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 22 73 0 2 22 77 0 113] 
#[0 22 81 0 127] 
#[1 6 153 0 113 10 38 0 125 10 38 0 126] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 85 0 185 22 85 0 186 22 85 0 188 0 245 0 241 22 85 0 249 1 113 0 250 1 117 0 253 22 85 0 254 0 245 1 4 22 85 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 10 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 10 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 10 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 10 54 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 10 58 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 22 89 0 8] 
#[1 0 93 0 1 0 97 0 3 0 126 0 4 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 4 241 0 112 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 22 101 0 140 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 101 0 185 22 101 0 186 0 245 0 241 22 101 0 249 1 113 0 250 1 117 0 253 22 101 0 254 0 245 1 4 22 101 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 22 101 1 70 1 185 1 71 22 105 1 72 1 189 1 197] 
#[0 10 62 0 3 0 8 0 13 0 22 0 128] 
#[0 22 109 0 13] 
#[1 8 134 0 13 22 113 1 74] 
#[0 22 117 0 13] 
#[0 10 66 0 3 0 8 0 13 0 128] 
#[1 6 154 0 3 22 121 0 119 0 11 0 127 22 121 1 46 22 133 1 49 22 133 1 50 1 177 1 51 22 133 1 53 22 133 1 66 1 185 1 71 22 137 1 76] 
#[0 10 70 0 3 0 8 0 13 0 128] 
#[0 10 74 0 3 0 127 0 129] 
#[1 4 241 0 112 22 141 0 140] 
#[0 10 78 0 3 0 18] 
#[0 10 82 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 198] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 22 145 0 247 15 241 0 248 0 6 1 197] 
#[0 22 149 0 4] 
#[1 10 86 0 3 10 86 0 18 13 145 0 114 22 153 1 111] 
#[1 22 157 0 2 6 153 0 113] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 22 161 0 189 22 161 0 192 22 161 0 193 22 161 0 194 22 161 0 202 22 161 0 216 22 161 0 217 22 161 0 218 22 161 0 219 22 161 0 222 22 161 0 223 22 161 0 225 22 161 0 226 22 161 0 227 22 161 0 232 22 161 0 234 22 161 0 235 22 161 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 22 165 0 2 6 153 0 113] 
#[1 0 93 0 1 22 169 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 173 0 185 22 173 0 186 22 173 0 188 0 245 0 241 22 173 0 249 1 113 0 250 1 117 0 253 22 173 0 254 0 245 1 4 22 173 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 22 177 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 181 0 185 22 181 0 186 22 181 0 188 0 245 0 241 22 181 0 249 1 113 0 250 1 117 0 253 22 181 0 254 0 245 1 4 22 181 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 185 0 185 22 185 0 186 0 245 0 241 22 185 0 249 1 113 0 250 1 117 0 253 22 185 0 254 0 245 1 4 22 185 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 189 0 185 22 189 0 186 22 189 0 188 0 245 0 241 22 189 0 249 1 113 0 250 1 117 0 253 22 189 0 254 0 245 1 4 22 189 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 22 193 0 2 6 153 0 113] 
#[0 22 197 0 2] 
#[1 0 93 0 1 22 201 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 205 0 185 22 205 0 186 22 205 0 188 0 245 0 241 22 205 0 249 1 113 0 250 1 117 0 253 22 205 0 254 0 245 1 4 22 205 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 22 209 0 7 6 153 0 113] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 22 213 0 189 22 213 0 192 22 213 0 193 22 213 0 194 22 213 0 202 22 213 0 216 22 213 0 217 22 213 0 218 22 213 0 219 22 213 0 222 22 213 0 223 22 213 0 225 22 213 0 226 22 213 0 227 22 213 0 232 22 213 0 234 22 213 0 235 22 213 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 22 217 0 2 6 153 0 113] 
#[1 0 93 0 1 22 221 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 225 0 185 22 225 0 186 22 225 0 188 0 245 0 241 22 225 0 249 1 113 0 250 1 117 0 253 22 225 0 254 0 245 1 4 22 225 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 22 229 0 2 6 153 0 113] 
#[0 22 233 0 2] 
#[0 22 237 0 90] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 241 0 185 22 241 0 186 0 245 0 241 22 241 0 249 1 113 0 250 1 117 0 253 22 241 0 254 0 245 1 4 22 241 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 8 182 0 90] 
#[0 8 186 0 90] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 22 245 0 185 22 245 0 186 0 245 0 241 22 245 0 249 1 113 0 250 1 117 0 253 22 245 0 254 0 245 1 4 22 245 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 10 90 0 1 10 90 0 3 10 90 0 4 10 90 0 5 10 90 0 7 10 90 0 34 10 90 0 35 10 90 0 36 10 90 0 37 10 90 0 38 10 90 0 48 10 90 0 52 10 90 0 53 10 90 0 54 10 90 0 55 10 90 0 57 10 90 0 58 10 90 0 60 10 90 0 61 10 90 0 62 10 90 0 63 10 90 0 64 10 90 0 65 22 249 0 66 10 90 0 67 10 90 0 68 10 90 0 70 10 90 0 72 10 90 0 74 10 90 0 76 10 90 0 77 10 90 0 82 10 90 0 84 10 90 0 86 10 90 0 87 10 90 0 88 10 90 0 94 10 90 0 98 10 90 0 99 10 90 0 101 10 90 0 102 10 90 0 103 10 90 0 104 10 90 0 105 10 90 0 106 10 90 0 107 10 90 0 108 10 90 0 109 10 90 0 110 10 90 0 111 10 90 0 116 10 90 0 119 10 90 0 120 10 90 0 121 10 90 0 123 10 90 0 124 10 90 0 127 10 90 1 197 10 90 1 198] 
#[1 22 253 0 4 23 1 0 55 23 5 0 63 23 9 0 229 23 13 0 230 23 17 0 231] 
#[0 10 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 10 98 0 2] 
#[0 10 102 0 2] 
#[0 23 21 0 2] 
#[0 10 106 0 7 0 90 0 113] 
#[0 10 110 0 7 0 90 0 113] 
#[0 10 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 10 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 10 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 23 25 0 4] 
#[1 10 126 0 4 8 117 0 5 23 29 0 59 23 41 0 91 23 41 0 92 23 41 0 93 23 33 0 96 4 165 0 117 4 217 0 119 4 221 0 120 23 37 0 133 23 37 0 144 23 37 0 145 23 37 0 146 4 217 1 46 4 221 1 47 23 41 1 114 23 57 1 117 23 49 1 184 23 53 1 185 23 57 1 186 23 57 1 187 23 57 1 188] 
#[0 23 69 0 3] 
#[0 10 130 0 7 0 113] 
#[0 10 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 23 73 0 4] 
#[1 0 42 0 3 0 42 0 5 7 37 0 67 0 231 0 116 12 157 0 132 12 161 1 180 12 165 1 181 0 42 1 197] 
#[1 7 41 0 57 20 117 0 58 2 109 0 67 7 49 0 74 7 241 0 77 2 125 0 82 20 125 0 84 7 61 0 86 7 65 0 107 23 77 0 198 0 65 0 199 23 81 1 128 23 101 1 141 23 85 1 152 23 89 1 179 23 93 1 182 23 97 1 183 23 101 1 189 23 105 1 190] 
#[1 0 46 0 3 0 46 0 5 0 235 0 116 12 157 0 132 12 173 1 180 12 165 1 181 0 46 1 197] 
#[0 10 138 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 142 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 146 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 150 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 154 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 158 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 162 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 166 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 23 109 0 4] 
#[1 10 170 0 4 7 41 0 57 20 117 0 58 2 109 0 67 20 121 0 68 7 49 0 74 7 241 0 77 2 125 0 82 20 125 0 84 7 61 0 86 7 65 0 107 20 129 0 198 0 65 0 199 20 133 1 128 20 153 1 141 20 137 1 152 20 141 1 179 20 145 1 182 20 149 1 183 20 153 1 189 20 157 1 190 23 113 1 193] 
#[0 10 174 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 23 121 0 185 23 121 0 186 0 245 0 241 23 121 0 249 1 113 0 250 1 117 0 253 23 121 0 254 0 245 1 4 23 121 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 23 121 1 145 1 189 1 197] 
#[0 10 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 10 182 0 4 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 17 29 0 133 17 29 0 144 17 29 0 145 17 29 0 146 4 217 1 46 4 221 1 47 23 125 1 144] 
#[0 23 129 0 3] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 23 133 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 23 137 0 247 15 241 0 248 0 6 1 197] 
#[0 23 141 0 3] 
#[0 23 145 0 2] 
#[0 23 149 0 3] 
#[1 0 189 0 116 23 153 0 132] 
#[0 10 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 23 157 0 119 1 46] 
#[0 10 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 10 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 10 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 10 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 10 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 10 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 10 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 10 218 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 10 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 10 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 10 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 10 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 10 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 10 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197] 
#[0 10 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 23 161 0 7] 
#[1 9 102 0 3 9 102 0 7 13 145 0 114 23 165 1 111] 
#[0 10 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 23 169 0 247 15 241 0 248 0 6 1 197] 
#[0 23 173 0 2] 
#[0 23 177 0 4] 
#[0 10 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 11 2 0 3 0 4 0 7 0 113] 
#[0 23 181 0 6] 
#[0 23 185 0 6] 
#[1 11 6 0 4 11 6 0 7 11 6 0 113 13 145 0 114 23 189 1 111] 
#[0 23 193 0 2] 
#[1 11 10 0 3 11 10 0 4 11 10 0 7 11 10 0 113 13 145 0 114 23 197 1 111] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 23 201 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 23 201 1 105 23 201 1 106 3 105 1 107 3 105 1 109] 
#[0 23 205 0 18] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 23 209 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 23 209 1 105 23 209 1 106 3 105 1 107 3 105 1 109] 
#[0 23 213 0 3] 
#[0 23 217 0 2] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 23 221 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[0 23 225 0 2] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 23 229 0 247 15 241 0 248 0 6 1 197] 
#[0 23 233 0 3] 
#[0 23 237 0 2] 
#[0 23 241 0 3] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 23 245 0 247 15 241 0 248 0 6 1 197] 
#[0 23 249 0 4] 
#[0 11 14 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 11 18 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 23 253 0 6] 
#[0 11 22 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 11 26 0 2 0 4 0 6 0 113] 
#[0 11 30 0 2 0 4 0 6 0 113] 
#[0 11 34 0 2 0 4 0 6 0 113] 
#[0 24 1 0 3] 
#[0 24 5 0 2] 
#[0 24 9 0 3] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 24 13 0 247 15 241 0 248 0 6 1 197] 
#[0 24 17 0 3] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 24 21 0 247 15 241 0 248 0 6 1 197] 
#[1 13 145 0 114 24 25 1 111] 
#[1 3 58 0 2 9 165 0 22 11 38 0 114 9 233 0 148] 
#[1 3 62 0 2 9 165 0 22 11 42 0 114 9 241 0 148] 
#[0 24 29 0 2] 
#[1 13 145 0 114 24 33 1 111] 
#[0 24 37 0 2] 
#[0 24 41 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 19 9 0 247 15 241 0 248 24 45 1 14 0 6 1 197] 
#[0 24 49 0 3] 
#[0 24 53 0 2] 
#[0 24 57 0 3] 
#[0 11 46 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 198] 
#[0 24 61 0 2] 
#[0 11 50 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 24 65 0 7] 
#[1 24 69 0 7 9 165 0 22 24 73 0 148] 
#[1 24 77 0 3 24 81 0 7] 
#[0 11 54 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 11 58 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 24 85 0 7] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 24 89 0 247 15 241 0 248 0 6 1 197] 
#[0 11 62 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 24 93 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 8 109 0 1 24 97 0 7 3 45 0 10 9 165 0 22 13 145 0 114 24 101 0 148 8 129 1 77 24 105 1 111 24 109 1 112] 
#[0 11 66 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 11 70 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 11 74 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 24 113 0 7] 
#[1 24 117 0 7 9 165 0 22 24 121 0 148] 
#[1 24 125 0 3 24 129 0 7] 
#[0 11 78 0 3 0 113] 
#[0 24 133 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 24 137 0 247 15 241 0 248 24 141 1 5 0 6 1 197] 
#[0 24 145 0 3] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 24 149 0 247 15 241 0 248 0 6 1 197] 
#[0 11 82 0 2 0 113] 
#[0 11 86 0 13 0 113] 
#[0 11 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 19 101 0 112 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 19 105 0 185 19 105 0 186 0 245 0 241 19 105 0 249 1 113 0 250 1 117 0 253 19 105 0 254 0 245 1 4 19 105 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 24 153 0 8] 
#[1 6 153 0 113 11 94 0 125 11 94 0 126] 
#[1 11 209 0 128 24 157 1 54 24 157 1 55 24 157 1 56 11 225 1 57 11 229 1 58] 
#[0 11 98 0 4] 
#[0 11 102 0 4] 
#[1 0 126 0 4 24 161 1 72] 
#[0 24 165 0 4] 
#[0 11 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 196 1 197 1 198] 
#[0 24 169 0 13] 
#[0 11 110 0 3 0 127 0 129] 
#[0 11 114 0 3 0 8 0 13 0 128] 
#[0 11 118 0 3 0 8 0 13 0 128] 
#[0 11 122 0 3 0 8 0 13 0 128] 
#[0 11 126 0 3 0 8 0 13 0 128] 
#[0 24 173 0 3] 
#[1 0 18 0 4 24 177 1 71] 
#[0 24 181 0 4] 
#[0 11 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 11 134 0 3 0 18] 
#[0 24 185 0 7] 
#[0 11 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 24 189 0 189 24 189 0 192 24 189 0 193 24 189 0 194 24 189 0 202 24 189 0 216 24 189 0 217 24 189 0 218 24 189 0 219 24 189 0 222 24 189 0 223 24 189 0 225 24 189 0 226 24 189 0 227 24 189 0 232 24 189 0 234 24 189 0 235 24 189 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 24 193 0 189 24 193 0 192 24 193 0 193 24 193 0 194 24 193 0 202 24 193 0 216 24 193 0 217 24 193 0 218 24 193 0 219 24 193 0 222 24 193 0 223 24 193 0 225 24 193 0 226 24 193 0 227 24 193 0 232 24 193 0 234 24 193 0 235 24 193 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 24 197 0 2 6 153 0 113] 
#[1 0 93 0 1 24 201 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 24 205 0 185 24 205 0 186 24 205 0 188 0 245 0 241 24 205 0 249 1 113 0 250 1 117 0 253 24 205 0 254 0 245 1 4 24 205 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 24 209 0 7 6 153 0 113] 
#[0 24 213 0 2] 
#[1 24 217 0 2 6 153 0 113] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 24 221 0 189 24 221 0 192 24 221 0 193 24 221 0 194 24 221 0 202 24 221 0 216 24 221 0 217 24 221 0 218 24 221 0 219 24 221 0 222 24 221 0 223 24 221 0 225 24 221 0 226 24 221 0 227 24 221 0 232 24 221 0 234 24 221 0 235 24 221 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 24 225 0 189 24 225 0 192 24 225 0 193 24 225 0 194 24 225 0 202 24 225 0 216 24 225 0 217 24 225 0 218 24 225 0 219 24 225 0 222 24 225 0 223 24 225 0 225 24 225 0 226 24 225 0 227 24 225 0 232 24 225 0 234 24 225 0 235 24 225 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 24 229 0 189 24 229 0 192 24 229 0 193 24 229 0 194 24 229 0 202 24 229 0 216 24 229 0 217 24 229 0 218 24 229 0 219 24 229 0 222 24 229 0 223 24 229 0 225 24 229 0 226 24 229 0 227 24 229 0 232 24 229 0 234 24 229 0 235 24 229 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 24 233 0 2 6 153 0 113] 
#[1 0 93 0 1 24 237 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 24 241 0 185 24 241 0 186 24 241 0 188 0 245 0 241 24 241 0 249 1 113 0 250 1 117 0 253 24 241 0 254 0 245 1 4 24 241 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 11 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 24 245 0 189 24 245 0 192 24 245 0 193 24 245 0 194 24 245 0 202 24 245 0 216 24 245 0 217 24 245 0 218 24 245 0 219 24 245 0 222 24 245 0 223 24 245 0 225 24 245 0 226 24 245 0 227 24 245 0 232 24 245 0 234 24 245 0 235 24 245 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 24 249 0 189 24 249 0 192 24 249 0 193 24 249 0 194 24 249 0 202 24 249 0 216 24 249 0 217 24 249 0 218 24 249 0 219 24 249 0 222 24 249 0 223 24 249 0 225 24 249 0 226 24 249 0 227 24 249 0 232 24 249 0 234 24 249 0 235 24 249 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 24 253 0 2 6 153 0 113] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 25 1 0 189 25 1 0 192 25 1 0 193 25 1 0 194 25 1 0 202 25 1 0 216 25 1 0 217 25 1 0 218 25 1 0 219 25 1 0 222 25 1 0 223 25 1 0 225 25 1 0 226 25 1 0 227 25 1 0 232 25 1 0 234 25 1 0 235 25 1 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 25 5 0 189 25 5 0 192 25 5 0 193 25 5 0 194 25 5 0 202 25 5 0 216 25 5 0 217 25 5 0 218 25 5 0 219 25 5 0 222 25 5 0 223 25 5 0 225 25 5 0 226 25 5 0 227 25 5 0 232 25 5 0 234 25 5 0 235 25 5 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 25 9 0 185 25 9 0 186 0 245 0 241 25 9 0 249 1 113 0 250 1 117 0 253 25 9 0 254 0 245 1 4 25 9 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 25 13 0 2] 
#[0 25 17 0 2] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 25 21 0 189 25 21 0 192 25 21 0 193 25 21 0 194 25 21 0 202 25 21 0 216 25 21 0 217 25 21 0 218 25 21 0 219 25 21 0 222 25 21 0 223 25 21 0 225 25 21 0 226 25 21 0 227 25 21 0 232 25 21 0 234 25 21 0 235 25 21 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 11 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 25 25 0 185 25 25 0 186 25 25 0 188 0 245 0 241 25 25 0 249 1 113 0 250 1 117 0 253 25 25 0 254 0 245 1 4 25 25 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 25 29 0 114] 
#[1 25 33 0 4 23 1 0 55 23 5 0 63 25 37 0 230 25 41 0 231] 
#[0 11 150 0 4 0 55 0 63] 
#[1 25 45 0 4 23 1 0 55 25 49 0 229 23 13 0 230] 
#[1 6 237 0 3 25 53 0 194] 
#[0 11 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 25 57 0 1] 
#[1 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 25 61 0 133 25 61 0 144 25 61 0 145 25 61 0 146 4 217 1 46 4 221 1 47] 
#[1 8 109 0 1 25 65 0 7 3 45 0 10 13 145 0 114 8 129 1 77 25 69 1 111 25 73 1 112] 
#[1 4 141 0 5 25 77 0 96 4 165 0 117 4 217 0 119 4 221 0 120 25 81 0 133 25 81 0 144 25 81 0 145 25 81 0 146 4 217 1 46 4 221 1 47] 
#[0 11 158 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 25 85 0 4] 
#[1 11 162 0 4 8 117 0 5 23 29 0 59 23 41 0 91 23 41 0 92 23 41 0 93 23 33 0 96 4 165 0 117 4 217 0 119 4 221 0 120 23 37 0 133 23 37 0 144 23 37 0 145 23 37 0 146 4 217 1 46 4 221 1 47 23 41 1 114 25 89 1 117 25 89 1 186 25 89 1 187 25 89 1 188] 
#[0 11 166 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 11 170 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 11 174 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[1 10 126 0 4 8 117 0 5 23 29 0 59 23 41 0 91 23 41 0 92 23 41 0 93 23 33 0 96 4 165 0 117 4 217 0 119 4 221 0 120 23 37 0 133 23 37 0 144 23 37 0 145 23 37 0 146 4 217 1 46 4 221 1 47 23 41 1 114 23 57 1 117 25 93 1 184 23 53 1 185 23 57 1 186 23 57 1 187 23 57 1 188] 
#[0 11 178 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 11 182 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 186 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 190 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 194 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 198 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 202 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 206 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 210 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 11 218 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 222 0 4 0 113] 
#[0 11 226 0 4 0 113] 
#[0 11 230 0 4 0 113] 
#[1 0 239 0 4 8 117 0 5 10 141 0 7 4 145 0 25 4 149 0 52 23 29 0 59 4 153 0 75 23 41 0 91 23 41 0 92 23 41 0 93 4 157 0 95 25 97 0 96 4 165 0 117 4 217 0 119 4 221 0 120 25 101 0 133 25 101 0 144 25 101 0 145 25 101 0 146 10 165 1 0 10 165 1 2 10 165 1 7 10 165 1 11 15 105 1 20 10 161 1 21 10 165 1 22 4 217 1 46 4 221 1 47 23 41 1 114 23 57 1 117 10 165 1 121 10 165 1 122 23 49 1 184 23 53 1 185 23 57 1 186 23 57 1 187 23 57 1 188 10 169 1 197] 
#[0 25 105 0 2] 
#[0 25 109 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 24 137 0 247 15 241 0 248 25 113 1 5 0 6 1 197] 
#[0 25 117 0 3] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 25 121 0 247 15 241 0 248 0 6 1 197] 
#[0 7 82 0 7 0 21] 
#[0 25 125 0 2] 
#[0 11 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 243 0 3 11 2 0 7] 
#[0 25 129 0 4] 
#[1 0 247 0 3 11 10 0 7 13 145 0 114 25 133 1 111] 
#[1 0 251 0 1 11 238 0 3 11 238 0 4 0 251 0 5 0 251 0 7 11 130 0 8 11 130 0 9 11 130 0 10 11 130 0 11 11 130 0 12 11 130 0 13 11 130 0 14 11 130 0 15 11 130 0 16 11 130 0 17 11 130 0 19 11 130 0 20 11 130 0 21 11 130 0 22 11 130 0 23 11 130 0 24 11 130 0 25 11 130 0 26 11 130 0 27 11 130 0 28 11 130 0 29 11 130 0 30 11 130 0 31 11 130 0 32 11 130 0 33 0 251 0 34 0 251 0 35 0 251 0 36 0 251 0 37 11 238 0 38 11 130 0 39 11 130 0 40 11 130 0 41 11 130 0 42 11 130 0 43 11 130 0 44 11 130 0 45 11 130 0 46 11 130 0 47 11 238 0 48 11 130 0 49 11 130 0 50 11 130 0 51 11 238 0 52 11 238 0 53 11 238 0 54 11 238 0 57 11 238 0 58 11 238 0 60 11 238 0 61 11 238 0 62 11 238 0 64 11 238 0 65 11 238 0 67 11 238 0 68 11 238 0 70 11 238 0 72 11 238 0 74 11 238 0 76 11 238 0 77 11 130 0 78 11 130 0 81 11 238 0 82 11 238 0 84 11 238 0 86 11 238 0 87 11 238 0 88 11 238 0 94 11 238 0 98 11 238 0 99 11 238 0 101 11 238 0 102 11 238 0 103 11 238 0 104 11 238 0 105 11 238 0 106 11 238 0 107 11 238 0 108 11 238 0 109 11 238 0 110 11 238 0 111 11 130 0 113 11 238 0 116 11 238 0 119 11 238 0 120 11 238 0 121 0 251 0 123 0 251 0 124 11 238 0 127 11 130 1 196 0 251 1 197 11 238 1 198] 
#[1 13 145 0 114 25 137 1 111] 
#[1 13 145 0 114 25 141 1 111] 
#[0 11 242 0 4 0 7 0 113] 
#[1 11 246 0 4 11 246 0 7 11 246 0 113 13 145 0 114 25 145 1 111] 
#[0 11 250 0 3 0 4 0 7 0 113] 
#[0 11 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 0 189 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 46 3 81 1 47 3 85 1 77 25 149 1 84 3 93 1 85 3 97 1 86 3 97 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 105 1 92 3 125 1 93 3 129 1 94 3 105 1 95 3 105 1 99 3 105 1 100 3 93 1 103 3 97 1 104 25 149 1 105 25 149 1 106 3 105 1 107 3 105 1 109] 
#[0 12 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 19 9 0 247 15 241 0 248 25 153 1 14 0 6 1 197] 
#[0 25 157 0 3] 
#[0 25 161 0 2] 
#[0 25 165 0 3] 
#[0 25 169 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 24 137 0 247 15 241 0 248 25 173 1 5 0 6 1 197] 
#[0 25 177 0 3] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 25 181 0 247 15 241 0 248 0 6 1 197] 
#[0 25 185 0 4] 
#[0 11 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 6 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 24 137 0 247 15 241 0 248 25 189 1 5 0 6 1 197] 
#[0 25 193 0 3] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 19 9 0 247 15 241 0 248 25 197 1 14 0 6 1 197] 
#[0 25 201 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 25 205 0 247 15 241 0 248 0 6 1 197] 
#[0 25 209 0 4] 
#[0 25 213 0 3] 
#[1 13 145 0 114 25 217 1 111] 
#[0 12 10 0 2] 
#[1 25 221 0 3 13 145 0 114 25 225 1 111] 
#[0 12 14 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 25 229 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 25 233 0 247 15 241 0 248 25 237 1 10 0 6 1 197] 
#[0 25 241 0 3] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 19 9 0 247 15 241 0 248 25 245 1 14 0 6 1 197] 
#[1 25 249 0 3 25 253 0 7] 
#[0 12 18 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 12 22 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 26 1 0 7] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 26 5 0 247 15 241 0 248 0 6 1 197] 
#[0 12 26 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 12 30 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 26 9 0 4] 
#[0 26 13 0 2] 
#[0 12 34 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 26 17 0 7] 
#[1 26 21 0 7 9 165 0 22 26 25 0 148] 
#[1 26 29 0 3 26 33 0 7] 
#[0 12 38 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 12 42 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 26 37 0 7] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 26 41 0 247 15 241 0 248 0 6 1 197] 
#[0 12 46 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 12 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 12 54 0 4] 
#[0 26 45 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 24 137 0 247 15 241 0 248 26 49 1 5 0 6 1 197] 
#[0 26 53 0 4] 
#[1 12 58 0 13 26 57 1 75] 
#[1 12 58 0 13 26 61 1 75] 
#[0 26 65 0 4] 
#[0 12 62 0 3 0 127 0 129] 
#[0 12 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 196 1 197 1 198] 
#[1 0 93 0 1 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 26 69 0 185 26 69 0 186 0 245 0 241 26 69 0 249 1 113 0 250 1 117 0 253 26 69 0 254 0 245 1 4 26 69 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 26 73 0 4] 
#[0 12 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 12 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 82 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 26 77 0 189 26 77 0 192 26 77 0 193 26 77 0 194 26 77 0 202 26 77 0 216 26 77 0 217 26 77 0 218 26 77 0 219 26 77 0 222 26 77 0 223 26 77 0 225 26 77 0 226 26 77 0 227 26 77 0 232 26 77 0 234 26 77 0 235 26 77 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 26 81 0 189 26 81 0 192 26 81 0 193 26 81 0 194 26 81 0 202 26 81 0 216 26 81 0 217 26 81 0 218 26 81 0 219 26 81 0 222 26 81 0 223 26 81 0 225 26 81 0 226 26 81 0 227 26 81 0 232 26 81 0 234 26 81 0 235 26 81 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 26 85 0 2 6 153 0 113] 
#[1 0 93 0 1 26 89 0 2 0 97 0 3 0 101 0 5 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 0 137 0 57 0 141 0 64 1 153 0 70 0 149 0 74 0 153 0 77 0 157 0 87 1 149 0 88 0 165 0 98 0 169 0 101 1 153 0 103 0 177 0 106 0 181 0 108 0 185 0 111 0 189 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 26 93 0 185 26 93 0 186 26 93 0 188 0 245 0 241 26 93 0 249 1 113 0 250 1 117 0 253 26 93 0 254 0 245 1 4 26 93 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 26 97 0 189 26 97 0 192 26 97 0 193 26 97 0 194 26 97 0 202 26 97 0 216 26 97 0 217 26 97 0 218 26 97 0 219 26 97 0 222 26 97 0 223 26 97 0 225 26 97 0 226 26 97 0 227 26 97 0 232 26 97 0 234 26 97 0 235 26 97 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 26 101 0 189 26 101 0 192 26 101 0 193 26 101 0 194 26 101 0 202 26 101 0 216 26 101 0 217 26 101 0 218 26 101 0 219 26 101 0 222 26 101 0 223 26 101 0 225 26 101 0 226 26 101 0 227 26 101 0 232 26 101 0 234 26 101 0 235 26 101 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 12 86 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 26 105 0 189 26 105 0 192 26 105 0 193 26 105 0 194 26 105 0 202 26 105 0 216 26 105 0 217 26 105 0 218 26 105 0 219 26 105 0 222 26 105 0 223 26 105 0 225 26 105 0 226 26 105 0 227 26 105 0 232 26 105 0 234 26 105 0 235 26 105 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 26 109 0 189 26 109 0 192 26 109 0 193 26 109 0 194 26 109 0 202 26 109 0 216 26 109 0 217 26 109 0 218 26 109 0 219 26 109 0 222 26 109 0 223 26 109 0 225 26 109 0 226 26 109 0 227 26 109 0 232 26 109 0 234 26 109 0 235 26 109 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 26 113 0 2 6 153 0 113] 
#[0 12 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 102 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 26 117 0 189 26 117 0 192 26 117 0 193 26 117 0 194 26 117 0 202 26 117 0 216 26 117 0 217 26 117 0 218 26 117 0 219 26 117 0 222 26 117 0 223 26 117 0 225 26 117 0 226 26 117 0 227 26 117 0 232 26 117 0 234 26 117 0 235 26 117 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 12 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 26 121 0 2] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 26 125 0 189 26 125 0 192 26 125 0 193 26 125 0 194 26 125 0 202 26 125 0 216 26 125 0 217 26 125 0 218 26 125 0 219 26 125 0 222 26 125 0 223 26 125 0 225 26 125 0 226 26 125 0 227 26 125 0 232 26 125 0 234 26 125 0 235 26 125 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 26 129 0 189 26 129 0 192 26 129 0 193 26 129 0 194 26 129 0 202 26 129 0 216 26 129 0 217 26 129 0 218 26 129 0 219 26 129 0 222 26 129 0 223 26 129 0 225 26 129 0 226 26 129 0 227 26 129 0 232 26 129 0 234 26 129 0 235 26 129 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 12 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 6 153 0 113 26 133 0 114] 
#[1 0 6 0 1 0 6 0 3 12 118 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 12 118 0 55 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 26 137 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 0 6 1 197] 
#[0 12 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 126 0 4 0 55 0 63] 
#[1 26 141 0 4 23 1 0 55 26 145 0 229 23 13 0 230] 
#[0 12 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 26 149 0 4 23 1 0 55 25 37 0 230] 
#[0 12 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 26 153 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 8 109 0 1 26 157 0 7 3 45 0 10 13 145 0 114 8 129 1 77 26 161 1 111 26 165 1 112] 
#[0 12 138 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 26 169 0 7] 
#[0 26 173 0 7] 
#[1 4 141 0 5 4 165 0 117 4 217 0 119 4 221 0 120 26 177 0 133 26 177 0 144 26 177 0 145 26 177 0 146 4 217 1 46 4 221 1 47] 
#[1 8 109 0 1 26 181 0 7 3 45 0 10 13 145 0 114 8 129 1 77 26 185 1 111 26 189 1 112] 
#[0 12 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 146 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 26 193 0 4] 
#[1 4 141 0 5 4 145 0 25 4 149 0 52 4 153 0 75 4 157 0 95 4 165 0 117 4 217 0 119 4 221 0 120 26 197 0 133 26 197 0 144 26 197 0 145 26 197 0 146 15 33 1 0 15 33 1 2 15 33 1 7 15 33 1 11 4 217 1 46 4 221 1 47 15 33 1 121 15 33 1 122 4 233 1 197] 
#[1 26 201 0 1 25 65 0 7 3 45 0 10 13 145 0 114 8 129 1 77 25 69 1 111 25 73 1 112] 
#[1 23 149 0 3 9 102 0 7 13 145 0 114 21 53 1 111] 
#[1 0 255 0 1 12 150 0 3 12 150 0 4 0 255 0 5 0 255 0 7 12 50 0 8 12 50 0 9 12 50 0 10 12 50 0 11 12 50 0 12 12 50 0 13 12 50 0 14 12 50 0 15 12 50 0 16 12 50 0 17 12 50 0 19 12 50 0 20 12 50 0 21 12 50 0 22 12 50 0 23 12 50 0 24 12 50 0 25 12 50 0 26 12 50 0 27 12 50 0 28 12 50 0 29 12 50 0 30 12 50 0 31 12 50 0 32 12 50 0 33 0 255 0 34 0 255 0 35 0 255 0 36 0 255 0 37 12 150 0 38 12 50 0 39 12 50 0 40 12 50 0 41 12 50 0 42 12 50 0 43 12 50 0 44 12 50 0 45 12 50 0 46 12 50 0 47 12 150 0 48 12 50 0 49 12 50 0 50 12 50 0 51 12 150 0 52 12 150 0 53 12 150 0 54 12 150 0 57 12 150 0 58 12 150 0 60 12 150 0 61 12 150 0 62 12 150 0 64 12 150 0 65 12 150 0 67 12 150 0 68 12 150 0 70 12 150 0 72 12 150 0 74 12 150 0 76 12 150 0 77 12 50 0 78 12 50 0 81 12 150 0 82 12 150 0 84 12 150 0 86 12 150 0 87 12 150 0 88 12 150 0 94 12 150 0 98 12 150 0 99 12 150 0 101 12 150 0 102 12 150 0 103 12 150 0 104 12 150 0 105 12 150 0 106 12 150 0 107 12 150 0 108 12 150 0 109 12 150 0 110 12 150 0 111 12 50 0 113 12 150 0 116 12 150 0 119 12 150 0 120 12 150 0 121 0 255 0 123 0 255 0 124 12 150 0 127 12 50 1 196 0 255 1 197 12 150 1 198] 
#[0 26 205 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 24 137 0 247 15 241 0 248 26 209 1 5 0 6 1 197] 
#[0 26 213 0 4] 
#[0 26 217 0 7] 
#[1 1 3 0 1 12 154 0 3 12 154 0 4 1 3 0 5 1 3 0 7 12 70 0 8 12 70 0 9 12 70 0 10 12 70 0 11 12 70 0 12 12 70 0 13 12 70 0 14 12 70 0 15 12 70 0 16 12 70 0 17 12 70 0 19 12 70 0 20 12 70 0 21 12 70 0 22 12 70 0 23 12 70 0 24 12 70 0 25 12 70 0 26 12 70 0 27 12 70 0 28 12 70 0 29 12 70 0 30 12 70 0 31 12 70 0 32 12 70 0 33 1 3 0 34 1 3 0 35 1 3 0 36 1 3 0 37 12 154 0 38 12 70 0 39 12 70 0 40 12 70 0 41 12 70 0 42 12 70 0 43 12 70 0 44 12 70 0 45 12 70 0 46 12 70 0 47 12 154 0 48 12 70 0 49 12 70 0 50 12 70 0 51 12 154 0 52 12 154 0 53 12 154 0 54 12 154 0 57 12 154 0 58 12 154 0 60 12 154 0 61 12 154 0 62 12 154 0 64 12 154 0 65 12 154 0 67 12 154 0 68 12 154 0 70 12 154 0 72 12 154 0 74 12 154 0 76 12 154 0 77 12 70 0 78 12 70 0 81 12 154 0 82 12 154 0 84 12 154 0 86 12 154 0 87 12 154 0 88 12 154 0 94 12 154 0 98 12 154 0 99 12 154 0 101 12 154 0 102 12 154 0 103 12 154 0 104 12 154 0 105 12 154 0 106 12 154 0 107 12 154 0 108 12 154 0 109 12 154 0 110 12 154 0 111 12 70 0 113 12 154 0 116 12 154 0 119 12 154 0 120 12 154 0 121 1 3 0 123 1 3 0 124 12 154 0 127 12 70 1 196 1 3 1 197 12 154 1 198] 
#[1 1 7 0 3 11 250 0 7] 
#[0 12 158 0 4 0 5 0 7 0 59 0 91 0 92 0 93 0 96 0 113 0 117 0 119 0 120] 
#[0 12 162 0 4 0 5 0 7 0 59 0 91 0 92 0 93 0 96 0 113 0 117 0 119 0 120] 
#[0 12 166 0 4 0 7 0 113] 
#[0 12 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 198] 
#[0 26 221 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 25 233 0 247 15 241 0 248 26 225 1 10 0 6 1 197] 
#[0 26 229 0 3] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 19 9 0 247 15 241 0 248 26 233 1 14 0 6 1 197] 
#[0 12 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 26 237 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 24 137 0 247 15 241 0 248 26 241 1 5 0 6 1 197] 
#[0 26 245 0 4] 
#[0 12 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 26 249 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 25 233 0 247 15 241 0 248 26 253 1 10 0 6 1 197] 
#[0 27 1 0 4] 
#[0 12 174 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 27 5 0 4] 
#[0 12 178 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 27 9 0 247 15 241 0 248 0 6 1 197] 
#[0 27 13 0 3] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 27 17 0 247 15 241 0 248 0 6 1 197] 
#[0 27 21 0 3] 
#[0 12 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 12 186 0 4] 
#[0 27 25 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 25 233 0 247 15 241 0 248 27 29 1 10 0 6 1 197] 
#[0 27 33 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 27 37 0 247 15 241 0 248 0 6 1 197] 
#[0 12 190 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 12 194 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 27 41 0 4] 
#[0 12 198 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[1 27 45 0 3 27 49 0 7] 
#[0 12 202 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 12 206 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 27 53 0 7] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 27 57 0 247 15 241 0 248 0 6 1 197] 
#[0 12 210 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 12 214 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 27 61 0 4] 
#[0 12 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 27 65 0 4] 
#[0 12 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 27 69 0 13] 
#[0 27 73 0 13] 
#[0 12 226 0 3 0 127 0 129] 
#[1 0 18 0 4 27 77 1 71] 
#[0 12 230 0 3 0 8 0 13 0 128] 
#[0 12 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 27 81 0 189 27 81 0 192 27 81 0 193 27 81 0 194 27 81 0 202 27 81 0 216 27 81 0 217 27 81 0 218 27 81 0 219 27 81 0 222 27 81 0 223 27 81 0 225 27 81 0 226 27 81 0 227 27 81 0 232 27 81 0 234 27 81 0 235 27 81 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 27 85 0 189 27 85 0 192 27 85 0 193 27 85 0 194 27 85 0 202 27 85 0 216 27 85 0 217 27 85 0 218 27 85 0 219 27 85 0 222 27 85 0 223 27 85 0 225 27 85 0 226 27 85 0 227 27 85 0 232 27 85 0 234 27 85 0 235 27 85 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[1 27 89 0 2 6 153 0 113] 
#[0 12 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 12 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 27 93 0 189 27 93 0 192 27 93 0 193 27 93 0 194 27 93 0 202 27 93 0 216 27 93 0 217 27 93 0 218 27 93 0 219 27 93 0 222 27 93 0 223 27 93 0 225 27 93 0 226 27 93 0 227 27 93 0 232 27 93 0 234 27 93 0 235 27 93 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 13 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 27 97 0 189 27 97 0 192 27 97 0 193 27 97 0 194 27 97 0 202 27 97 0 216 27 97 0 217 27 97 0 218 27 97 0 219 27 97 0 222 27 97 0 223 27 97 0 225 27 97 0 226 27 97 0 227 27 97 0 232 27 97 0 234 27 97 0 235 27 97 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 13 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 13 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 6 0 1 0 6 0 3 13 14 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 13 14 0 55 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 13 14 0 63 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 27 101 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 0 6 1 197] 
#[1 0 6 0 1 0 6 0 3 13 18 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 13 18 0 55 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 7 25 0 196 0 57 0 197 7 25 0 198 0 65 0 199 0 6 1 197] 
#[0 13 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 27 105 0 4 23 1 0 55 25 37 0 230] 
#[0 13 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 27 109 0 2] 
#[0 13 30 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 27 113 0 7] 
#[0 27 117 0 7] 
#[0 13 34 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 38 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[1 8 109 0 1 27 121 0 7 3 45 0 10 13 145 0 114 8 129 1 77 27 125 1 111 27 129 1 112] 
#[0 13 42 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 27 133 0 7] 
#[0 27 137 0 7] 
#[0 13 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 26 201 0 1 26 157 0 7 3 45 0 10 13 145 0 114 8 129 1 77 26 161 1 111 26 165 1 112] 
#[1 0 82 0 2 4 29 0 3 4 33 0 5 4 85 0 112 0 189 0 116 9 113 0 132 4 97 0 205 4 97 0 206 4 97 0 207 4 129 0 213 4 129 0 214 4 125 0 215 14 229 0 242 27 141 0 243 4 121 0 244 4 125 0 245 4 129 0 246 8 105 1 197] 
#[1 1 11 0 1 13 50 0 3 13 50 0 4 1 11 0 5 1 11 0 7 12 218 0 8 12 218 0 9 12 218 0 10 12 218 0 11 12 218 0 12 12 218 0 13 12 218 0 14 12 218 0 15 12 218 0 16 12 218 0 17 12 218 0 19 12 218 0 20 12 218 0 21 12 218 0 22 12 218 0 23 12 218 0 24 12 218 0 25 12 218 0 26 12 218 0 27 12 218 0 28 12 218 0 29 12 218 0 30 12 218 0 31 12 218 0 32 12 218 0 33 1 11 0 34 1 11 0 35 1 11 0 36 1 11 0 37 13 50 0 38 12 218 0 39 12 218 0 40 12 218 0 41 12 218 0 42 12 218 0 43 12 218 0 44 12 218 0 45 12 218 0 46 12 218 0 47 13 50 0 48 12 218 0 49 12 218 0 50 12 218 0 51 13 50 0 52 13 50 0 53 13 50 0 54 13 50 0 57 13 50 0 58 13 50 0 60 13 50 0 61 13 50 0 62 13 50 0 64 13 50 0 65 13 50 0 67 13 50 0 68 13 50 0 70 13 50 0 72 13 50 0 74 13 50 0 76 13 50 0 77 12 218 0 78 12 218 0 81 13 50 0 82 13 50 0 84 13 50 0 86 13 50 0 87 13 50 0 88 13 50 0 94 13 50 0 98 13 50 0 99 13 50 0 101 13 50 0 102 13 50 0 103 13 50 0 104 13 50 0 105 13 50 0 106 13 50 0 107 13 50 0 108 13 50 0 109 13 50 0 110 13 50 0 111 12 218 0 113 13 50 0 116 13 50 0 119 13 50 0 120 13 50 0 121 1 11 0 123 1 11 0 124 13 50 0 127 12 218 1 196 1 11 1 197 13 50 1 198] 
#[0 27 145 0 4] 
#[1 1 15 0 1 13 54 0 3 13 54 0 4 1 15 0 5 1 15 0 7 12 222 0 8 12 222 0 9 12 222 0 10 12 222 0 11 12 222 0 12 12 222 0 13 12 222 0 14 12 222 0 15 12 222 0 16 12 222 0 17 12 222 0 19 12 222 0 20 12 222 0 21 12 222 0 22 12 222 0 23 12 222 0 24 12 222 0 25 12 222 0 26 12 222 0 27 12 222 0 28 12 222 0 29 12 222 0 30 12 222 0 31 12 222 0 32 12 222 0 33 1 15 0 34 1 15 0 35 1 15 0 36 1 15 0 37 13 54 0 38 12 222 0 39 12 222 0 40 12 222 0 41 12 222 0 42 12 222 0 43 12 222 0 44 12 222 0 45 12 222 0 46 12 222 0 47 13 54 0 48 12 222 0 49 12 222 0 50 12 222 0 51 13 54 0 52 13 54 0 53 13 54 0 54 13 54 0 57 13 54 0 58 13 54 0 60 13 54 0 61 13 54 0 62 13 54 0 64 13 54 0 65 13 54 0 67 13 54 0 68 13 54 0 70 13 54 0 72 13 54 0 74 13 54 0 76 13 54 0 77 12 222 0 78 12 222 0 81 13 54 0 82 13 54 0 84 13 54 0 86 13 54 0 87 13 54 0 88 13 54 0 94 13 54 0 98 13 54 0 99 13 54 0 101 13 54 0 102 13 54 0 103 13 54 0 104 13 54 0 105 13 54 0 106 13 54 0 107 13 54 0 108 13 54 0 109 13 54 0 110 13 54 0 111 12 222 0 113 13 54 0 116 13 54 0 119 13 54 0 120 13 54 0 121 1 15 0 123 1 15 0 124 13 54 0 127 12 222 1 196 1 15 1 197 13 54 1 198] 
#[0 13 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 13 62 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 27 149 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 25 233 0 247 15 241 0 248 27 153 1 10 0 6 1 197] 
#[0 27 157 0 4] 
#[0 13 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 27 161 0 4] 
#[0 13 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 13 66 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 27 165 0 4] 
#[0 13 70 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 13 74 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 27 169 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 27 173 0 247 15 241 0 248 0 6 1 197] 
#[0 27 177 0 4] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 27 181 0 247 15 241 0 248 0 6 1 197] 
#[0 13 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 27 185 0 4] 
#[0 13 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 27 189 0 4] 
#[0 13 86 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[1 0 6 0 1 0 6 0 3 6 138 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 15 233 0 195 2 81 0 196 0 57 0 197 2 81 0 198 0 65 0 199 27 193 0 247 15 241 0 248 0 6 1 197] 
#[0 13 90 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 13 94 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 27 197 0 4] 
#[0 13 98 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 13 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 13 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 128 1 196 1 197 1 198] 
#[0 13 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 196 1 197 1 198] 
#[0 27 201 0 4] 
#[0 13 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 13 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 93 0 1 1 193 0 3 0 101 0 5 1 197 0 7 0 105 0 34 0 109 0 35 0 113 0 36 0 117 0 37 0 121 0 38 0 125 0 48 0 129 0 52 0 133 0 53 1 201 0 54 0 137 0 57 1 205 0 60 1 209 0 61 0 141 0 64 1 213 0 65 1 153 0 70 1 217 0 72 0 149 0 74 1 221 0 76 0 153 0 77 0 157 0 87 1 149 0 88 1 225 0 94 0 165 0 98 1 229 0 99 0 169 0 101 1 233 0 102 1 153 0 103 1 237 0 104 0 177 0 106 1 241 0 107 0 181 0 108 1 245 0 109 1 249 0 110 0 185 0 111 1 253 0 116 1 157 0 119 1 161 0 120 0 201 0 121 0 205 0 123 0 14 0 124 0 11 0 127 0 213 0 132 0 245 0 134 0 245 0 135 0 245 0 136 0 245 0 137 0 245 0 141 0 245 0 149 0 241 0 150 0 245 0 153 0 245 0 154 0 245 0 155 0 245 0 156 1 25 0 157 1 9 0 158 1 9 0 159 1 9 0 160 1 21 0 163 1 25 0 167 1 33 0 168 1 33 0 169 1 41 0 170 1 41 0 171 1 45 0 173 1 49 0 174 1 53 0 175 1 57 0 176 1 61 0 177 1 65 0 178 1 69 0 179 1 73 0 180 1 77 0 181 1 81 0 182 1 85 0 183 1 89 0 184 2 1 0 185 2 1 0 186 2 1 0 188 27 205 0 189 27 205 0 192 27 205 0 193 27 205 0 194 27 205 0 202 27 205 0 216 27 205 0 217 27 205 0 218 27 205 0 219 27 205 0 222 27 205 0 223 27 205 0 225 27 205 0 226 27 205 0 227 27 205 0 232 27 205 0 234 27 205 0 235 27 205 0 239 0 245 0 241 2 1 0 249 1 113 0 250 1 117 0 253 2 1 0 254 0 245 1 4 2 1 1 6 0 245 1 9 0 245 1 13 1 33 1 15 0 245 1 17 1 149 1 44 1 153 1 45 1 157 1 46 1 161 1 47 0 245 1 48 0 245 1 49 0 245 1 50 1 177 1 51 0 245 1 53 1 185 1 71 1 189 1 197] 
#[0 13 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 13 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[1 0 6 0 1 0 6 0 3 13 130 0 4 0 6 0 5 0 6 0 7 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 48 0 6 0 52 0 6 0 53 0 6 0 54 13 130 0 55 0 6 0 57 0 65 0 58 0 6 0 60 0 6 0 61 13 130 0 63 0 6 0 64 0 6 0 65 0 6 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 77 0 65 0 84 0 6 0 87 0 6 0 88 0 6 0 94 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 116 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 123 0 6 0 124 0 6 0 127 7 25 0 196 0 57 0 197 7 25 0 198 0 65 0 199 0 6 1 197] 
#[0 13 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 27 209 0 7] 
#[0 13 138 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 142 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 146 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 27 213 0 7] 
#[0 27 217 0 7] 
#[0 13 150 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 154 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 1 19 0 2] 
#[1 1 23 0 1 13 158 0 3 13 158 0 4 1 23 0 5 1 23 0 7 13 102 0 8 13 102 0 9 13 102 0 10 13 102 0 11 13 102 0 12 13 102 0 13 13 102 0 14 13 102 0 15 13 102 0 16 13 102 0 17 13 102 0 19 13 102 0 20 13 102 0 21 13 102 0 22 13 102 0 23 13 102 0 24 13 102 0 25 13 102 0 26 13 102 0 27 13 102 0 28 13 102 0 29 13 102 0 30 13 102 0 31 13 102 0 32 13 102 0 33 1 23 0 34 1 23 0 35 1 23 0 36 1 23 0 37 13 158 0 38 13 102 0 39 13 102 0 40 13 102 0 41 13 102 0 42 13 102 0 43 13 102 0 44 13 102 0 45 13 102 0 46 13 102 0 47 13 158 0 48 13 102 0 49 13 102 0 50 13 102 0 51 13 158 0 52 13 158 0 53 13 158 0 54 13 158 0 57 13 158 0 58 13 158 0 60 13 158 0 61 13 158 0 62 13 158 0 64 13 158 0 65 13 158 0 67 13 158 0 68 13 158 0 70 13 158 0 72 13 158 0 74 13 158 0 76 13 158 0 77 13 102 0 78 13 102 0 81 13 158 0 82 13 158 0 84 13 158 0 86 13 158 0 87 13 158 0 88 13 158 0 94 13 158 0 98 13 158 0 99 13 158 0 101 13 158 0 102 13 158 0 103 13 158 0 104 13 158 0 105 13 158 0 106 13 158 0 107 13 158 0 108 13 158 0 109 13 158 0 110 13 158 0 111 13 102 0 113 13 158 0 116 13 158 0 119 13 158 0 120 13 158 0 121 1 23 0 123 1 23 0 124 13 158 0 127 13 102 1 196 1 23 1 197 13 158 1 198] 
#[0 13 162 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 27 221 0 4] 
#[0 13 166 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 13 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 13 170 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 13 174 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 27 225 0 4] 
#[0 13 178 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 27 229 0 4] 
#[0 13 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 196 1 197 1 198] 
#[0 13 186 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 27 233 0 4] 
#[0 13 190 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197] 
#[0 13 194 0 3 0 8 0 13 0 128] 
#[0 13 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 13 202 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 206 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 210 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 214 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 197 1 198] 
#[0 13 218 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 13 222 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 197] 
#[0 13 226 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 197]
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
JSParser >> reduceActionForDeclarationModule1: nodes [
	| result |
	result := OrderedCollection new: 2.
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
JSParser >> reduceActionForLexicalBinding1: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 1).
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
