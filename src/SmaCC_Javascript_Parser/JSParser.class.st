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
#[ 0 10 0 209] 
#[ 0 26 2 149] 
#[ 0 98 1 182] 
#[ 0 98 5 161] 
#[ 0 25 0 30] 
#[ 0 30 2 45] 
#[ 0 30 0 33] 
#[ 0 30 0 41] 
#[ 0 30 0 45] 
#[ 0 30 0 49] 
#[ 0 30 0 53] 
#[ 0 30 0 57] 
#[ 0 30 0 61] 
#[ 0 30 0 65] 
#[ 0 30 0 69] 
#[ 0 30 0 77] 
#[ 0 30 0 93] 
#[ 0 30 0 105] 
#[ 0 30 0 113] 
#[ 0 30 2 49] 
#[ 0 30 0 129] 
#[ 0 30 0 133] 
#[ 0 30 0 141] 
#[ 0 30 0 149] 
#[ 0 30 0 157] 
#[ 0 30 0 165] 
#[ 0 30 0 173] 
#[ 0 30 0 185] 
#[ 0 30 2 53] 
#[ 0 30 0 193] 
#[ 0 30 0 197] 
#[ 0 30 0 201] 
#[ 0 30 0 205] 
#[ 0 6 0 30] 
#[ 0 10 0 30 0 209] 
#[ 0 98 1 230] 
#[ 1 142 2 18] 
#[ 1 146 2 22] 
#[ 1 222 3 34] 
#[ 1 182 1 230] 
#[ 3 46 5 249] 
#[ 0 166 9 41] 
#[ 0 10 4 126] 
#[ 0 98 4 146] 
#[ 3 66 3 90] 
#[ 0 98 3 54]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2020-02-22T09:12:37.056443-06:00'
]

{ #category : #generated }
JSParser class >> definitionComment [
"%root Program;
%prefix JS;
%suffix Node;

%scopes default template;
%excludes jsx jsxText;

%start Expression Statement Script Module;

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
	AssignmentExpression
	AwaitExpression
	BinaryExpression
	CallExpression
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

%glr;

%id <semicolon> <identifier> <slash> <slashEqual> <regular_expression> <identifierName> <rightBrace> <jsxLT> <lt>
<questionDot> <question>;

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
default <continue>
:   continue
;
default <debugger>
:   debugger
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
default <instanceof>
:   instanceof
;
default <let>
:   let
;
default <new>
:   new
;
default <null>
:   null
;
default <of>
:   of
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
jsx default <string>
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
default <numeric>
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
Identifieropt
:
|	Identifier
;
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
:	<leftBracket> 'leftBracket' Elisionopt <rightBracket> 'rightBracket' {{}}
|	<leftBracket> 'leftBracket' ElementList <rightBracket> 'rightBracket' {{}}
|	<leftBracket> 'leftBracket' ElementList Elision <rightBracket> 'rightBracket' {{}}	##
;
ElementList
:	Elisionopt AssignmentExpression 'expression'
|	Elisionopt SpreadElement 'expression'
|	ElementList Elision AssignmentExpression 'expression'    ##
|	ElementList Elision SpreadElement 'expression'   ##
;
Elisionopt
:
|	Elision
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
Initializeropt
:
|	Initializer
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
Expressionopt
:
|	Expression
;
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
:	<leftBrace> 'leftBrace' StatementListopt <rightBrace> 'rightBrace' {{BlockStatement}}
;
StatementListopt
:
|	StatementList
;
StatementList 
:	StatementListItem 'statement'
|	StatementList StatementListItem 'statement'
;
StatementListItem
:	Statement
|	LexicalDeclaration #Declaration
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
:	Identifier 'variable' Initializeropt {{VariableDeclaration}}	##
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
:	Identifier 'variable' Initializeropt {{VariableDeclaration}}	##
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
:	<leftBracket> 'leftBracket' Elisionopt BindingRestElementopt 'restElement' <rightBracket> 'rightBracket' {{}}
|	<leftBracket> 'leftBracket' BindingElementList <rightBracket> 'rightBracket' {{}}
|	<leftBracket> 'leftBracket' BindingElementList <comma> 'comma' Elisionopt BindingRestElementopt 'restElement' <rightBracket> 'rightBracket' {{}}
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
:	Elisionopt BindingElement 'element'
;
BindingProperty
:	SingleNameBinding
|	PropertyName 'name' <colon> 'colonToken' BindingElement 'element' {{}}
;
BindingElement
:	SingleNameBinding
|	BindingPattern 'variable' Initializeropt {{VariableDeclaration}}
;
SingleNameBinding
:	Identifier 'variable' Initializeropt {{VariableDeclaration}}	##
;
BindingRestElementopt
:
|	BindingRestElement
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
|	<for> 'forToken' <leftParen> 'left' Expressionopt 'initialExpression'<semicolon> 'semicolon' Expressionopt 'condition'<semicolon> 'semicolon' Expressionopt 'iteratorExpression' <rightParen> 'right' Statement 'statement' {{ForStatement}}
|	<for> 'forToken' <leftParen> 'left' <var> 'varToken' VariableDeclarationList <semicolon> 'semicolon' Expressionopt 'condition' <semicolon> 'semicolon' Expressionopt 'iteratorExpression' <rightParen> 'right' Statement 'statement' {{ForStatement}}
|	<for> 'forToken' <leftParen> 'left' LexicalDeclaration 'declaration' Expressionopt 'condition' <semicolon> 'semicolon' Expressionopt 'iteratorExpression' <rightParen> 'right' Statement 'statement' {{ForStatement}}
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
:	<continue> 'continueToken' CheckEOL Identifieropt 'label' <semicolon> 'semicolon' {{}}  ##
;
BreakStatement 
:	<break> 'breakToken' CheckEOL Identifieropt 'label' <semicolon> 'semicolon' {{}}    ##
;
CheckEOL
:	[self checkEOL. nil]
;
ReturnStatement  
:	<return> 'returnToken' CheckEOL Expressionopt 'expression' <semicolon> 'semicolon' {{}} ##
;
WithStatement 
:	<with> 'withToken' <leftParen> 'left' Expression 'expression' <rightParen> 'right' Statement 'statement' {{}}
;
SwitchStatement 
:	<switch> 'switchToken' <leftParen> 'left' Expression 'expression' <rightParen> 'right' CaseBlock {{}}
;
CaseBlock 
:	<leftBrace> 'leftBrace' CaseClausesopt <rightBrace> 'rightBrace' 
|	<leftBrace> 'leftBrace' CaseClausesopt DefaultClause 'clause' CaseClausesopt <rightBrace> 'rightBrace'
;
CaseClausesopt
:
|	CaseClauses
;
CaseClauses 
:	CaseClause 'clause'
|	CaseClauses CaseClause 'clause'
;
CaseClause 
:	<case> 'caseToken' Expression 'caseExpression' <colon> 'colonToken' StatementListopt {{}}
;
DefaultClause 
:	<default> 'defaultToken' <colon> 'colonToken' StatementListopt  {{}}
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
:	<function> 'functionToken' Identifieropt 'name' <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{Function}}	##
;
FunctionExpression 
:	<function> 'functionToken' Identifieropt 'name' <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{Function}}	##
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
:	StatementListopt
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
:	<function> 'functionToken' <star> 'star' Identifieropt 'name' <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' GeneratorBody <rightBrace> 'rightBrace' {{GeneratorFunction}}	##
;
GeneratorExpression
:	<function> 'functionToken' <star> 'star' Identifieropt 'name' <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' GeneratorBody <rightBrace> 'rightBrace' {{GeneratorFunction}}	##
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
:	<async> 'asyncToken' <function> 'functionToken' <star> 'star' Identifieropt 'name' <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncGeneratorBody <rightBrace> 'rightBrace' {{AsyncGeneratorFunction}}   ##
;
AsyncGeneratorExpression
:	<async> 'asyncToken' <function> 'functionToken' <star> 'star' Identifieropt 'name' <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncGeneratorBody <rightBrace> 'rightBrace' {{AsyncGeneratorFunction}}   ##
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
:	<class> 'classToken' Identifieropt 'name' ClassTail {{ClassExpression}}	##
;
ClassExpression
:	<class> 'classToken' Identifieropt 'name' ClassTail {{}}	##
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
|	<static> 'staticToken' MethodDefinition 'method' {{StaticMethodDefinition}}
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
:	<string>
;
NumericLiteral
:	<numeric>
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
	#(137 0 #reduceActionForStartTemplateLiteral1: 11087873 true ) 
	#(317 0 #reduceActionForSwitchToJSX1: 40239105 true ) 
	#(271 0 #reduceActionForModule1: 34989057 false ) 
	#(269 0 #reduceActionForScript1: 34930689 false ) 
	#(233 0 #reduceActionForFormalParameters1: 30000129 false ) 
	#(183 0 #reduceActionForStatementListopt1: 21591041 false ) 
	#(124 0 #reduceActionForStatementListopt1: 9620481 false ) 
	#(205 1 #reduceActionForEmptyStatement1: 24290305 false ) 
	#(213 0 #reduceActionForCheckEOL1: 27797505 true ) 
	#(116 0 #nil 7525377 false ) 
	#(187 1 #liftFirstValue: 21882882 false ) 
	#(291 1 #liftFirstValue: 37594114 false ) 
	#(187 1 #liftFirstValue: 21882881 false ) 
	#(290 1 #liftFirstValue: 37570561 false ) 
	#(119 1 #reduceActionForPrimaryExpression1: 7852033 false ) 
	#(291 1 #liftFirstValue: 37594113 false ) 
	#(252 1 #reduceActionForYieldExpression1: 32484353 false ) 
	#(117 1 #reduceActionForIdentifier1: 7557121 false ) 
	#(292 1 #liftFirstValue: 37630977 false ) 
	#(293 1 #liftFirstValue: 37658625 false ) 
	#(294 1 #reduceActionForRegularExpressionLiteral1: 37688321 false ) 
	#(136 1 #reduceActionForTemplateLiteral1: 10932225 false ) 
	#(318 0 #reduceActionForSwitchToJSXText1: 40280065 true ) 
	#(119 1 #liftFirstValue: 7852034 false ) 
	#(240 1 #reduceActionForArrowParameters1: 30558209 false ) 
	#(140 1 #liftFirstValue: 11358209 false ) 
	#(119 1 #liftFirstValue: 7852045 false ) 
	#(119 1 #liftFirstValue: 7852035 false ) 
	#(119 1 #liftFirstValue: 7852036 false ) 
	#(119 1 #liftFirstValue: 7852037 false ) 
	#(119 1 #liftFirstValue: 7852044 false ) 
	#(144 1 #liftFirstValue: 12256257 false ) 
	#(140 1 #liftFirstValue: 11358213 false ) 
	#(140 1 #liftFirstValue: 11358214 false ) 
	#(142 1 #liftFirstValue: 12125185 false ) 
	#(154 1 #liftFirstValue: 14348289 false ) 
	#(154 1 #liftFirstValue: 14348290 false ) 
	#(145 1 #liftFirstValue: 12346370 false ) 
	#(145 1 #liftFirstValue: 12346371 false ) 
	#(154 1 #liftFirstValue: 14348291 false ) 
	#(155 1 #liftFirstValue: 14430209 false ) 
	#(156 1 #liftFirstValue: 14798849 false ) 
	#(157 1 #liftFirstValue: 15251457 false ) 
	#(158 1 #liftFirstValue: 15421441 false ) 
	#(160 1 #liftFirstValue: 15681537 false ) 
	#(161 1 #liftFirstValue: 15979521 false ) 
	#(162 1 #liftFirstValue: 16364545 false ) 
	#(163 1 #liftFirstValue: 17102849 false ) 
	#(164 1 #liftFirstValue: 17633281 false ) 
	#(165 1 #liftFirstValue: 17797121 false ) 
	#(166 1 #liftFirstValue: 17965057 false ) 
	#(167 1 #liftFirstValue: 18131969 false ) 
	#(170 1 #liftFirstValue: 18629634 false ) 
	#(168 1 #liftFirstValue: 18301953 false ) 
	#(171 1 #liftFirstValue: 18703361 false ) 
	#(171 1 #liftFirstValue: 18703362 false ) 
	#(170 1 #liftFirstValue: 18629633 false ) 
	#(172 1 #liftFirstValue: 18777089 false ) 
	#(173 1 #liftFirstValue: 19004417 false ) 
	#(176 1 #liftFirstValue: 20763649 false ) 
	#(185 1 #liftFirstValue: 21726209 false ) 
	#(177 1 #liftFirstValue: 20915206 false ) 
	#(177 1 #liftFirstValue: 20915201 false ) 
	#(181 1 #liftFirstValue: 21466113 false ) 
	#(274 1 #liftFirstValue: 35122179 false ) 
	#(185 1 #liftFirstValue: 21726210 false ) 
	#(177 1 #liftFirstValue: 20915202 false ) 
	#(177 1 #liftFirstValue: 20915203 false ) 
	#(177 1 #liftFirstValue: 20915204 false ) 
	#(177 1 #liftFirstValue: 20915205 false ) 
	#(180 1 #liftFirstValue: 21403649 false ) 
	#(177 1 #liftFirstValue: 20915207 false ) 
	#(177 1 #liftFirstValue: 20915208 false ) 
	#(177 1 #liftFirstValue: 20915209 false ) 
	#(177 1 #liftFirstValue: 20915210 false ) 
	#(180 1 #liftFirstValue: 21403650 false ) 
	#(177 1 #liftFirstValue: 20915211 false ) 
	#(177 1 #liftFirstValue: 20915212 false ) 
	#(177 1 #liftFirstValue: 20915213 false ) 
	#(177 1 #liftFirstValue: 20915214 false ) 
	#(119 1 #liftFirstValue: 7852038 false ) 
	#(173 1 #liftFirstValue: 19004419 false ) 
	#(240 1 #reduceActionForArrowParameters2: 30558210 false ) 
	#(173 1 #liftFirstValue: 19004420 false ) 
	#(119 1 #liftFirstValue: 7852040 false ) 
	#(173 1 #liftFirstValue: 19004418 false ) 
	#(119 1 #liftFirstValue: 7852042 false ) 
	#(119 1 #liftFirstValue: 7852041 false ) 
	#(156 1 #liftFirstValue: 14798857 false ) 
	#(119 1 #liftFirstValue: 7852039 false ) 
	#(115 1 #liftFirstValue: 7412737 false ) 
	#(271 1 #reduceActionForModule2: 34989058 false ) 
	#(272 1 #reduceActionForModuleBody1: 35017729 false ) 
	#(273 1 #reduceActionForModuleItemList1: 35048449 false ) 
	#(274 1 #liftFirstValue: 35122177 false ) 
	#(274 1 #liftFirstValue: 35122178 false ) 
	#(121 1 #reduceActionForLiteral1: 8952833 false ) 
	#(121 1 #reduceActionForLiteral2: 8952834 false ) 
	#(121 1 #reduceActionForLiteral4: 8952836 false ) 
	#(121 1 #reduceActionForLiteral3: 8952835 false ) 
	#(119 1 #liftFirstValue: 7852043 false ) 
	#(119 1 #liftFirstValue: 7852046 false ) 
	#(295 1 #liftFirstValue: 37940225 false ) 
	#(319 0 #reduceActionForStartJSXText1: 40329217 true ) 
	#(119 1 #liftFirstValue: 7852047 false ) 
	#(270 1 #reduceActionForModuleBody1: 34959361 false ) 
	#(184 1 #reduceActionForModuleItemList1: 21628929 false ) 
	#(269 1 #reduceActionForScript2: 34930690 false ) 
	#(134 0 #reduceActionForInitializeropt1: 10833921 false ) 
	#(193 1 #liftFirstValue: 22563841 false ) 
	#(193 1 #liftFirstValue: 22563842 false ) 
	#(236 1 #liftFirstValue: 30369793 false ) 
	#(201 1 #liftFirstValue: 23865345 false ) 
	#(235 1 #liftFirstValue: 30323713 false ) 
	#(232 1 #reduceActionForModuleBody1: 29955073 false ) 
	#(233 1 #reduceActionForFormalParameters3: 30000131 false ) 
	#(233 1 #reduceActionForFormalParameters2: 30000130 false ) 
	#(234 1 #reduceActionForFormalParameterList1: 30201857 false ) 
	#(127 2 #reduceActionForObjectLiteral1: 9799681 false ) 
	#(118 1 #reduceActionForIdentifier1: 7750657 false ) 
	#(129 1 #liftFirstValue: 10191873 false ) 
	#(131 1 #liftFirstValue: 10503169 false ) 
	#(128 1 #reduceActionForFormalParameterList1: 10056705 false ) 
	#(130 1 #liftFirstValue: 10440705 false ) 
	#(130 1 #liftFirstValue: 10440706 false ) 
	#(129 1 #liftFirstValue: 10191874 false ) 
	#(183 1 #reduceActionForModuleBody1: 21591042 false ) 
	#(129 1 #liftFirstValue: 10191876 false ) 
	#(246 1 #liftFirstValue: 31104002 false ) 
	#(246 1 #liftFirstValue: 31104004 false ) 
	#(246 1 #liftFirstValue: 31104003 false ) 
	#(131 1 #reduceActionForIdentifier1: 10503170 false ) 
	#(131 1 #reduceActionForIdentifier1: 10503171 false ) 
	#(125 1 #reduceActionForModuleItemList1: 9646081 false ) 
	#(124 1 #reduceActionForModuleBody1: 9620482 false ) 
	#(156 2 #reduceActionForUnaryExpression5: 14798853 false ) 
	#(155 2 #reduceActionForUpdateExpression4: 14430212 false ) 
	#(156 2 #reduceActionForUnaryExpression5: 14798854 false ) 
	#(155 2 #reduceActionForUpdateExpression4: 14430213 false ) 
	#(156 2 #reduceActionForUnaryExpression5: 14798855 false ) 
	#(156 2 #reduceActionForUnaryExpression5: 14798856 false ) 
	#(261 2 #reduceActionForAwaitExpression1: 34214913 false ) 
	#(116 1 #liftFirstValue: 7525378 false ) 
	#(229 2 #reduceActionForDebuggerStatement1: 29442049 false ) 
	#(156 2 #reduceActionForUnaryExpression5: 14798850 false ) 
	#(286 1 #reduceActionForExportFromClause1: 37020673 false ) 
	#(285 2 #reduceActionForExportDeclaration4: 36336644 false ) 
	#(178 1 #liftFirstValue: 21198849 false ) 
	#(178 1 #liftFirstValue: 21198851 false ) 
	#(285 2 #reduceActionForExportDeclaration3: 36336643 false ) 
	#(179 1 #liftFirstValue: 21277697 false ) 
	#(179 1 #liftFirstValue: 21277698 false ) 
	#(179 1 #liftFirstValue: 21277700 false ) 
	#(179 1 #liftFirstValue: 21277699 false ) 
	#(178 1 #liftFirstValue: 21198850 false ) 
	#(286 1 #reduceActionForExportFromClause3: 37020675 false ) 
	#(175 0 #nil 20731905 false ) 
	#(284 1 #liftFirstValue: 36301825 false ) 
	#(276 1 #reduceActionForImportClause1: 35368961 false ) 
	#(276 1 #reduceActionForImportClause1: 35368962 false ) 
	#(276 1 #reduceActionForImportClause1: 35368963 false ) 
	#(277 1 #liftFirstValue: 35621889 false ) 
	#(283 1 #liftFirstValue: 36259841 false ) 
	#(144 2 #reduceActionForNewExpression2: 12256258 false ) 
	#(146 2 #reduceActionForSuperCall1: 12829697 false ) 
	#(156 2 #reduceActionForUnaryExpression5: 14798852 false ) 
	#(191 1 #reduceActionForFormalParameterList1: 22264833 false ) 
	#(156 2 #reduceActionForUnaryExpression5: 14798851 false ) 
	#(252 2 #reduceActionForYieldExpression2: 32484354 false ) 
	#(140 2 #reduceActionForMemberExpression4: 11358212 false ) 
	#(145 2 #reduceActionForCallExpression1: 12346369 false ) 
	#(150 2 #reduceActionForOptionalExpression1: 13494273 false ) 
	#(145 2 #reduceActionForMemberExpression4: 12346375 false ) 
	#(145 2 #reduceActionForCallExpression1: 12346372 false ) 
	#(150 2 #reduceActionForOptionalExpression1: 13494274 false ) 
	#(150 2 #reduceActionForOptionalExpression1: 13494275 false ) 
	#(174 1 #liftFirstValue: 19209219 false ) 
	#(174 1 #liftFirstValue: 19209223 false ) 
	#(174 1 #liftFirstValue: 19209224 false ) 
	#(174 1 #liftFirstValue: 19209225 false ) 
	#(174 1 #liftFirstValue: 19209217 false ) 
	#(174 1 #liftFirstValue: 19209218 false ) 
	#(174 1 #liftFirstValue: 19209220 false ) 
	#(174 1 #liftFirstValue: 19209226 false ) 
	#(174 1 #liftFirstValue: 19209227 false ) 
	#(174 1 #liftFirstValue: 19209228 false ) 
	#(174 1 #liftFirstValue: 19209222 false ) 
	#(174 1 #liftFirstValue: 19209221 false ) 
	#(155 2 #reduceActionForUpdateExpression2: 14430210 false ) 
	#(155 2 #reduceActionForUpdateExpression2: 14430211 false ) 
	#(174 1 #liftFirstValue: 19209229 false ) 
	#(159 1 #liftFirstValue: 15624194 false ) 
	#(159 1 #liftFirstValue: 15624193 false ) 
	#(159 1 #liftFirstValue: 15624195 false ) 
	#(206 2 #reduceActionForExpressionStatement1: 24340481 false ) 
	#(188 1 #reduceActionForFormalParameterList1: 21914625 false ) 
	#(273 2 #reduceActionForModuleItemList2: 35048450 false ) 
	#(314 0 #reduceActionForStatementListopt1: 39924737 false ) 
	#(184 2 #reduceActionForModuleItemList2: 21628930 false ) 
	#(194 2 #reduceActionForObjectBindingPattern1: 22627329 false ) 
	#(197 1 #reduceActionForFormalParameterList1: 23460865 false ) 
	#(200 1 #liftFirstValue: 23751681 false ) 
	#(203 0 #nil 24059905 false ) 
	#(198 1 #reduceActionForBindingElementList1: 23579649 false ) 
	#(204 2 #reduceActionForBindingRestElement1: 24108033 false ) 
	#(204 2 #reduceActionForBindingRestElement1: 24108034 false ) 
	#(202 2 #reduceActionForSingleNameBinding1: 23971841 false ) 
	#(134 1 #reduceActionForModuleBody1: 10833922 false ) 
	#(120 3 #reduceActionForParenthesizedExpression1: 8217601 false ) 
	#(201 2 #reduceActionForSingleNameBinding1: 23865346 false ) 
	#(243 3 #reduceActionForArrowFormalParameters1: 30788609 false ) 
	#(233 2 #reduceActionForFormalParameters4: 30000132 false ) 
	#(129 2 #reduceActionForPropertyDefinition5: 10191877 false ) 
	#(133 2 #reduceActionForCoverInitializedName1: 10750977 false ) 
	#(127 3 #reduceActionForObjectLiteral2: 9799682 false ) 
	#(182 3 #reduceActionForBlock1: 21491713 false ) 
	#(122 3 #reduceActionForArrayLiteral2: 9135106 false ) 
	#(122 3 #reduceActionForArrayLiteral1: 9135105 false ) 
	#(123 2 #reduceActionForElementList2: 9398274 false ) 
	#(123 2 #reduceActionForElementList2: 9398273 false ) 
	#(125 2 #reduceActionForModuleItemList2: 9646082 false ) 
	#(263 3 #reduceActionForClassExpression1: 34390017 false ) 
	#(287 2 #reduceActionForNamedExports1: 37128193 false ) 
	#(289 1 #reduceActionForExportSpecifier1: 37448705 false ) 
	#(288 1 #reduceActionForFormalParameterList1: 37344257 false ) 
	#(285 3 #reduceActionForExportDeclaration2: 36336642 false ) 
	#(175 1 #liftFirstValue: 20731906 false ) 
	#(279 2 #reduceActionForNamedImports1: 35746817 false ) 
	#(281 1 #reduceActionForFormalParameterList1: 36029441 false ) 
	#(282 1 #reduceActionForImportSpecifier1: 36133889 false ) 
	#(275 3 #reduceActionForImportDeclaration2: 35196930 false ) 
	#(143 3 #reduceActionForNewTarget1: 12152833 false ) 
	#(140 3 #reduceActionForMemberExpression7: 11358215 false ) 
	#(148 2 #reduceActionForArguments1: 13040641 false ) 
	#(149 1 #reduceActionForArgumentList1: 13225985 false ) 
	#(141 3 #reduceActionForSuperProperty2: 11859970 false ) 
	#(224 3 #reduceActionForThrowStatement1: 28895233 false ) 
	#(225 3 #reduceActionForTryStatement1: 28991489 false ) 
	#(225 3 #reduceActionForTryStatement2: 28991490 false ) 
	#(192 2 #reduceActionForSingleNameBinding1: 22401025 false ) 
	#(190 3 #reduceActionForVariableStatement1: 22169601 false ) 
	#(192 2 #reduceActionForVariableDeclaration2: 22401026 false ) 
	#(252 3 #reduceActionForYieldExpression3: 32484355 false ) 
	#(223 1 #liftFirstValue: 28801025 false ) 
	#(222 3 #reduceActionForLabelledStatement1: 28701697 false ) 
	#(140 3 #reduceActionForMemberExpression3: 11358211 false ) 
	#(153 1 #reduceActionForOptionalFirst3: 14083075 false ) 
	#(153 1 #reduceActionForOptionalFirst4: 14083076 false ) 
	#(153 1 #reduceActionForOptionalFirst1: 14083073 false ) 
	#(151 2 #reduceActionForOptionalChain1: 13672449 false ) 
	#(152 1 #reduceActionForOptionalFirst4: 13795332 false ) 
	#(152 1 #reduceActionForOptionalFirst1: 13795329 false ) 
	#(151 2 #reduceActionForOptionalChain2: 13672450 false ) 
	#(145 3 #reduceActionForMemberExpression3: 12346374 false ) 
	#(173 3 #reduceActionForAssignmentExpression5: 19004421 false ) 
	#(157 3 #reduceActionForExponentiationExpression2: 15251458 false ) 
	#(158 3 #reduceActionForExponentiationExpression2: 15421442 false ) 
	#(160 3 #reduceActionForExponentiationExpression2: 15681538 false ) 
	#(160 3 #reduceActionForExponentiationExpression2: 15681539 false ) 
	#(161 3 #reduceActionForExponentiationExpression2: 15979522 false ) 
	#(161 3 #reduceActionForExponentiationExpression2: 15979523 false ) 
	#(161 3 #reduceActionForExponentiationExpression2: 15979524 false ) 
	#(162 3 #reduceActionForExponentiationExpression2: 16364546 false ) 
	#(162 3 #reduceActionForExponentiationExpression2: 16364547 false ) 
	#(162 3 #reduceActionForExponentiationExpression2: 16364548 false ) 
	#(162 3 #reduceActionForExponentiationExpression2: 16364549 false ) 
	#(162 3 #reduceActionForExponentiationExpression2: 16364551 false ) 
	#(162 3 #reduceActionForExponentiationExpression2: 16364550 false ) 
	#(163 3 #reduceActionForExponentiationExpression2: 17102850 false ) 
	#(163 3 #reduceActionForExponentiationExpression2: 17102852 false ) 
	#(163 3 #reduceActionForExponentiationExpression2: 17102851 false ) 
	#(163 3 #reduceActionForExponentiationExpression2: 17102853 false ) 
	#(164 3 #reduceActionForExponentiationExpression2: 17633282 false ) 
	#(165 3 #reduceActionForExponentiationExpression2: 17797122 false ) 
	#(166 3 #reduceActionForExponentiationExpression2: 17965058 false ) 
	#(167 3 #reduceActionForExponentiationExpression2: 18131970 false ) 
	#(168 3 #reduceActionForExponentiationExpression2: 18301954 false ) 
	#(169 3 #reduceActionForExponentiationExpression2: 18471937 false ) 
	#(176 3 #reduceActionForExpression2: 20763650 false ) 
	#(189 2 #reduceActionForSingleNameBinding1: 22012929 false ) 
	#(186 3 #reduceActionForLexicalDeclaration1: 21793793 false ) 
	#(189 2 #reduceActionForVariableDeclaration2: 22012930 false ) 
	#(242 1 #liftFirstValue: 30747649 false ) 
	#(239 3 #reduceActionForArrowFunction1: 30490625 false ) 
	#(241 1 #reduceActionForConciseBody1: 30632961 false ) 
	#(322 0 #reduceActionForSwitchToDefault1: 40491009 true ) 
	#(313 1 #reduceActionForModuleBody1: 39910401 false ) 
	#(300 1 #reduceActionForJSXElementName1: 38766593 false ) 
	#(300 1 #liftFirstValue: 38766594 false ) 
	#(300 1 #liftFirstValue: 38766595 false ) 
	#(304 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 39093249 false ) 
	#(196 2 #reduceActionForBindingRestProperty1: 23389185 false ) 
	#(194 3 #reduceActionForObjectBindingPattern2: 22627330 false ) 
	#(194 3 #reduceActionForObjectBindingPattern3: 22627331 false ) 
	#(199 2 #reduceActionForBindingElisionElement1: 23688193 false ) 
	#(203 1 #liftFirstValue: 24059906 false ) 
	#(195 3 #reduceActionForArrayBindingPattern2: 23015426 false ) 
	#(135 2 #reduceActionForInitializer1: 10867713 false ) 
	#(233 3 #reduceActionForFormalParameters5: 30000133 false ) 
	#(234 3 #reduceActionForFormalParameterList2: 30201858 false ) 
	#(132 3 #reduceActionForComputedPropertyName1: 10630145 false ) 
	#(127 4 #reduceActionForObjectLiteral3: 9799683 false ) 
	#(128 3 #reduceActionForFormalParameterList2: 10056706 false ) 
	#(129 3 #reduceActionForPropertyDefinition3: 10191875 false ) 
	#(122 4 #reduceActionForArrayLiteral3: 9135107 false ) 
	#(123 3 #reduceActionForElementList4: 9398276 false ) 
	#(123 3 #reduceActionForElementList4: 9398275 false ) 
	#(126 2 #reduceActionForSpreadElement1: 9701377 false ) 
	#(245 1 #reduceActionForConciseBody1: 30983169 false ) 
	#(244 4 #reduceActionForAsyncArrowFunction1: 30880769 false ) 
	#(212 4 #reduceActionForBreakStatement1: 27687937 false ) 
	#(264 2 #reduceActionForClassTail1: 34471937 false ) 
	#(268 1 #reduceActionForEmptyStatement1: 34764803 false ) 
	#(268 1 #liftFirstValue: 34764801 false ) 
	#(266 1 #reduceActionForModuleBody1: 34644993 false ) 
	#(267 1 #reduceActionForModuleItemList1: 34676737 false ) 
	#(265 2 #reduceActionForInitializer1: 34564097 false ) 
	#(211 4 #reduceActionForContinueStatement1: 27571201 false ) 
	#(287 3 #reduceActionForNamedExports2: 37128194 false ) 
	#(286 3 #reduceActionForExportFromClause2: 37020674 false ) 
	#(262 3 #reduceActionForClassExpression1: 34291713 false ) 
	#(285 4 #reduceActionForExportDeclaration5: 36336645 false ) 
	#(280 2 #reduceActionForInitializer1: 35978241 false ) 
	#(285 4 #reduceActionForExportDeclaration1: 36336641 false ) 
	#(210 1 #liftFirstValue: 27524097 false ) 
	#(210 1 #liftFirstValue: 27524098 false ) 
	#(209 2 #reduceActionForInitializer1: 27459585 false ) 
	#(147 4 #reduceActionForImportCall1: 12900353 false ) 
	#(279 3 #reduceActionForNamedImports2: 35746818 false ) 
	#(278 3 #reduceActionForNameSpaceImport1: 35665921 false ) 
	#(275 4 #reduceActionForImportDeclaration1: 35196929 false ) 
	#(276 3 #reduceActionForImportClause4: 35368964 false ) 
	#(276 3 #reduceActionForImportClause4: 35368965 false ) 
	#(214 4 #reduceActionForReturnStatement1: 27832321 false ) 
	#(149 2 #reduceActionForArgumentList2: 13225986 false ) 
	#(148 3 #reduceActionForArguments2: 13040642 false ) 
	#(141 4 #reduceActionForSuperProperty1: 11859969 false ) 
	#(226 2 #reduceActionForCatch2: 29162498 false ) 
	#(227 2 #reduceActionForInitializer1: 29330433 false ) 
	#(225 4 #reduceActionForTryStatement3: 28991491 false ) 
	#(191 3 #reduceActionForFormalParameterList2: 22264834 false ) 
	#(138 1 #reduceActionForFormalParameterList1: 11125761 false ) 
	#(136 4 #reduceActionForTemplateLiteral2: 10932226 false ) 
	#(140 4 #reduceActionForMemberExpression2: 11358210 false ) 
	#(152 2 #reduceActionForOptionalRest3: 13795331 false ) 
	#(145 4 #reduceActionForCallExpression5: 12346373 false ) 
	#(188 3 #reduceActionForFormalParameterList2: 21914626 false ) 
	#(238 1 #reduceActionForModuleBody1: 30446593 false ) 
	#(237 1 #reduceActionForModuleBody1: 30405633 false ) 
	#(295 4 #reduceActionForJSXElement2: 37940226 false ) 
	#(315 1 #reduceActionForJSXChild1: 39945217 false ) 
	#(315 1 #liftFirstValue: 39945218 false ) 
	#(314 2 #reduceActionForModuleItemList2: 39924738 false ) 
	#(303 2 #reduceActionForInitializer1: 39093249 false ) 
	#(320 0 #reduceActionForSwitchToJSXTextOrDefault11: 40357889 true ) 
	#(310 1 #reduceActionForJSXElementName1: 39517185 false ) 
	#(310 1 #liftFirstValue: 39517186 false ) 
	#(307 1 #reduceActionForModuleItemList1: 39220225 false ) 
	#(305 1 #reduceActionForModuleBody1: 39203841 false ) 
	#(306 1 #liftFirstValue: 39220225 false ) 
	#(306 1 #liftFirstValue: 39220226 false ) 
	#(309 1 #reduceActionForJSXAttribute1: 39434241 false ) 
	#(302 2 #reduceActionForJSXMemberExpression1: 39070721 false ) 
	#(304 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 39093250 false ) 
	#(200 3 #reduceActionForBindingProperty2: 23751682 false ) 
	#(194 4 #reduceActionForObjectBindingPattern4: 22627332 false ) 
	#(197 3 #reduceActionForFormalParameterList2: 23460866 false ) 
	#(195 4 #reduceActionForArrayBindingPattern1: 23015425 false ) 
	#(198 3 #reduceActionForBindingElementList2: 23579650 false ) 
	#(247 1 #liftFirstValue: 31702017 false ) 
	#(260 1 #reduceActionForModuleBody1: 34179073 false ) 
	#(268 2 #reduceActionForClassElement2: 34764802 false ) 
	#(264 3 #reduceActionForClassTail2: 34471938 false ) 
	#(267 2 #reduceActionForModuleItemList2: 34676738 false ) 
	#(264 3 #reduceActionForClassTail3: 34471939 false ) 
	#(289 3 #reduceActionForExportSpecifier2: 37448706 false ) 
	#(287 4 #reduceActionForNamedExports3: 37128195 false ) 
	#(288 3 #reduceActionForFormalParameterList2: 37344258 false ) 
	#(207 5 #reduceActionForIfStatement2: 24420354 false ) 
	#(282 3 #reduceActionForImportSpecifier2: 36133890 false ) 
	#(279 4 #reduceActionForNamedImports3: 35746819 false ) 
	#(281 3 #reduceActionForFormalParameterList2: 36029442 false ) 
	#(148 4 #reduceActionForArguments3: 13040643 false ) 
	#(149 3 #reduceActionForArgumentList3: 13225987 false ) 
	#(218 0 #reduceActionForStatementListopt1: 28396545 false ) 
	#(216 5 #reduceActionForSwitchStatement1: 28080129 false ) 
	#(228 1 #liftFirstValue: 29390849 false ) 
	#(228 1 #liftFirstValue: 29390850 false ) 
	#(208 5 #reduceActionForIterationStatement2: 24711170 false ) 
	#(215 5 #reduceActionForWithStatement1: 27948033 false ) 
	#(139 2 #reduceActionForTemplateMiddleList1: 11212801 false ) 
	#(138 2 #reduceActionForTemplateSpans2: 11125762 false ) 
	#(153 3 #reduceActionForOptionalFirst2: 14083074 false ) 
	#(152 3 #reduceActionForOptionalFirst2: 13795330 false ) 
	#(172 5 #reduceActionForConditionalExpression2: 18777090 false ) 
	#(241 3 #reduceActionForConciseBody2: 30632962 false ) 
	#(301 3 #reduceActionForJSXNamespacedName1: 38946817 false ) 
	#(307 2 #reduceActionForModuleItemList2: 39220226 false ) 
	#(309 2 #reduceActionForJSXAttribute2: 39434242 false ) 
	#(297 5 #reduceActionForJSXOpeningElement1: 38274049 false ) 
	#(194 5 #reduceActionForObjectBindingPattern5: 22627333 false ) 
	#(245 3 #reduceActionForConciseBody2: 30983170 false ) 
	#(264 4 #reduceActionForClassTail4: 34471940 false ) 
	#(149 4 #reduceActionForArgumentList4: 13225988 false ) 
	#(218 1 #reduceActionForModuleBody1: 28396546 false ) 
	#(219 1 #reduceActionForModuleItemList1: 28430337 false ) 
	#(139 3 #reduceActionForTemplateMiddleList2: 11212802 false ) 
	#(316 1 #liftFirstValue: 40177666 false ) 
	#(316 1 #liftFirstValue: 40177665 false ) 
	#(296 6 #reduceActionForJSXSelfClosingElement1: 38090753 false ) 
	#(297 6 #reduceActionForJSXOpeningElement2: 38274050 false ) 
	#(312 1 #reduceActionForLiteral4: 39682049 false ) 
	#(312 1 #liftFirstValue: 39682051 false ) 
	#(312 1 #liftFirstValue: 39682052 false ) 
	#(311 2 #reduceActionForInitializer1: 39608321 false ) 
	#(195 6 #reduceActionForArrayBindingPattern3: 23015427 false ) 
	#(208 7 #reduceActionForIterationStatement1: 24711169 false ) 
	#(208 7 #reduceActionForIterationStatement6: 24711174 false ) 
	#(208 7 #reduceActionForIterationStatement9: 24711177 false ) 
	#(208 7 #reduceActionForIterationStatement8: 24711176 false ) 
	#(208 7 #reduceActionForIterationStatement11: 24711179 false ) 
	#(207 7 #reduceActionForIfStatement1: 24420353 false ) 
	#(217 3 #reduceActionForCaseBlock1: 28206081 false ) 
	#(219 2 #reduceActionForModuleItemList2: 28430338 false ) 
	#(226 5 #reduceActionForCatch1: 29162497 false ) 
	#(321 0 #reduceActionForSwitchToJSXTextOrDefault21: 40424449 true ) 
	#(315 4 #reduceActionForJSXChild3: 39945219 false ) 
	#(296 7 #reduceActionForJSXSelfClosingElement2: 38090754 false ) 
	#(251 1 #reduceActionForModuleBody1: 32452609 false ) 
	#(246 7 #reduceActionForMethodDefinition5: 31104005 false ) 
	#(246 7 #reduceActionForMethodDefinition1: 31104001 false ) 
	#(259 8 #reduceActionForAsyncFunctionExpression1: 33929217 false ) 
	#(208 8 #reduceActionForIterationStatement10: 24711178 false ) 
	#(208 8 #reduceActionForIterationStatement7: 24711175 false ) 
	#(208 8 #reduceActionForIterationStatement5: 24711173 false ) 
	#(208 8 #reduceActionForIterationStatement12: 24711180 false ) 
	#(208 8 #reduceActionForIterationStatement14: 24711182 false ) 
	#(231 8 #reduceActionForFunctionExpression1: 29742081 false ) 
	#(315 5 #reduceActionForJSXChild4: 39945220 false ) 
	#(308 5 #reduceActionForJSXSpreadAttribute1: 39284737 false ) 
	#(248 8 #reduceActionForGeneratorMethod1: 31760385 false ) 
	#(256 1 #reduceActionForModuleBody1: 33423361 false ) 
	#(257 8 #reduceActionForAsyncMethod1: 33460225 false ) 
	#(246 8 #reduceActionForMethodDefinition6: 31104006 false ) 
	#(259 9 #reduceActionForAsyncFunctionExpression2: 33929218 false ) 
	#(258 8 #reduceActionForAsyncFunctionExpression1: 33679361 false ) 
	#(230 8 #reduceActionForFunctionExpression1: 29528065 false ) 
	#(208 9 #reduceActionForIterationStatement3: 24711171 false ) 
	#(208 9 #reduceActionForIterationStatement13: 24711181 false ) 
	#(250 9 #reduceActionForGeneratorExpression1: 32215041 false ) 
	#(220 4 #reduceActionForCaseClause1: 28503041 false ) 
	#(221 3 #reduceActionForDefaultClause1: 28611585 false ) 
	#(217 5 #reduceActionForCaseBlock2: 28206082 false ) 
	#(299 9 #reduceActionForJSXFragment1: 38578177 false ) 
	#(298 6 #reduceActionForJSXClosingElement1: 38418433 false ) 
	#(253 9 #reduceActionForAsyncGeneratorMethod1: 32616449 false ) 
	#(255 10 #reduceActionForAsyncGeneratorExpression1: 33146881 false ) 
	#(258 9 #reduceActionForAsyncFunctionExpression2: 33679362 false ) 
	#(249 9 #reduceActionForGeneratorExpression1: 31976449 false ) 
	#(208 10 #reduceActionForIterationStatement4: 24711172 false ) 
	#(312 5 #reduceActionForJSXChild4: 39682050 false ) 
	#(254 10 #reduceActionForAsyncGeneratorExpression1: 32869377 false )
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
JSParser class >> startingStateForStatement [
	^ 3
]

{ #category : #generated }
JSParser class >> startingStateForgoal [
	^ 1
]

{ #category : #generated }
JSParser class >> symbolNames [
	^ #('<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<question>' '<questionDot>' '<percent>' '<bar>' '<barBar>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<const>' '<continue>' '<debugger>' '<default>' '<delete>' '<do>' '<else>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<instanceof>' '<let>' '<new>' '<null>' '<of>' '<return>' '<set>' '<static>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<whitespace>' '<string>' '<numeric>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifieropt' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elisionopt' 'Elision' 'SpreadElement' 'ObjectLiteral' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializeropt' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expressionopt' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementListopt' 'StatementList' 'StatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElementopt' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClausesopt' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'FunctionDeclaration' 'FunctionExpression' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorMethod' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorBody' 'AsyncMethod' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' '<questionQuestion>' '<starStarEq>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSNewTargetExpressionNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSStatementNode #JSProgramNode #JSFunctionNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #OrderedCollection #JSStatementNode #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #JSFunctionNode #JSFunctionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSVariableDeclarationNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSVariableDeclarationNode #JSGeneratorMethodDefinitionNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorMethodDefinitionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #OrderedCollection #JSAsyncMethodDefinitionNode #JSAsyncFunctionNode #JSAsyncFunctionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 0 101 0 64 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 0 121 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 213 0 115 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 1 249 0 177 1 249 0 180 1 249 0 181 1 249 0 182 1 249 0 185 1 249 0 186 1 133 0 187 1 249 0 190 1 249 0 205 1 249 0 206 1 249 0 207 1 249 0 208 1 249 0 211 1 249 0 212 1 249 0 214 1 249 0 215 1 249 0 216 1 249 0 222 1 249 0 224 1 249 0 225 1 249 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 0 213 1 15 1 241 1 16 1 245 1 17 1 249 1 18 1 249 1 19 1 249 1 29 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61 0 14 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 2 57 0 172 2 57 0 173 2 57 0 176 0 249 0 231 2 57 0 239 1 201 0 240 1 205 0 243 2 57 0 244 0 249 0 250 2 57 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 61 0 177 2 61 0 180 2 61 0 181 2 61 0 182 2 61 0 190 2 61 0 205 2 61 0 206 2 61 0 207 2 61 0 208 2 61 0 211 2 61 0 212 2 61 0 214 2 61 0 215 2 61 0 216 2 61 0 222 2 61 0 224 2 61 0 225 2 61 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 2 65 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 73 1 13 2 77 1 14 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61 0 18 1 69] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 0 101 0 64 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 0 121 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 1 249 0 177 1 249 0 180 1 249 0 181 1 249 0 182 1 249 0 185 1 249 0 186 1 133 0 187 1 249 0 190 1 249 0 205 1 249 0 206 1 249 0 207 1 249 0 208 1 249 0 211 1 249 0 212 1 249 0 214 1 249 0 215 1 249 0 216 1 249 0 222 1 249 0 224 1 249 0 225 1 249 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 81 1 15 1 241 1 16 1 245 1 17 1 249 1 18 1 249 1 19 1 249 1 29 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61 0 14 1 69] 
#[1 0 25 0 1 0 22 0 2 2 85 0 3 2 89 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 93 0 96 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 2 97 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 2 101 0 172 2 101 0 173 2 101 0 176 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 0 249 0 231 2 129 0 232 2 133 0 233 2 137 0 234 2 141 0 235 2 145 0 236 2 101 0 239 1 201 0 240 1 205 0 243 2 101 0 244 0 249 0 250 2 101 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 11 0 4 2 153 0 5 0 37 0 7 2 157 0 25 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 2 161 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 2 165 0 71 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 2 169 0 81 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 2 173 0 96 0 189 0 100 2 177 0 101 2 237 0 103 2 241 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 2 181 0 117 2 197 0 118 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 2 189 0 128 2 193 0 129 2 197 0 130 2 197 0 131 2 197 0 132 2 193 0 133 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 2 213 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 2 193 0 246 2 193 0 248 0 249 0 250 1 105 0 252 2 193 0 253 0 249 0 255 2 193 1 1 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 237 1 36 2 241 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 30 0 1 0 30 0 3 0 30 0 5 0 30 0 6 0 30 0 34 0 30 0 35 0 30 0 36 0 30 0 37 0 30 0 38 0 30 0 47 0 30 0 51 0 30 0 52 0 30 0 56 0 30 0 61 0 30 0 66 0 30 0 70 0 30 0 73 0 30 0 77 0 30 0 78 0 30 0 83 0 30 0 86 0 30 0 88 0 30 0 90 0 30 0 92 0 30 0 95 0 30 0 96 2 245 0 97 0 30 0 100 0 30 0 103 0 30 0 104 0 30 0 105 0 30 0 107 0 30 0 108 0 30 0 111 2 249 0 123 2 253 0 124 3 1 0 125] 
#[0 0 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 3 21 0 155 3 21 0 156 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 3 21 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 3 25 0 155 3 25 0 156 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 3 25 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 3 29 0 155 3 29 0 156 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 3 29 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 3 33 0 155 3 33 0 156 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 3 33 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 3 37 0 155 3 37 0 156 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 3 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 3 41 0 155 3 41 0 156 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 3 41 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 45 0 1 3 49 0 70 2 53 0 100 3 53 0 117 3 57 0 240 1 205 0 243] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 3 61 0 155 3 61 0 156 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 3 61 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 38 0 7 0 38 0 100 3 65 0 213] 
#[1 0 42 0 3 0 42 0 65 2 53 0 100 3 69 0 116 3 69 0 117] 
#[0 0 46 0 3 0 5 0 100] 
#[1 0 38 0 7 0 38 0 100 3 77 0 213] 
#[0 3 81 0 7] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 3 85 0 155 3 85 0 156 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 3 85 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 3 89 0 177 3 89 0 180 3 89 0 181 3 89 0 182 3 89 0 190 3 89 0 205 3 89 0 206 3 89 0 207 3 89 0 208 3 89 0 211 3 89 0 212 3 89 0 214 3 89 0 215 3 89 0 216 3 89 0 222 3 89 0 224 3 89 0 225 3 89 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 93 0 3 3 97 0 25 3 101 0 51 3 105 0 56 1 133 0 57 3 109 0 60 3 113 0 70 1 133 0 76 0 169 0 91 3 117 0 178 3 117 0 179 3 117 0 186 1 133 0 187 3 129 0 190 3 117 0 230 3 117 0 249 3 117 0 254 3 117 1 2 3 117 1 6 3 153 1 30 3 157 1 31] 
#[0 0 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 3 161 0 1 3 165 0 52] 
#[1 0 42 0 1 3 169 0 25 2 53 0 100 3 173 0 116 3 173 0 117] 
#[0 3 177 0 1] 
#[1 3 181 0 1 3 185 0 3 3 189 0 25 2 53 0 100 3 213 0 103 3 201 0 117 3 197 1 20 3 201 1 21 3 205 1 22 3 209 1 23 3 213 1 27 3 201 1 28 3 213 1 36] 
#[0 0 54 0 3 0 5 0 100] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 3 225 0 21 3 9 0 51 0 77 0 56 2 9 0 66 0 113 0 70 0 129 0 77 2 5 0 78 3 229 0 83 0 149 0 86 2 9 0 88 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 3 233 0 117 3 233 0 119 3 233 0 120 3 233 0 121 3 233 0 122 3 233 0 127 3 233 0 136 0 245 0 137 3 233 0 140 3 233 0 141 3 233 0 142 3 233 0 143 3 237 0 144 3 233 0 231 3 233 0 250 3 233 0 255 3 233 1 3 3 233 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 3 233 1 38 3 233 1 39 3 233 1 40 2 33 1 41 3 233 1 43 2 41 1 61] 
#[0 0 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 38 0 1 0 38 0 3 0 38 0 5 0 38 0 7 0 38 0 34 0 38 0 35 0 38 0 36 0 38 0 37 0 38 0 38 0 38 0 47 0 38 0 51 0 38 0 52 0 38 0 56 0 38 0 61 0 38 0 66 0 38 0 70 0 38 0 73 0 38 0 77 0 38 0 78 0 38 0 83 0 38 0 86 0 38 0 88 0 38 0 90 0 38 0 92 0 38 0 95 0 38 0 100 0 38 0 103 0 38 0 104 0 38 0 105 0 38 0 107 0 38 0 108 0 38 0 111 3 241 0 213] 
#[1 3 245 0 1 3 249 0 5 3 253 0 21 4 1 0 148] 
#[0 4 5 0 1] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 4 9 0 172 4 9 0 173 4 9 0 176 0 249 0 231 4 9 0 239 1 201 0 240 1 205 0 243 4 9 0 244 0 249 0 250 4 9 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 4 13 0 3 4 17 0 182] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 4 21 0 155 4 21 0 156 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 4 21 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 4 33 0 117 4 37 0 191 4 41 0 192 4 45 0 193 4 45 0 194 4 45 0 195] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 4 49 0 155 4 49 0 156 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 4 49 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 4 53 0 1] 
#[0 4 57 0 1] 
#[1 0 25 0 1 0 70 0 2 2 45 0 3 0 70 0 4 0 33 0 5 0 70 0 6 0 70 0 7 4 61 0 25 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 70 0 79 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 0 70 0 97 0 70 0 98 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 70 0 109 0 70 0 110 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 4 65 0 172 4 65 0 173 0 249 0 231 4 65 0 239 1 201 0 240 1 205 0 243 4 65 0 244 0 249 0 250 4 65 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61 0 70 1 69] 
#[1 0 74 0 1 0 74 0 4 0 74 0 5 0 74 0 7 0 74 0 8 0 74 0 9 0 74 0 10 0 74 0 11 0 74 0 12 0 74 0 13 0 74 0 14 0 74 0 15 0 74 0 16 0 74 0 17 0 74 0 18 0 74 0 19 0 74 0 20 0 74 0 21 0 74 0 22 0 74 0 23 0 74 0 24 0 74 0 25 0 74 0 26 0 74 0 27 0 74 0 28 0 74 0 29 0 74 0 30 0 74 0 31 0 74 0 32 0 74 0 33 0 74 0 34 0 74 0 35 0 74 0 36 0 74 0 37 0 74 0 39 0 74 0 40 0 74 0 41 0 74 0 42 0 74 0 43 0 74 0 44 0 74 0 45 0 74 0 46 0 74 0 48 0 74 0 49 0 74 0 74 0 74 0 75 0 74 0 97 4 69 0 98 0 74 0 107 0 74 0 108 0 74 1 67 0 74 1 68] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 112 1 67 1 68 1 69] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 94 0 13 4 73 1 62] 
#[0 0 0 1 69] 
#[1 0 98 0 1 0 98 0 2 0 98 0 4 0 98 0 5 0 98 0 6 0 98 0 7 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 102 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 98 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 39 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 48 0 98 0 49 0 98 0 74 0 98 0 75 0 98 0 79 0 98 0 97 0 98 0 98 0 98 0 107 0 98 0 108 0 98 0 109 0 98 0 110 0 98 1 67 0 98 1 68 0 98 1 69] 
#[0 0 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 4 77 0 108] 
#[1 3 245 0 1 0 130 0 2 0 130 0 3 0 130 0 4 4 81 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 19 0 130 0 20 4 85 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 4 89 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 48 0 130 0 49 0 130 0 74 0 130 0 75 0 130 0 79 0 130 0 97 0 130 0 98 0 205 0 107 0 6 0 108 0 130 0 109 0 130 0 110 4 93 0 136 0 245 0 137 4 97 0 148 4 101 0 151 0 130 1 67 0 130 1 68 0 130 1 69] 
#[0 0 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 0 146 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 68 1 69] 
#[1 3 245 0 1 0 150 0 2 0 150 0 3 0 150 0 4 4 105 0 5 0 150 0 6 0 150 0 7 0 150 0 8 0 150 0 9 0 150 0 10 0 150 0 11 0 150 0 12 0 150 0 13 0 150 0 14 0 150 0 15 0 150 0 16 0 150 0 17 0 150 0 19 0 150 0 20 4 109 0 21 0 150 0 22 0 150 0 23 0 150 0 24 0 150 0 25 0 150 0 26 0 150 0 27 0 150 0 28 0 150 0 29 0 150 0 30 0 150 0 31 0 150 0 32 0 150 0 33 0 150 0 34 0 150 0 35 0 150 0 36 0 150 0 37 0 150 0 39 0 150 0 40 0 150 0 41 4 89 0 42 0 150 0 43 0 150 0 44 0 150 0 45 0 150 0 46 0 150 0 48 0 150 0 49 0 150 0 74 0 150 0 75 0 150 0 79 0 150 0 97 0 150 0 98 0 205 0 107 0 6 0 108 0 150 0 109 0 150 0 110 4 113 0 136 0 245 0 137 4 117 0 148 4 121 0 151 0 150 1 67 0 150 1 68 0 150 1 69] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 162 0 2 0 162 0 3 0 162 0 4 0 162 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 19 0 162 0 20 0 162 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 39 0 162 0 40 0 162 0 41 4 89 0 42 0 162 0 43 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 48 0 162 0 49 0 162 0 74 0 162 0 75 0 162 0 79 0 162 0 97 0 162 0 98 0 162 0 109 0 162 0 110 4 125 0 151 0 162 1 67 0 162 1 68 0 162 1 69] 
#[1 0 166 0 2 0 166 0 4 0 166 0 6 0 166 0 7 0 166 0 8 4 185 0 9 0 166 0 10 0 166 0 11 4 185 0 12 0 166 0 13 0 166 0 14 4 185 0 15 4 185 0 16 0 166 0 17 0 166 0 19 0 166 0 20 4 185 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 4 185 0 27 4 185 0 28 4 185 0 29 4 185 0 30 4 185 0 31 4 185 0 32 4 185 0 33 0 166 0 34 4 177 0 35 0 166 0 36 4 181 0 37 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 48 0 166 0 49 0 166 0 74 0 166 0 75 0 166 0 79 0 166 0 97 0 166 0 98 0 166 0 109 0 166 0 110 4 185 0 174 0 166 1 67 4 185 1 68 0 166 1 69] 
#[0 0 170 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[1 0 174 0 2 0 174 0 4 0 174 0 6 0 174 0 7 0 174 0 8 0 174 0 10 0 174 0 11 0 174 0 13 0 174 0 14 0 174 0 17 0 174 0 19 0 174 0 20 0 174 0 23 0 174 0 24 0 174 0 25 4 193 0 26 0 174 0 34 0 174 0 36 0 174 0 39 0 174 0 40 0 174 0 41 0 174 0 43 0 174 0 44 0 174 0 45 0 174 0 46 0 174 0 48 0 174 0 49 0 174 0 74 0 174 0 75 0 174 0 79 0 174 0 97 0 174 0 98 0 174 0 109 0 174 0 110 0 174 1 67 0 174 1 69] 
#[0 0 178 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[1 0 182 0 2 0 182 0 4 0 182 0 6 0 182 0 7 4 209 0 8 0 182 0 10 0 182 0 11 0 182 0 13 0 182 0 14 0 182 0 17 0 182 0 19 0 182 0 20 0 182 0 23 0 182 0 24 4 209 0 25 0 182 0 34 0 182 0 36 0 182 0 39 0 182 0 40 0 182 0 41 4 209 0 43 0 182 0 44 0 182 0 45 0 182 0 46 0 182 0 48 0 182 0 49 0 182 0 74 0 182 0 75 0 182 0 79 0 182 0 97 0 182 0 98 0 182 0 109 0 182 0 110 4 209 0 159 0 182 1 67 0 182 1 69] 
#[1 0 186 0 2 0 186 0 4 0 186 0 6 0 186 0 7 0 186 0 10 0 186 0 11 0 186 0 13 0 186 0 14 0 186 0 17 0 186 0 19 0 186 0 20 0 186 0 23 0 186 0 24 4 213 0 34 4 217 0 36 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 48 0 186 0 49 0 186 0 74 0 186 0 75 0 186 0 79 0 186 0 97 0 186 0 98 0 186 0 109 0 186 0 110 0 186 1 67 0 186 1 69] 
#[1 0 190 0 2 0 190 0 4 0 190 0 6 0 190 0 7 0 190 0 10 4 221 0 11 0 190 0 13 4 225 0 14 4 229 0 17 0 190 0 19 0 190 0 20 0 190 0 23 0 190 0 24 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 44 0 190 0 45 0 190 0 46 0 190 0 48 0 190 0 49 0 190 0 74 0 190 0 75 0 190 0 79 0 190 0 97 0 190 0 98 0 190 0 109 0 190 0 110 0 190 1 67 0 190 1 69] 
#[1 0 194 0 2 0 194 0 4 0 194 0 6 0 194 0 7 4 233 0 10 4 237 0 13 4 241 0 19 4 245 0 20 0 194 0 23 0 194 0 24 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 48 0 194 0 49 4 249 0 74 4 253 0 75 0 194 0 79 0 194 0 97 0 194 0 98 0 194 0 109 0 194 0 110 0 194 1 67 0 194 1 69] 
#[1 0 198 0 2 0 198 0 4 0 198 0 6 0 198 0 7 5 1 0 23 5 5 0 24 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 44 0 198 0 45 0 198 0 46 5 9 0 48 5 13 0 49 0 198 0 79 0 198 0 97 0 198 0 98 0 198 0 109 0 198 0 110 0 198 1 67 0 198 1 69] 
#[1 0 202 0 2 0 202 0 4 0 202 0 6 0 202 0 7 5 17 0 39 0 202 0 40 0 202 0 41 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 79 0 202 0 97 0 202 0 98 0 202 0 109 0 202 0 110 0 202 1 67 0 202 1 69] 
#[1 0 206 0 2 0 206 0 4 0 206 0 6 0 206 0 7 0 206 0 40 0 206 0 41 0 206 0 44 0 206 0 45 5 21 0 46 0 206 0 79 0 206 0 97 0 206 0 98 0 206 0 109 0 206 0 110 0 206 1 67 0 206 1 69] 
#[1 0 210 0 2 0 210 0 4 0 210 0 6 0 210 0 7 0 210 0 40 0 210 0 41 5 25 0 44 0 210 0 45 0 210 0 79 0 210 0 97 0 210 0 98 0 210 0 109 0 210 0 110 0 214 1 67 0 210 1 69] 
#[1 0 218 0 2 0 218 0 4 0 218 0 6 0 218 0 7 5 29 0 40 0 218 0 41 0 218 0 45 0 218 0 79 0 218 0 97 0 218 0 98 0 218 0 109 0 218 0 110 0 218 1 69] 
#[1 0 222 0 2 0 222 0 4 0 222 0 6 0 222 0 7 0 222 0 41 5 33 0 45 0 222 0 79 0 222 0 97 0 222 0 98 0 222 0 109 0 222 0 110 0 222 1 69] 
#[1 0 226 0 2 0 226 0 4 0 226 0 6 0 226 0 7 0 226 0 41 0 226 0 79 0 226 0 97 0 226 0 98 0 226 0 109 0 226 0 110 0 230 1 67 0 226 1 69] 
#[0 5 37 1 67] 
#[1 0 234 0 2 0 234 0 4 0 234 0 6 0 234 0 7 5 41 0 41 0 234 0 79 0 234 0 97 0 234 0 98 0 234 0 109 0 234 0 110 0 234 1 69] 
#[0 0 238 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 0 242 0 2 0 6 0 7 0 97 0 98 0 109 0 110 1 69] 
#[1 5 45 0 7 5 49 0 97] 
#[0 0 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 0 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 0 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 6 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 5 53 0 117 5 57 0 188 5 61 0 189 5 65 0 193 5 65 0 194 5 65 0 195] 
#[0 1 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 1 74 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 5 69 0 18] 
#[0 1 78 0 18] 
#[0 1 82 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 1 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 1 90 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 1 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 1 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 1 102 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[0 1 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 1 110 1 69] 
#[0 1 114 1 69] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 0 101 0 64 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 0 121 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 5 73 0 177 5 73 0 180 5 73 0 181 5 73 0 182 5 73 0 185 5 73 0 186 1 133 0 187 5 73 0 190 5 73 0 205 5 73 0 206 5 73 0 207 5 73 0 208 5 73 0 211 5 73 0 212 5 73 0 214 5 73 0 215 5 73 0 216 5 73 0 222 5 73 0 224 5 73 0 225 5 73 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 5 73 1 18 5 73 1 19 5 73 1 29 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61 1 118 1 69] 
#[0 1 122 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 126 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 130 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 1 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 1 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 111 0 112 0 113 1 67 1 68 1 69] 
#[1 1 162 0 3 1 162 0 111 1 162 0 113 5 77 1 63] 
#[0 1 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 5 81 0 111] 
#[1 2 149 0 4 5 85 0 5 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 2 173 0 96 2 53 0 100 2 177 0 101 5 97 0 103 5 101 0 104 5 93 0 117 2 197 0 118 2 189 0 128 2 193 0 129 2 197 0 130 2 197 0 131 2 197 0 132 2 193 0 133 2 193 0 246 2 193 0 248 2 193 0 253 2 193 1 1 5 97 1 36 5 101 1 37] 
#[0 3 181 0 1] 
#[0 0 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 65 0 69 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 5 49 0 97 0 0 1 69] 
#[0 0 0 1 69] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 5 105 0 177 5 105 0 180 5 105 0 181 5 105 0 182 5 105 0 185 5 105 0 186 1 133 0 187 5 105 0 190 5 105 0 205 5 105 0 206 5 105 0 207 5 105 0 208 5 105 0 211 5 105 0 212 5 105 0 214 5 105 0 215 5 105 0 216 5 105 0 222 5 105 0 224 5 105 0 225 5 105 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61 1 170 1 69] 
#[0 1 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 0 0 1 69] 
#[0 1 178 1 69] 
#[0 0 0 1 69] 
#[1 5 109 0 4 5 85 0 5 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 5 113 0 96 2 53 0 100 2 177 0 101 5 97 0 103 5 101 0 104 5 117 0 117 5 121 0 118 2 189 0 128 2 193 0 129 5 121 0 130 5 121 0 131 5 121 0 132 2 193 0 133 5 125 0 196 5 129 0 197 5 133 0 200 5 133 0 202 2 193 0 246 2 193 0 248 2 193 0 253 2 193 1 1 5 97 1 36 5 101 1 37] 
#[1 0 30 0 1 0 30 0 3 0 30 0 5 0 30 0 6 0 30 0 34 0 30 0 35 0 30 0 36 0 30 0 37 0 30 0 38 0 30 0 47 0 30 0 51 0 30 0 52 0 30 0 56 0 30 0 61 0 30 0 66 0 30 0 70 0 30 0 73 0 30 0 77 0 30 0 78 0 30 0 83 0 30 0 86 0 30 0 88 0 30 0 90 0 30 0 92 0 30 0 95 0 30 0 96 2 245 0 97 0 30 0 100 0 30 0 103 0 30 0 104 0 30 0 105 0 30 0 107 0 30 0 108 0 30 0 111 2 249 0 123 5 141 0 124 3 1 0 125 5 145 0 198 5 149 0 199] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 5 153 0 117 5 157 0 193 5 157 0 194 5 157 0 195] 
#[1 0 98 0 1 0 15 0 2 0 15 0 4 0 98 0 5 0 15 0 6 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 102 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 19 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 39 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 48 0 98 0 49 0 98 0 74 0 98 0 75 0 15 0 97 0 98 0 107 0 98 0 108 5 165 0 134 5 169 0 135 0 98 1 67 0 98 1 68] 
#[1 5 173 0 2 5 49 0 97] 
#[1 1 182 0 2 1 182 0 4 1 182 0 6 5 161 0 22 1 182 0 97 5 177 0 134 5 169 0 135] 
#[0 1 186 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[0 1 190 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[0 1 194 0 2 0 97] 
#[0 1 198 0 2 0 4 0 6 0 97] 
#[0 1 202 0 2] 
#[0 5 181 0 2] 
#[0 1 206 0 2] 
#[1 1 210 0 2 5 185 0 97] 
#[0 1 214 0 2] 
#[0 1 218 0 2 0 97] 
#[0 1 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 23 0 1 0 27 0 3 0 31 0 5 0 30 0 6 0 35 0 34 0 39 0 35 0 43 0 36 0 47 0 37 0 51 0 38 0 55 0 47 0 59 0 51 0 63 0 52 0 67 0 56 0 71 0 61 0 75 0 66 0 79 0 70 0 83 0 73 0 87 0 77 0 91 0 78 0 95 0 83 0 99 0 86 0 103 0 88 0 107 0 90 0 111 0 92 0 115 0 95 0 30 0 96 2 245 0 97 0 119 0 100 0 123 0 103 0 127 0 104 0 131 0 105 0 135 0 107 0 139 0 108 0 143 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 2 249 0 123 2 253 0 124 3 1 0 125 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 5 189 0 172 5 189 0 173 0 249 0 231 5 189 0 239 1 201 0 240 1 205 0 243 5 189 0 244 0 249 0 250 5 189 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 5 85 0 5 2 177 0 101 5 97 0 103 5 101 0 104 5 193 0 118 5 193 0 130 5 193 0 131 5 193 0 132 5 97 1 36 5 101 1 37] 
#[1 3 45 0 1 5 85 0 5 5 197 0 25 3 49 0 70 2 53 0 100 2 177 0 101 5 97 0 103 5 101 0 104 3 53 0 117 5 201 0 118 5 201 0 130 5 201 0 131 5 201 0 132 3 57 0 240 1 205 0 243 5 97 1 36 5 101 1 37] 
#[1 5 85 0 5 2 177 0 101 5 97 0 103 5 101 0 104 5 205 0 118 5 205 0 130 5 205 0 131 5 205 0 132 5 97 1 36 5 101 1 37] 
#[1 5 85 0 5 2 177 0 101 5 97 0 103 5 101 0 104 5 209 0 118 5 209 0 130 5 209 0 131 5 209 0 132 5 97 1 36 5 101 1 37] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 5 213 0 172 5 213 0 173 0 249 0 231 5 213 0 239 1 201 0 240 1 205 0 243 5 213 0 244 0 249 0 250 5 213 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 1 226 0 1 0 98] 
#[1 0 98 0 1 1 230 0 4 0 98 0 5 0 98 0 7 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 102 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 19 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 39 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 48 0 98 0 49 0 98 0 74 0 98 0 75 0 147 0 97 0 98 0 107 0 98 0 108 5 217 0 135 0 98 1 67 0 98 1 68] 
#[0 1 234 0 1 0 98] 
#[1 5 221 0 4 5 225 0 97] 
#[0 1 238 0 4 0 97] 
#[1 5 229 0 1 5 233 0 98] 
#[0 1 242 0 1 0 98] 
#[0 1 246 0 1 0 98] 
#[0 1 250 0 4 0 97] 
#[0 5 237 0 4] 
#[1 0 25 0 1 0 29 0 3 1 254 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 1 254 0 54 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 1 254 0 60 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 5 105 0 177 5 105 0 180 5 105 0 181 5 105 0 182 5 105 0 185 5 105 0 186 1 133 0 187 5 105 0 190 5 105 0 205 5 105 0 206 5 105 0 207 5 105 0 208 5 105 0 211 5 105 0 212 5 105 0 214 5 105 0 215 5 105 0 216 5 105 0 222 5 105 0 224 5 105 0 225 5 105 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 2 2 0 4 0 97] 
#[0 2 6 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 2 10 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 2 14 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[1 0 151 0 1 1 142 0 5 1 142 0 7 1 142 0 8 1 142 0 9 1 142 0 10 1 142 0 11 1 142 0 12 1 142 0 13 1 142 0 14 1 142 0 15 1 142 0 16 1 142 0 17 1 142 0 19 1 142 0 20 1 142 0 21 1 142 0 22 1 142 0 23 1 142 0 24 1 142 0 25 1 142 0 26 1 142 0 27 1 142 0 28 1 142 0 29 1 142 0 30 1 142 0 31 1 142 0 32 1 142 0 33 1 142 0 34 1 142 0 35 1 142 0 36 1 142 0 37 1 142 0 39 1 142 0 40 1 142 0 41 1 142 0 42 1 142 0 43 1 142 0 44 1 142 0 45 1 142 0 46 1 142 0 48 1 142 0 49 1 142 0 74 1 142 0 75 1 142 0 97 2 18 0 98 1 142 0 107 1 142 0 108 1 142 1 67 1 142 1 68] 
#[1 0 155 0 1 1 146 0 5 1 146 0 7 1 146 0 8 1 146 0 9 1 146 0 10 1 146 0 11 1 146 0 12 1 146 0 13 1 146 0 14 1 146 0 15 1 146 0 16 1 146 0 17 1 146 0 19 1 146 0 20 1 146 0 21 1 146 0 22 1 146 0 23 1 146 0 24 1 146 0 25 1 146 0 26 1 146 0 27 1 146 0 28 1 146 0 29 1 146 0 30 1 146 0 31 1 146 0 32 1 146 0 33 1 146 0 34 1 146 0 35 1 146 0 36 1 146 0 37 1 146 0 39 1 146 0 40 1 146 0 41 1 146 0 42 1 146 0 43 1 146 0 44 1 146 0 45 1 146 0 46 1 146 0 48 1 146 0 49 1 146 0 74 1 146 0 75 1 146 0 97 2 22 0 98 1 146 0 107 1 146 0 108 1 146 1 67 1 146 1 68] 
#[0 2 26 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 96 0 97 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[1 5 241 0 6 2 245 0 97 5 245 0 125] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 5 249 0 6 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 5 253 0 96 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 6 1 0 126 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 5 0 172 6 5 0 173 0 249 0 231 6 5 0 239 1 201 0 240 1 205 0 243 6 5 0 244 0 249 0 250 6 5 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 2 30 0 1 2 30 0 3 2 30 0 5 2 30 0 6 2 30 0 34 2 30 0 35 2 30 0 36 2 30 0 37 2 30 0 38 2 30 0 47 2 30 0 51 2 30 0 52 2 30 0 56 2 30 0 61 2 30 0 66 2 30 0 70 2 30 0 73 2 30 0 77 2 30 0 78 2 30 0 83 2 30 0 86 2 30 0 88 2 30 0 90 2 30 0 92 2 30 0 95 2 30 0 96 6 9 0 97 2 30 0 100 2 30 0 103 2 30 0 104 2 30 0 105 2 30 0 107 2 30 0 108 2 30 0 111] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 2 101 0 172 2 101 0 173 2 101 0 176 0 249 0 231 2 101 0 239 1 201 0 240 1 205 0 243 2 101 0 244 0 249 0 250 2 101 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 3 49 0 70] 
#[0 0 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 166 0 2 0 166 0 4 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 10 0 166 0 11 0 166 0 13 0 166 0 14 0 166 0 17 0 166 0 19 0 166 0 20 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 34 4 177 0 35 0 166 0 36 4 181 0 37 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 48 0 166 0 49 0 166 0 74 0 166 0 75 0 166 0 79 0 166 0 97 0 166 0 98 0 166 0 109 0 166 0 110 0 166 1 67 0 166 1 69] 
#[0 2 34 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[0 2 38 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[0 2 42 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[0 2 46 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[0 2 50 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[0 2 54 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 2 129 0 232 2 133 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[1 6 17 0 1 6 21 0 25 2 53 0 100 6 25 0 117] 
#[0 0 102 0 18] 
#[0 6 29 0 18] 
#[0 2 58 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[1 0 42 0 7 2 53 0 100 6 33 0 116 6 33 0 117] 
#[1 6 37 0 3 6 41 0 65 6 45 1 8 6 49 1 9] 
#[0 2 62 0 1 0 3 0 7 0 65] 
#[1 0 42 0 7 2 53 0 100 6 53 0 116 6 53 0 117] 
#[0 2 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 2 70 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[0 6 57 0 93] 
#[1 6 61 0 4 6 65 0 101 6 69 1 32 6 73 1 33] 
#[1 6 77 0 50 2 74 0 69] 
#[0 6 81 0 70] 
#[1 0 42 0 3 0 42 0 65 2 53 0 100 6 85 0 116 6 85 0 117] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 89 0 172 6 89 0 173 0 249 0 231 6 89 0 239 1 201 0 240 1 205 0 243 6 89 0 244 0 249 0 250 6 89 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 42 0 1 6 93 0 25 2 53 0 100 6 97 0 116 6 97 0 117] 
#[0 2 78 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 2 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 2 86 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 2 90 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 2 94 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 2 98 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 2 102 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 2 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 2 110 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 6 101 0 69 6 105 1 24] 
#[1 6 109 0 7 2 114 0 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 2 118 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 6 133 0 57 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 6 133 0 76 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 6 113 0 91 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 6 117 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 6 117 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 125 0 172 6 125 0 173 6 121 0 175 6 125 0 176 6 129 0 186 6 133 0 187 6 137 0 209 0 249 0 231 6 125 0 239 1 201 0 240 1 205 0 243 6 125 0 244 0 249 0 250 6 125 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 6 141 0 1] 
#[1 0 42 0 1 2 53 0 100 6 145 0 116 6 145 0 117] 
#[0 6 149 0 1] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 153 0 172 6 153 0 173 6 153 0 176 0 249 0 231 6 153 0 239 1 201 0 240 1 205 0 243 6 153 0 244 0 249 0 250 6 153 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 157 0 172 6 157 0 173 0 249 0 231 6 157 0 239 1 201 0 240 1 205 0 243 6 157 0 244 0 249 0 250 6 157 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 6 161 0 4 2 53 0 100 6 165 0 101 6 177 0 117 6 169 1 25 6 173 1 26 6 177 1 28] 
#[0 6 181 0 50] 
#[0 2 122 0 4 0 69 0 97] 
#[1 6 101 0 69 6 185 1 24] 
#[1 2 126 0 69 6 189 0 97] 
#[0 2 130 0 69] 
#[0 2 134 0 69] 
#[0 6 193 0 7] 
#[0 2 138 0 69 0 97] 
#[0 2 142 0 7] 
#[0 6 197 0 85] 
#[1 3 249 0 5 3 253 0 21] 
#[1 3 245 0 1 0 130 0 2 0 130 0 3 0 130 0 4 4 81 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 19 0 130 0 20 4 85 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 48 0 130 0 49 0 130 0 74 0 130 0 75 0 130 0 79 0 130 0 97 0 130 0 98 0 205 0 107 0 6 0 108 0 130 0 109 0 130 0 110 4 93 0 136 0 245 0 137 6 201 0 148 0 130 1 67 0 130 1 68 0 130 1 69] 
#[0 2 146 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 2 118 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 125 0 172 6 125 0 173 6 205 0 175 6 125 0 176 0 249 0 231 6 125 0 239 1 201 0 240 1 205 0 243 6 125 0 244 0 249 0 250 6 125 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 6 209 0 2 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 6 213 0 96 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 6 217 0 149 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 221 0 172 6 221 0 173 0 249 0 231 6 221 0 239 1 201 0 240 1 205 0 243 6 221 0 244 0 249 0 250 6 221 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 225 0 172 6 225 0 173 6 225 0 176 0 249 0 231 6 225 0 239 1 201 0 240 1 205 0 243 6 225 0 244 0 249 0 250 6 225 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 6 229 0 101] 
#[0 2 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 233 0 172 6 233 0 173 6 233 0 176 0 249 0 231 6 233 0 239 1 201 0 240 1 205 0 243 6 233 0 244 0 249 0 250 6 233 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 6 237 0 7 5 49 0 97] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 2 213 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 6 241 0 55 6 245 0 67 6 249 0 226 6 253 0 227] 
#[0 2 154 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[1 7 1 0 4 5 85 0 5 7 5 0 96 2 53 0 100 2 177 0 101 5 97 0 103 5 101 0 104 6 13 0 117 7 9 0 118 7 9 0 130 7 9 0 131 7 9 0 132 5 125 0 196 5 129 0 197 5 133 0 200 5 133 0 202 5 97 1 36 5 101 1 37] 
#[1 0 30 0 3 0 30 0 5 0 30 0 6 0 30 0 96 2 245 0 97 0 30 0 100 7 13 0 124 3 1 0 125 5 145 0 198 5 149 0 199] 
#[1 1 182 0 7 5 161 0 22 1 182 0 79 1 182 0 97 7 17 0 134 5 169 0 135] 
#[1 7 21 0 7 7 25 0 97] 
#[0 2 158 0 7 0 97] 
#[1 5 161 0 22 7 29 0 135] 
#[0 2 162 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 7 33 0 172 7 33 0 173 7 33 0 176 0 249 0 231 7 33 0 239 1 201 0 240 1 205 0 243 7 33 0 244 0 249 0 250 7 33 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 7 37 0 172 7 37 0 173 7 37 0 176 0 249 0 231 7 37 0 239 1 201 0 240 1 205 0 243 7 37 0 244 0 249 0 250 7 37 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 7 41 0 172 7 41 0 173 0 249 0 231 7 41 0 239 1 201 0 240 1 205 0 243 7 41 0 244 0 249 0 250 7 41 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 2 166 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 7 49 0 177 7 49 0 180 7 49 0 181 7 49 0 182 7 49 0 190 7 49 0 205 7 49 0 206 7 49 0 207 7 49 0 208 7 49 0 211 7 49 0 212 7 49 0 214 7 49 0 215 7 49 0 216 7 49 0 222 7 49 0 223 7 49 0 224 7 49 0 225 7 49 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 7 53 0 13] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 7 57 0 172 7 57 0 173 7 57 0 176 0 249 0 231 7 57 0 239 1 201 0 240 1 205 0 243 7 57 0 244 0 249 0 250 7 57 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 7 61 0 172 7 61 0 173 7 61 0 176 0 249 0 231 7 61 0 239 1 201 0 240 1 205 0 243 7 61 0 244 0 249 0 250 7 61 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 7 65 0 101] 
#[1 3 245 0 1 7 69 0 5 7 73 0 101 0 205 0 107 0 6 0 108 7 77 0 136 0 245 0 137 7 81 0 148 7 85 0 153] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 2 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 3 245 0 1 2 178 0 2 2 178 0 3 2 178 0 4 7 89 0 5 2 178 0 6 2 178 0 7 2 178 0 8 2 178 0 9 2 178 0 10 2 178 0 11 2 178 0 12 2 178 0 13 2 178 0 14 2 178 0 15 2 178 0 16 2 178 0 17 2 178 0 19 2 178 0 20 7 93 0 21 2 178 0 22 2 178 0 23 2 178 0 24 2 178 0 25 2 178 0 26 2 178 0 27 2 178 0 28 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 34 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 39 2 178 0 40 2 178 0 41 2 178 0 42 2 178 0 43 2 178 0 44 2 178 0 45 2 178 0 46 2 178 0 48 2 178 0 49 2 178 0 74 2 178 0 75 2 178 0 79 2 178 0 97 2 178 0 98 0 205 0 107 0 6 0 108 2 178 0 109 2 178 0 110 7 97 0 136 0 245 0 137 7 101 0 148 7 105 0 152 2 178 1 67 2 178 1 68 2 178 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 7 109 0 172 7 109 0 173 7 109 0 176 0 249 0 231 7 109 0 239 1 201 0 240 1 205 0 243 7 109 0 244 0 249 0 250 7 109 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 7 113 0 101] 
#[0 2 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 2 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 3 245 0 1 2 190 0 2 2 190 0 3 2 190 0 4 7 89 0 5 2 190 0 6 2 190 0 7 2 190 0 8 2 190 0 9 2 190 0 10 2 190 0 11 2 190 0 12 2 190 0 13 2 190 0 14 2 190 0 15 2 190 0 16 2 190 0 17 2 190 0 19 2 190 0 20 7 93 0 21 2 190 0 22 2 190 0 23 2 190 0 24 2 190 0 25 2 190 0 26 2 190 0 27 2 190 0 28 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 34 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 2 190 0 44 2 190 0 45 2 190 0 46 2 190 0 48 2 190 0 49 2 190 0 74 2 190 0 75 2 190 0 79 2 190 0 97 2 190 0 98 0 205 0 107 0 6 0 108 2 190 0 109 2 190 0 110 7 97 0 136 0 245 0 137 7 101 0 148 7 105 0 152 2 190 1 67 2 190 1 68 2 190 1 69] 
#[1 3 245 0 1 2 194 0 2 2 194 0 3 2 194 0 4 7 89 0 5 2 194 0 6 2 194 0 7 2 194 0 8 2 194 0 9 2 194 0 10 2 194 0 11 2 194 0 12 2 194 0 13 2 194 0 14 2 194 0 15 2 194 0 16 2 194 0 17 2 194 0 19 2 194 0 20 7 93 0 21 2 194 0 22 2 194 0 23 2 194 0 24 2 194 0 25 2 194 0 26 2 194 0 27 2 194 0 28 2 194 0 29 2 194 0 30 2 194 0 31 2 194 0 32 2 194 0 33 2 194 0 34 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 42 2 194 0 43 2 194 0 44 2 194 0 45 2 194 0 46 2 194 0 48 2 194 0 49 2 194 0 74 2 194 0 75 2 194 0 79 2 194 0 97 2 194 0 98 0 205 0 107 0 6 0 108 2 194 0 109 2 194 0 110 7 97 0 136 0 245 0 137 7 101 0 148 7 105 0 152 2 194 1 67 2 194 1 68 2 194 1 69] 
#[0 2 198 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 2 202 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 2 206 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 2 210 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 2 214 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 2 218 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 2 222 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 2 226 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 2 230 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 2 234 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 2 238 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 2 242 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 2 246 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[0 2 250 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 7 117 0 172 7 117 0 173 0 249 0 231 7 117 0 239 1 201 0 240 1 205 0 243 7 117 0 244 0 249 0 250 7 117 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 2 254 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 7 121 0 157 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 3 2 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 3 6 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 3 10 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 7 125 0 157 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 7 129 0 157 7 129 0 158 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 7 133 0 157 7 133 0 158 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 7 137 0 160 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 7 141 0 160 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 7 145 0 160 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 7 149 0 161 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 7 153 0 161 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 7 157 0 161 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 7 161 0 161 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 7 165 0 161 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 7 169 0 161 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 7 173 0 162 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 7 177 0 162 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 7 181 0 162 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 7 185 0 162 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 7 189 0 163 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 7 193 0 164 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 7 197 0 165 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 7 201 0 166 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 7 205 0 166 7 209 0 167 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 7 213 0 166 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 7 217 0 172 7 217 0 173 0 249 0 231 7 217 0 239 1 201 0 240 1 205 0 243 7 217 0 244 0 249 0 250 7 217 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 3 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 7 221 0 172 7 221 0 173 0 249 0 231 7 221 0 239 1 201 0 240 1 205 0 243 7 221 0 244 0 249 0 250 7 221 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 1 182 0 7 5 161 0 22 1 182 0 97 7 225 0 134 5 169 0 135] 
#[1 7 229 0 7 7 233 0 97] 
#[0 3 18 0 7 0 97] 
#[1 5 161 0 22 7 237 0 135] 
#[1 0 25 0 1 7 241 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 7 253 0 172 7 253 0 173 0 249 0 231 7 253 0 239 1 201 0 240 7 249 0 241 7 253 0 242 1 205 0 243 7 253 0 244 0 249 0 250 7 253 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 3 22 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 3 26 0 3 3 26 0 111 3 26 0 113 8 1 1 57 8 5 1 58] 
#[1 8 9 0 112 8 13 1 44 8 13 1 45 8 13 1 46 8 25 1 47 8 29 1 48] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 5 189 0 172 5 189 0 173 0 249 0 231 5 189 0 239 1 201 0 240 1 205 0 243 5 189 0 244 0 249 0 250 5 189 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 5 85 0 5 5 197 0 25 2 177 0 101 5 97 0 103 5 101 0 104 5 201 0 118 5 201 0 130 5 201 0 131 5 201 0 132 5 97 1 36 5 101 1 37] 
#[1 1 230 0 4 5 161 0 22 1 230 0 97 5 217 0 135] 
#[0 2 18 0 1 0 98] 
#[0 2 22 0 1 0 98] 
#[0 3 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 1 222 0 1 0 159 0 2 0 159 0 4 1 222 0 5 0 159 0 6 1 222 0 8 1 222 0 9 1 222 0 10 1 222 0 11 1 222 0 12 1 222 0 13 1 222 0 14 1 222 0 15 1 222 0 16 1 222 0 17 1 222 0 19 1 222 0 20 1 222 0 21 0 159 0 22 1 222 0 23 1 222 0 24 1 222 0 25 1 222 0 26 1 222 0 27 1 222 0 28 1 222 0 29 1 222 0 30 1 222 0 31 1 222 0 32 1 222 0 33 1 222 0 34 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 39 1 222 0 40 1 222 0 41 1 222 0 42 1 222 0 43 1 222 0 44 1 222 0 45 1 222 0 46 1 222 0 48 1 222 0 49 1 222 0 74 1 222 0 75 0 159 0 97 1 222 0 107 1 222 0 108 1 222 1 67 1 222 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 8 33 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 5 213 0 172 5 213 0 173 0 249 0 231 5 213 0 239 1 201 0 240 1 205 0 243 5 213 0 244 0 249 0 250 5 213 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 163 0 4 5 161 0 22 0 163 0 97 5 165 0 134 8 37 0 135] 
#[1 5 229 0 1 8 41 0 98] 
#[0 8 45 0 4] 
#[1 8 49 0 4 8 53 0 97] 
#[0 3 38 0 4 0 97] 
#[0 3 42 0 4 0 97] 
#[1 0 25 0 1 2 85 0 3 2 89 0 5 0 167 0 6 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 8 57 0 96 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 2 97 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 6 1 0 126 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 5 0 172 6 5 0 173 2 105 0 193 2 105 0 194 2 105 0 195 8 61 0 201 8 61 0 202 8 65 0 203 8 65 0 204 0 249 0 231 6 5 0 239 1 201 0 240 1 205 0 243 6 5 0 244 0 249 0 250 6 5 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 8 73 0 6 8 77 0 97] 
#[0 3 50 0 6 0 97] 
#[0 3 54 0 2 0 6] 
#[0 3 58 0 2 0 6] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 8 81 0 172 8 81 0 173 0 249 0 231 8 81 0 239 1 201 0 240 1 205 0 243 8 81 0 244 0 249 0 250 8 81 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 3 62 0 2 0 4 0 6 0 97] 
#[0 3 66 0 2 0 4 0 6 0 7 0 79 0 97] 
#[0 3 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 3 74 0 2 0 4 0 6 0 97] 
#[0 3 78 0 18] 
#[1 3 82 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 8 89 0 201 8 89 0 202 8 85 0 204 8 85 0 235 8 89 0 236] 
#[0 8 93 0 6] 
#[0 8 97 0 1] 
#[1 5 85 0 5 2 177 0 101 5 97 0 103 5 101 0 104 8 101 0 118 8 101 0 130 8 101 0 131 8 101 0 132 5 97 1 36 5 101 1 37] 
#[0 8 105 0 1] 
#[0 8 109 0 1] 
#[0 8 113 0 1] 
#[0 3 86 0 4 0 97] 
#[0 3 90 0 4 0 97] 
#[0 3 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 8 117 0 4 5 85 0 5 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 2 173 0 96 2 53 0 100 2 177 0 101 5 97 0 103 5 101 0 104 5 93 0 117 2 197 0 118 8 121 0 129 2 197 0 130 2 197 0 131 2 197 0 132 8 121 0 133 8 121 0 246 8 121 0 248 8 121 0 253 8 121 1 1 5 97 1 36 5 101 1 37] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 8 125 0 232 2 133 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 8 129 0 172 8 129 0 173 0 249 0 231 8 129 0 239 1 201 0 240 1 205 0 243 8 129 0 244 0 249 0 250 8 129 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 3 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 3 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 8 133 0 6 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 5 253 0 96 6 9 0 97 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 8 137 0 126 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 8 141 0 172 8 141 0 173 0 249 0 231 8 141 0 239 1 201 0 240 1 205 0 243 8 141 0 244 0 249 0 250 8 141 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 3 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 8 145 0 172 8 145 0 173 0 249 0 231 8 145 0 239 1 201 0 240 1 205 0 243 8 145 0 244 0 249 0 250 8 145 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 3 110 0 6 0 97] 
#[0 3 114 0 6 0 97] 
#[0 3 118 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 96 0 97 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[1 1 182 0 2 1 182 0 4 1 182 0 6 5 161 0 22 1 182 0 97 5 165 0 134 5 169 0 135] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 8 149 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[1 0 42 0 1 2 53 0 100 8 153 0 116 8 153 0 117] 
#[0 8 157 0 1] 
#[1 0 25 0 1 8 161 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 8 165 0 172 8 165 0 173 0 249 0 231 8 165 0 239 1 201 0 240 8 165 0 242 1 205 0 243 8 165 0 244 8 169 0 245 0 249 0 250 8 165 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 8 173 0 7] 
#[1 8 177 0 4 5 85 0 5 8 181 0 7 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 8 185 0 82 2 177 0 101 5 97 0 103 5 101 0 104 8 189 0 118 8 189 0 130 8 189 0 131 8 189 0 132 8 205 0 246 8 205 0 248 8 205 0 253 8 205 1 1 8 197 1 10 8 201 1 11 8 205 1 12 5 97 1 36 5 101 1 37] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 3 9 0 51 0 77 0 56 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 8 209 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 8 209 0 154 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 3 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 8 213 0 3] 
#[0 8 217 0 7] 
#[0 8 221 0 1] 
#[0 3 126 0 7 0 69] 
#[1 3 130 0 4 8 225 0 50 3 130 0 97] 
#[1 8 229 0 4 8 233 0 97] 
#[0 3 134 0 4 0 97] 
#[0 8 237 0 101] 
#[1 8 241 0 1 8 245 0 25 2 53 0 100 8 249 0 117] 
#[1 6 37 0 3 6 41 0 65 8 253 1 8 6 49 1 9] 
#[0 9 1 0 7] 
#[1 0 42 0 1 2 53 0 100 9 5 0 116 9 5 0 117] 
#[0 9 9 0 1] 
#[0 9 13 0 103 1 27 1 36] 
#[0 9 17 0 7] 
#[0 3 138 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 9 21 0 117 9 25 0 191 9 29 0 192 9 33 0 193 9 33 0 194 9 33 0 195 9 37 0 210] 
#[1 0 166 0 7 0 166 0 8 4 185 0 9 0 166 0 10 0 166 0 11 4 185 0 12 0 166 0 13 0 166 0 14 4 185 0 15 4 185 0 16 0 166 0 17 0 166 0 19 0 166 0 20 4 185 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 4 185 0 27 4 185 0 28 4 185 0 29 4 185 0 30 4 185 0 31 4 185 0 32 4 185 0 33 0 166 0 34 4 177 0 35 0 166 0 36 4 181 0 37 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 48 0 166 0 49 0 171 0 74 0 166 0 75 9 45 0 79 0 166 0 97 4 185 0 174 0 166 1 67 4 185 1 68] 
#[0 9 49 0 7] 
#[1 3 142 0 2 3 142 0 7 5 49 0 97] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 2 118 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 125 0 172 6 125 0 173 9 53 0 175 6 125 0 176 0 249 0 231 6 125 0 239 1 201 0 240 1 205 0 243 6 125 0 244 0 249 0 250 6 125 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 9 57 0 117 5 57 0 188 5 61 0 189 9 61 0 193 9 61 0 194 9 61 0 195 9 65 0 210] 
#[1 9 69 0 74 9 73 0 79] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 3 9 0 51 0 77 0 56 9 85 0 57 2 9 0 66 0 113 0 70 2 49 0 73 9 85 0 76 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 9 77 0 91 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 9 81 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 9 81 0 154 9 85 0 187 9 89 0 209 0 249 0 231 0 249 0 250 0 249 0 255 0 249 1 3 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 9 93 0 1] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 9 97 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[1 9 101 0 2 5 49 0 97] 
#[0 9 105 0 2] 
#[0 3 146 0 69] 
#[0 9 109 0 50] 
#[1 9 113 0 4 9 117 0 97] 
#[0 3 150 0 4 0 97] 
#[0 3 154 0 4 0 97] 
#[1 2 53 0 100 9 121 0 117 9 121 1 28] 
#[0 9 125 0 7] 
#[1 3 185 0 3 3 189 0 25 9 129 1 22 9 133 1 23] 
#[0 3 158 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 3 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 3 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 9 137 0 7] 
#[0 3 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 9 141 0 172 9 141 0 173 0 249 0 231 9 141 0 239 1 201 0 240 1 205 0 243 9 141 0 244 0 249 0 250 9 141 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 9 145 0 2 9 149 0 97] 
#[0 3 174 0 2 0 97] 
#[1 9 153 0 6 5 49 0 97] 
#[0 3 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 9 157 0 2 5 49 0 97] 
#[0 3 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 9 161 0 1 4 13 0 3 9 165 0 182] 
#[1 4 13 0 3 9 169 0 182] 
#[1 3 186 0 1 3 186 0 3 3 186 0 4 3 186 0 5 3 186 0 7 3 186 0 34 3 186 0 35 3 186 0 36 3 186 0 37 3 186 0 38 3 186 0 47 3 186 0 51 3 186 0 52 3 186 0 53 3 186 0 54 3 186 0 56 3 186 0 57 3 186 0 58 3 186 0 59 3 186 0 60 3 186 0 61 3 186 0 62 3 186 0 63 3 186 0 64 3 186 0 66 6 245 0 67 3 186 0 68 3 186 0 70 3 186 0 72 3 186 0 73 3 186 0 76 3 186 0 77 3 186 0 78 3 186 0 80 3 186 0 83 3 186 0 84 3 186 0 86 3 186 0 87 3 186 0 88 3 186 0 89 3 186 0 90 3 186 0 91 3 186 0 92 3 186 0 93 3 186 0 94 3 186 0 95 3 186 0 100 3 186 0 103 3 186 0 104 3 186 0 105 3 186 0 107 3 186 0 108 3 186 0 111 9 173 0 227 3 186 1 69] 
#[0 3 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 3 34 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[1 2 53 0 100 9 177 0 117] 
#[0 9 181 0 98] 
#[1 4 25 0 3 4 29 0 5 3 46 0 6 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 8 61 0 201 8 61 0 202 8 65 0 203 8 65 0 204] 
#[0 3 194 0 7 0 79 0 97] 
#[0 3 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 4 33 0 117 9 185 0 192 4 45 0 193 4 45 0 194 4 45 0 195] 
#[0 3 202 0 7 0 79 0 97] 
#[1 9 189 0 2 5 49 0 97] 
#[1 9 193 0 2 5 49 0 97] 
#[0 3 206 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 3 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 3 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 1 162 0 3 1 162 0 111 1 162 0 113 9 197 1 63] 
#[1 5 49 0 97 9 201 0 109 9 205 0 110 9 209 0 138 9 213 0 139] 
#[1 9 217 0 6 5 49 0 97] 
#[0 3 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 9 221 0 172 9 221 0 173 9 221 0 176 0 249 0 231 9 221 0 239 1 201 0 240 1 205 0 243 9 221 0 244 0 249 0 250 9 221 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 3 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 3 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 3 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 3 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 9 225 0 172 9 225 0 173 9 225 0 176 0 249 0 231 9 225 0 239 1 201 0 240 1 205 0 243 9 225 0 244 0 249 0 250 9 225 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 9 229 0 101] 
#[0 3 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 3 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 3 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 9 233 0 6 5 49 0 97] 
#[0 3 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 3 254 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 4 2 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[0 4 6 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 67 1 69] 
#[1 4 10 0 2 4 10 0 4 4 10 0 6 4 10 0 7 4 209 0 8 4 10 0 10 4 10 0 11 4 10 0 13 4 10 0 14 4 10 0 17 4 10 0 19 4 10 0 20 4 10 0 23 4 10 0 24 4 209 0 25 4 10 0 34 4 10 0 36 4 10 0 39 4 10 0 40 4 10 0 41 4 209 0 43 4 10 0 44 4 10 0 45 4 10 0 46 4 10 0 48 4 10 0 49 4 10 0 74 4 10 0 75 4 10 0 79 4 10 0 97 4 10 0 98 4 10 0 109 4 10 0 110 4 209 0 159 4 10 1 67 4 10 1 69] 
#[1 4 14 0 2 4 14 0 4 4 14 0 6 4 14 0 7 4 209 0 8 4 14 0 10 4 14 0 11 4 14 0 13 4 14 0 14 4 14 0 17 4 14 0 19 4 14 0 20 4 14 0 23 4 14 0 24 4 209 0 25 4 14 0 34 4 14 0 36 4 14 0 39 4 14 0 40 4 14 0 41 4 209 0 43 4 14 0 44 4 14 0 45 4 14 0 46 4 14 0 48 4 14 0 49 4 14 0 74 4 14 0 75 4 14 0 79 4 14 0 97 4 14 0 98 4 14 0 109 4 14 0 110 4 209 0 159 4 14 1 67 4 14 1 69] 
#[1 4 18 0 2 4 18 0 4 4 18 0 6 4 18 0 7 4 18 0 10 4 18 0 11 4 18 0 13 4 18 0 14 4 18 0 17 4 18 0 19 4 18 0 20 4 18 0 23 4 18 0 24 4 213 0 34 4 217 0 36 4 18 0 39 4 18 0 40 4 18 0 41 4 18 0 44 4 18 0 45 4 18 0 46 4 18 0 48 4 18 0 49 4 18 0 74 4 18 0 75 4 18 0 79 4 18 0 97 4 18 0 98 4 18 0 109 4 18 0 110 4 18 1 67 4 18 1 69] 
#[1 4 22 0 2 4 22 0 4 4 22 0 6 4 22 0 7 4 22 0 10 4 22 0 11 4 22 0 13 4 22 0 14 4 22 0 17 4 22 0 19 4 22 0 20 4 22 0 23 4 22 0 24 4 213 0 34 4 217 0 36 4 22 0 39 4 22 0 40 4 22 0 41 4 22 0 44 4 22 0 45 4 22 0 46 4 22 0 48 4 22 0 49 4 22 0 74 4 22 0 75 4 22 0 79 4 22 0 97 4 22 0 98 4 22 0 109 4 22 0 110 4 22 1 67 4 22 1 69] 
#[1 4 26 0 2 4 26 0 4 4 26 0 6 4 26 0 7 4 26 0 10 4 26 0 11 4 26 0 13 4 26 0 14 4 26 0 17 4 26 0 19 4 26 0 20 4 26 0 23 4 26 0 24 4 213 0 34 4 217 0 36 4 26 0 39 4 26 0 40 4 26 0 41 4 26 0 44 4 26 0 45 4 26 0 46 4 26 0 48 4 26 0 49 4 26 0 74 4 26 0 75 4 26 0 79 4 26 0 97 4 26 0 98 4 26 0 109 4 26 0 110 4 26 1 67 4 26 1 69] 
#[1 4 30 0 2 4 30 0 4 4 30 0 6 4 30 0 7 4 30 0 10 4 221 0 11 4 30 0 13 4 225 0 14 4 229 0 17 4 30 0 19 4 30 0 20 4 30 0 23 4 30 0 24 4 30 0 39 4 30 0 40 4 30 0 41 4 30 0 44 4 30 0 45 4 30 0 46 4 30 0 48 4 30 0 49 4 30 0 74 4 30 0 75 4 30 0 79 4 30 0 97 4 30 0 98 4 30 0 109 4 30 0 110 4 30 1 67 4 30 1 69] 
#[1 4 34 0 2 4 34 0 4 4 34 0 6 4 34 0 7 4 34 0 10 4 221 0 11 4 34 0 13 4 225 0 14 4 229 0 17 4 34 0 19 4 34 0 20 4 34 0 23 4 34 0 24 4 34 0 39 4 34 0 40 4 34 0 41 4 34 0 44 4 34 0 45 4 34 0 46 4 34 0 48 4 34 0 49 4 34 0 74 4 34 0 75 4 34 0 79 4 34 0 97 4 34 0 98 4 34 0 109 4 34 0 110 4 34 1 67 4 34 1 69] 
#[1 4 38 0 2 4 38 0 4 4 38 0 6 4 38 0 7 4 38 0 10 4 221 0 11 4 38 0 13 4 225 0 14 4 229 0 17 4 38 0 19 4 38 0 20 4 38 0 23 4 38 0 24 4 38 0 39 4 38 0 40 4 38 0 41 4 38 0 44 4 38 0 45 4 38 0 46 4 38 0 48 4 38 0 49 4 38 0 74 4 38 0 75 4 38 0 79 4 38 0 97 4 38 0 98 4 38 0 109 4 38 0 110 4 38 1 67 4 38 1 69] 
#[1 4 42 0 2 4 42 0 4 4 42 0 6 4 42 0 7 4 42 0 10 4 221 0 11 4 42 0 13 4 225 0 14 4 229 0 17 4 42 0 19 4 42 0 20 4 42 0 23 4 42 0 24 4 42 0 39 4 42 0 40 4 42 0 41 4 42 0 44 4 42 0 45 4 42 0 46 4 42 0 48 4 42 0 49 4 42 0 74 4 42 0 75 4 42 0 79 4 42 0 97 4 42 0 98 4 42 0 109 4 42 0 110 4 42 1 67 4 42 1 69] 
#[1 4 46 0 2 4 46 0 4 4 46 0 6 4 46 0 7 4 46 0 10 4 221 0 11 4 46 0 13 4 225 0 14 4 229 0 17 4 46 0 19 4 46 0 20 4 46 0 23 4 46 0 24 4 46 0 39 4 46 0 40 4 46 0 41 4 46 0 44 4 46 0 45 4 46 0 46 4 46 0 48 4 46 0 49 4 46 0 74 4 46 0 75 4 46 0 79 4 46 0 97 4 46 0 98 4 46 0 109 4 46 0 110 4 46 1 67 4 46 1 69] 
#[1 4 50 0 2 4 50 0 4 4 50 0 6 4 50 0 7 4 50 0 10 4 221 0 11 4 50 0 13 4 225 0 14 4 229 0 17 4 50 0 19 4 50 0 20 4 50 0 23 4 50 0 24 4 50 0 39 4 50 0 40 4 50 0 41 4 50 0 44 4 50 0 45 4 50 0 46 4 50 0 48 4 50 0 49 4 50 0 74 4 50 0 75 4 50 0 79 4 50 0 97 4 50 0 98 4 50 0 109 4 50 0 110 4 50 1 67 4 50 1 69] 
#[1 4 54 0 2 4 54 0 4 4 54 0 6 4 54 0 7 4 233 0 10 4 237 0 13 4 241 0 19 4 245 0 20 4 54 0 23 4 54 0 24 4 54 0 39 4 54 0 40 4 54 0 41 4 54 0 44 4 54 0 45 4 54 0 46 4 54 0 48 4 54 0 49 4 249 0 74 4 253 0 75 4 54 0 79 4 54 0 97 4 54 0 98 4 54 0 109 4 54 0 110 4 54 1 67 4 54 1 69] 
#[1 4 58 0 2 4 58 0 4 4 58 0 6 4 58 0 7 4 233 0 10 4 237 0 13 4 241 0 19 4 245 0 20 4 58 0 23 4 58 0 24 4 58 0 39 4 58 0 40 4 58 0 41 4 58 0 44 4 58 0 45 4 58 0 46 4 58 0 48 4 58 0 49 4 249 0 74 4 253 0 75 4 58 0 79 4 58 0 97 4 58 0 98 4 58 0 109 4 58 0 110 4 58 1 67 4 58 1 69] 
#[1 4 62 0 2 4 62 0 4 4 62 0 6 4 62 0 7 4 233 0 10 4 237 0 13 4 241 0 19 4 245 0 20 4 62 0 23 4 62 0 24 4 62 0 39 4 62 0 40 4 62 0 41 4 62 0 44 4 62 0 45 4 62 0 46 4 62 0 48 4 62 0 49 4 249 0 74 4 253 0 75 4 62 0 79 4 62 0 97 4 62 0 98 4 62 0 109 4 62 0 110 4 62 1 67 4 62 1 69] 
#[1 4 66 0 2 4 66 0 4 4 66 0 6 4 66 0 7 4 233 0 10 4 237 0 13 4 241 0 19 4 245 0 20 4 66 0 23 4 66 0 24 4 66 0 39 4 66 0 40 4 66 0 41 4 66 0 44 4 66 0 45 4 66 0 46 4 66 0 48 4 66 0 49 4 249 0 74 4 253 0 75 4 66 0 79 4 66 0 97 4 66 0 98 4 66 0 109 4 66 0 110 4 66 1 67 4 66 1 69] 
#[1 4 70 0 2 4 70 0 4 4 70 0 6 4 70 0 7 5 1 0 23 5 5 0 24 4 70 0 39 4 70 0 40 4 70 0 41 4 70 0 44 4 70 0 45 4 70 0 46 5 9 0 48 5 13 0 49 4 70 0 79 4 70 0 97 4 70 0 98 4 70 0 109 4 70 0 110 4 70 1 67 4 70 1 69] 
#[1 4 74 0 2 4 74 0 4 4 74 0 6 4 74 0 7 5 17 0 39 4 74 0 40 4 74 0 41 4 74 0 44 4 74 0 45 4 74 0 46 4 74 0 79 4 74 0 97 4 74 0 98 4 74 0 109 4 74 0 110 4 74 1 67 4 74 1 69] 
#[1 4 78 0 2 4 78 0 4 4 78 0 6 4 78 0 7 4 78 0 40 4 78 0 41 4 78 0 44 4 78 0 45 5 21 0 46 4 78 0 79 4 78 0 97 4 78 0 98 4 78 0 109 4 78 0 110 4 78 1 67 4 78 1 69] 
#[1 4 82 0 2 4 82 0 4 4 82 0 6 4 82 0 7 4 82 0 40 4 82 0 41 5 25 0 44 4 82 0 45 4 82 0 79 4 82 0 97 4 82 0 98 4 82 0 109 4 82 0 110 4 82 1 69] 
#[1 0 210 0 2 0 210 0 4 0 210 0 6 0 210 0 7 0 210 0 40 0 210 0 41 5 25 0 44 0 210 0 45 0 210 0 79 0 210 0 97 0 210 0 98 0 210 0 109 0 210 0 110 0 210 1 69] 
#[1 4 86 0 2 4 86 0 4 4 86 0 6 4 86 0 7 5 29 0 40 4 86 0 41 4 86 0 45 4 86 0 79 4 86 0 97 4 86 0 98 4 86 0 109 4 86 0 110 4 86 1 69] 
#[1 4 90 0 2 4 90 0 4 4 90 0 6 4 90 0 7 4 90 0 41 5 25 0 44 4 90 0 79 4 90 0 97 4 90 0 98 4 90 0 109 4 90 0 110 4 90 1 67 4 90 1 69] 
#[0 9 237 0 98] 
#[0 4 94 0 2 0 6 0 7 0 97 0 98 0 109 0 110 1 69] 
#[0 4 98 0 7 0 97] 
#[0 4 102 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 5 53 0 117 9 241 0 189 5 65 0 193 5 65 0 194 5 65 0 195] 
#[0 4 106 0 7 0 97] 
#[1 0 25 0 1 0 29 0 3 0 11 0 4 2 153 0 5 0 37 0 7 2 157 0 25 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 2 161 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 2 165 0 71 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 2 169 0 81 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 2 173 0 96 0 189 0 100 2 177 0 101 2 237 0 103 2 241 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 2 181 0 117 2 197 0 118 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 2 189 0 128 2 193 0 129 2 197 0 130 2 197 0 131 2 197 0 132 2 193 0 133 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 9 249 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 2 193 0 246 2 193 0 248 0 249 0 250 1 105 0 252 2 193 0 253 0 249 0 255 2 193 1 1 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 237 1 36 2 241 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 4 110 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 4 114 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 4 118 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[1 0 10 0 111 10 1 1 42 10 5 1 61] 
#[1 4 122 0 3 0 175 0 111 10 9 0 113 10 17 1 39 10 17 1 40 2 33 1 41 10 17 1 59 2 41 1 61 10 21 1 66] 
#[1 4 130 0 3 4 130 0 8 4 130 0 13 10 25 0 21 10 29 0 98 4 130 0 112] 
#[1 4 122 0 3 10 33 0 8 0 94 0 13 10 37 0 112 10 65 1 45 10 45 1 49 10 49 1 50 10 53 1 51 10 49 1 52 10 49 1 53 10 65 1 54 10 69 1 62 10 73 1 66] 
#[0 4 134 0 3 0 8 0 13 0 112] 
#[0 4 138 0 3 0 8 0 13 0 112] 
#[0 4 142 0 112] 
#[1 10 77 0 112 10 81 1 47] 
#[1 0 98 0 1 0 179 0 4 0 98 0 5 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 102 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 98 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 39 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 48 0 98 0 49 0 98 0 74 0 98 0 75 0 98 0 97 0 98 0 107 0 98 0 108 0 98 1 67 0 98 1 68] 
#[0 0 183 0 4 0 97] 
#[1 0 25 0 1 2 85 0 3 2 89 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 2 97 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 8 129 0 172 8 129 0 173 2 105 0 193 2 105 0 194 2 105 0 195 10 85 0 201 10 85 0 202 0 249 0 231 8 129 0 239 1 201 0 240 1 205 0 243 8 129 0 244 0 249 0 250 8 129 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 4 150 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[0 4 154 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[1 10 89 0 4 5 85 0 5 7 5 0 96 2 53 0 100 2 177 0 101 5 97 0 103 5 101 0 104 6 13 0 117 7 9 0 118 7 9 0 130 7 9 0 131 7 9 0 132 10 93 0 196 10 97 0 200 10 97 0 202 5 97 1 36 5 101 1 37] 
#[1 0 25 0 1 2 85 0 3 2 89 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 10 101 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 8 145 0 172 8 145 0 173 5 157 0 193 5 157 0 194 5 157 0 195 0 249 0 231 8 145 0 239 1 201 0 240 1 205 0 243 8 145 0 244 0 249 0 250 8 145 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 4 158 0 6 0 97] 
#[0 10 105 0 6] 
#[0 4 162 0 6] 
#[0 4 166 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[1 0 30 0 3 0 30 0 5 0 30 0 6 0 30 0 96 2 245 0 97 0 30 0 100 10 109 0 124 3 1 0 125 10 113 0 199] 
#[0 4 170 0 2 0 4 0 6 0 7 0 79 0 97] 
#[0 4 174 0 2] 
#[0 4 178 0 2 0 97] 
#[0 4 182 0 1 0 98] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 10 117 0 232 2 133 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[0 10 121 0 1] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 10 125 0 232 2 133 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[0 10 129 0 2] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 10 137 0 201 10 137 0 202 10 137 0 236 10 137 0 247] 
#[0 4 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 4 190 0 4 0 97] 
#[0 10 141 0 2] 
#[0 4 194 0 4 0 97] 
#[0 4 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 4 202 0 6 0 97] 
#[0 4 206 0 6 0 97] 
#[0 4 210 0 4 0 6 0 97] 
#[0 10 145 0 2] 
#[0 10 149 0 1] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 10 153 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[1 0 25 0 1 0 29 0 3 0 11 0 4 2 153 0 5 0 37 0 7 2 157 0 25 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 2 161 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 2 165 0 71 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 2 169 0 81 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 2 173 0 96 0 189 0 100 2 177 0 101 2 237 0 103 2 241 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 2 181 0 117 2 197 0 118 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 2 189 0 128 2 193 0 129 2 197 0 130 2 197 0 131 2 197 0 132 2 193 0 133 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 10 157 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 2 193 0 246 2 193 0 248 0 249 0 250 1 105 0 252 2 193 0 253 0 249 0 255 2 193 1 1 0 249 1 3 10 161 1 4 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 237 1 36 2 241 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 4 214 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 4 218 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 4 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 4 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 100 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 1 67 1 68 1 69] 
#[0 4 230 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 101 0 103 0 104] 
#[1 5 85 0 5 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 2 177 0 101 5 97 0 103 5 101 0 104 8 189 0 118 8 189 0 130 8 189 0 131 8 189 0 132 10 165 0 246 10 165 0 248 10 165 0 253 10 165 1 1 5 97 1 36 5 101 1 37] 
#[0 5 229 0 1] 
#[0 4 234 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 101 0 103 0 104] 
#[0 10 169 0 4] 
#[1 4 238 0 4 5 85 0 5 8 181 0 7 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 8 185 0 82 2 177 0 101 5 97 0 103 5 101 0 104 8 189 0 118 8 189 0 130 8 189 0 131 8 189 0 132 10 173 0 246 10 173 0 248 10 173 0 253 10 173 1 1 10 173 1 12 5 97 1 36 5 101 1 37] 
#[0 4 242 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 101 0 103 0 104] 
#[0 4 246 0 3] 
#[1 10 177 0 4 5 85 0 5 8 181 0 7 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 8 185 0 82 2 177 0 101 5 97 0 103 5 101 0 104 8 189 0 118 8 189 0 130 8 189 0 131 8 189 0 132 8 205 0 246 8 205 0 248 8 205 0 253 8 205 1 1 10 181 1 10 8 201 1 11 8 205 1 12 5 97 1 36 5 101 1 37] 
#[0 4 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 10 185 0 172 10 185 0 173 10 185 0 176 0 249 0 231 10 185 0 239 1 201 0 240 1 205 0 243 10 185 0 244 0 249 0 250 10 185 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 10 189 0 101] 
#[0 4 254 0 7 0 69] 
#[1 10 193 0 4 6 65 0 101 10 197 1 33] 
#[0 5 2 0 69] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 10 201 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[1 0 42 0 1 2 53 0 100 10 205 0 116 10 205 0 117] 
#[0 10 209 0 1] 
#[0 5 6 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 5 10 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 10 213 0 1] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 10 217 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[0 5 14 0 7] 
#[0 5 18 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 1 182 0 7 5 161 0 22 5 22 0 74 1 182 0 79 1 182 0 97 7 17 0 134 5 169 0 135] 
#[1 10 221 0 7 7 25 0 97] 
#[1 2 158 0 7 10 225 0 79 2 158 0 97] 
#[1 5 161 0 22 5 26 0 74 7 29 0 135] 
#[0 10 229 0 74] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 10 233 0 172 10 233 0 173 10 233 0 176 0 249 0 231 10 233 0 239 1 201 0 240 1 205 0 243 10 233 0 244 0 249 0 250 10 233 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 10 237 0 172 10 237 0 173 0 249 0 231 10 237 0 239 1 201 0 240 1 205 0 243 10 237 0 244 0 249 0 250 10 237 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 2 118 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 125 0 172 6 125 0 173 10 241 0 175 6 125 0 176 0 249 0 231 6 125 0 239 1 201 0 240 1 205 0 243 6 125 0 244 0 249 0 250 6 125 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 10 245 0 7] 
#[1 1 182 0 7 5 161 0 22 5 22 0 74 5 22 0 79 1 182 0 97 7 225 0 134 5 169 0 135] 
#[1 5 161 0 22 5 26 0 74 5 26 0 79 7 237 0 135] 
#[0 5 30 0 74 0 79] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 10 249 0 172 10 249 0 173 10 249 0 176 0 249 0 231 10 249 0 239 1 201 0 240 1 205 0 243 10 249 0 244 0 249 0 250 10 249 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 10 253 0 172 10 253 0 173 0 249 0 231 10 253 0 239 1 201 0 240 1 205 0 243 10 253 0 244 0 249 0 250 10 253 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 4 33 0 117 11 1 0 192 4 45 0 193 4 45 0 194 4 45 0 195] 
#[0 11 5 0 79] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 9 65 0 117 9 65 0 193 9 65 0 194 9 65 0 195 9 65 0 210] 
#[0 11 17 0 79] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 11 21 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[0 11 25 0 2] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 11 29 0 177 11 29 0 180 11 29 0 181 11 29 0 182 11 29 0 190 11 29 0 205 11 29 0 206 11 29 0 207 11 29 0 208 11 29 0 211 11 29 0 212 11 29 0 214 11 29 0 215 11 29 0 216 11 29 0 222 11 29 0 224 11 29 0 225 11 29 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 5 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 2 53 0 100 11 33 0 117 11 33 1 28] 
#[0 5 38 0 69] 
#[1 11 37 0 4 2 53 0 100 6 165 0 101 6 177 0 117 11 41 1 26 6 177 1 28] 
#[0 5 42 0 69] 
#[0 5 46 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 5 50 0 69] 
#[0 5 54 0 69] 
#[0 5 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 5 62 0 2 0 97] 
#[0 5 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 11 45 0 2 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 11 49 0 96 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 11 53 0 172 11 53 0 173 0 249 0 231 11 53 0 239 1 201 0 240 1 205 0 243 11 53 0 244 0 249 0 250 11 53 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 5 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 11 57 0 3 11 61 0 217] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 11 73 0 117 11 73 0 193 11 73 0 194 11 73 0 195 11 73 0 228] 
#[0 5 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 5 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 5 82 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 4 146 0 4] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 10 85 0 201 10 85 0 202] 
#[0 5 86 0 7 0 97] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 11 77 0 177 11 77 0 180 11 77 0 181 11 77 0 182 11 77 0 190 11 77 0 205 11 77 0 206 11 77 0 207 11 77 0 208 11 77 0 211 11 77 0 212 11 77 0 214 11 77 0 215 11 77 0 216 11 77 0 222 11 77 0 224 11 77 0 225 11 77 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 11 81 0 177 11 81 0 180 11 81 0 181 11 81 0 182 11 81 0 190 11 81 0 205 11 81 0 206 11 81 0 207 11 81 0 208 11 81 0 211 11 81 0 212 11 81 0 214 11 81 0 215 11 81 0 216 11 81 0 222 11 81 0 224 11 81 0 225 11 81 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 3 26 0 3 3 26 0 111 3 26 0 113 11 85 1 57 8 5 1 58] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 11 89 0 172 11 89 0 173 11 89 0 176 0 249 0 231 11 89 0 239 1 201 0 240 1 205 0 243 11 89 0 244 0 249 0 250 11 89 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 5 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 5 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 11 93 0 109 11 97 0 110] 
#[0 5 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 11 101 0 6 5 49 0 97] 
#[1 11 105 0 6 5 49 0 97] 
#[0 5 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 5 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 11 109 0 172 11 109 0 173 0 249 0 231 11 109 0 239 1 201 0 240 1 205 0 243 11 109 0 244 0 249 0 250 11 109 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 5 110 0 7 0 97] 
#[0 5 114 0 4] 
#[0 11 113 0 4] 
#[0 5 118 0 4] 
#[0 5 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 111 0 112 0 113 1 67 1 68 1 69] 
#[0 11 117 0 111] 
#[0 5 126 0 3 0 111 0 113] 
#[0 5 130 0 3 0 111 0 113] 
#[0 5 134 0 3 0 111 0 113] 
#[0 11 121 0 3] 
#[0 5 138 0 112] 
#[0 11 125 0 112] 
#[1 5 142 0 13 11 129 1 64] 
#[1 5 146 0 3 5 146 0 8 5 146 0 13 5 146 0 22 10 29 0 98 5 146 0 112] 
#[0 5 150 0 3 0 8 0 13 0 22 0 112] 
#[1 11 133 0 8 0 94 0 13 11 137 1 62] 
#[0 5 154 0 3 0 8 0 13 0 112] 
#[1 4 122 0 3 5 158 0 8 5 158 0 13 10 37 0 112 10 65 1 45 11 141 1 50 11 141 1 52 11 141 1 53 10 65 1 54 10 73 1 66] 
#[0 5 162 0 3 0 8 0 13 0 112] 
#[0 5 166 0 3 0 8 0 13 0 112] 
#[1 5 170 0 3 5 170 0 8 5 170 0 13 11 145 0 22 5 170 0 112 11 149 1 55] 
#[0 11 153 0 13] 
#[0 11 157 0 3] 
#[1 5 174 0 3 5 174 0 8 5 174 0 13 10 25 0 21 5 174 0 112] 
#[0 5 178 0 112] 
#[0 5 182 0 4 0 97] 
#[0 5 186 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[0 11 161 0 4] 
#[0 5 190 0 4 0 97] 
#[1 0 98 0 1 0 98 0 5 0 187 0 6 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 102 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 98 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 39 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 48 0 98 0 49 0 98 0 74 0 98 0 75 0 98 0 97 0 98 0 107 0 98 0 108 0 98 1 67 0 98 1 68] 
#[0 5 194 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[1 4 25 0 3 4 29 0 5 3 46 0 6 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 8 61 0 201 8 61 0 202 11 165 0 203 11 165 0 204] 
#[0 5 198 0 6 0 97] 
#[0 11 169 0 2] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 11 173 0 232 2 133 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[0 11 177 0 2] 
#[0 11 181 0 3] 
#[0 5 202 0 2] 
#[0 11 185 0 2] 
#[0 11 189 0 3] 
#[0 11 193 0 3] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 11 197 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[0 11 201 0 2] 
#[0 5 206 0 4] 
#[0 11 205 0 4] 
#[0 5 210 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 101 0 103 0 104] 
#[0 5 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 100 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 1 67 1 68 1 69] 
#[0 5 218 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 101 0 103 0 104] 
#[0 5 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 100 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 1 67 1 68 1 69] 
#[0 11 209 0 4] 
#[1 11 213 0 2 5 49 0 97] 
#[0 5 226 0 4 0 97] 
#[0 5 230 0 7 0 69] 
#[0 5 234 0 4 0 97] 
#[0 11 217 0 2] 
#[0 11 221 0 1] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 11 225 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 11 229 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[0 11 233 0 2] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 2 118 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 125 0 172 6 125 0 173 11 237 0 175 6 125 0 176 0 249 0 231 6 125 0 239 1 201 0 240 1 205 0 243 6 125 0 244 0 249 0 250 6 125 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 11 241 0 172 11 241 0 173 0 249 0 231 11 241 0 239 1 201 0 240 1 205 0 243 11 241 0 244 0 249 0 250 11 241 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 11 245 0 172 11 245 0 173 11 245 0 176 0 249 0 231 11 245 0 239 1 201 0 240 1 205 0 243 11 245 0 244 0 249 0 250 11 245 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 11 249 0 2 5 49 0 97] 
#[0 11 253 0 2] 
#[0 12 1 0 7] 
#[1 0 25 0 1 2 118 0 2 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 125 0 172 6 125 0 173 12 5 0 175 6 125 0 176 0 249 0 231 6 125 0 239 1 201 0 240 1 205 0 243 6 125 0 244 0 249 0 250 6 125 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 12 9 0 2 5 49 0 97] 
#[0 12 13 0 2] 
#[0 12 17 0 79] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 12 21 0 172 12 21 0 173 0 249 0 231 12 21 0 239 1 201 0 240 1 205 0 243 12 21 0 244 0 249 0 250 12 21 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 5 22 0 79] 
#[0 5 26 0 79] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 12 25 0 172 12 25 0 173 0 249 0 231 12 25 0 239 1 201 0 240 1 205 0 243 12 25 0 244 0 249 0 250 12 25 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 12 29 0 2] 
#[0 12 33 0 3] 
#[1 5 238 0 1 5 238 0 3 5 238 0 4 5 238 0 5 5 238 0 7 5 238 0 34 5 238 0 35 5 238 0 36 5 238 0 37 5 238 0 38 5 238 0 47 5 238 0 51 5 238 0 52 5 238 0 53 5 238 0 54 5 238 0 56 5 238 0 57 5 238 0 58 5 238 0 59 5 238 0 60 5 238 0 61 5 238 0 62 12 37 0 63 5 238 0 64 5 238 0 66 5 238 0 68 5 238 0 70 5 238 0 72 5 238 0 73 5 238 0 76 5 238 0 77 5 238 0 78 5 238 0 80 5 238 0 83 5 238 0 84 5 238 0 86 5 238 0 87 5 238 0 88 5 238 0 89 5 238 0 90 5 238 0 91 5 238 0 92 5 238 0 93 5 238 0 94 5 238 0 95 5 238 0 100 5 238 0 103 5 238 0 104 5 238 0 105 5 238 0 107 5 238 0 108 5 238 0 111 5 238 1 69] 
#[0 5 242 0 4 0 97] 
#[0 5 246 0 69] 
#[0 5 250 0 4 0 97] 
#[0 5 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 12 41 0 172 12 41 0 173 0 249 0 231 12 41 0 239 1 201 0 240 1 205 0 243 12 41 0 244 0 249 0 250 12 41 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 6 2 0 2 0 97] 
#[1 6 6 0 4 12 45 0 54 6 6 0 60 12 49 0 218 12 53 0 219 12 57 0 220] 
#[0 6 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 6 14 0 2] 
#[0 6 18 0 2] 
#[0 12 61 0 2] 
#[0 6 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 6 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 12 65 0 111] 
#[1 5 49 0 97 6 30 0 109 6 30 0 110] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 12 69 0 172 12 69 0 173 12 69 0 176 0 249 0 231 12 69 0 239 1 201 0 240 1 205 0 243 12 69 0 244 0 249 0 250 12 69 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 6 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 6 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 6 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 6 46 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 6 50 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 12 73 0 8] 
#[1 0 25 0 1 2 45 0 3 0 94 0 4 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 5 253 0 96 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 12 85 0 126 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 12 85 0 172 12 85 0 173 0 249 0 231 12 85 0 239 1 201 0 240 1 205 0 243 12 85 0 244 0 249 0 250 12 85 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 12 85 1 60 2 41 1 61 12 89 1 62] 
#[0 6 54 0 3 0 8 0 13 0 22 0 112] 
#[0 12 93 0 13] 
#[1 5 142 0 13 12 97 1 64] 
#[0 12 101 0 13] 
#[0 6 58 0 3 0 8 0 13 0 112] 
#[1 4 122 0 3 12 105 0 103 0 7 0 111 12 105 1 36 12 117 1 39 12 117 1 40 2 33 1 41 12 117 1 43 12 117 1 56 2 41 1 61 12 121 1 66] 
#[0 6 62 0 3 0 8 0 13 0 112] 
#[0 6 66 0 3 0 111 0 113] 
#[1 5 253 0 96 12 125 0 126] 
#[0 6 70 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[0 12 129 0 6] 
#[0 12 133 0 3] 
#[0 12 137 0 2] 
#[0 12 141 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 12 145 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 12 149 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 12 153 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 10 157 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 12 157 1 4 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 12 161 0 2] 
#[0 12 165 0 3] 
#[0 6 74 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 69] 
#[0 6 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 100 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 1 67 1 68 1 69] 
#[0 12 169 0 7] 
#[0 12 173 0 3] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 193 2 105 0 194 2 105 0 195 2 145 0 201 2 145 0 202 2 141 0 204 12 177 0 233 2 137 0 234 2 141 0 235 2 145 0 236] 
#[0 12 181 0 2] 
#[0 12 185 0 2] 
#[0 12 189 0 3] 
#[0 12 193 0 7] 
#[0 12 197 0 2] 
#[1 12 201 0 2 5 49 0 97] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 12 205 0 177 12 205 0 180 12 205 0 181 12 205 0 182 12 205 0 190 12 205 0 205 12 205 0 206 12 205 0 207 12 205 0 208 12 205 0 211 12 205 0 212 12 205 0 214 12 205 0 215 12 205 0 216 12 205 0 222 12 205 0 224 12 205 0 225 12 205 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 12 209 0 177 12 209 0 180 12 209 0 181 12 209 0 182 12 209 0 190 12 209 0 205 12 209 0 206 12 209 0 207 12 209 0 208 12 209 0 211 12 209 0 212 12 209 0 214 12 209 0 215 12 209 0 216 12 209 0 222 12 209 0 224 12 209 0 225 12 209 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 118 0 2 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 125 0 172 6 125 0 173 12 213 0 175 6 125 0 176 0 249 0 231 6 125 0 239 1 201 0 240 1 205 0 243 6 125 0 244 0 249 0 250 6 125 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 12 217 0 2] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 12 221 0 177 12 221 0 180 12 221 0 181 12 221 0 182 12 221 0 190 12 221 0 205 12 221 0 206 12 221 0 207 12 221 0 208 12 221 0 211 12 221 0 212 12 221 0 214 12 221 0 215 12 221 0 216 12 221 0 222 12 221 0 224 12 221 0 225 12 221 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 12 225 0 177 12 225 0 180 12 225 0 181 12 225 0 182 12 225 0 190 12 225 0 205 12 225 0 206 12 225 0 207 12 225 0 208 12 225 0 211 12 225 0 212 12 225 0 214 12 225 0 215 12 225 0 216 12 225 0 222 12 225 0 224 12 225 0 225 12 225 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 12 229 0 172 12 229 0 173 0 249 0 231 12 229 0 239 1 201 0 240 1 205 0 243 12 229 0 244 0 249 0 250 12 229 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 12 233 0 2] 
#[0 12 237 0 2] 
#[0 12 241 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 12 245 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 12 249 0 177 12 249 0 180 12 249 0 181 12 249 0 182 12 249 0 190 12 249 0 205 12 249 0 206 12 249 0 207 12 249 0 208 12 249 0 211 12 249 0 212 12 249 0 214 12 249 0 215 12 249 0 216 12 249 0 222 12 249 0 224 12 249 0 225 12 249 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 6 82 0 2 0 97] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 12 253 0 172 12 253 0 173 12 253 0 176 0 249 0 231 12 253 0 239 1 201 0 240 1 205 0 243 12 253 0 244 0 249 0 250 12 253 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 13 1 0 4 13 5 0 60 13 9 0 221] 
#[1 6 86 0 4 12 45 0 54 6 86 0 60 13 13 0 220] 
#[0 6 90 0 4 0 54 0 60] 
#[1 4 13 0 3 13 17 0 182] 
#[0 13 21 0 8] 
#[1 5 49 0 97 6 94 0 109 6 94 0 110] 
#[1 8 9 0 112 13 25 1 44 13 25 1 45 13 25 1 46 8 25 1 47 8 29 1 48] 
#[0 6 98 0 4] 
#[0 6 102 0 4] 
#[1 0 94 0 4 13 29 1 62] 
#[0 13 33 0 4] 
#[0 6 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 111 0 112 0 113 1 67 1 68 1 69] 
#[0 13 37 0 13] 
#[0 6 110 0 3 0 111 0 113] 
#[0 6 114 0 3 0 8 0 13 0 112] 
#[0 6 118 0 3 0 8 0 13 0 112] 
#[0 6 122 0 3 0 8 0 13 0 112] 
#[0 6 126 0 3 0 8 0 13 0 112] 
#[0 13 41 0 3] 
#[1 0 10 0 4 13 45 1 61] 
#[0 6 130 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 13 49 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 13 53 0 251 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 13 57 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 10 157 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 13 61 1 4 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 13 65 0 4] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 13 69 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 13 73 0 4] 
#[0 13 77 0 4] 
#[0 13 81 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 10 157 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 13 85 1 4 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 6 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 10 157 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 13 89 1 4 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 13 93 0 2] 
#[0 13 97 0 3] 
#[0 13 101 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 13 105 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 2 118 0 2 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 6 125 0 172 6 125 0 173 13 109 0 175 6 125 0 176 0 249 0 231 6 125 0 239 1 201 0 240 1 205 0 243 6 125 0 244 0 249 0 250 6 125 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 13 113 0 177 13 113 0 180 13 113 0 181 13 113 0 182 13 113 0 190 13 113 0 205 13 113 0 206 13 113 0 207 13 113 0 208 13 113 0 211 13 113 0 212 13 113 0 214 13 113 0 215 13 113 0 216 13 113 0 222 13 113 0 224 13 113 0 225 13 113 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 13 117 0 177 13 117 0 180 13 117 0 181 13 117 0 182 13 117 0 190 13 117 0 205 13 117 0 206 13 117 0 207 13 117 0 208 13 117 0 211 13 117 0 212 13 117 0 214 13 117 0 215 13 117 0 216 13 117 0 222 13 117 0 224 13 117 0 225 13 117 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 6 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 6 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 13 121 0 2] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 13 125 0 177 13 125 0 180 13 125 0 181 13 125 0 182 13 125 0 190 13 125 0 205 13 125 0 206 13 125 0 207 13 125 0 208 13 125 0 211 13 125 0 212 13 125 0 214 13 125 0 215 13 125 0 216 13 125 0 222 13 125 0 224 13 125 0 225 13 125 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 6 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 6 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 13 129 0 2] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 13 133 0 177 13 133 0 180 13 133 0 181 13 133 0 182 13 133 0 190 13 133 0 205 13 133 0 206 13 133 0 207 13 133 0 208 13 133 0 211 13 133 0 212 13 133 0 214 13 133 0 215 13 133 0 216 13 133 0 222 13 133 0 224 13 133 0 225 13 133 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 13 137 0 177 13 137 0 180 13 137 0 181 13 137 0 182 13 137 0 190 13 137 0 205 13 137 0 206 13 137 0 207 13 137 0 208 13 137 0 211 13 137 0 212 13 137 0 214 13 137 0 215 13 137 0 216 13 137 0 222 13 137 0 224 13 137 0 225 13 137 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 13 49 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 13 141 0 251 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 13 145 0 4] 
#[0 6 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 5 49 0 97 13 149 0 98] 
#[0 6 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 13 153 0 98] 
#[1 6 6 0 4 12 45 0 54 13 157 0 218 12 53 0 219 12 57 0 220] 
#[0 6 162 0 4 0 54 0 60] 
#[0 6 166 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 6 170 0 13 13 161 1 65] 
#[1 6 170 0 13 13 165 1 65] 
#[0 13 169 0 4] 
#[0 6 174 0 3 0 111 0 113] 
#[0 6 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 111 0 112 0 113 1 67 1 68 1 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 13 173 0 172 13 173 0 173 0 249 0 231 13 173 0 239 1 201 0 240 1 205 0 243 13 173 0 244 0 249 0 250 13 173 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 13 177 0 4] 
#[0 6 182 0 4] 
#[0 13 181 0 4] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 13 185 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 13 189 1 0 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 13 193 0 4] 
#[0 6 186 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 13 197 0 4] 
#[0 6 190 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 6 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 13 185 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 13 201 1 0 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 13 205 0 4] 
#[0 13 209 0 4] 
#[0 13 213 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 10 157 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 13 217 1 4 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 13 49 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 13 221 0 251 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 13 225 0 4] 
#[0 13 229 0 2] 
#[0 6 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 6 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 13 233 0 177 13 233 0 180 13 233 0 181 13 233 0 182 13 233 0 190 13 233 0 205 13 233 0 206 13 233 0 207 13 233 0 208 13 233 0 211 13 233 0 212 13 233 0 214 13 233 0 215 13 233 0 216 13 233 0 222 13 233 0 224 13 233 0 225 13 233 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 6 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 13 237 0 177 13 237 0 180 13 237 0 181 13 237 0 182 13 237 0 190 13 237 0 205 13 237 0 206 13 237 0 207 13 237 0 208 13 237 0 211 13 237 0 212 13 237 0 214 13 237 0 215 13 237 0 216 13 237 0 222 13 237 0 224 13 237 0 225 13 237 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 6 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 6 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 13 241 0 4] 
#[0 6 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 26 0 54 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 26 0 60 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 13 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 26 0 54 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 13 249 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 13 253 0 4] 
#[0 14 1 0 13] 
#[0 14 5 0 13] 
#[0 6 222 0 3 0 111 0 113] 
#[1 0 10 0 4 14 9 1 61] 
#[0 6 226 0 3 0 8 0 13 0 112] 
#[0 6 230 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 6 234 0 4] 
#[0 14 13 0 4] 
#[0 6 238 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 6 242 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 14 17 0 4] 
#[0 6 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 6 250 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 2 69 0 177 2 69 0 180 2 69 0 181 2 69 0 182 9 245 0 183 2 217 0 184 2 69 0 185 2 69 0 186 1 133 0 187 2 69 0 190 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 208 2 69 0 211 2 69 0 212 2 69 0 214 2 69 0 215 2 69 0 216 2 69 0 222 2 69 0 224 2 69 0 225 2 69 0 229 0 249 0 231 13 185 0 237 9 253 0 238 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 14 21 1 0 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 14 25 0 4] 
#[0 14 29 0 4] 
#[0 6 254 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 154 1 37 0 155 1 37 0 156 1 45 0 157 1 45 0 158 1 49 0 160 1 53 0 161 1 57 0 162 1 61 0 163 1 65 0 164 1 69 0 165 1 73 0 166 1 77 0 167 1 81 0 168 1 85 0 169 1 89 0 170 1 93 0 171 1 105 0 172 1 105 0 173 1 105 0 176 14 33 0 177 14 33 0 180 14 33 0 181 14 33 0 182 14 33 0 190 14 33 0 205 14 33 0 206 14 33 0 207 14 33 0 208 14 33 0 211 14 33 0 212 14 33 0 214 14 33 0 215 14 33 0 216 14 33 0 222 14 33 0 224 14 33 0 225 14 33 0 229 0 249 0 231 1 105 0 239 1 201 0 240 1 205 0 243 1 105 0 244 0 249 0 250 1 105 0 252 0 249 0 255 0 249 1 3 1 37 1 5 0 249 1 7 2 5 1 34 2 9 1 35 2 13 1 36 2 17 1 37 0 249 1 38 0 249 1 39 0 249 1 40 2 33 1 41 0 249 1 43 2 41 1 61] 
#[0 7 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 7 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 7 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 7 14 0 4 0 54 0 60] 
#[0 7 18 0 4 0 54] 
#[0 7 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 7 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 112 1 67 1 68 1 69] 
#[0 7 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 111 0 112 0 113 1 67 1 68 1 69] 
#[0 14 37 0 4] 
#[0 7 34 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 7 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 67 1 68 1 69] 
#[0 14 41 0 4] 
#[0 7 42 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 7 46 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 7 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69] 
#[0 7 54 0 3 0 8 0 13 0 112] 
#[0 7 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 69]
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
	(actions isEmpty
		and: [ ((currentState attributeNamed: #lastInsertedSemicolonPosition)
				ifNil: [ -1 ]) < scanner position ])
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
	result := Array new: 6.
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
	result := Array new: 6.
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
	result := Array new: 6.
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
JSParser >> reduceActionForArrayBindingPattern1: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result commas.
	result restElement: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern2: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commas.
	result addNodes: ((nodes at: 2) at: 2) to: result elements.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern3: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commas.
	result addNodes: ((nodes at: 2) at: 2) to: result elements.
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
	result addTokens: (nodes at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayLiteral2: nodes [
	| result |
	result := JSArrayLiteralNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commas.
	result addNodes: ((nodes at: 2) at: 2) to: result expressions.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayLiteral3: nodes [
	| result |
	result := JSArrayLiteralNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commas.
	result addNodes: ((nodes at: 2) at: 2) to: result expressions.
	result addTokens: (nodes at: 3) to: result commas.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrowFormalParameters1: nodes [
	| result |
	result := Array new: 5.
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
JSParser >> reduceActionForArrowFunction1: nodes [
	| result |
	result := JSArrowFunctionNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result parameters.
	result left: ((nodes at: 1) at: 2).
	result restParameter: ((nodes at: 1) at: 3).
	result addTokens: ((nodes at: 1) at: 4) to: result commas.
	result right: ((nodes at: 1) at: 5).
	result arrow: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result leftBracket: ((nodes at: 3) at: 2).
	result rightBracket: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrowParameters1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrowParameters2: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 2 put: ((nodes at: 1) at: 1).
	result at: 3 put: ((nodes at: 1) at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 4).
	result at: 5 put: ((nodes at: 1) at: 5).
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
JSParser >> reduceActionForBindingElementList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElementList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 1).
	self add: ((nodes at: 3) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElisionElement1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
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
	result addNodes: (nodes at: 2) to: result statements.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBreakStatement1: nodes [
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
JSParser >> reduceActionForCaseBlock1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseBlock2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 2).
	self addAll: (nodes at: 4) to: (result at: 2).
	result at: 3 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseClause1: nodes [
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
JSParser >> reduceActionForClassElement2: nodes [
	| result |
	result := JSStaticMethodDefinitionNode new.
	result staticToken: (nodes at: 1).
	result method: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassExpression1: nodes [
	| result |
	result := JSClassExpressionNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: ((nodes at: 3) at: 1).
	result rightBrace: ((nodes at: 3) at: 2).
	result addNodes: ((nodes at: 3) at: 3) to: result elements.
	result extendsToken: ((nodes at: 3) at: 4).
	result superclass: ((nodes at: 3) at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassTail1: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassTail2: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 3).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassTail3: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: ((nodes at: 1) at: 1).
	result at: 5 put: ((nodes at: 1) at: 2).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassTail4: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: ((nodes at: 1) at: 1).
	result at: 5 put: ((nodes at: 1) at: 2).
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
JSParser >> reduceActionForContinueStatement1: nodes [
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
	result addNodes: (nodes at: 3) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForElementList2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForElementList4: nodes [
	| result |
	result := nodes at: 1.
	self addAll: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
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
JSParser >> reduceActionForExponentiationExpression2: nodes [
	| result |
	result := JSBinaryExpressionNode new.
	result leftExpression: (nodes at: 1).
	result operator: (nodes at: 2).
	result rightExpression: (nodes at: 3).
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
JSParser >> reduceActionForFormalParameterList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFormalParameterList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
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
JSParser >> reduceActionForFunctionExpression1: nodes [
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
JSParser >> reduceActionForGeneratorExpression1: nodes [
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
JSParser >> reduceActionForInitializer1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForInitializeropt1: nodes [
	| result |
	result := Array new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement10: nodes [
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
JSParser >> reduceActionForIterationStatement11: nodes [
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
JSParser >> reduceActionForIterationStatement12: nodes [
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
JSParser >> reduceActionForIterationStatement13: nodes [
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
JSParser >> reduceActionForIterationStatement14: nodes [
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
JSParser >> reduceActionForIterationStatement4: nodes [
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
JSParser >> reduceActionForIterationStatement5: nodes [
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
JSParser >> reduceActionForIterationStatement6: nodes [
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
JSParser >> reduceActionForIterationStatement7: nodes [
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
JSParser >> reduceActionForIterationStatement8: nodes [
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
JSParser >> reduceActionForIterationStatement9: nodes [
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
JSParser >> reduceActionForSingleNameBinding1: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
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
JSParser >> reduceActionForStartTemplateLiteral1: nodes [
	^ #template
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForStatementListopt1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
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
	result addNodes: ((nodes at: 5) at: 2) to: result clauses.
	result rightBrace: ((nodes at: 5) at: 3).
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
JSParser >> reduceActionForUnaryExpression5: nodes [
	| result |
	result := JSUnaryExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
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
JSParser >> reduceActionForVariableDeclaration2: nodes [
	| result |
	result := JSVariablePatternDeclarationNode new.
	result pattern: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
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
