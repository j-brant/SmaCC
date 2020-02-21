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
#[ 0 166 9 25] 
#[ 0 10 4 118] 
#[ 0 98 4 138] 
#[ 3 66 3 90] 
#[ 0 98 3 54]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2020-02-21T16:26:08.482922-06:00'
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

%id <semicolon> <identifier> <slash> <slashEqual> <regular_expression> <identifierName> <rightBrace> <jsxLT> <lt>;

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
:	<questionDot> 'questionDotToken' Optional 'option'  ##
|	OptionalChain Optional 'option'  ##
;
Optional
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
	#(137 0 #reduceActionForStartTemplateLiteral1: 11062273 true ) 
	#(316 0 #reduceActionForSwitchToJSX1: 39894017 true ) 
	#(270 0 #reduceActionForModule1: 34643969 false ) 
	#(268 0 #reduceActionForScript1: 34585601 false ) 
	#(232 0 #reduceActionForFormalParameters1: 29655041 false ) 
	#(182 0 #reduceActionForStatementListopt1: 21245953 false ) 
	#(124 0 #reduceActionForStatementListopt1: 9594881 false ) 
	#(204 1 #reduceActionForEmptyStatement1: 23945217 false ) 
	#(212 0 #reduceActionForCheckEOL1: 27452417 true ) 
	#(116 0 #nil 7499777 false ) 
	#(186 1 #liftFirstValue: 21537794 false ) 
	#(290 1 #liftFirstValue: 37249026 false ) 
	#(186 1 #liftFirstValue: 21537793 false ) 
	#(289 1 #liftFirstValue: 37225473 false ) 
	#(119 1 #reduceActionForPrimaryExpression1: 7826433 false ) 
	#(290 1 #liftFirstValue: 37249025 false ) 
	#(251 1 #reduceActionForYieldExpression1: 32139265 false ) 
	#(117 1 #reduceActionForIdentifier1: 7531521 false ) 
	#(291 1 #liftFirstValue: 37285889 false ) 
	#(292 1 #liftFirstValue: 37313537 false ) 
	#(293 1 #reduceActionForRegularExpressionLiteral1: 37343233 false ) 
	#(136 1 #reduceActionForTemplateLiteral1: 10906625 false ) 
	#(317 0 #reduceActionForSwitchToJSXText1: 39934977 true ) 
	#(119 1 #liftFirstValue: 7826434 false ) 
	#(239 1 #reduceActionForArrowParameters1: 30213121 false ) 
	#(140 1 #liftFirstValue: 11332609 false ) 
	#(119 1 #liftFirstValue: 7826445 false ) 
	#(119 1 #liftFirstValue: 7826435 false ) 
	#(119 1 #liftFirstValue: 7826436 false ) 
	#(119 1 #liftFirstValue: 7826437 false ) 
	#(119 1 #liftFirstValue: 7826444 false ) 
	#(144 1 #liftFirstValue: 12230657 false ) 
	#(140 1 #liftFirstValue: 11332613 false ) 
	#(140 1 #liftFirstValue: 11332614 false ) 
	#(142 1 #liftFirstValue: 12099585 false ) 
	#(153 1 #liftFirstValue: 14003201 false ) 
	#(153 1 #liftFirstValue: 14003202 false ) 
	#(145 1 #liftFirstValue: 12320770 false ) 
	#(145 1 #liftFirstValue: 12320771 false ) 
	#(153 1 #liftFirstValue: 14003203 false ) 
	#(154 1 #liftFirstValue: 14085121 false ) 
	#(155 1 #liftFirstValue: 14453761 false ) 
	#(156 1 #liftFirstValue: 14906369 false ) 
	#(157 1 #liftFirstValue: 15076353 false ) 
	#(159 1 #liftFirstValue: 15336449 false ) 
	#(160 1 #liftFirstValue: 15634433 false ) 
	#(161 1 #liftFirstValue: 16019457 false ) 
	#(162 1 #liftFirstValue: 16757761 false ) 
	#(163 1 #liftFirstValue: 17288193 false ) 
	#(164 1 #liftFirstValue: 17452033 false ) 
	#(165 1 #liftFirstValue: 17619969 false ) 
	#(166 1 #liftFirstValue: 17786881 false ) 
	#(169 1 #liftFirstValue: 18284546 false ) 
	#(167 1 #liftFirstValue: 17956865 false ) 
	#(170 1 #liftFirstValue: 18358273 false ) 
	#(170 1 #liftFirstValue: 18358274 false ) 
	#(169 1 #liftFirstValue: 18284545 false ) 
	#(171 1 #liftFirstValue: 18432001 false ) 
	#(172 1 #liftFirstValue: 18659329 false ) 
	#(175 1 #liftFirstValue: 20418561 false ) 
	#(184 1 #liftFirstValue: 21381121 false ) 
	#(176 1 #liftFirstValue: 20570118 false ) 
	#(176 1 #liftFirstValue: 20570113 false ) 
	#(180 1 #liftFirstValue: 21121025 false ) 
	#(273 1 #liftFirstValue: 34777091 false ) 
	#(184 1 #liftFirstValue: 21381122 false ) 
	#(176 1 #liftFirstValue: 20570114 false ) 
	#(176 1 #liftFirstValue: 20570115 false ) 
	#(176 1 #liftFirstValue: 20570116 false ) 
	#(176 1 #liftFirstValue: 20570117 false ) 
	#(179 1 #liftFirstValue: 21058561 false ) 
	#(176 1 #liftFirstValue: 20570119 false ) 
	#(176 1 #liftFirstValue: 20570120 false ) 
	#(176 1 #liftFirstValue: 20570121 false ) 
	#(176 1 #liftFirstValue: 20570122 false ) 
	#(179 1 #liftFirstValue: 21058562 false ) 
	#(176 1 #liftFirstValue: 20570123 false ) 
	#(176 1 #liftFirstValue: 20570124 false ) 
	#(176 1 #liftFirstValue: 20570125 false ) 
	#(176 1 #liftFirstValue: 20570126 false ) 
	#(119 1 #liftFirstValue: 7826438 false ) 
	#(172 1 #liftFirstValue: 18659331 false ) 
	#(239 1 #reduceActionForArrowParameters2: 30213122 false ) 
	#(172 1 #liftFirstValue: 18659332 false ) 
	#(119 1 #liftFirstValue: 7826440 false ) 
	#(172 1 #liftFirstValue: 18659330 false ) 
	#(119 1 #liftFirstValue: 7826442 false ) 
	#(119 1 #liftFirstValue: 7826441 false ) 
	#(155 1 #liftFirstValue: 14453769 false ) 
	#(119 1 #liftFirstValue: 7826439 false ) 
	#(115 1 #liftFirstValue: 7387137 false ) 
	#(270 1 #reduceActionForModule2: 34643970 false ) 
	#(271 1 #reduceActionForModuleBody1: 34672641 false ) 
	#(272 1 #reduceActionForModuleItemList1: 34703361 false ) 
	#(273 1 #liftFirstValue: 34777089 false ) 
	#(273 1 #liftFirstValue: 34777090 false ) 
	#(121 1 #reduceActionForLiteral1: 8927233 false ) 
	#(121 1 #reduceActionForLiteral2: 8927234 false ) 
	#(121 1 #reduceActionForLiteral4: 8927236 false ) 
	#(121 1 #reduceActionForLiteral3: 8927235 false ) 
	#(119 1 #liftFirstValue: 7826443 false ) 
	#(119 1 #liftFirstValue: 7826446 false ) 
	#(294 1 #liftFirstValue: 37595137 false ) 
	#(318 0 #reduceActionForStartJSXText1: 39984129 true ) 
	#(119 1 #liftFirstValue: 7826447 false ) 
	#(269 1 #reduceActionForModuleBody1: 34614273 false ) 
	#(183 1 #reduceActionForModuleItemList1: 21283841 false ) 
	#(268 1 #reduceActionForScript2: 34585602 false ) 
	#(134 0 #reduceActionForInitializeropt1: 10808321 false ) 
	#(192 1 #liftFirstValue: 22218753 false ) 
	#(192 1 #liftFirstValue: 22218754 false ) 
	#(235 1 #liftFirstValue: 30024705 false ) 
	#(200 1 #liftFirstValue: 23520257 false ) 
	#(234 1 #liftFirstValue: 29978625 false ) 
	#(231 1 #reduceActionForModuleBody1: 29609985 false ) 
	#(232 1 #reduceActionForFormalParameters3: 29655043 false ) 
	#(232 1 #reduceActionForFormalParameters2: 29655042 false ) 
	#(233 1 #reduceActionForFormalParameterList1: 29856769 false ) 
	#(127 2 #reduceActionForObjectLiteral1: 9774081 false ) 
	#(118 1 #reduceActionForIdentifier1: 7725057 false ) 
	#(129 1 #liftFirstValue: 10166273 false ) 
	#(131 1 #liftFirstValue: 10477569 false ) 
	#(128 1 #reduceActionForFormalParameterList1: 10031105 false ) 
	#(130 1 #liftFirstValue: 10415105 false ) 
	#(130 1 #liftFirstValue: 10415106 false ) 
	#(129 1 #liftFirstValue: 10166274 false ) 
	#(182 1 #reduceActionForModuleBody1: 21245954 false ) 
	#(129 1 #liftFirstValue: 10166276 false ) 
	#(245 1 #liftFirstValue: 30758914 false ) 
	#(245 1 #liftFirstValue: 30758916 false ) 
	#(245 1 #liftFirstValue: 30758915 false ) 
	#(131 1 #reduceActionForIdentifier1: 10477570 false ) 
	#(131 1 #reduceActionForIdentifier1: 10477571 false ) 
	#(125 1 #reduceActionForModuleItemList1: 9620481 false ) 
	#(124 1 #reduceActionForModuleBody1: 9594882 false ) 
	#(155 2 #reduceActionForUnaryExpression5: 14453765 false ) 
	#(154 2 #reduceActionForUpdateExpression4: 14085124 false ) 
	#(155 2 #reduceActionForUnaryExpression5: 14453766 false ) 
	#(154 2 #reduceActionForUpdateExpression4: 14085125 false ) 
	#(155 2 #reduceActionForUnaryExpression5: 14453767 false ) 
	#(155 2 #reduceActionForUnaryExpression5: 14453768 false ) 
	#(260 2 #reduceActionForAwaitExpression1: 33869825 false ) 
	#(116 1 #liftFirstValue: 7499778 false ) 
	#(228 2 #reduceActionForDebuggerStatement1: 29096961 false ) 
	#(155 2 #reduceActionForUnaryExpression5: 14453762 false ) 
	#(285 1 #reduceActionForExportFromClause1: 36675585 false ) 
	#(284 2 #reduceActionForExportDeclaration4: 35991556 false ) 
	#(177 1 #liftFirstValue: 20853761 false ) 
	#(177 1 #liftFirstValue: 20853763 false ) 
	#(284 2 #reduceActionForExportDeclaration3: 35991555 false ) 
	#(178 1 #liftFirstValue: 20932609 false ) 
	#(178 1 #liftFirstValue: 20932610 false ) 
	#(178 1 #liftFirstValue: 20932612 false ) 
	#(178 1 #liftFirstValue: 20932611 false ) 
	#(177 1 #liftFirstValue: 20853762 false ) 
	#(285 1 #reduceActionForExportFromClause3: 36675587 false ) 
	#(174 0 #nil 20386817 false ) 
	#(283 1 #liftFirstValue: 35956737 false ) 
	#(275 1 #reduceActionForImportClause1: 35023873 false ) 
	#(275 1 #reduceActionForImportClause1: 35023874 false ) 
	#(275 1 #reduceActionForImportClause1: 35023875 false ) 
	#(276 1 #liftFirstValue: 35276801 false ) 
	#(282 1 #liftFirstValue: 35914753 false ) 
	#(144 2 #reduceActionForNewExpression2: 12230658 false ) 
	#(146 2 #reduceActionForSuperCall1: 12804097 false ) 
	#(155 2 #reduceActionForUnaryExpression5: 14453764 false ) 
	#(190 1 #reduceActionForFormalParameterList1: 21919745 false ) 
	#(155 2 #reduceActionForUnaryExpression5: 14453763 false ) 
	#(251 2 #reduceActionForYieldExpression2: 32139266 false ) 
	#(140 2 #reduceActionForMemberExpression4: 11332612 false ) 
	#(145 2 #reduceActionForCallExpression1: 12320769 false ) 
	#(150 2 #reduceActionForOptionalExpression1: 13468673 false ) 
	#(145 2 #reduceActionForMemberExpression4: 12320775 false ) 
	#(145 2 #reduceActionForCallExpression1: 12320772 false ) 
	#(150 2 #reduceActionForOptionalExpression1: 13468674 false ) 
	#(150 2 #reduceActionForOptionalExpression1: 13468675 false ) 
	#(173 1 #liftFirstValue: 18864131 false ) 
	#(173 1 #liftFirstValue: 18864135 false ) 
	#(173 1 #liftFirstValue: 18864136 false ) 
	#(173 1 #liftFirstValue: 18864137 false ) 
	#(173 1 #liftFirstValue: 18864129 false ) 
	#(173 1 #liftFirstValue: 18864130 false ) 
	#(173 1 #liftFirstValue: 18864132 false ) 
	#(173 1 #liftFirstValue: 18864138 false ) 
	#(173 1 #liftFirstValue: 18864139 false ) 
	#(173 1 #liftFirstValue: 18864140 false ) 
	#(173 1 #liftFirstValue: 18864134 false ) 
	#(173 1 #liftFirstValue: 18864133 false ) 
	#(154 2 #reduceActionForUpdateExpression2: 14085122 false ) 
	#(154 2 #reduceActionForUpdateExpression2: 14085123 false ) 
	#(173 1 #liftFirstValue: 18864141 false ) 
	#(158 1 #liftFirstValue: 15279106 false ) 
	#(158 1 #liftFirstValue: 15279105 false ) 
	#(158 1 #liftFirstValue: 15279107 false ) 
	#(205 2 #reduceActionForExpressionStatement1: 23995393 false ) 
	#(187 1 #reduceActionForFormalParameterList1: 21569537 false ) 
	#(272 2 #reduceActionForModuleItemList2: 34703362 false ) 
	#(313 0 #reduceActionForStatementListopt1: 39579649 false ) 
	#(183 2 #reduceActionForModuleItemList2: 21283842 false ) 
	#(193 2 #reduceActionForObjectBindingPattern1: 22282241 false ) 
	#(196 1 #reduceActionForFormalParameterList1: 23115777 false ) 
	#(199 1 #liftFirstValue: 23406593 false ) 
	#(202 0 #nil 23714817 false ) 
	#(197 1 #reduceActionForBindingElementList1: 23234561 false ) 
	#(203 2 #reduceActionForBindingRestElement1: 23762945 false ) 
	#(203 2 #reduceActionForBindingRestElement1: 23762946 false ) 
	#(201 2 #reduceActionForSingleNameBinding1: 23626753 false ) 
	#(134 1 #reduceActionForModuleBody1: 10808322 false ) 
	#(120 3 #reduceActionForParenthesizedExpression1: 8192001 false ) 
	#(200 2 #reduceActionForSingleNameBinding1: 23520258 false ) 
	#(242 3 #reduceActionForArrowFormalParameters1: 30443521 false ) 
	#(232 2 #reduceActionForFormalParameters4: 29655044 false ) 
	#(129 2 #reduceActionForPropertyDefinition5: 10166277 false ) 
	#(133 2 #reduceActionForCoverInitializedName1: 10725377 false ) 
	#(127 3 #reduceActionForObjectLiteral2: 9774082 false ) 
	#(181 3 #reduceActionForBlock1: 21146625 false ) 
	#(122 3 #reduceActionForArrayLiteral2: 9109506 false ) 
	#(122 3 #reduceActionForArrayLiteral1: 9109505 false ) 
	#(123 2 #reduceActionForElementList2: 9372674 false ) 
	#(123 2 #reduceActionForElementList2: 9372673 false ) 
	#(125 2 #reduceActionForModuleItemList2: 9620482 false ) 
	#(262 3 #reduceActionForClassExpression1: 34044929 false ) 
	#(286 2 #reduceActionForNamedExports1: 36783105 false ) 
	#(288 1 #reduceActionForExportSpecifier1: 37103617 false ) 
	#(287 1 #reduceActionForFormalParameterList1: 36999169 false ) 
	#(284 3 #reduceActionForExportDeclaration2: 35991554 false ) 
	#(174 1 #liftFirstValue: 20386818 false ) 
	#(278 2 #reduceActionForNamedImports1: 35401729 false ) 
	#(280 1 #reduceActionForFormalParameterList1: 35684353 false ) 
	#(281 1 #reduceActionForImportSpecifier1: 35788801 false ) 
	#(274 3 #reduceActionForImportDeclaration2: 34851842 false ) 
	#(143 3 #reduceActionForNewTarget1: 12127233 false ) 
	#(140 3 #reduceActionForMemberExpression7: 11332615 false ) 
	#(148 2 #reduceActionForArguments1: 13015041 false ) 
	#(149 1 #reduceActionForArgumentList1: 13200385 false ) 
	#(141 3 #reduceActionForSuperProperty2: 11834370 false ) 
	#(223 3 #reduceActionForThrowStatement1: 28550145 false ) 
	#(224 3 #reduceActionForTryStatement1: 28646401 false ) 
	#(224 3 #reduceActionForTryStatement2: 28646402 false ) 
	#(191 2 #reduceActionForSingleNameBinding1: 22055937 false ) 
	#(189 3 #reduceActionForVariableStatement1: 21824513 false ) 
	#(191 2 #reduceActionForVariableDeclaration2: 22055938 false ) 
	#(251 3 #reduceActionForYieldExpression3: 32139267 false ) 
	#(222 1 #liftFirstValue: 28455937 false ) 
	#(221 3 #reduceActionForLabelledStatement1: 28356609 false ) 
	#(140 3 #reduceActionForMemberExpression3: 11332611 false ) 
	#(152 1 #reduceActionForOptional3: 13760515 false ) 
	#(152 1 #reduceActionForOptional4: 13760516 false ) 
	#(152 1 #reduceActionForOptional1: 13760513 false ) 
	#(151 2 #reduceActionForOptionalChain1: 13646849 false ) 
	#(151 2 #reduceActionForOptionalChain2: 13646850 false ) 
	#(145 3 #reduceActionForMemberExpression3: 12320774 false ) 
	#(172 3 #reduceActionForAssignmentExpression5: 18659333 false ) 
	#(156 3 #reduceActionForExponentiationExpression2: 14906370 false ) 
	#(157 3 #reduceActionForExponentiationExpression2: 15076354 false ) 
	#(159 3 #reduceActionForExponentiationExpression2: 15336450 false ) 
	#(159 3 #reduceActionForExponentiationExpression2: 15336451 false ) 
	#(160 3 #reduceActionForExponentiationExpression2: 15634434 false ) 
	#(160 3 #reduceActionForExponentiationExpression2: 15634435 false ) 
	#(160 3 #reduceActionForExponentiationExpression2: 15634436 false ) 
	#(161 3 #reduceActionForExponentiationExpression2: 16019458 false ) 
	#(161 3 #reduceActionForExponentiationExpression2: 16019459 false ) 
	#(161 3 #reduceActionForExponentiationExpression2: 16019460 false ) 
	#(161 3 #reduceActionForExponentiationExpression2: 16019461 false ) 
	#(161 3 #reduceActionForExponentiationExpression2: 16019463 false ) 
	#(161 3 #reduceActionForExponentiationExpression2: 16019462 false ) 
	#(162 3 #reduceActionForExponentiationExpression2: 16757762 false ) 
	#(162 3 #reduceActionForExponentiationExpression2: 16757764 false ) 
	#(162 3 #reduceActionForExponentiationExpression2: 16757763 false ) 
	#(162 3 #reduceActionForExponentiationExpression2: 16757765 false ) 
	#(163 3 #reduceActionForExponentiationExpression2: 17288194 false ) 
	#(164 3 #reduceActionForExponentiationExpression2: 17452034 false ) 
	#(165 3 #reduceActionForExponentiationExpression2: 17619970 false ) 
	#(166 3 #reduceActionForExponentiationExpression2: 17786882 false ) 
	#(167 3 #reduceActionForExponentiationExpression2: 17956866 false ) 
	#(168 3 #reduceActionForExponentiationExpression2: 18126849 false ) 
	#(175 3 #reduceActionForExpression2: 20418562 false ) 
	#(188 2 #reduceActionForSingleNameBinding1: 21667841 false ) 
	#(185 3 #reduceActionForLexicalDeclaration1: 21448705 false ) 
	#(188 2 #reduceActionForVariableDeclaration2: 21667842 false ) 
	#(241 1 #liftFirstValue: 30402561 false ) 
	#(238 3 #reduceActionForArrowFunction1: 30145537 false ) 
	#(240 1 #reduceActionForConciseBody1: 30287873 false ) 
	#(321 0 #reduceActionForSwitchToDefault1: 40145921 true ) 
	#(312 1 #reduceActionForModuleBody1: 39565313 false ) 
	#(299 1 #reduceActionForJSXElementName1: 38421505 false ) 
	#(299 1 #liftFirstValue: 38421506 false ) 
	#(299 1 #liftFirstValue: 38421507 false ) 
	#(303 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 38748161 false ) 
	#(195 2 #reduceActionForBindingRestProperty1: 23044097 false ) 
	#(193 3 #reduceActionForObjectBindingPattern2: 22282242 false ) 
	#(193 3 #reduceActionForObjectBindingPattern3: 22282243 false ) 
	#(198 2 #reduceActionForBindingElisionElement1: 23343105 false ) 
	#(202 1 #liftFirstValue: 23714818 false ) 
	#(194 3 #reduceActionForArrayBindingPattern2: 22670338 false ) 
	#(135 2 #reduceActionForInitializer1: 10842113 false ) 
	#(232 3 #reduceActionForFormalParameters5: 29655045 false ) 
	#(233 3 #reduceActionForFormalParameterList2: 29856770 false ) 
	#(132 3 #reduceActionForComputedPropertyName1: 10604545 false ) 
	#(127 4 #reduceActionForObjectLiteral3: 9774083 false ) 
	#(128 3 #reduceActionForFormalParameterList2: 10031106 false ) 
	#(129 3 #reduceActionForPropertyDefinition3: 10166275 false ) 
	#(122 4 #reduceActionForArrayLiteral3: 9109507 false ) 
	#(123 3 #reduceActionForElementList4: 9372676 false ) 
	#(123 3 #reduceActionForElementList4: 9372675 false ) 
	#(126 2 #reduceActionForSpreadElement1: 9675777 false ) 
	#(244 1 #reduceActionForConciseBody1: 30638081 false ) 
	#(243 4 #reduceActionForAsyncArrowFunction1: 30535681 false ) 
	#(211 4 #reduceActionForBreakStatement1: 27342849 false ) 
	#(263 2 #reduceActionForClassTail1: 34126849 false ) 
	#(267 1 #reduceActionForEmptyStatement1: 34419715 false ) 
	#(267 1 #liftFirstValue: 34419713 false ) 
	#(265 1 #reduceActionForModuleBody1: 34299905 false ) 
	#(266 1 #reduceActionForModuleItemList1: 34331649 false ) 
	#(264 2 #reduceActionForInitializer1: 34219009 false ) 
	#(210 4 #reduceActionForContinueStatement1: 27226113 false ) 
	#(286 3 #reduceActionForNamedExports2: 36783106 false ) 
	#(285 3 #reduceActionForExportFromClause2: 36675586 false ) 
	#(261 3 #reduceActionForClassExpression1: 33946625 false ) 
	#(284 4 #reduceActionForExportDeclaration5: 35991557 false ) 
	#(279 2 #reduceActionForInitializer1: 35633153 false ) 
	#(284 4 #reduceActionForExportDeclaration1: 35991553 false ) 
	#(209 1 #liftFirstValue: 27179009 false ) 
	#(209 1 #liftFirstValue: 27179010 false ) 
	#(208 2 #reduceActionForInitializer1: 27114497 false ) 
	#(147 4 #reduceActionForImportCall1: 12874753 false ) 
	#(278 3 #reduceActionForNamedImports2: 35401730 false ) 
	#(277 3 #reduceActionForNameSpaceImport1: 35320833 false ) 
	#(274 4 #reduceActionForImportDeclaration1: 34851841 false ) 
	#(275 3 #reduceActionForImportClause4: 35023876 false ) 
	#(275 3 #reduceActionForImportClause4: 35023877 false ) 
	#(213 4 #reduceActionForReturnStatement1: 27487233 false ) 
	#(149 2 #reduceActionForArgumentList2: 13200386 false ) 
	#(148 3 #reduceActionForArguments2: 13015042 false ) 
	#(141 4 #reduceActionForSuperProperty1: 11834369 false ) 
	#(225 2 #reduceActionForCatch2: 28817410 false ) 
	#(226 2 #reduceActionForInitializer1: 28985345 false ) 
	#(224 4 #reduceActionForTryStatement3: 28646403 false ) 
	#(190 3 #reduceActionForFormalParameterList2: 21919746 false ) 
	#(138 1 #reduceActionForFormalParameterList1: 11100161 false ) 
	#(136 4 #reduceActionForTemplateLiteral2: 10906626 false ) 
	#(140 4 #reduceActionForMemberExpression2: 11332610 false ) 
	#(145 4 #reduceActionForCallExpression5: 12320773 false ) 
	#(187 3 #reduceActionForFormalParameterList2: 21569538 false ) 
	#(237 1 #reduceActionForModuleBody1: 30101505 false ) 
	#(236 1 #reduceActionForModuleBody1: 30060545 false ) 
	#(294 4 #reduceActionForJSXElement2: 37595138 false ) 
	#(314 1 #reduceActionForJSXChild1: 39600129 false ) 
	#(314 1 #liftFirstValue: 39600130 false ) 
	#(313 2 #reduceActionForModuleItemList2: 39579650 false ) 
	#(302 2 #reduceActionForInitializer1: 38748161 false ) 
	#(319 0 #reduceActionForSwitchToJSXTextOrDefault11: 40012801 true ) 
	#(309 1 #reduceActionForJSXElementName1: 39172097 false ) 
	#(309 1 #liftFirstValue: 39172098 false ) 
	#(306 1 #reduceActionForModuleItemList1: 38875137 false ) 
	#(304 1 #reduceActionForModuleBody1: 38858753 false ) 
	#(305 1 #liftFirstValue: 38875137 false ) 
	#(305 1 #liftFirstValue: 38875138 false ) 
	#(308 1 #reduceActionForJSXAttribute1: 39089153 false ) 
	#(301 2 #reduceActionForJSXMemberExpression1: 38725633 false ) 
	#(303 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 38748162 false ) 
	#(199 3 #reduceActionForBindingProperty2: 23406594 false ) 
	#(193 4 #reduceActionForObjectBindingPattern4: 22282244 false ) 
	#(196 3 #reduceActionForFormalParameterList2: 23115778 false ) 
	#(194 4 #reduceActionForArrayBindingPattern1: 22670337 false ) 
	#(197 3 #reduceActionForBindingElementList2: 23234562 false ) 
	#(246 1 #liftFirstValue: 31356929 false ) 
	#(259 1 #reduceActionForModuleBody1: 33833985 false ) 
	#(267 2 #reduceActionForClassElement2: 34419714 false ) 
	#(263 3 #reduceActionForClassTail2: 34126850 false ) 
	#(266 2 #reduceActionForModuleItemList2: 34331650 false ) 
	#(263 3 #reduceActionForClassTail3: 34126851 false ) 
	#(288 3 #reduceActionForExportSpecifier2: 37103618 false ) 
	#(286 4 #reduceActionForNamedExports3: 36783107 false ) 
	#(287 3 #reduceActionForFormalParameterList2: 36999170 false ) 
	#(206 5 #reduceActionForIfStatement2: 24075266 false ) 
	#(281 3 #reduceActionForImportSpecifier2: 35788802 false ) 
	#(278 4 #reduceActionForNamedImports3: 35401731 false ) 
	#(280 3 #reduceActionForFormalParameterList2: 35684354 false ) 
	#(148 4 #reduceActionForArguments3: 13015043 false ) 
	#(149 3 #reduceActionForArgumentList3: 13200387 false ) 
	#(217 0 #reduceActionForStatementListopt1: 28051457 false ) 
	#(215 5 #reduceActionForSwitchStatement1: 27735041 false ) 
	#(227 1 #liftFirstValue: 29045761 false ) 
	#(227 1 #liftFirstValue: 29045762 false ) 
	#(207 5 #reduceActionForIterationStatement2: 24366082 false ) 
	#(214 5 #reduceActionForWithStatement1: 27602945 false ) 
	#(139 2 #reduceActionForTemplateMiddleList1: 11187201 false ) 
	#(138 2 #reduceActionForTemplateSpans2: 11100162 false ) 
	#(152 3 #reduceActionForOptional2: 13760514 false ) 
	#(171 5 #reduceActionForConditionalExpression2: 18432002 false ) 
	#(240 3 #reduceActionForConciseBody2: 30287874 false ) 
	#(300 3 #reduceActionForJSXNamespacedName1: 38601729 false ) 
	#(306 2 #reduceActionForModuleItemList2: 38875138 false ) 
	#(308 2 #reduceActionForJSXAttribute2: 39089154 false ) 
	#(296 5 #reduceActionForJSXOpeningElement1: 37928961 false ) 
	#(193 5 #reduceActionForObjectBindingPattern5: 22282245 false ) 
	#(244 3 #reduceActionForConciseBody2: 30638082 false ) 
	#(263 4 #reduceActionForClassTail4: 34126852 false ) 
	#(149 4 #reduceActionForArgumentList4: 13200388 false ) 
	#(217 1 #reduceActionForModuleBody1: 28051458 false ) 
	#(218 1 #reduceActionForModuleItemList1: 28085249 false ) 
	#(139 3 #reduceActionForTemplateMiddleList2: 11187202 false ) 
	#(315 1 #liftFirstValue: 39832578 false ) 
	#(315 1 #liftFirstValue: 39832577 false ) 
	#(295 6 #reduceActionForJSXSelfClosingElement1: 37745665 false ) 
	#(296 6 #reduceActionForJSXOpeningElement2: 37928962 false ) 
	#(311 1 #reduceActionForLiteral4: 39336961 false ) 
	#(311 1 #liftFirstValue: 39336963 false ) 
	#(311 1 #liftFirstValue: 39336964 false ) 
	#(310 2 #reduceActionForInitializer1: 39263233 false ) 
	#(194 6 #reduceActionForArrayBindingPattern3: 22670339 false ) 
	#(207 7 #reduceActionForIterationStatement1: 24366081 false ) 
	#(207 7 #reduceActionForIterationStatement6: 24366086 false ) 
	#(207 7 #reduceActionForIterationStatement9: 24366089 false ) 
	#(207 7 #reduceActionForIterationStatement8: 24366088 false ) 
	#(207 7 #reduceActionForIterationStatement11: 24366091 false ) 
	#(206 7 #reduceActionForIfStatement1: 24075265 false ) 
	#(216 3 #reduceActionForCaseBlock1: 27860993 false ) 
	#(218 2 #reduceActionForModuleItemList2: 28085250 false ) 
	#(225 5 #reduceActionForCatch1: 28817409 false ) 
	#(320 0 #reduceActionForSwitchToJSXTextOrDefault21: 40079361 true ) 
	#(314 4 #reduceActionForJSXChild3: 39600131 false ) 
	#(295 7 #reduceActionForJSXSelfClosingElement2: 37745666 false ) 
	#(250 1 #reduceActionForModuleBody1: 32107521 false ) 
	#(245 7 #reduceActionForMethodDefinition5: 30758917 false ) 
	#(245 7 #reduceActionForMethodDefinition1: 30758913 false ) 
	#(258 8 #reduceActionForAsyncFunctionExpression1: 33584129 false ) 
	#(207 8 #reduceActionForIterationStatement10: 24366090 false ) 
	#(207 8 #reduceActionForIterationStatement7: 24366087 false ) 
	#(207 8 #reduceActionForIterationStatement5: 24366085 false ) 
	#(207 8 #reduceActionForIterationStatement12: 24366092 false ) 
	#(207 8 #reduceActionForIterationStatement14: 24366094 false ) 
	#(230 8 #reduceActionForFunctionExpression1: 29396993 false ) 
	#(314 5 #reduceActionForJSXChild4: 39600132 false ) 
	#(307 5 #reduceActionForJSXSpreadAttribute1: 38939649 false ) 
	#(247 8 #reduceActionForGeneratorMethod1: 31415297 false ) 
	#(255 1 #reduceActionForModuleBody1: 33078273 false ) 
	#(256 8 #reduceActionForAsyncMethod1: 33115137 false ) 
	#(245 8 #reduceActionForMethodDefinition6: 30758918 false ) 
	#(258 9 #reduceActionForAsyncFunctionExpression2: 33584130 false ) 
	#(257 8 #reduceActionForAsyncFunctionExpression1: 33334273 false ) 
	#(229 8 #reduceActionForFunctionExpression1: 29182977 false ) 
	#(207 9 #reduceActionForIterationStatement3: 24366083 false ) 
	#(207 9 #reduceActionForIterationStatement13: 24366093 false ) 
	#(249 9 #reduceActionForGeneratorExpression1: 31869953 false ) 
	#(219 4 #reduceActionForCaseClause1: 28157953 false ) 
	#(220 3 #reduceActionForDefaultClause1: 28266497 false ) 
	#(216 5 #reduceActionForCaseBlock2: 27860994 false ) 
	#(298 9 #reduceActionForJSXFragment1: 38233089 false ) 
	#(297 6 #reduceActionForJSXClosingElement1: 38073345 false ) 
	#(252 9 #reduceActionForAsyncGeneratorMethod1: 32271361 false ) 
	#(254 10 #reduceActionForAsyncGeneratorExpression1: 32801793 false ) 
	#(257 9 #reduceActionForAsyncFunctionExpression2: 33334274 false ) 
	#(248 9 #reduceActionForGeneratorExpression1: 31631361 false ) 
	#(207 10 #reduceActionForIterationStatement4: 24366084 false ) 
	#(311 5 #reduceActionForJSXChild4: 39336962 false ) 
	#(253 10 #reduceActionForAsyncGeneratorExpression1: 32524289 false )
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
	^ #('<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<question>' '<questionDot>' '<percent>' '<bar>' '<barBar>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<const>' '<continue>' '<debugger>' '<default>' '<delete>' '<do>' '<else>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<instanceof>' '<let>' '<new>' '<null>' '<of>' '<return>' '<set>' '<static>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<whitespace>' '<string>' '<numeric>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifieropt' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elisionopt' 'Elision' 'SpreadElement' 'ObjectLiteral' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializeropt' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'Optional' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expressionopt' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementListopt' 'StatementList' 'StatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElementopt' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClausesopt' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'FunctionDeclaration' 'FunctionExpression' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorMethod' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorBody' 'AsyncMethod' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' '<questionQuestion>' '<starStarEq>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSNewTargetExpressionNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSStatementNode #JSProgramNode #JSFunctionNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #OrderedCollection #JSStatementNode #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #JSFunctionNode #JSFunctionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSVariableDeclarationNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSVariableDeclarationNode #JSGeneratorMethodDefinitionNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorMethodDefinitionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #OrderedCollection #JSAsyncMethodDefinitionNode #JSAsyncFunctionNode #JSAsyncFunctionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 0 101 0 64 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 0 121 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 213 0 115 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 1 249 0 176 1 249 0 179 1 249 0 180 1 249 0 181 1 249 0 184 1 249 0 185 1 133 0 186 1 249 0 189 1 249 0 204 1 249 0 205 1 249 0 206 1 249 0 207 1 249 0 210 1 249 0 211 1 249 0 213 1 249 0 214 1 249 0 215 1 249 0 221 1 249 0 223 1 249 0 224 1 249 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 0 213 1 14 1 241 1 15 1 245 1 16 1 249 1 17 1 249 1 18 1 249 1 28 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60 0 14 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 2 57 0 171 2 57 0 172 2 57 0 175 0 249 0 230 2 57 0 238 1 201 0 239 1 205 0 242 2 57 0 243 0 249 0 249 2 57 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 61 0 176 2 61 0 179 2 61 0 180 2 61 0 181 2 61 0 189 2 61 0 204 2 61 0 205 2 61 0 206 2 61 0 207 2 61 0 210 2 61 0 211 2 61 0 213 2 61 0 214 2 61 0 215 2 61 0 221 2 61 0 223 2 61 0 224 2 61 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 2 65 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 73 1 12 2 77 1 13 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60 0 18 1 68] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 0 101 0 64 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 0 121 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 1 249 0 176 1 249 0 179 1 249 0 180 1 249 0 181 1 249 0 184 1 249 0 185 1 133 0 186 1 249 0 189 1 249 0 204 1 249 0 205 1 249 0 206 1 249 0 207 1 249 0 210 1 249 0 211 1 249 0 213 1 249 0 214 1 249 0 215 1 249 0 221 1 249 0 223 1 249 0 224 1 249 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 81 1 14 1 241 1 15 1 245 1 16 1 249 1 17 1 249 1 18 1 249 1 28 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60 0 14 1 68] 
#[1 0 25 0 1 0 22 0 2 2 85 0 3 2 89 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 93 0 96 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 2 97 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 2 101 0 171 2 101 0 172 2 101 0 175 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 0 249 0 230 2 129 0 231 2 133 0 232 2 137 0 233 2 141 0 234 2 145 0 235 2 101 0 238 1 201 0 239 1 205 0 242 2 101 0 243 0 249 0 249 2 101 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 11 0 4 2 153 0 5 0 37 0 7 2 157 0 25 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 2 161 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 2 165 0 71 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 2 169 0 81 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 2 173 0 96 0 189 0 100 2 177 0 101 2 237 0 103 2 241 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 2 181 0 117 2 197 0 118 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 2 189 0 128 2 193 0 129 2 197 0 130 2 197 0 131 2 197 0 132 2 193 0 133 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 2 213 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 2 193 0 245 2 193 0 247 0 249 0 249 1 105 0 251 2 193 0 252 0 249 0 254 2 193 1 0 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 237 1 35 2 241 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 30 0 1 0 30 0 3 0 30 0 5 0 30 0 6 0 30 0 34 0 30 0 35 0 30 0 36 0 30 0 37 0 30 0 38 0 30 0 47 0 30 0 51 0 30 0 52 0 30 0 56 0 30 0 61 0 30 0 66 0 30 0 70 0 30 0 73 0 30 0 77 0 30 0 78 0 30 0 83 0 30 0 86 0 30 0 88 0 30 0 90 0 30 0 92 0 30 0 95 0 30 0 96 2 245 0 97 0 30 0 100 0 30 0 103 0 30 0 104 0 30 0 105 0 30 0 107 0 30 0 108 0 30 0 111 2 249 0 123 2 253 0 124 3 1 0 125] 
#[0 0 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 3 21 0 154 3 21 0 155 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 3 21 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 3 25 0 154 3 25 0 155 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 3 25 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 3 29 0 154 3 29 0 155 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 3 29 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 3 33 0 154 3 33 0 155 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 3 33 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 3 37 0 154 3 37 0 155 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 3 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 3 41 0 154 3 41 0 155 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 3 41 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 45 0 1 3 49 0 70 2 53 0 100 3 53 0 117 3 57 0 239 1 205 0 242] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 3 61 0 154 3 61 0 155 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 3 61 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 38 0 7 0 38 0 100 3 65 0 212] 
#[1 0 42 0 3 0 42 0 65 2 53 0 100 3 69 0 116 3 69 0 117] 
#[0 0 46 0 3 0 5 0 100] 
#[1 0 38 0 7 0 38 0 100 3 77 0 212] 
#[0 3 81 0 7] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 3 85 0 154 3 85 0 155 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 3 85 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 3 89 0 176 3 89 0 179 3 89 0 180 3 89 0 181 3 89 0 189 3 89 0 204 3 89 0 205 3 89 0 206 3 89 0 207 3 89 0 210 3 89 0 211 3 89 0 213 3 89 0 214 3 89 0 215 3 89 0 221 3 89 0 223 3 89 0 224 3 89 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 93 0 3 3 97 0 25 3 101 0 51 3 105 0 56 1 133 0 57 3 109 0 60 3 113 0 70 1 133 0 76 0 169 0 91 3 117 0 177 3 117 0 178 3 117 0 185 1 133 0 186 3 129 0 189 3 117 0 229 3 117 0 248 3 117 0 253 3 117 1 1 3 117 1 5 3 153 1 29 3 157 1 30] 
#[0 0 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 3 161 0 1 3 165 0 52] 
#[1 0 42 0 1 3 169 0 25 2 53 0 100 3 173 0 116 3 173 0 117] 
#[0 3 177 0 1] 
#[1 3 181 0 1 3 185 0 3 3 189 0 25 2 53 0 100 3 213 0 103 3 201 0 117 3 197 1 19 3 201 1 20 3 205 1 21 3 209 1 22 3 213 1 26 3 201 1 27 3 213 1 35] 
#[0 0 54 0 3 0 5 0 100] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 3 225 0 21 3 9 0 51 0 77 0 56 2 9 0 66 0 113 0 70 0 129 0 77 2 5 0 78 3 229 0 83 0 149 0 86 2 9 0 88 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 3 233 0 117 3 233 0 119 3 233 0 120 3 233 0 121 3 233 0 122 3 233 0 127 3 233 0 136 0 245 0 137 3 233 0 140 3 233 0 141 3 233 0 142 3 233 0 143 3 237 0 144 3 233 0 230 3 233 0 249 3 233 0 254 3 233 1 2 3 233 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 3 233 1 37 3 233 1 38 3 233 1 39 2 33 1 40 3 233 1 42 2 41 1 60] 
#[0 0 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 38 0 1 0 38 0 3 0 38 0 5 0 38 0 7 0 38 0 34 0 38 0 35 0 38 0 36 0 38 0 37 0 38 0 38 0 38 0 47 0 38 0 51 0 38 0 52 0 38 0 56 0 38 0 61 0 38 0 66 0 38 0 70 0 38 0 73 0 38 0 77 0 38 0 78 0 38 0 83 0 38 0 86 0 38 0 88 0 38 0 90 0 38 0 92 0 38 0 95 0 38 0 100 0 38 0 103 0 38 0 104 0 38 0 105 0 38 0 107 0 38 0 108 0 38 0 111 3 241 0 212] 
#[1 3 245 0 1 3 249 0 5 3 253 0 21 4 1 0 148] 
#[0 4 5 0 1] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 4 9 0 171 4 9 0 172 4 9 0 175 0 249 0 230 4 9 0 238 1 201 0 239 1 205 0 242 4 9 0 243 0 249 0 249 4 9 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 4 13 0 3 4 17 0 181] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 4 21 0 154 4 21 0 155 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 4 21 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 4 33 0 117 4 37 0 190 4 41 0 191 4 45 0 192 4 45 0 193 4 45 0 194] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 4 49 0 154 4 49 0 155 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 4 49 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 4 53 0 1] 
#[0 4 57 0 1] 
#[1 0 25 0 1 0 70 0 2 2 45 0 3 0 70 0 4 0 33 0 5 0 70 0 6 0 70 0 7 4 61 0 25 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 70 0 79 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 0 70 0 97 0 70 0 98 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 70 0 109 0 70 0 110 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 4 65 0 171 4 65 0 172 0 249 0 230 4 65 0 238 1 201 0 239 1 205 0 242 4 65 0 243 0 249 0 249 4 65 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60 0 70 1 68] 
#[1 0 74 0 1 0 74 0 4 0 74 0 5 0 74 0 7 0 74 0 8 0 74 0 9 0 74 0 10 0 74 0 11 0 74 0 12 0 74 0 13 0 74 0 14 0 74 0 15 0 74 0 16 0 74 0 17 0 74 0 18 0 74 0 19 0 74 0 20 0 74 0 21 0 74 0 22 0 74 0 23 0 74 0 24 0 74 0 25 0 74 0 26 0 74 0 27 0 74 0 28 0 74 0 29 0 74 0 30 0 74 0 31 0 74 0 32 0 74 0 33 0 74 0 34 0 74 0 35 0 74 0 36 0 74 0 37 0 74 0 39 0 74 0 40 0 74 0 41 0 74 0 42 0 74 0 43 0 74 0 44 0 74 0 45 0 74 0 46 0 74 0 48 0 74 0 49 0 74 0 74 0 74 0 75 0 74 0 97 4 69 0 98 0 74 0 107 0 74 0 108 0 74 1 66 0 74 1 67] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 112 1 66 1 67 1 68] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 94 0 13 4 73 1 61] 
#[0 0 0 1 68] 
#[1 0 98 0 1 0 98 0 2 0 98 0 4 0 98 0 5 0 98 0 6 0 98 0 7 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 102 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 98 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 39 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 48 0 98 0 49 0 98 0 74 0 98 0 75 0 98 0 79 0 98 0 97 0 98 0 98 0 98 0 107 0 98 0 108 0 98 0 109 0 98 0 110 0 98 1 66 0 98 1 67 0 98 1 68] 
#[0 0 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 4 77 0 108] 
#[1 3 245 0 1 0 130 0 2 0 130 0 3 0 130 0 4 4 81 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 19 0 130 0 20 4 85 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 4 89 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 48 0 130 0 49 0 130 0 74 0 130 0 75 0 130 0 79 0 130 0 97 0 130 0 98 0 205 0 107 0 6 0 108 0 130 0 109 0 130 0 110 4 93 0 136 0 245 0 137 4 97 0 148 4 101 0 151 0 130 1 66 0 130 1 67 0 130 1 68] 
#[0 0 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 0 146 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 67 1 68] 
#[1 3 245 0 1 0 150 0 2 0 150 0 3 0 150 0 4 4 105 0 5 0 150 0 6 0 150 0 7 0 150 0 8 0 150 0 9 0 150 0 10 0 150 0 11 0 150 0 12 0 150 0 13 0 150 0 14 0 150 0 15 0 150 0 16 0 150 0 17 0 150 0 19 0 150 0 20 4 109 0 21 0 150 0 22 0 150 0 23 0 150 0 24 0 150 0 25 0 150 0 26 0 150 0 27 0 150 0 28 0 150 0 29 0 150 0 30 0 150 0 31 0 150 0 32 0 150 0 33 0 150 0 34 0 150 0 35 0 150 0 36 0 150 0 37 0 150 0 39 0 150 0 40 0 150 0 41 4 89 0 42 0 150 0 43 0 150 0 44 0 150 0 45 0 150 0 46 0 150 0 48 0 150 0 49 0 150 0 74 0 150 0 75 0 150 0 79 0 150 0 97 0 150 0 98 0 205 0 107 0 6 0 108 0 150 0 109 0 150 0 110 4 113 0 136 0 245 0 137 4 117 0 148 4 121 0 151 0 150 1 66 0 150 1 67 0 150 1 68] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 162 0 2 0 162 0 3 0 162 0 4 0 162 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 19 0 162 0 20 0 162 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 39 0 162 0 40 0 162 0 41 4 89 0 42 0 162 0 43 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 48 0 162 0 49 0 162 0 74 0 162 0 75 0 162 0 79 0 162 0 97 0 162 0 98 0 162 0 109 0 162 0 110 4 125 0 151 0 162 1 66 0 162 1 67 0 162 1 68] 
#[1 0 166 0 2 0 166 0 4 0 166 0 6 0 166 0 7 0 166 0 8 4 185 0 9 0 166 0 10 0 166 0 11 4 185 0 12 0 166 0 13 0 166 0 14 4 185 0 15 4 185 0 16 0 166 0 17 0 166 0 19 0 166 0 20 4 185 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 4 185 0 27 4 185 0 28 4 185 0 29 4 185 0 30 4 185 0 31 4 185 0 32 4 185 0 33 0 166 0 34 4 177 0 35 0 166 0 36 4 181 0 37 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 48 0 166 0 49 0 166 0 74 0 166 0 75 0 166 0 79 0 166 0 97 0 166 0 98 0 166 0 109 0 166 0 110 4 185 0 173 0 166 1 66 4 185 1 67 0 166 1 68] 
#[0 0 170 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[1 0 174 0 2 0 174 0 4 0 174 0 6 0 174 0 7 0 174 0 8 0 174 0 10 0 174 0 11 0 174 0 13 0 174 0 14 0 174 0 17 0 174 0 19 0 174 0 20 0 174 0 23 0 174 0 24 0 174 0 25 4 193 0 26 0 174 0 34 0 174 0 36 0 174 0 39 0 174 0 40 0 174 0 41 0 174 0 43 0 174 0 44 0 174 0 45 0 174 0 46 0 174 0 48 0 174 0 49 0 174 0 74 0 174 0 75 0 174 0 79 0 174 0 97 0 174 0 98 0 174 0 109 0 174 0 110 0 174 1 66 0 174 1 68] 
#[0 0 178 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[1 0 182 0 2 0 182 0 4 0 182 0 6 0 182 0 7 4 209 0 8 0 182 0 10 0 182 0 11 0 182 0 13 0 182 0 14 0 182 0 17 0 182 0 19 0 182 0 20 0 182 0 23 0 182 0 24 4 209 0 25 0 182 0 34 0 182 0 36 0 182 0 39 0 182 0 40 0 182 0 41 4 209 0 43 0 182 0 44 0 182 0 45 0 182 0 46 0 182 0 48 0 182 0 49 0 182 0 74 0 182 0 75 0 182 0 79 0 182 0 97 0 182 0 98 0 182 0 109 0 182 0 110 4 209 0 158 0 182 1 66 0 182 1 68] 
#[1 0 186 0 2 0 186 0 4 0 186 0 6 0 186 0 7 0 186 0 10 0 186 0 11 0 186 0 13 0 186 0 14 0 186 0 17 0 186 0 19 0 186 0 20 0 186 0 23 0 186 0 24 4 213 0 34 4 217 0 36 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 48 0 186 0 49 0 186 0 74 0 186 0 75 0 186 0 79 0 186 0 97 0 186 0 98 0 186 0 109 0 186 0 110 0 186 1 66 0 186 1 68] 
#[1 0 190 0 2 0 190 0 4 0 190 0 6 0 190 0 7 0 190 0 10 4 221 0 11 0 190 0 13 4 225 0 14 4 229 0 17 0 190 0 19 0 190 0 20 0 190 0 23 0 190 0 24 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 44 0 190 0 45 0 190 0 46 0 190 0 48 0 190 0 49 0 190 0 74 0 190 0 75 0 190 0 79 0 190 0 97 0 190 0 98 0 190 0 109 0 190 0 110 0 190 1 66 0 190 1 68] 
#[1 0 194 0 2 0 194 0 4 0 194 0 6 0 194 0 7 4 233 0 10 4 237 0 13 4 241 0 19 4 245 0 20 0 194 0 23 0 194 0 24 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 48 0 194 0 49 4 249 0 74 4 253 0 75 0 194 0 79 0 194 0 97 0 194 0 98 0 194 0 109 0 194 0 110 0 194 1 66 0 194 1 68] 
#[1 0 198 0 2 0 198 0 4 0 198 0 6 0 198 0 7 5 1 0 23 5 5 0 24 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 44 0 198 0 45 0 198 0 46 5 9 0 48 5 13 0 49 0 198 0 79 0 198 0 97 0 198 0 98 0 198 0 109 0 198 0 110 0 198 1 66 0 198 1 68] 
#[1 0 202 0 2 0 202 0 4 0 202 0 6 0 202 0 7 5 17 0 39 0 202 0 40 0 202 0 41 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 79 0 202 0 97 0 202 0 98 0 202 0 109 0 202 0 110 0 202 1 66 0 202 1 68] 
#[1 0 206 0 2 0 206 0 4 0 206 0 6 0 206 0 7 0 206 0 40 0 206 0 41 0 206 0 44 0 206 0 45 5 21 0 46 0 206 0 79 0 206 0 97 0 206 0 98 0 206 0 109 0 206 0 110 0 206 1 66 0 206 1 68] 
#[1 0 210 0 2 0 210 0 4 0 210 0 6 0 210 0 7 0 210 0 40 0 210 0 41 5 25 0 44 0 210 0 45 0 210 0 79 0 210 0 97 0 210 0 98 0 210 0 109 0 210 0 110 0 214 1 66 0 210 1 68] 
#[1 0 218 0 2 0 218 0 4 0 218 0 6 0 218 0 7 5 29 0 40 0 218 0 41 0 218 0 45 0 218 0 79 0 218 0 97 0 218 0 98 0 218 0 109 0 218 0 110 0 218 1 68] 
#[1 0 222 0 2 0 222 0 4 0 222 0 6 0 222 0 7 0 222 0 41 5 33 0 45 0 222 0 79 0 222 0 97 0 222 0 98 0 222 0 109 0 222 0 110 0 222 1 68] 
#[1 0 226 0 2 0 226 0 4 0 226 0 6 0 226 0 7 0 226 0 41 0 226 0 79 0 226 0 97 0 226 0 98 0 226 0 109 0 226 0 110 0 230 1 66 0 226 1 68] 
#[0 5 37 1 66] 
#[1 0 234 0 2 0 234 0 4 0 234 0 6 0 234 0 7 5 41 0 41 0 234 0 79 0 234 0 97 0 234 0 98 0 234 0 109 0 234 0 110 0 234 1 68] 
#[0 0 238 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 0 242 0 2 0 6 0 7 0 97 0 98 0 109 0 110 1 68] 
#[1 5 45 0 7 5 49 0 97] 
#[0 0 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 0 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 0 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 6 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 5 53 0 117 5 57 0 187 5 61 0 188 5 65 0 192 5 65 0 193 5 65 0 194] 
#[0 1 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 1 74 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 5 69 0 18] 
#[0 1 78 0 18] 
#[0 1 82 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 1 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 1 90 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 1 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 1 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 1 102 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[0 1 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 1 110 1 68] 
#[0 1 114 1 68] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 0 101 0 64 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 0 121 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 5 73 0 176 5 73 0 179 5 73 0 180 5 73 0 181 5 73 0 184 5 73 0 185 1 133 0 186 5 73 0 189 5 73 0 204 5 73 0 205 5 73 0 206 5 73 0 207 5 73 0 210 5 73 0 211 5 73 0 213 5 73 0 214 5 73 0 215 5 73 0 221 5 73 0 223 5 73 0 224 5 73 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 5 73 1 17 5 73 1 18 5 73 1 28 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60 1 118 1 68] 
#[0 1 122 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 126 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 130 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 1 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 1 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 111 0 112 0 113 1 66 1 67 1 68] 
#[1 1 162 0 3 1 162 0 111 1 162 0 113 5 77 1 62] 
#[0 1 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 5 81 0 111] 
#[1 2 149 0 4 5 85 0 5 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 2 173 0 96 2 53 0 100 2 177 0 101 5 97 0 103 5 101 0 104 5 93 0 117 2 197 0 118 2 189 0 128 2 193 0 129 2 197 0 130 2 197 0 131 2 197 0 132 2 193 0 133 2 193 0 245 2 193 0 247 2 193 0 252 2 193 1 0 5 97 1 35 5 101 1 36] 
#[0 3 181 0 1] 
#[0 0 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 65 0 69 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 5 49 0 97 0 0 1 68] 
#[0 0 0 1 68] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 5 105 0 176 5 105 0 179 5 105 0 180 5 105 0 181 5 105 0 184 5 105 0 185 1 133 0 186 5 105 0 189 5 105 0 204 5 105 0 205 5 105 0 206 5 105 0 207 5 105 0 210 5 105 0 211 5 105 0 213 5 105 0 214 5 105 0 215 5 105 0 221 5 105 0 223 5 105 0 224 5 105 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60 1 170 1 68] 
#[0 1 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 0 0 1 68] 
#[0 1 178 1 68] 
#[0 0 0 1 68] 
#[1 5 109 0 4 5 85 0 5 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 5 113 0 96 2 53 0 100 2 177 0 101 5 97 0 103 5 101 0 104 5 117 0 117 5 121 0 118 2 189 0 128 2 193 0 129 5 121 0 130 5 121 0 131 5 121 0 132 2 193 0 133 5 125 0 195 5 129 0 196 5 133 0 199 5 133 0 201 2 193 0 245 2 193 0 247 2 193 0 252 2 193 1 0 5 97 1 35 5 101 1 36] 
#[1 0 30 0 1 0 30 0 3 0 30 0 5 0 30 0 6 0 30 0 34 0 30 0 35 0 30 0 36 0 30 0 37 0 30 0 38 0 30 0 47 0 30 0 51 0 30 0 52 0 30 0 56 0 30 0 61 0 30 0 66 0 30 0 70 0 30 0 73 0 30 0 77 0 30 0 78 0 30 0 83 0 30 0 86 0 30 0 88 0 30 0 90 0 30 0 92 0 30 0 95 0 30 0 96 2 245 0 97 0 30 0 100 0 30 0 103 0 30 0 104 0 30 0 105 0 30 0 107 0 30 0 108 0 30 0 111 2 249 0 123 5 141 0 124 3 1 0 125 5 145 0 197 5 149 0 198] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 5 153 0 117 5 157 0 192 5 157 0 193 5 157 0 194] 
#[1 0 98 0 1 0 15 0 2 0 15 0 4 0 98 0 5 0 15 0 6 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 102 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 19 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 39 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 48 0 98 0 49 0 98 0 74 0 98 0 75 0 15 0 97 0 98 0 107 0 98 0 108 5 165 0 134 5 169 0 135 0 98 1 66 0 98 1 67] 
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
#[0 1 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 23 0 1 0 27 0 3 0 31 0 5 0 30 0 6 0 35 0 34 0 39 0 35 0 43 0 36 0 47 0 37 0 51 0 38 0 55 0 47 0 59 0 51 0 63 0 52 0 67 0 56 0 71 0 61 0 75 0 66 0 79 0 70 0 83 0 73 0 87 0 77 0 91 0 78 0 95 0 83 0 99 0 86 0 103 0 88 0 107 0 90 0 111 0 92 0 115 0 95 0 30 0 96 2 245 0 97 0 119 0 100 0 123 0 103 0 127 0 104 0 131 0 105 0 135 0 107 0 139 0 108 0 143 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 2 249 0 123 2 253 0 124 3 1 0 125 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 5 189 0 171 5 189 0 172 0 249 0 230 5 189 0 238 1 201 0 239 1 205 0 242 5 189 0 243 0 249 0 249 5 189 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 5 85 0 5 2 177 0 101 5 97 0 103 5 101 0 104 5 193 0 118 5 193 0 130 5 193 0 131 5 193 0 132 5 97 1 35 5 101 1 36] 
#[1 3 45 0 1 5 85 0 5 5 197 0 25 3 49 0 70 2 53 0 100 2 177 0 101 5 97 0 103 5 101 0 104 3 53 0 117 5 201 0 118 5 201 0 130 5 201 0 131 5 201 0 132 3 57 0 239 1 205 0 242 5 97 1 35 5 101 1 36] 
#[1 5 85 0 5 2 177 0 101 5 97 0 103 5 101 0 104 5 205 0 118 5 205 0 130 5 205 0 131 5 205 0 132 5 97 1 35 5 101 1 36] 
#[1 5 85 0 5 2 177 0 101 5 97 0 103 5 101 0 104 5 209 0 118 5 209 0 130 5 209 0 131 5 209 0 132 5 97 1 35 5 101 1 36] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 5 213 0 171 5 213 0 172 0 249 0 230 5 213 0 238 1 201 0 239 1 205 0 242 5 213 0 243 0 249 0 249 5 213 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 1 226 0 1 0 98] 
#[1 0 98 0 1 1 230 0 4 0 98 0 5 0 98 0 7 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 102 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 19 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 39 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 48 0 98 0 49 0 98 0 74 0 98 0 75 0 147 0 97 0 98 0 107 0 98 0 108 5 217 0 135 0 98 1 66 0 98 1 67] 
#[0 1 234 0 1 0 98] 
#[1 5 221 0 4 5 225 0 97] 
#[0 1 238 0 4 0 97] 
#[1 5 229 0 1 5 233 0 98] 
#[0 1 242 0 1 0 98] 
#[0 1 246 0 1 0 98] 
#[0 1 250 0 4 0 97] 
#[0 5 237 0 4] 
#[1 0 25 0 1 0 29 0 3 1 254 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 1 254 0 54 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 1 254 0 60 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 5 105 0 176 5 105 0 179 5 105 0 180 5 105 0 181 5 105 0 184 5 105 0 185 1 133 0 186 5 105 0 189 5 105 0 204 5 105 0 205 5 105 0 206 5 105 0 207 5 105 0 210 5 105 0 211 5 105 0 213 5 105 0 214 5 105 0 215 5 105 0 221 5 105 0 223 5 105 0 224 5 105 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 2 2 0 4 0 97] 
#[0 2 6 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 2 10 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 2 14 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[1 0 151 0 1 1 142 0 5 1 142 0 7 1 142 0 8 1 142 0 9 1 142 0 10 1 142 0 11 1 142 0 12 1 142 0 13 1 142 0 14 1 142 0 15 1 142 0 16 1 142 0 17 1 142 0 19 1 142 0 20 1 142 0 21 1 142 0 22 1 142 0 23 1 142 0 24 1 142 0 25 1 142 0 26 1 142 0 27 1 142 0 28 1 142 0 29 1 142 0 30 1 142 0 31 1 142 0 32 1 142 0 33 1 142 0 34 1 142 0 35 1 142 0 36 1 142 0 37 1 142 0 39 1 142 0 40 1 142 0 41 1 142 0 42 1 142 0 43 1 142 0 44 1 142 0 45 1 142 0 46 1 142 0 48 1 142 0 49 1 142 0 74 1 142 0 75 1 142 0 97 2 18 0 98 1 142 0 107 1 142 0 108 1 142 1 66 1 142 1 67] 
#[1 0 155 0 1 1 146 0 5 1 146 0 7 1 146 0 8 1 146 0 9 1 146 0 10 1 146 0 11 1 146 0 12 1 146 0 13 1 146 0 14 1 146 0 15 1 146 0 16 1 146 0 17 1 146 0 19 1 146 0 20 1 146 0 21 1 146 0 22 1 146 0 23 1 146 0 24 1 146 0 25 1 146 0 26 1 146 0 27 1 146 0 28 1 146 0 29 1 146 0 30 1 146 0 31 1 146 0 32 1 146 0 33 1 146 0 34 1 146 0 35 1 146 0 36 1 146 0 37 1 146 0 39 1 146 0 40 1 146 0 41 1 146 0 42 1 146 0 43 1 146 0 44 1 146 0 45 1 146 0 46 1 146 0 48 1 146 0 49 1 146 0 74 1 146 0 75 1 146 0 97 2 22 0 98 1 146 0 107 1 146 0 108 1 146 1 66 1 146 1 67] 
#[0 2 26 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 96 0 97 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[1 5 241 0 6 2 245 0 97 5 245 0 125] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 5 249 0 6 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 5 253 0 96 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 6 1 0 126 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 5 0 171 6 5 0 172 0 249 0 230 6 5 0 238 1 201 0 239 1 205 0 242 6 5 0 243 0 249 0 249 6 5 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 2 30 0 1 2 30 0 3 2 30 0 5 2 30 0 6 2 30 0 34 2 30 0 35 2 30 0 36 2 30 0 37 2 30 0 38 2 30 0 47 2 30 0 51 2 30 0 52 2 30 0 56 2 30 0 61 2 30 0 66 2 30 0 70 2 30 0 73 2 30 0 77 2 30 0 78 2 30 0 83 2 30 0 86 2 30 0 88 2 30 0 90 2 30 0 92 2 30 0 95 2 30 0 96 6 9 0 97 2 30 0 100 2 30 0 103 2 30 0 104 2 30 0 105 2 30 0 107 2 30 0 108 2 30 0 111] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 2 101 0 171 2 101 0 172 2 101 0 175 0 249 0 230 2 101 0 238 1 201 0 239 1 205 0 242 2 101 0 243 0 249 0 249 2 101 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 3 49 0 70] 
#[0 0 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 166 0 2 0 166 0 4 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 10 0 166 0 11 0 166 0 13 0 166 0 14 0 166 0 17 0 166 0 19 0 166 0 20 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 34 4 177 0 35 0 166 0 36 4 181 0 37 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 48 0 166 0 49 0 166 0 74 0 166 0 75 0 166 0 79 0 166 0 97 0 166 0 98 0 166 0 109 0 166 0 110 0 166 1 66 0 166 1 68] 
#[0 2 34 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[0 2 38 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[0 2 42 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[0 2 46 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[0 2 50 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[0 2 54 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 2 129 0 231 2 133 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[1 6 17 0 1 6 21 0 25 2 53 0 100 6 25 0 117] 
#[0 0 102 0 18] 
#[0 6 29 0 18] 
#[0 2 58 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[1 0 42 0 7 2 53 0 100 6 33 0 116 6 33 0 117] 
#[1 6 37 0 3 6 41 0 65 6 45 1 7 6 49 1 8] 
#[0 2 62 0 1 0 3 0 7 0 65] 
#[1 0 42 0 7 2 53 0 100 6 53 0 116 6 53 0 117] 
#[0 2 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 2 70 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[0 6 57 0 93] 
#[1 6 61 0 4 6 65 0 101 6 69 1 31 6 73 1 32] 
#[1 6 77 0 50 2 74 0 69] 
#[0 6 81 0 70] 
#[1 0 42 0 3 0 42 0 65 2 53 0 100 6 85 0 116 6 85 0 117] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 89 0 171 6 89 0 172 0 249 0 230 6 89 0 238 1 201 0 239 1 205 0 242 6 89 0 243 0 249 0 249 6 89 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 42 0 1 6 93 0 25 2 53 0 100 6 97 0 116 6 97 0 117] 
#[0 2 78 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 2 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 2 86 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 2 90 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 2 94 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 2 98 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 2 102 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 2 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 2 110 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 6 101 0 69 6 105 1 23] 
#[1 6 109 0 7 2 114 0 69] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 2 118 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 6 133 0 57 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 6 133 0 76 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 6 113 0 91 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 6 117 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 6 117 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 125 0 171 6 125 0 172 6 121 0 174 6 125 0 175 6 129 0 185 6 133 0 186 6 137 0 208 0 249 0 230 6 125 0 238 1 201 0 239 1 205 0 242 6 125 0 243 0 249 0 249 6 125 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 6 141 0 1] 
#[1 0 42 0 1 2 53 0 100 6 145 0 116 6 145 0 117] 
#[0 6 149 0 1] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 153 0 171 6 153 0 172 6 153 0 175 0 249 0 230 6 153 0 238 1 201 0 239 1 205 0 242 6 153 0 243 0 249 0 249 6 153 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 157 0 171 6 157 0 172 0 249 0 230 6 157 0 238 1 201 0 239 1 205 0 242 6 157 0 243 0 249 0 249 6 157 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 6 161 0 4 2 53 0 100 6 165 0 101 6 177 0 117 6 169 1 24 6 173 1 25 6 177 1 27] 
#[0 6 181 0 50] 
#[0 2 122 0 4 0 69 0 97] 
#[1 6 101 0 69 6 185 1 23] 
#[1 2 126 0 69 6 189 0 97] 
#[0 2 130 0 69] 
#[0 2 134 0 69] 
#[0 6 193 0 7] 
#[0 2 138 0 69 0 97] 
#[0 2 142 0 7] 
#[0 6 197 0 85] 
#[1 3 249 0 5 3 253 0 21] 
#[1 3 245 0 1 0 130 0 2 0 130 0 3 0 130 0 4 4 81 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 19 0 130 0 20 4 85 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 39 0 130 0 40 0 130 0 41 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 48 0 130 0 49 0 130 0 74 0 130 0 75 0 130 0 79 0 130 0 97 0 130 0 98 0 205 0 107 0 6 0 108 0 130 0 109 0 130 0 110 4 93 0 136 0 245 0 137 6 201 0 148 0 130 1 66 0 130 1 67 0 130 1 68] 
#[0 2 146 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 67 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 2 118 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 125 0 171 6 125 0 172 6 205 0 174 6 125 0 175 0 249 0 230 6 125 0 238 1 201 0 239 1 205 0 242 6 125 0 243 0 249 0 249 6 125 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 6 209 0 2 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 6 213 0 96 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 6 217 0 149 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 221 0 171 6 221 0 172 0 249 0 230 6 221 0 238 1 201 0 239 1 205 0 242 6 221 0 243 0 249 0 249 6 221 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 225 0 171 6 225 0 172 6 225 0 175 0 249 0 230 6 225 0 238 1 201 0 239 1 205 0 242 6 225 0 243 0 249 0 249 6 225 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 6 229 0 101] 
#[0 2 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 233 0 171 6 233 0 172 6 233 0 175 0 249 0 230 6 233 0 238 1 201 0 239 1 205 0 242 6 233 0 243 0 249 0 249 6 233 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 6 237 0 7 5 49 0 97] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 2 213 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 6 241 0 55 6 245 0 67 6 249 0 225 6 253 0 226] 
#[0 2 154 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[1 7 1 0 4 5 85 0 5 7 5 0 96 2 53 0 100 2 177 0 101 5 97 0 103 5 101 0 104 6 13 0 117 7 9 0 118 7 9 0 130 7 9 0 131 7 9 0 132 5 125 0 195 5 129 0 196 5 133 0 199 5 133 0 201 5 97 1 35 5 101 1 36] 
#[1 0 30 0 3 0 30 0 5 0 30 0 6 0 30 0 96 2 245 0 97 0 30 0 100 7 13 0 124 3 1 0 125 5 145 0 197 5 149 0 198] 
#[1 1 182 0 7 5 161 0 22 1 182 0 79 1 182 0 97 7 17 0 134 5 169 0 135] 
#[1 7 21 0 7 7 25 0 97] 
#[0 2 158 0 7 0 97] 
#[1 5 161 0 22 7 29 0 135] 
#[0 2 162 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 7 33 0 171 7 33 0 172 7 33 0 175 0 249 0 230 7 33 0 238 1 201 0 239 1 205 0 242 7 33 0 243 0 249 0 249 7 33 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 7 37 0 171 7 37 0 172 7 37 0 175 0 249 0 230 7 37 0 238 1 201 0 239 1 205 0 242 7 37 0 243 0 249 0 249 7 37 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 7 41 0 171 7 41 0 172 0 249 0 230 7 41 0 238 1 201 0 239 1 205 0 242 7 41 0 243 0 249 0 249 7 41 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 2 166 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 7 49 0 176 7 49 0 179 7 49 0 180 7 49 0 181 7 49 0 189 7 49 0 204 7 49 0 205 7 49 0 206 7 49 0 207 7 49 0 210 7 49 0 211 7 49 0 213 7 49 0 214 7 49 0 215 7 49 0 221 7 49 0 222 7 49 0 223 7 49 0 224 7 49 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 7 53 0 13] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 7 57 0 171 7 57 0 172 7 57 0 175 0 249 0 230 7 57 0 238 1 201 0 239 1 205 0 242 7 57 0 243 0 249 0 249 7 57 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 7 61 0 171 7 61 0 172 7 61 0 175 0 249 0 230 7 61 0 238 1 201 0 239 1 205 0 242 7 61 0 243 0 249 0 249 7 61 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 7 65 0 101] 
#[1 3 245 0 1 7 69 0 5 7 73 0 101 0 205 0 107 0 6 0 108 7 77 0 136 0 245 0 137 7 81 0 148 7 85 0 152] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 2 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 3 245 0 1 2 178 0 2 2 178 0 3 2 178 0 4 7 69 0 5 2 178 0 6 2 178 0 7 2 178 0 8 2 178 0 9 2 178 0 10 2 178 0 11 2 178 0 12 2 178 0 13 2 178 0 14 2 178 0 15 2 178 0 16 2 178 0 17 2 178 0 19 2 178 0 20 2 178 0 22 2 178 0 23 2 178 0 24 2 178 0 25 2 178 0 26 2 178 0 27 2 178 0 28 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 34 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 39 2 178 0 40 2 178 0 41 2 178 0 42 2 178 0 43 2 178 0 44 2 178 0 45 2 178 0 46 2 178 0 48 2 178 0 49 2 178 0 74 2 178 0 75 2 178 0 79 2 178 0 97 2 178 0 98 7 73 0 101 0 205 0 107 0 6 0 108 2 178 0 109 2 178 0 110 7 77 0 136 0 245 0 137 7 81 0 148 7 89 0 152 2 178 1 66 2 178 1 67 2 178 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 7 93 0 171 7 93 0 172 7 93 0 175 0 249 0 230 7 93 0 238 1 201 0 239 1 205 0 242 7 93 0 243 0 249 0 249 7 93 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 7 97 0 101] 
#[0 2 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 2 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 3 245 0 1 2 190 0 2 2 190 0 3 2 190 0 4 7 69 0 5 2 190 0 6 2 190 0 7 2 190 0 8 2 190 0 9 2 190 0 10 2 190 0 11 2 190 0 12 2 190 0 13 2 190 0 14 2 190 0 15 2 190 0 16 2 190 0 17 2 190 0 19 2 190 0 20 2 190 0 22 2 190 0 23 2 190 0 24 2 190 0 25 2 190 0 26 2 190 0 27 2 190 0 28 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 34 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 2 190 0 44 2 190 0 45 2 190 0 46 2 190 0 48 2 190 0 49 2 190 0 74 2 190 0 75 2 190 0 79 2 190 0 97 2 190 0 98 7 73 0 101 0 205 0 107 0 6 0 108 2 190 0 109 2 190 0 110 7 77 0 136 0 245 0 137 7 81 0 148 7 89 0 152 2 190 1 66 2 190 1 67 2 190 1 68] 
#[1 3 245 0 1 2 194 0 2 2 194 0 3 2 194 0 4 7 69 0 5 2 194 0 6 2 194 0 7 2 194 0 8 2 194 0 9 2 194 0 10 2 194 0 11 2 194 0 12 2 194 0 13 2 194 0 14 2 194 0 15 2 194 0 16 2 194 0 17 2 194 0 19 2 194 0 20 2 194 0 22 2 194 0 23 2 194 0 24 2 194 0 25 2 194 0 26 2 194 0 27 2 194 0 28 2 194 0 29 2 194 0 30 2 194 0 31 2 194 0 32 2 194 0 33 2 194 0 34 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 42 2 194 0 43 2 194 0 44 2 194 0 45 2 194 0 46 2 194 0 48 2 194 0 49 2 194 0 74 2 194 0 75 2 194 0 79 2 194 0 97 2 194 0 98 7 73 0 101 0 205 0 107 0 6 0 108 2 194 0 109 2 194 0 110 7 77 0 136 0 245 0 137 7 81 0 148 7 89 0 152 2 194 1 66 2 194 1 67 2 194 1 68] 
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
#[0 2 246 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[0 2 250 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 7 101 0 171 7 101 0 172 0 249 0 230 7 101 0 238 1 201 0 239 1 205 0 242 7 101 0 243 0 249 0 249 7 101 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 2 254 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 7 105 0 156 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 3 2 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 3 6 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[0 3 10 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 7 109 0 156 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 7 113 0 156 7 113 0 157 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 7 117 0 156 7 117 0 157 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 7 121 0 159 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 7 125 0 159 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 7 129 0 159 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 7 133 0 160 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 7 137 0 160 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 7 141 0 160 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 7 145 0 160 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 7 149 0 160 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 7 153 0 160 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 7 157 0 161 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 7 161 0 161 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 7 165 0 161 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 7 169 0 161 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 7 173 0 162 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 7 177 0 163 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 7 181 0 164 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 7 185 0 165 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 7 189 0 165 7 193 0 166 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 3 9 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 3 17 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 3 17 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 7 197 0 165 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 7 201 0 171 7 201 0 172 0 249 0 230 7 201 0 238 1 201 0 239 1 205 0 242 7 201 0 243 0 249 0 249 7 201 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 3 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 7 205 0 171 7 205 0 172 0 249 0 230 7 205 0 238 1 201 0 239 1 205 0 242 7 205 0 243 0 249 0 249 7 205 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 1 182 0 7 5 161 0 22 1 182 0 97 7 209 0 134 5 169 0 135] 
#[1 7 213 0 7 7 217 0 97] 
#[0 3 18 0 7 0 97] 
#[1 5 161 0 22 7 221 0 135] 
#[1 0 25 0 1 7 225 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 7 237 0 171 7 237 0 172 0 249 0 230 7 237 0 238 1 201 0 239 7 233 0 240 7 237 0 241 1 205 0 242 7 237 0 243 0 249 0 249 7 237 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 3 22 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 3 26 0 3 3 26 0 111 3 26 0 113 7 241 1 56 7 245 1 57] 
#[1 7 249 0 112 7 253 1 43 7 253 1 44 7 253 1 45 8 9 1 46 8 13 1 47] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 5 189 0 171 5 189 0 172 0 249 0 230 5 189 0 238 1 201 0 239 1 205 0 242 5 189 0 243 0 249 0 249 5 189 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 5 85 0 5 5 197 0 25 2 177 0 101 5 97 0 103 5 101 0 104 5 201 0 118 5 201 0 130 5 201 0 131 5 201 0 132 5 97 1 35 5 101 1 36] 
#[1 1 230 0 4 5 161 0 22 1 230 0 97 5 217 0 135] 
#[0 2 18 0 1 0 98] 
#[0 2 22 0 1 0 98] 
#[0 3 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 1 222 0 1 0 159 0 2 0 159 0 4 1 222 0 5 0 159 0 6 1 222 0 8 1 222 0 9 1 222 0 10 1 222 0 11 1 222 0 12 1 222 0 13 1 222 0 14 1 222 0 15 1 222 0 16 1 222 0 17 1 222 0 19 1 222 0 20 1 222 0 21 0 159 0 22 1 222 0 23 1 222 0 24 1 222 0 25 1 222 0 26 1 222 0 27 1 222 0 28 1 222 0 29 1 222 0 30 1 222 0 31 1 222 0 32 1 222 0 33 1 222 0 34 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 39 1 222 0 40 1 222 0 41 1 222 0 42 1 222 0 43 1 222 0 44 1 222 0 45 1 222 0 46 1 222 0 48 1 222 0 49 1 222 0 74 1 222 0 75 0 159 0 97 1 222 0 107 1 222 0 108 1 222 1 66 1 222 1 67] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 8 17 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 5 213 0 171 5 213 0 172 0 249 0 230 5 213 0 238 1 201 0 239 1 205 0 242 5 213 0 243 0 249 0 249 5 213 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 163 0 4 5 161 0 22 0 163 0 97 5 165 0 134 8 21 0 135] 
#[1 5 229 0 1 8 25 0 98] 
#[0 8 29 0 4] 
#[1 8 33 0 4 8 37 0 97] 
#[0 3 38 0 4 0 97] 
#[0 3 42 0 4 0 97] 
#[1 0 25 0 1 2 85 0 3 2 89 0 5 0 167 0 6 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 8 41 0 96 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 2 97 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 6 1 0 126 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 5 0 171 6 5 0 172 2 105 0 192 2 105 0 193 2 105 0 194 8 45 0 200 8 45 0 201 8 49 0 202 8 49 0 203 0 249 0 230 6 5 0 238 1 201 0 239 1 205 0 242 6 5 0 243 0 249 0 249 6 5 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 8 57 0 6 8 61 0 97] 
#[0 3 50 0 6 0 97] 
#[0 3 54 0 2 0 6] 
#[0 3 58 0 2 0 6] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 8 65 0 171 8 65 0 172 0 249 0 230 8 65 0 238 1 201 0 239 1 205 0 242 8 65 0 243 0 249 0 249 8 65 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 3 62 0 2 0 4 0 6 0 97] 
#[0 3 66 0 2 0 4 0 6 0 7 0 79 0 97] 
#[0 3 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 3 74 0 2 0 4 0 6 0 97] 
#[0 3 78 0 18] 
#[1 3 82 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 8 73 0 200 8 73 0 201 8 69 0 203 8 69 0 234 8 73 0 235] 
#[0 8 77 0 6] 
#[0 8 81 0 1] 
#[1 5 85 0 5 2 177 0 101 5 97 0 103 5 101 0 104 8 85 0 118 8 85 0 130 8 85 0 131 8 85 0 132 5 97 1 35 5 101 1 36] 
#[0 8 89 0 1] 
#[0 8 93 0 1] 
#[0 8 97 0 1] 
#[0 3 86 0 4 0 97] 
#[0 3 90 0 4 0 97] 
#[0 3 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 8 101 0 4 5 85 0 5 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 2 173 0 96 2 53 0 100 2 177 0 101 5 97 0 103 5 101 0 104 5 93 0 117 2 197 0 118 8 105 0 129 2 197 0 130 2 197 0 131 2 197 0 132 8 105 0 133 8 105 0 245 8 105 0 247 8 105 0 252 8 105 1 0 5 97 1 35 5 101 1 36] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 8 109 0 231 2 133 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 8 113 0 171 8 113 0 172 0 249 0 230 8 113 0 238 1 201 0 239 1 205 0 242 8 113 0 243 0 249 0 249 8 113 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 3 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 3 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 8 117 0 6 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 5 253 0 96 6 9 0 97 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 8 121 0 126 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 8 125 0 171 8 125 0 172 0 249 0 230 8 125 0 238 1 201 0 239 1 205 0 242 8 125 0 243 0 249 0 249 8 125 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 3 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 8 129 0 171 8 129 0 172 0 249 0 230 8 129 0 238 1 201 0 239 1 205 0 242 8 129 0 243 0 249 0 249 8 129 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 3 110 0 6 0 97] 
#[0 3 114 0 6 0 97] 
#[0 3 118 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 61 0 66 0 70 0 73 0 77 0 78 0 83 0 86 0 88 0 90 0 92 0 95 0 96 0 97 0 100 0 103 0 104 0 105 0 107 0 108 0 111] 
#[1 1 182 0 2 1 182 0 4 1 182 0 6 5 161 0 22 1 182 0 97 5 165 0 134 5 169 0 135] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 8 133 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[1 0 42 0 1 2 53 0 100 8 137 0 116 8 137 0 117] 
#[0 8 141 0 1] 
#[1 0 25 0 1 8 145 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 8 149 0 171 8 149 0 172 0 249 0 230 8 149 0 238 1 201 0 239 8 149 0 241 1 205 0 242 8 149 0 243 8 153 0 244 0 249 0 249 8 149 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 8 157 0 7] 
#[1 8 161 0 4 5 85 0 5 8 165 0 7 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 8 169 0 82 2 177 0 101 5 97 0 103 5 101 0 104 8 173 0 118 8 173 0 130 8 173 0 131 8 173 0 132 8 189 0 245 8 189 0 247 8 189 0 252 8 189 1 0 8 181 1 9 8 185 1 10 8 189 1 11 5 97 1 35 5 101 1 36] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 3 9 0 51 0 77 0 56 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 8 193 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 8 193 0 153 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 3 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 8 197 0 3] 
#[0 8 201 0 7] 
#[0 8 205 0 1] 
#[0 3 126 0 7 0 69] 
#[1 3 130 0 4 8 209 0 50 3 130 0 97] 
#[1 8 213 0 4 8 217 0 97] 
#[0 3 134 0 4 0 97] 
#[0 8 221 0 101] 
#[1 8 225 0 1 8 229 0 25 2 53 0 100 8 233 0 117] 
#[1 6 37 0 3 6 41 0 65 8 237 1 7 6 49 1 8] 
#[0 8 241 0 7] 
#[1 0 42 0 1 2 53 0 100 8 245 0 116 8 245 0 117] 
#[0 8 249 0 1] 
#[0 8 253 0 103 1 26 1 35] 
#[0 9 1 0 7] 
#[0 3 138 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 9 5 0 117 9 9 0 190 9 13 0 191 9 17 0 192 9 17 0 193 9 17 0 194 9 21 0 209] 
#[1 0 166 0 7 0 166 0 8 4 185 0 9 0 166 0 10 0 166 0 11 4 185 0 12 0 166 0 13 0 166 0 14 4 185 0 15 4 185 0 16 0 166 0 17 0 166 0 19 0 166 0 20 4 185 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 4 185 0 27 4 185 0 28 4 185 0 29 4 185 0 30 4 185 0 31 4 185 0 32 4 185 0 33 0 166 0 34 4 177 0 35 0 166 0 36 4 181 0 37 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 48 0 166 0 49 0 171 0 74 0 166 0 75 9 29 0 79 0 166 0 97 4 185 0 173 0 166 1 66 4 185 1 67] 
#[0 9 33 0 7] 
#[1 3 142 0 2 3 142 0 7 5 49 0 97] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 2 118 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 125 0 171 6 125 0 172 9 37 0 174 6 125 0 175 0 249 0 230 6 125 0 238 1 201 0 239 1 205 0 242 6 125 0 243 0 249 0 249 6 125 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 9 41 0 117 5 57 0 187 5 61 0 188 9 45 0 192 9 45 0 193 9 45 0 194 9 49 0 209] 
#[1 9 53 0 74 9 57 0 79] 
#[1 3 5 0 1 2 45 0 3 0 33 0 5 3 9 0 51 0 77 0 56 9 69 0 57 2 9 0 66 0 113 0 70 2 49 0 73 9 69 0 76 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 9 61 0 91 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 249 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 9 65 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 9 65 0 153 9 69 0 186 9 73 0 208 0 249 0 230 0 249 0 249 0 249 0 254 0 249 1 2 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 9 77 0 1] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 9 81 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[1 9 85 0 2 5 49 0 97] 
#[0 9 89 0 2] 
#[0 3 146 0 69] 
#[0 9 93 0 50] 
#[1 9 97 0 4 9 101 0 97] 
#[0 3 150 0 4 0 97] 
#[0 3 154 0 4 0 97] 
#[1 2 53 0 100 9 105 0 117 9 105 1 27] 
#[0 9 109 0 7] 
#[1 3 185 0 3 3 189 0 25 9 113 1 21 9 117 1 22] 
#[0 3 158 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 3 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 3 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 9 121 0 7] 
#[0 3 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 9 125 0 171 9 125 0 172 0 249 0 230 9 125 0 238 1 201 0 239 1 205 0 242 9 125 0 243 0 249 0 249 9 125 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 9 129 0 2 9 133 0 97] 
#[0 3 174 0 2 0 97] 
#[1 9 137 0 6 5 49 0 97] 
#[0 3 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 9 141 0 2 5 49 0 97] 
#[0 3 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 9 145 0 1 4 13 0 3 9 149 0 181] 
#[1 4 13 0 3 9 153 0 181] 
#[1 3 186 0 1 3 186 0 3 3 186 0 4 3 186 0 5 3 186 0 7 3 186 0 34 3 186 0 35 3 186 0 36 3 186 0 37 3 186 0 38 3 186 0 47 3 186 0 51 3 186 0 52 3 186 0 53 3 186 0 54 3 186 0 56 3 186 0 57 3 186 0 58 3 186 0 59 3 186 0 60 3 186 0 61 3 186 0 62 3 186 0 63 3 186 0 64 3 186 0 66 6 245 0 67 3 186 0 68 3 186 0 70 3 186 0 72 3 186 0 73 3 186 0 76 3 186 0 77 3 186 0 78 3 186 0 80 3 186 0 83 3 186 0 84 3 186 0 86 3 186 0 87 3 186 0 88 3 186 0 89 3 186 0 90 3 186 0 91 3 186 0 92 3 186 0 93 3 186 0 94 3 186 0 95 3 186 0 100 3 186 0 103 3 186 0 104 3 186 0 105 3 186 0 107 3 186 0 108 3 186 0 111 9 157 0 226 3 186 1 68] 
#[0 3 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 3 34 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[1 2 53 0 100 9 161 0 117] 
#[0 9 165 0 98] 
#[1 4 25 0 3 4 29 0 5 3 46 0 6 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 8 45 0 200 8 45 0 201 8 49 0 202 8 49 0 203] 
#[0 3 194 0 7 0 79 0 97] 
#[0 3 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 4 33 0 117 9 169 0 191 4 45 0 192 4 45 0 193 4 45 0 194] 
#[0 3 202 0 7 0 79 0 97] 
#[1 9 173 0 2 5 49 0 97] 
#[1 9 177 0 2 5 49 0 97] 
#[0 3 206 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 3 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 3 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 1 162 0 3 1 162 0 111 1 162 0 113 9 181 1 62] 
#[1 5 49 0 97 9 185 0 109 9 189 0 110 9 193 0 138 9 197 0 139] 
#[1 9 201 0 6 5 49 0 97] 
#[0 3 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 9 205 0 171 9 205 0 172 9 205 0 175 0 249 0 230 9 205 0 238 1 201 0 239 1 205 0 242 9 205 0 243 0 249 0 249 9 205 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 3 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 3 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 3 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 3 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 3 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 9 209 0 6 5 49 0 97] 
#[0 3 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 3 246 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 3 250 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[0 3 254 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 109 0 110 1 66 1 68] 
#[1 4 2 0 2 4 2 0 4 4 2 0 6 4 2 0 7 4 209 0 8 4 2 0 10 4 2 0 11 4 2 0 13 4 2 0 14 4 2 0 17 4 2 0 19 4 2 0 20 4 2 0 23 4 2 0 24 4 209 0 25 4 2 0 34 4 2 0 36 4 2 0 39 4 2 0 40 4 2 0 41 4 209 0 43 4 2 0 44 4 2 0 45 4 2 0 46 4 2 0 48 4 2 0 49 4 2 0 74 4 2 0 75 4 2 0 79 4 2 0 97 4 2 0 98 4 2 0 109 4 2 0 110 4 209 0 158 4 2 1 66 4 2 1 68] 
#[1 4 6 0 2 4 6 0 4 4 6 0 6 4 6 0 7 4 209 0 8 4 6 0 10 4 6 0 11 4 6 0 13 4 6 0 14 4 6 0 17 4 6 0 19 4 6 0 20 4 6 0 23 4 6 0 24 4 209 0 25 4 6 0 34 4 6 0 36 4 6 0 39 4 6 0 40 4 6 0 41 4 209 0 43 4 6 0 44 4 6 0 45 4 6 0 46 4 6 0 48 4 6 0 49 4 6 0 74 4 6 0 75 4 6 0 79 4 6 0 97 4 6 0 98 4 6 0 109 4 6 0 110 4 209 0 158 4 6 1 66 4 6 1 68] 
#[1 4 10 0 2 4 10 0 4 4 10 0 6 4 10 0 7 4 10 0 10 4 10 0 11 4 10 0 13 4 10 0 14 4 10 0 17 4 10 0 19 4 10 0 20 4 10 0 23 4 10 0 24 4 213 0 34 4 217 0 36 4 10 0 39 4 10 0 40 4 10 0 41 4 10 0 44 4 10 0 45 4 10 0 46 4 10 0 48 4 10 0 49 4 10 0 74 4 10 0 75 4 10 0 79 4 10 0 97 4 10 0 98 4 10 0 109 4 10 0 110 4 10 1 66 4 10 1 68] 
#[1 4 14 0 2 4 14 0 4 4 14 0 6 4 14 0 7 4 14 0 10 4 14 0 11 4 14 0 13 4 14 0 14 4 14 0 17 4 14 0 19 4 14 0 20 4 14 0 23 4 14 0 24 4 213 0 34 4 217 0 36 4 14 0 39 4 14 0 40 4 14 0 41 4 14 0 44 4 14 0 45 4 14 0 46 4 14 0 48 4 14 0 49 4 14 0 74 4 14 0 75 4 14 0 79 4 14 0 97 4 14 0 98 4 14 0 109 4 14 0 110 4 14 1 66 4 14 1 68] 
#[1 4 18 0 2 4 18 0 4 4 18 0 6 4 18 0 7 4 18 0 10 4 18 0 11 4 18 0 13 4 18 0 14 4 18 0 17 4 18 0 19 4 18 0 20 4 18 0 23 4 18 0 24 4 213 0 34 4 217 0 36 4 18 0 39 4 18 0 40 4 18 0 41 4 18 0 44 4 18 0 45 4 18 0 46 4 18 0 48 4 18 0 49 4 18 0 74 4 18 0 75 4 18 0 79 4 18 0 97 4 18 0 98 4 18 0 109 4 18 0 110 4 18 1 66 4 18 1 68] 
#[1 4 22 0 2 4 22 0 4 4 22 0 6 4 22 0 7 4 22 0 10 4 221 0 11 4 22 0 13 4 225 0 14 4 229 0 17 4 22 0 19 4 22 0 20 4 22 0 23 4 22 0 24 4 22 0 39 4 22 0 40 4 22 0 41 4 22 0 44 4 22 0 45 4 22 0 46 4 22 0 48 4 22 0 49 4 22 0 74 4 22 0 75 4 22 0 79 4 22 0 97 4 22 0 98 4 22 0 109 4 22 0 110 4 22 1 66 4 22 1 68] 
#[1 4 26 0 2 4 26 0 4 4 26 0 6 4 26 0 7 4 26 0 10 4 221 0 11 4 26 0 13 4 225 0 14 4 229 0 17 4 26 0 19 4 26 0 20 4 26 0 23 4 26 0 24 4 26 0 39 4 26 0 40 4 26 0 41 4 26 0 44 4 26 0 45 4 26 0 46 4 26 0 48 4 26 0 49 4 26 0 74 4 26 0 75 4 26 0 79 4 26 0 97 4 26 0 98 4 26 0 109 4 26 0 110 4 26 1 66 4 26 1 68] 
#[1 4 30 0 2 4 30 0 4 4 30 0 6 4 30 0 7 4 30 0 10 4 221 0 11 4 30 0 13 4 225 0 14 4 229 0 17 4 30 0 19 4 30 0 20 4 30 0 23 4 30 0 24 4 30 0 39 4 30 0 40 4 30 0 41 4 30 0 44 4 30 0 45 4 30 0 46 4 30 0 48 4 30 0 49 4 30 0 74 4 30 0 75 4 30 0 79 4 30 0 97 4 30 0 98 4 30 0 109 4 30 0 110 4 30 1 66 4 30 1 68] 
#[1 4 34 0 2 4 34 0 4 4 34 0 6 4 34 0 7 4 34 0 10 4 221 0 11 4 34 0 13 4 225 0 14 4 229 0 17 4 34 0 19 4 34 0 20 4 34 0 23 4 34 0 24 4 34 0 39 4 34 0 40 4 34 0 41 4 34 0 44 4 34 0 45 4 34 0 46 4 34 0 48 4 34 0 49 4 34 0 74 4 34 0 75 4 34 0 79 4 34 0 97 4 34 0 98 4 34 0 109 4 34 0 110 4 34 1 66 4 34 1 68] 
#[1 4 38 0 2 4 38 0 4 4 38 0 6 4 38 0 7 4 38 0 10 4 221 0 11 4 38 0 13 4 225 0 14 4 229 0 17 4 38 0 19 4 38 0 20 4 38 0 23 4 38 0 24 4 38 0 39 4 38 0 40 4 38 0 41 4 38 0 44 4 38 0 45 4 38 0 46 4 38 0 48 4 38 0 49 4 38 0 74 4 38 0 75 4 38 0 79 4 38 0 97 4 38 0 98 4 38 0 109 4 38 0 110 4 38 1 66 4 38 1 68] 
#[1 4 42 0 2 4 42 0 4 4 42 0 6 4 42 0 7 4 42 0 10 4 221 0 11 4 42 0 13 4 225 0 14 4 229 0 17 4 42 0 19 4 42 0 20 4 42 0 23 4 42 0 24 4 42 0 39 4 42 0 40 4 42 0 41 4 42 0 44 4 42 0 45 4 42 0 46 4 42 0 48 4 42 0 49 4 42 0 74 4 42 0 75 4 42 0 79 4 42 0 97 4 42 0 98 4 42 0 109 4 42 0 110 4 42 1 66 4 42 1 68] 
#[1 4 46 0 2 4 46 0 4 4 46 0 6 4 46 0 7 4 233 0 10 4 237 0 13 4 241 0 19 4 245 0 20 4 46 0 23 4 46 0 24 4 46 0 39 4 46 0 40 4 46 0 41 4 46 0 44 4 46 0 45 4 46 0 46 4 46 0 48 4 46 0 49 4 249 0 74 4 253 0 75 4 46 0 79 4 46 0 97 4 46 0 98 4 46 0 109 4 46 0 110 4 46 1 66 4 46 1 68] 
#[1 4 50 0 2 4 50 0 4 4 50 0 6 4 50 0 7 4 233 0 10 4 237 0 13 4 241 0 19 4 245 0 20 4 50 0 23 4 50 0 24 4 50 0 39 4 50 0 40 4 50 0 41 4 50 0 44 4 50 0 45 4 50 0 46 4 50 0 48 4 50 0 49 4 249 0 74 4 253 0 75 4 50 0 79 4 50 0 97 4 50 0 98 4 50 0 109 4 50 0 110 4 50 1 66 4 50 1 68] 
#[1 4 54 0 2 4 54 0 4 4 54 0 6 4 54 0 7 4 233 0 10 4 237 0 13 4 241 0 19 4 245 0 20 4 54 0 23 4 54 0 24 4 54 0 39 4 54 0 40 4 54 0 41 4 54 0 44 4 54 0 45 4 54 0 46 4 54 0 48 4 54 0 49 4 249 0 74 4 253 0 75 4 54 0 79 4 54 0 97 4 54 0 98 4 54 0 109 4 54 0 110 4 54 1 66 4 54 1 68] 
#[1 4 58 0 2 4 58 0 4 4 58 0 6 4 58 0 7 4 233 0 10 4 237 0 13 4 241 0 19 4 245 0 20 4 58 0 23 4 58 0 24 4 58 0 39 4 58 0 40 4 58 0 41 4 58 0 44 4 58 0 45 4 58 0 46 4 58 0 48 4 58 0 49 4 249 0 74 4 253 0 75 4 58 0 79 4 58 0 97 4 58 0 98 4 58 0 109 4 58 0 110 4 58 1 66 4 58 1 68] 
#[1 4 62 0 2 4 62 0 4 4 62 0 6 4 62 0 7 5 1 0 23 5 5 0 24 4 62 0 39 4 62 0 40 4 62 0 41 4 62 0 44 4 62 0 45 4 62 0 46 5 9 0 48 5 13 0 49 4 62 0 79 4 62 0 97 4 62 0 98 4 62 0 109 4 62 0 110 4 62 1 66 4 62 1 68] 
#[1 4 66 0 2 4 66 0 4 4 66 0 6 4 66 0 7 5 17 0 39 4 66 0 40 4 66 0 41 4 66 0 44 4 66 0 45 4 66 0 46 4 66 0 79 4 66 0 97 4 66 0 98 4 66 0 109 4 66 0 110 4 66 1 66 4 66 1 68] 
#[1 4 70 0 2 4 70 0 4 4 70 0 6 4 70 0 7 4 70 0 40 4 70 0 41 4 70 0 44 4 70 0 45 5 21 0 46 4 70 0 79 4 70 0 97 4 70 0 98 4 70 0 109 4 70 0 110 4 70 1 66 4 70 1 68] 
#[1 4 74 0 2 4 74 0 4 4 74 0 6 4 74 0 7 4 74 0 40 4 74 0 41 5 25 0 44 4 74 0 45 4 74 0 79 4 74 0 97 4 74 0 98 4 74 0 109 4 74 0 110 4 74 1 68] 
#[1 0 210 0 2 0 210 0 4 0 210 0 6 0 210 0 7 0 210 0 40 0 210 0 41 5 25 0 44 0 210 0 45 0 210 0 79 0 210 0 97 0 210 0 98 0 210 0 109 0 210 0 110 0 210 1 68] 
#[1 4 78 0 2 4 78 0 4 4 78 0 6 4 78 0 7 5 29 0 40 4 78 0 41 4 78 0 45 4 78 0 79 4 78 0 97 4 78 0 98 4 78 0 109 4 78 0 110 4 78 1 68] 
#[1 4 82 0 2 4 82 0 4 4 82 0 6 4 82 0 7 4 82 0 41 5 25 0 44 4 82 0 79 4 82 0 97 4 82 0 98 4 82 0 109 4 82 0 110 4 82 1 66 4 82 1 68] 
#[0 9 213 0 98] 
#[0 4 86 0 2 0 6 0 7 0 97 0 98 0 109 0 110 1 68] 
#[0 4 90 0 7 0 97] 
#[0 4 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 5 53 0 117 9 217 0 188 5 65 0 192 5 65 0 193 5 65 0 194] 
#[0 4 98 0 7 0 97] 
#[1 0 25 0 1 0 29 0 3 0 11 0 4 2 153 0 5 0 37 0 7 2 157 0 25 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 2 161 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 2 165 0 71 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 2 169 0 81 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 2 173 0 96 0 189 0 100 2 177 0 101 2 237 0 103 2 241 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 2 181 0 117 2 197 0 118 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 2 189 0 128 2 193 0 129 2 197 0 130 2 197 0 131 2 197 0 132 2 193 0 133 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 9 225 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 2 193 0 245 2 193 0 247 0 249 0 249 1 105 0 251 2 193 0 252 0 249 0 254 2 193 1 0 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 237 1 35 2 241 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 4 102 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 4 106 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 4 110 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[1 0 10 0 111 9 233 1 41 9 237 1 60] 
#[1 4 114 0 3 0 175 0 111 9 241 0 113 9 249 1 38 9 249 1 39 2 33 1 40 9 249 1 58 2 41 1 60 9 253 1 65] 
#[1 4 122 0 3 4 122 0 8 4 122 0 13 10 1 0 21 10 5 0 98 4 122 0 112] 
#[1 4 114 0 3 10 9 0 8 0 94 0 13 10 13 0 112 10 41 1 44 10 21 1 48 10 25 1 49 10 29 1 50 10 25 1 51 10 25 1 52 10 41 1 53 10 45 1 61 10 49 1 65] 
#[0 4 126 0 3 0 8 0 13 0 112] 
#[0 4 130 0 3 0 8 0 13 0 112] 
#[0 4 134 0 112] 
#[1 10 53 0 112 10 57 1 46] 
#[1 0 98 0 1 0 179 0 4 0 98 0 5 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 102 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 98 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 39 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 48 0 98 0 49 0 98 0 74 0 98 0 75 0 98 0 97 0 98 0 107 0 98 0 108 0 98 1 66 0 98 1 67] 
#[0 0 183 0 4 0 97] 
#[1 0 25 0 1 2 85 0 3 2 89 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 2 97 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 8 113 0 171 8 113 0 172 2 105 0 192 2 105 0 193 2 105 0 194 10 61 0 200 10 61 0 201 0 249 0 230 8 113 0 238 1 201 0 239 1 205 0 242 8 113 0 243 0 249 0 249 8 113 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 4 142 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[0 4 146 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[1 10 65 0 4 5 85 0 5 7 5 0 96 2 53 0 100 2 177 0 101 5 97 0 103 5 101 0 104 6 13 0 117 7 9 0 118 7 9 0 130 7 9 0 131 7 9 0 132 10 69 0 195 10 73 0 199 10 73 0 201 5 97 1 35 5 101 1 36] 
#[1 0 25 0 1 2 85 0 3 2 89 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 10 77 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 8 129 0 171 8 129 0 172 5 157 0 192 5 157 0 193 5 157 0 194 0 249 0 230 8 129 0 238 1 201 0 239 1 205 0 242 8 129 0 243 0 249 0 249 8 129 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 4 150 0 6 0 97] 
#[0 10 81 0 6] 
#[0 4 154 0 6] 
#[0 4 158 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[1 0 30 0 3 0 30 0 5 0 30 0 6 0 30 0 96 2 245 0 97 0 30 0 100 10 85 0 124 3 1 0 125 10 89 0 198] 
#[0 4 162 0 2 0 4 0 6 0 7 0 79 0 97] 
#[0 4 166 0 2] 
#[0 4 170 0 2 0 97] 
#[0 4 174 0 1 0 98] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 10 93 0 231 2 133 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[0 10 97 0 1] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 10 101 0 231 2 133 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[0 10 105 0 2] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 10 113 0 200 10 113 0 201 10 113 0 235 10 113 0 246] 
#[0 4 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 4 182 0 4 0 97] 
#[0 10 117 0 2] 
#[0 4 186 0 4 0 97] 
#[0 4 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 4 194 0 6 0 97] 
#[0 4 198 0 6 0 97] 
#[0 4 202 0 4 0 6 0 97] 
#[0 10 121 0 2] 
#[0 10 125 0 1] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 10 129 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[1 0 25 0 1 0 29 0 3 0 11 0 4 2 153 0 5 0 37 0 7 2 157 0 25 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 2 161 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 2 165 0 71 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 2 169 0 81 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 2 173 0 96 0 189 0 100 2 177 0 101 2 237 0 103 2 241 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 2 181 0 117 2 197 0 118 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 2 189 0 128 2 193 0 129 2 197 0 130 2 197 0 131 2 197 0 132 2 193 0 133 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 10 133 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 2 193 0 245 2 193 0 247 0 249 0 249 1 105 0 251 2 193 0 252 0 249 0 254 2 193 1 0 0 249 1 2 10 137 1 3 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 237 1 35 2 241 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 4 206 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 4 210 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 4 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 4 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 100 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 1 66 1 67 1 68] 
#[0 4 222 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 101 0 103 0 104] 
#[1 5 85 0 5 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 2 177 0 101 5 97 0 103 5 101 0 104 8 173 0 118 8 173 0 130 8 173 0 131 8 173 0 132 10 141 0 245 10 141 0 247 10 141 0 252 10 141 1 0 5 97 1 35 5 101 1 36] 
#[0 5 229 0 1] 
#[0 4 226 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 101 0 103 0 104] 
#[0 10 145 0 4] 
#[1 4 230 0 4 5 85 0 5 8 165 0 7 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 8 169 0 82 2 177 0 101 5 97 0 103 5 101 0 104 8 173 0 118 8 173 0 130 8 173 0 131 8 173 0 132 10 149 0 245 10 149 0 247 10 149 0 252 10 149 1 0 10 149 1 11 5 97 1 35 5 101 1 36] 
#[0 4 234 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 101 0 103 0 104] 
#[0 4 238 0 3] 
#[1 10 153 0 4 5 85 0 5 8 165 0 7 2 157 0 25 5 89 0 51 2 165 0 71 2 169 0 81 8 169 0 82 2 177 0 101 5 97 0 103 5 101 0 104 8 173 0 118 8 173 0 130 8 173 0 131 8 173 0 132 8 189 0 245 8 189 0 247 8 189 0 252 8 189 1 0 10 157 1 9 8 185 1 10 8 189 1 11 5 97 1 35 5 101 1 36] 
#[0 4 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 10 161 0 171 10 161 0 172 10 161 0 175 0 249 0 230 10 161 0 238 1 201 0 239 1 205 0 242 10 161 0 243 0 249 0 249 10 161 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 10 165 0 101] 
#[0 4 246 0 7 0 69] 
#[1 10 169 0 4 6 65 0 101 10 173 1 32] 
#[0 4 250 0 69] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 10 177 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[1 0 42 0 1 2 53 0 100 10 181 0 116 10 181 0 117] 
#[0 10 185 0 1] 
#[0 4 254 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 5 2 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 10 189 0 1] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 10 193 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[0 5 6 0 7] 
#[0 5 10 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 1 182 0 7 5 161 0 22 5 14 0 74 1 182 0 79 1 182 0 97 7 17 0 134 5 169 0 135] 
#[1 10 197 0 7 7 25 0 97] 
#[1 2 158 0 7 10 201 0 79 2 158 0 97] 
#[1 5 161 0 22 5 18 0 74 7 29 0 135] 
#[0 10 205 0 74] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 10 209 0 171 10 209 0 172 10 209 0 175 0 249 0 230 10 209 0 238 1 201 0 239 1 205 0 242 10 209 0 243 0 249 0 249 10 209 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 10 213 0 171 10 213 0 172 0 249 0 230 10 213 0 238 1 201 0 239 1 205 0 242 10 213 0 243 0 249 0 249 10 213 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 2 118 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 125 0 171 6 125 0 172 10 217 0 174 6 125 0 175 0 249 0 230 6 125 0 238 1 201 0 239 1 205 0 242 6 125 0 243 0 249 0 249 6 125 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 10 221 0 7] 
#[1 1 182 0 7 5 161 0 22 5 14 0 74 5 14 0 79 1 182 0 97 7 209 0 134 5 169 0 135] 
#[1 5 161 0 22 5 18 0 74 5 18 0 79 7 221 0 135] 
#[0 5 22 0 74 0 79] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 10 225 0 171 10 225 0 172 10 225 0 175 0 249 0 230 10 225 0 238 1 201 0 239 1 205 0 242 10 225 0 243 0 249 0 249 10 225 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 10 229 0 171 10 229 0 172 0 249 0 230 10 229 0 238 1 201 0 239 1 205 0 242 10 229 0 243 0 249 0 249 10 229 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 4 33 0 117 10 233 0 191 4 45 0 192 4 45 0 193 4 45 0 194] 
#[0 10 237 0 79] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 9 49 0 117 9 49 0 192 9 49 0 193 9 49 0 194 9 49 0 209] 
#[0 10 249 0 79] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 10 253 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[0 11 1 0 2] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 11 5 0 176 11 5 0 179 11 5 0 180 11 5 0 181 11 5 0 189 11 5 0 204 11 5 0 205 11 5 0 206 11 5 0 207 11 5 0 210 11 5 0 211 11 5 0 213 11 5 0 214 11 5 0 215 11 5 0 221 11 5 0 223 11 5 0 224 11 5 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 5 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 2 53 0 100 11 9 0 117 11 9 1 27] 
#[0 5 30 0 69] 
#[1 11 13 0 4 2 53 0 100 6 165 0 101 6 177 0 117 11 17 1 25 6 177 1 27] 
#[0 5 34 0 69] 
#[0 5 38 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 5 42 0 69] 
#[0 5 46 0 69] 
#[0 5 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 5 54 0 2 0 97] 
#[0 5 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 25 0 1 11 21 0 2 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 11 25 0 96 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 11 29 0 171 11 29 0 172 0 249 0 230 11 29 0 238 1 201 0 239 1 205 0 242 11 29 0 243 0 249 0 249 11 29 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 5 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 11 33 0 3 11 37 0 216] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 11 49 0 117 11 49 0 192 11 49 0 193 11 49 0 194 11 49 0 227] 
#[0 5 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 5 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 5 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 4 138 0 4] 
#[1 4 25 0 3 4 29 0 5 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 10 61 0 200 10 61 0 201] 
#[0 5 78 0 7 0 97] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 11 53 0 176 11 53 0 179 11 53 0 180 11 53 0 181 11 53 0 189 11 53 0 204 11 53 0 205 11 53 0 206 11 53 0 207 11 53 0 210 11 53 0 211 11 53 0 213 11 53 0 214 11 53 0 215 11 53 0 221 11 53 0 223 11 53 0 224 11 53 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 11 57 0 176 11 57 0 179 11 57 0 180 11 57 0 181 11 57 0 189 11 57 0 204 11 57 0 205 11 57 0 206 11 57 0 207 11 57 0 210 11 57 0 211 11 57 0 213 11 57 0 214 11 57 0 215 11 57 0 221 11 57 0 223 11 57 0 224 11 57 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 3 26 0 3 3 26 0 111 3 26 0 113 11 61 1 56 7 245 1 57] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 11 65 0 171 11 65 0 172 11 65 0 175 0 249 0 230 11 65 0 238 1 201 0 239 1 205 0 242 11 65 0 243 0 249 0 249 11 65 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 5 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 5 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 11 69 0 109 11 73 0 110] 
#[0 5 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 11 77 0 6 5 49 0 97] 
#[0 5 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 11 81 0 171 11 81 0 172 0 249 0 230 11 81 0 238 1 201 0 239 1 205 0 242 11 81 0 243 0 249 0 249 11 81 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 5 98 0 7 0 97] 
#[0 5 102 0 4] 
#[0 11 85 0 4] 
#[0 5 106 0 4] 
#[0 5 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 111 0 112 0 113 1 66 1 67 1 68] 
#[0 11 89 0 111] 
#[0 5 114 0 3 0 111 0 113] 
#[0 5 118 0 3 0 111 0 113] 
#[0 5 122 0 3 0 111 0 113] 
#[0 11 93 0 3] 
#[0 5 126 0 112] 
#[0 11 97 0 112] 
#[1 5 130 0 13 11 101 1 63] 
#[1 5 134 0 3 5 134 0 8 5 134 0 13 5 134 0 22 10 5 0 98 5 134 0 112] 
#[0 5 138 0 3 0 8 0 13 0 22 0 112] 
#[1 11 105 0 8 0 94 0 13 11 109 1 61] 
#[0 5 142 0 3 0 8 0 13 0 112] 
#[1 4 114 0 3 5 146 0 8 5 146 0 13 10 13 0 112 10 41 1 44 11 113 1 49 11 113 1 51 11 113 1 52 10 41 1 53 10 49 1 65] 
#[0 5 150 0 3 0 8 0 13 0 112] 
#[0 5 154 0 3 0 8 0 13 0 112] 
#[1 5 158 0 3 5 158 0 8 5 158 0 13 11 117 0 22 5 158 0 112 11 121 1 54] 
#[0 11 125 0 13] 
#[0 11 129 0 3] 
#[1 5 162 0 3 5 162 0 8 5 162 0 13 10 1 0 21 5 162 0 112] 
#[0 5 166 0 112] 
#[0 5 170 0 4 0 97] 
#[0 5 174 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[0 11 133 0 4] 
#[0 5 178 0 4 0 97] 
#[1 0 98 0 1 0 98 0 5 0 187 0 6 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 11 0 98 0 12 0 98 0 13 0 98 0 14 0 98 0 15 0 98 0 16 0 98 0 17 0 102 0 18 0 98 0 19 0 98 0 20 0 98 0 21 0 98 0 22 0 98 0 23 0 98 0 24 0 98 0 25 0 98 0 26 0 98 0 27 0 98 0 28 0 98 0 29 0 98 0 30 0 98 0 31 0 98 0 32 0 98 0 33 0 98 0 34 0 98 0 35 0 98 0 36 0 98 0 37 0 98 0 39 0 98 0 40 0 98 0 41 0 98 0 42 0 98 0 43 0 98 0 44 0 98 0 45 0 98 0 46 0 98 0 48 0 98 0 49 0 98 0 74 0 98 0 75 0 98 0 97 0 98 0 107 0 98 0 108 0 98 1 66 0 98 1 67] 
#[0 5 182 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[1 4 25 0 3 4 29 0 5 3 46 0 6 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 8 45 0 200 8 45 0 201 11 137 0 202 11 137 0 203] 
#[0 5 186 0 6 0 97] 
#[0 11 141 0 2] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 11 145 0 231 2 133 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[0 11 149 0 2] 
#[0 11 153 0 3] 
#[0 5 190 0 2] 
#[0 11 157 0 2] 
#[0 11 161 0 3] 
#[0 11 165 0 3] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 11 169 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[0 11 173 0 2] 
#[0 5 194 0 4] 
#[0 11 177 0 4] 
#[0 5 198 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 101 0 103 0 104] 
#[0 5 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 100 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 1 66 1 67 1 68] 
#[0 5 206 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 101 0 103 0 104] 
#[0 5 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 100 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 1 66 1 67 1 68] 
#[0 11 181 0 4] 
#[1 11 185 0 2 5 49 0 97] 
#[0 5 214 0 4 0 97] 
#[0 5 218 0 7 0 69] 
#[0 5 222 0 4 0 97] 
#[0 11 189 0 2] 
#[0 11 193 0 1] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 11 197 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 11 201 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[0 11 205 0 2] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 2 118 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 125 0 171 6 125 0 172 11 209 0 174 6 125 0 175 0 249 0 230 6 125 0 238 1 201 0 239 1 205 0 242 6 125 0 243 0 249 0 249 6 125 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 11 213 0 171 11 213 0 172 0 249 0 230 11 213 0 238 1 201 0 239 1 205 0 242 11 213 0 243 0 249 0 249 11 213 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 11 217 0 171 11 217 0 172 11 217 0 175 0 249 0 230 11 217 0 238 1 201 0 239 1 205 0 242 11 217 0 243 0 249 0 249 11 217 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 11 221 0 2 5 49 0 97] 
#[0 11 225 0 2] 
#[0 11 229 0 7] 
#[1 0 25 0 1 2 118 0 2 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 125 0 171 6 125 0 172 11 233 0 174 6 125 0 175 0 249 0 230 6 125 0 238 1 201 0 239 1 205 0 242 6 125 0 243 0 249 0 249 6 125 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 11 237 0 2 5 49 0 97] 
#[0 11 241 0 2] 
#[0 11 245 0 79] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 11 249 0 171 11 249 0 172 0 249 0 230 11 249 0 238 1 201 0 239 1 205 0 242 11 249 0 243 0 249 0 249 11 249 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 5 14 0 79] 
#[0 5 18 0 79] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 11 253 0 171 11 253 0 172 0 249 0 230 11 253 0 238 1 201 0 239 1 205 0 242 11 253 0 243 0 249 0 249 11 253 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 12 1 0 2] 
#[0 12 5 0 3] 
#[1 5 226 0 1 5 226 0 3 5 226 0 4 5 226 0 5 5 226 0 7 5 226 0 34 5 226 0 35 5 226 0 36 5 226 0 37 5 226 0 38 5 226 0 47 5 226 0 51 5 226 0 52 5 226 0 53 5 226 0 54 5 226 0 56 5 226 0 57 5 226 0 58 5 226 0 59 5 226 0 60 5 226 0 61 5 226 0 62 12 9 0 63 5 226 0 64 5 226 0 66 5 226 0 68 5 226 0 70 5 226 0 72 5 226 0 73 5 226 0 76 5 226 0 77 5 226 0 78 5 226 0 80 5 226 0 83 5 226 0 84 5 226 0 86 5 226 0 87 5 226 0 88 5 226 0 89 5 226 0 90 5 226 0 91 5 226 0 92 5 226 0 93 5 226 0 94 5 226 0 95 5 226 0 100 5 226 0 103 5 226 0 104 5 226 0 105 5 226 0 107 5 226 0 108 5 226 0 111 5 226 1 68] 
#[0 5 230 0 4 0 97] 
#[0 5 234 0 69] 
#[0 5 238 0 4 0 97] 
#[0 5 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 12 13 0 171 12 13 0 172 0 249 0 230 12 13 0 238 1 201 0 239 1 205 0 242 12 13 0 243 0 249 0 249 12 13 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 5 246 0 2 0 97] 
#[1 5 250 0 4 12 17 0 54 5 250 0 60 12 21 0 217 12 25 0 218 12 29 0 219] 
#[0 5 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 6 2 0 2] 
#[0 6 6 0 2] 
#[0 12 33 0 2] 
#[0 6 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 6 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 12 37 0 111] 
#[1 5 49 0 97 6 18 0 109 6 18 0 110] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 12 41 0 171 12 41 0 172 12 41 0 175 0 249 0 230 12 41 0 238 1 201 0 239 1 205 0 242 12 41 0 243 0 249 0 249 12 41 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 6 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 6 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 101 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 6 30 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 6 34 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 12 45 0 8] 
#[1 0 25 0 1 2 45 0 3 0 94 0 4 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 5 253 0 96 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 12 57 0 126 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 12 57 0 171 12 57 0 172 0 249 0 230 12 57 0 238 1 201 0 239 1 205 0 242 12 57 0 243 0 249 0 249 12 57 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 12 57 1 59 2 41 1 60 12 61 1 61] 
#[0 6 38 0 3 0 8 0 13 0 22 0 112] 
#[0 12 65 0 13] 
#[1 5 130 0 13 12 69 1 63] 
#[0 12 73 0 13] 
#[0 6 42 0 3 0 8 0 13 0 112] 
#[1 4 114 0 3 12 77 0 103 0 7 0 111 12 77 1 35 12 89 1 38 12 89 1 39 2 33 1 40 12 89 1 42 12 89 1 55 2 41 1 60 12 93 1 65] 
#[0 6 46 0 3 0 8 0 13 0 112] 
#[0 6 50 0 3 0 111 0 113] 
#[1 5 253 0 96 12 97 0 126] 
#[0 6 54 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[0 12 101 0 6] 
#[0 12 105 0 3] 
#[0 12 109 0 2] 
#[0 12 113 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 12 117 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 12 121 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 12 125 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 10 133 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 12 129 1 3 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 12 133 0 2] 
#[0 12 137 0 3] 
#[0 6 58 0 2 0 4 0 6 0 7 0 79 0 97 0 98 0 109 0 110 1 68] 
#[0 6 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 100 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 1 66 1 67 1 68] 
#[0 12 141 0 7] 
#[0 12 145 0 3] 
#[1 0 22 0 2 4 25 0 3 4 29 0 5 2 93 0 96 2 53 0 100 6 13 0 117 2 105 0 192 2 105 0 193 2 105 0 194 2 145 0 200 2 145 0 201 2 141 0 203 12 149 0 232 2 137 0 233 2 141 0 234 2 145 0 235] 
#[0 12 153 0 2] 
#[0 12 157 0 2] 
#[0 12 161 0 3] 
#[0 12 165 0 7] 
#[0 12 169 0 2] 
#[1 12 173 0 2 5 49 0 97] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 12 177 0 176 12 177 0 179 12 177 0 180 12 177 0 181 12 177 0 189 12 177 0 204 12 177 0 205 12 177 0 206 12 177 0 207 12 177 0 210 12 177 0 211 12 177 0 213 12 177 0 214 12 177 0 215 12 177 0 221 12 177 0 223 12 177 0 224 12 177 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 12 181 0 176 12 181 0 179 12 181 0 180 12 181 0 181 12 181 0 189 12 181 0 204 12 181 0 205 12 181 0 206 12 181 0 207 12 181 0 210 12 181 0 211 12 181 0 213 12 181 0 214 12 181 0 215 12 181 0 221 12 181 0 223 12 181 0 224 12 181 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 118 0 2 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 125 0 171 6 125 0 172 12 185 0 174 6 125 0 175 0 249 0 230 6 125 0 238 1 201 0 239 1 205 0 242 6 125 0 243 0 249 0 249 6 125 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 12 189 0 2] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 12 193 0 176 12 193 0 179 12 193 0 180 12 193 0 181 12 193 0 189 12 193 0 204 12 193 0 205 12 193 0 206 12 193 0 207 12 193 0 210 12 193 0 211 12 193 0 213 12 193 0 214 12 193 0 215 12 193 0 221 12 193 0 223 12 193 0 224 12 193 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 12 197 0 176 12 197 0 179 12 197 0 180 12 197 0 181 12 197 0 189 12 197 0 204 12 197 0 205 12 197 0 206 12 197 0 207 12 197 0 210 12 197 0 211 12 197 0 213 12 197 0 214 12 197 0 215 12 197 0 221 12 197 0 223 12 197 0 224 12 197 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 12 201 0 171 12 201 0 172 0 249 0 230 12 201 0 238 1 201 0 239 1 205 0 242 12 201 0 243 0 249 0 249 12 201 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 12 205 0 2] 
#[0 12 209 0 2] 
#[0 12 213 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 12 217 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 12 221 0 176 12 221 0 179 12 221 0 180 12 221 0 181 12 221 0 189 12 221 0 204 12 221 0 205 12 221 0 206 12 221 0 207 12 221 0 210 12 221 0 211 12 221 0 213 12 221 0 214 12 221 0 215 12 221 0 221 12 221 0 223 12 221 0 224 12 221 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 6 66 0 2 0 97] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 12 225 0 171 12 225 0 172 12 225 0 175 0 249 0 230 12 225 0 238 1 201 0 239 1 205 0 242 12 225 0 243 0 249 0 249 12 225 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 12 229 0 4 12 233 0 60 12 237 0 220] 
#[1 6 70 0 4 12 17 0 54 6 70 0 60 12 241 0 219] 
#[0 6 74 0 4 0 54 0 60] 
#[1 4 13 0 3 12 245 0 181] 
#[0 12 249 0 8] 
#[1 5 49 0 97 6 78 0 109 6 78 0 110] 
#[1 7 249 0 112 12 253 1 43 12 253 1 44 12 253 1 45 8 9 1 46 8 13 1 47] 
#[0 6 82 0 4] 
#[0 6 86 0 4] 
#[1 0 94 0 4 13 1 1 61] 
#[0 13 5 0 4] 
#[0 6 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 111 0 112 0 113 1 66 1 67 1 68] 
#[0 13 9 0 13] 
#[0 6 94 0 3 0 111 0 113] 
#[0 6 98 0 3 0 8 0 13 0 112] 
#[0 6 102 0 3 0 8 0 13 0 112] 
#[0 6 106 0 3 0 8 0 13 0 112] 
#[0 6 110 0 3 0 8 0 13 0 112] 
#[0 13 13 0 3] 
#[1 0 10 0 4 13 17 1 60] 
#[0 6 114 0 2 0 4 0 6 0 22 0 74 0 79 0 97] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 13 21 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 13 25 0 250 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 13 29 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 10 133 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 13 33 1 3 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 13 37 0 4] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 13 41 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 13 45 0 4] 
#[0 13 49 0 4] 
#[0 13 53 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 10 133 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 13 57 1 3 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 6 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 10 133 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 13 61 1 3 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 13 65 0 2] 
#[0 13 69 0 3] 
#[0 13 73 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 13 77 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 2 118 0 2 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 6 125 0 171 6 125 0 172 13 81 0 174 6 125 0 175 0 249 0 230 6 125 0 238 1 201 0 239 1 205 0 242 6 125 0 243 0 249 0 249 6 125 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 13 85 0 176 13 85 0 179 13 85 0 180 13 85 0 181 13 85 0 189 13 85 0 204 13 85 0 205 13 85 0 206 13 85 0 207 13 85 0 210 13 85 0 211 13 85 0 213 13 85 0 214 13 85 0 215 13 85 0 221 13 85 0 223 13 85 0 224 13 85 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 13 89 0 176 13 89 0 179 13 89 0 180 13 89 0 181 13 89 0 189 13 89 0 204 13 89 0 205 13 89 0 206 13 89 0 207 13 89 0 210 13 89 0 211 13 89 0 213 13 89 0 214 13 89 0 215 13 89 0 221 13 89 0 223 13 89 0 224 13 89 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 6 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 6 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 13 93 0 2] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 13 97 0 176 13 97 0 179 13 97 0 180 13 97 0 181 13 97 0 189 13 97 0 204 13 97 0 205 13 97 0 206 13 97 0 207 13 97 0 210 13 97 0 211 13 97 0 213 13 97 0 214 13 97 0 215 13 97 0 221 13 97 0 223 13 97 0 224 13 97 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 6 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 6 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 13 101 0 2] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 13 105 0 176 13 105 0 179 13 105 0 180 13 105 0 181 13 105 0 189 13 105 0 204 13 105 0 205 13 105 0 206 13 105 0 207 13 105 0 210 13 105 0 211 13 105 0 213 13 105 0 214 13 105 0 215 13 105 0 221 13 105 0 223 13 105 0 224 13 105 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 13 109 0 176 13 109 0 179 13 109 0 180 13 109 0 181 13 109 0 189 13 109 0 204 13 109 0 205 13 109 0 206 13 109 0 207 13 109 0 210 13 109 0 211 13 109 0 213 13 109 0 214 13 109 0 215 13 109 0 221 13 109 0 223 13 109 0 224 13 109 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 13 21 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 13 113 0 250 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 13 117 0 4] 
#[0 6 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 5 49 0 97 13 121 0 98] 
#[0 6 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 13 125 0 98] 
#[1 5 250 0 4 12 17 0 54 13 129 0 217 12 25 0 218 12 29 0 219] 
#[0 6 146 0 4 0 54 0 60] 
#[0 6 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 6 154 0 13 13 133 1 64] 
#[1 6 154 0 13 13 137 1 64] 
#[0 13 141 0 4] 
#[0 6 158 0 3 0 111 0 113] 
#[0 6 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 111 0 112 0 113 1 66 1 67 1 68] 
#[1 0 25 0 1 2 45 0 3 0 33 0 5 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 77 0 56 0 93 0 61 2 9 0 66 0 113 0 70 2 49 0 73 0 129 0 77 2 5 0 78 0 141 0 83 0 149 0 86 2 9 0 88 0 165 0 90 0 173 0 92 0 185 0 95 2 53 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 13 145 0 171 13 145 0 172 0 249 0 230 13 145 0 238 1 201 0 239 1 205 0 242 13 145 0 243 0 249 0 249 13 145 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 13 149 0 4] 
#[0 6 166 0 4] 
#[0 13 153 0 4] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 13 157 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 13 161 0 255 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 13 165 0 4] 
#[0 6 170 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 13 169 0 4] 
#[0 6 174 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 6 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 13 157 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 13 173 0 255 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 13 177 0 4] 
#[0 13 181 0 4] 
#[0 13 185 0 3] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 10 133 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 13 189 1 3 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 13 21 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 13 193 0 250 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 13 197 0 4] 
#[0 13 201 0 2] 
#[0 6 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 6 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 13 205 0 176 13 205 0 179 13 205 0 180 13 205 0 181 13 205 0 189 13 205 0 204 13 205 0 205 13 205 0 206 13 205 0 207 13 205 0 210 13 205 0 211 13 205 0 213 13 205 0 214 13 205 0 215 13 205 0 221 13 205 0 223 13 205 0 224 13 205 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 6 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 13 209 0 176 13 209 0 179 13 209 0 180 13 209 0 181 13 209 0 189 13 209 0 204 13 209 0 205 13 209 0 206 13 209 0 207 13 209 0 210 13 209 0 211 13 209 0 213 13 209 0 214 13 209 0 215 13 209 0 221 13 209 0 223 13 209 0 224 13 209 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 6 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 6 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 13 213 0 4] 
#[0 6 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 26 0 54 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 26 0 60 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 13 217 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 26 0 54 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 13 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 13 225 0 4] 
#[0 13 229 0 13] 
#[0 13 233 0 13] 
#[0 6 206 0 3 0 111 0 113] 
#[1 0 10 0 4 13 237 1 60] 
#[0 6 210 0 3 0 8 0 13 0 112] 
#[0 6 214 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 6 218 0 4] 
#[0 13 241 0 4] 
#[0 6 222 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 6 226 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 13 245 0 4] 
#[0 6 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 6 234 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 0 25 0 1 0 29 0 3 0 26 0 4 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 1 133 0 57 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 1 133 0 76 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 2 69 0 176 2 69 0 179 2 69 0 180 2 69 0 181 9 221 0 182 2 217 0 183 2 69 0 184 2 69 0 185 1 133 0 186 2 69 0 189 2 69 0 204 2 69 0 205 2 69 0 206 2 69 0 207 2 69 0 210 2 69 0 211 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 221 2 69 0 223 2 69 0 224 2 69 0 228 0 249 0 230 13 157 0 236 9 229 0 237 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 13 249 0 255 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 13 253 0 4] 
#[0 14 1 0 4] 
#[0 6 238 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[1 0 25 0 1 0 29 0 3 0 33 0 5 0 37 0 7 0 41 0 34 0 45 0 35 0 49 0 36 0 53 0 37 0 57 0 38 0 61 0 47 0 65 0 51 0 69 0 52 0 73 0 53 0 77 0 56 0 85 0 58 0 89 0 59 0 93 0 61 0 97 0 62 2 9 0 66 0 109 0 68 0 113 0 70 0 117 0 72 2 49 0 73 0 129 0 77 2 5 0 78 0 137 0 80 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 2 9 0 88 0 161 0 89 0 165 0 90 0 169 0 91 0 173 0 92 0 177 0 93 0 181 0 94 0 185 0 95 0 189 0 100 2 13 0 103 2 17 0 104 0 201 0 105 0 205 0 107 0 6 0 108 0 7 0 111 0 217 0 117 0 249 0 119 0 249 0 120 0 249 0 121 0 249 0 122 0 249 0 127 0 249 0 136 0 245 0 137 0 249 0 140 0 249 0 141 0 249 0 142 0 249 0 143 1 29 0 144 1 13 0 145 1 13 0 146 1 13 0 147 1 25 0 150 1 29 0 153 1 37 0 154 1 37 0 155 1 45 0 156 1 45 0 157 1 49 0 159 1 53 0 160 1 57 0 161 1 61 0 162 1 65 0 163 1 69 0 164 1 73 0 165 1 77 0 166 1 81 0 167 1 85 0 168 1 89 0 169 1 93 0 170 1 105 0 171 1 105 0 172 1 105 0 175 14 5 0 176 14 5 0 179 14 5 0 180 14 5 0 181 14 5 0 189 14 5 0 204 14 5 0 205 14 5 0 206 14 5 0 207 14 5 0 210 14 5 0 211 14 5 0 213 14 5 0 214 14 5 0 215 14 5 0 221 14 5 0 223 14 5 0 224 14 5 0 228 0 249 0 230 1 105 0 238 1 201 0 239 1 205 0 242 1 105 0 243 0 249 0 249 1 105 0 251 0 249 0 254 0 249 1 2 1 37 1 4 0 249 1 6 2 5 1 33 2 9 1 34 2 13 1 35 2 17 1 36 0 249 1 37 0 249 1 38 0 249 1 39 2 33 1 40 0 249 1 42 2 41 1 60] 
#[0 6 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 6 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 6 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 6 254 0 4 0 54 0 60] 
#[0 7 2 0 4 0 54] 
#[0 7 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 7 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 112 1 66 1 67 1 68] 
#[0 7 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 0 111 0 112 0 113 1 66 1 67 1 68] 
#[0 14 9 0 4] 
#[0 7 18 0 4 0 5 0 7 0 25 0 51 0 71 0 81 0 82 0 97 0 101 0 103 0 104] 
#[0 7 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 74 0 75 0 79 0 97 0 98 0 107 0 108 0 109 0 110 1 66 1 67 1 68] 
#[0 14 13 0 4] 
#[0 7 26 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 7 30 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 7 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68] 
#[0 7 38 0 3 0 8 0 13 0 112] 
#[0 7 42 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 61 0 62 0 64 0 66 0 68 0 70 0 72 0 73 0 76 0 77 0 78 0 80 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 100 0 103 0 104 0 105 0 107 0 108 0 111 1 68]
	).
]

{ #category : #private }
JSParser >> actionsForCurrentToken [
	| actions |
	actions := super actionsForCurrentToken.
	(currentToken ids first ~= scanner identifierId and: [ (currentToken ids includes: scanner identifierId) and: [ (self keywords includes: currentToken value) not ] ])
		ifTrue: [ self addActionsFor: scanner identifierId to: actions ].
	(currentToken ids first ~= scanner identifierNameId and: [ currentToken ids includes: scanner identifierNameId ])
		ifTrue: [ self addActionsFor: scanner identifierNameId to: actions ].
	(currentToken ids first == scanner regular_expressionId and: [ actions isEmpty ])
		ifTrue: [ (currentToken value at: 2) == $=
				ifTrue: [ currentToken := scanner tokenClass value: '/=' start: currentToken startPosition ids: (Array with: scanner slashEqualId).
					self position: currentToken startPosition + 1 ]
				ifFalse: [ currentToken := scanner tokenClass value: '/' start: currentToken startPosition ids: (Array with: scanner slashId).
					self position: currentToken startPosition ].
			^ self actionsForCurrentToken ].
	(actions isEmpty and: [ ((currentState attributeNamed: #lastInsertedSemicolonPosition) ifNil: [ -1 ]) < scanner position ])
		ifTrue: [ self addActionsFor: self scanner semicolonId to: actions.
			actions notEmpty
				ifTrue: [ currentState attributeNamed: #lastInsertedSemicolonPosition put: scanner position.
					self position: currentToken startPosition - 1.
					currentToken := currentToken class value: ';' start: nil ids: (Array with: self scanner semicolonId) ] ].
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
JSParser >> reduceActionForOptional1: nodes [
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
JSParser >> reduceActionForOptional2: nodes [
	| result |
	result := JSOptionalIndexedNode new.
	result leftBracket: (nodes at: 1).
	result value: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForOptional3: nodes [
	| result |
	result := JSOptionalNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForOptional4: nodes [
	| result |
	result := JSOptionalTemplateNode new.
	result template: (nodes at: 1).
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
