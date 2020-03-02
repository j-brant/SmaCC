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
#[ 0 10 0 213] 
#[ 0 22 0 26 0 30 0 34] 
#[ 1 206 1 210] 
#[ 1 214 1 218] 
#[ 1 222 1 226] 
#[ 1 234 1 238] 
#[ 1 242 1 246] 
#[ 1 242 1 246 1 250 1 254] 
#[ 2 22 2 26] 
#[ 2 42 2 46] 
#[ 2 94 2 98] 
#[ 2 102 2 106] 
#[ 2 110 2 114] 
#[ 2 118 2 122] 
#[ 0 102 2 126] 
#[ 0 102 8 37] 
#[ 2 170 2 174] 
#[ 0 102 2 182] 
#[ 1 146 2 222] 
#[ 1 150 2 226] 
#[ 3 26 4 14] 
#[ 4 66 4 70] 
#[ 4 74 4 78] 
#[ 4 94 4 98] 
#[ 1 250 1 254] 
#[ 2 170 4 122] 
#[ 2 126 2 182] 
#[ 2 238 4 134] 
#[ 2 250 13 45] 
#[ 0 170 14 101] 
#[ 6 14 6 129] 
#[ 0 10 6 34] 
#[ 6 62 6 66] 
#[ 0 46 6 86] 
#[ 4 254 6 138] 
#[ 0 102 16 177] 
#[ 0 102 6 186] 
#[ 4 154 4 190] 
#[ 0 102 4 146] 
#[ 4 210 6 198] 
#[ 2 126 6 62] 
#[ 4 122 8 58] 
#[ 0 46 10 18] 
#[ 0 50 2 61] 
#[ 0 58 2 61] 
#[ 10 42 13 221] 
#[ 9 222 11 166] 
#[ 10 34 11 170] 
#[ 11 74 11 174] 
#[ 12 6 12 74] 
#[ 12 58 12 78] 
#[ 11 78 12 82] 
#[ 12 166 12 234] 
#[ 12 170 12 238] 
#[ 2 154 22 125] 
#[ 13 54 13 102]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2020-03-02T14:54:34.010467-06:00'
]

{ #category : #generated }
JSParser class >> definitionComment [
"%root Program;
%prefix JS;
%suffix Node;

%scopes default template;
%excludes jsx jsxText;

%start Expression Statement Script Module SourceFile;

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
    ObjectType
    ThisType
    TupleType
    TypeReference
    TypeQuery
    UnionType
    VoidType
);
###########

%glr;

%id <semicolon> <identifier> <slash> <slashEqual> <regular_expression> <identifierName> <rightBrace> <jsxLT> <lt>
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
default <instanceof>
:   instanceof
;
default <interface>
:   interface
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
|	PrimaryType
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
|	TypeMemberList <comma> 'separator'	##
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
:	<leftBracket> 'leftBracket' TupleElementTypes <rightBracket> 'rightBracket' {{}}
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
:	<ts> AccessibilityModifier 'modifier'? BindingPattern 'variable' TypeAnnotation Initializer? {{VariableDeclaration}}
|	<ts> AccessibilityModifier 'modifier' BindingPattern 'variable' Initializer? {{VariableDeclaration}}
|	<ts> AccessibilityModifier 'modifier'? BindingPattern 'variable' <question> 'questionMarkToken' {{VariableDeclaration}}	##
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
:	<leftBrace> 'leftBrace' Identifier 'name' <colon> 'colonToken' <string> 'value' <rightParen> 'rightParen' TypeAnnotation {{}}
|	<leftBrace> 'leftBrace' Identifier 'name' <colon> 'colonToken' <numeric> 'value' <rightParen> 'rightParen' TypeAnnotation {{}}  ##
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
|	ImportAliasDeclaration
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
:	<var> 'typeToken' AmbientBindingList <semicolon> 'semicolon' {{}}
|	<let> 'typeToken' AmbientBindingList <semicolon> 'semicolon' {{}}
|	<const> 'typeToken' AmbientBindingList <semicolon> 'semicolon' {{}}
;
AmbientBindingList
:	AmbientBinding 'binding'
|	AmbientBindingList <comma> 'comma' AmbientBinding 'binding'
;
AmbientBinding
:	Identifier 'name' TypeAnnotation? {{}}
;
AmbientFunctionDeclaration
:	<function> 'functionToken' Identifier 'name' CallSignature 'signature' <semicolon> 'semicolon' {{}}
;
AmbientClassDeclaration
:	<class> 'classToken' Identifier 'name' TypeParameters 'typeParameters'? ClassHeritage <leftBrace> 'leftBrace' AmbientClassBody <rightBrace> 'rightBrace' {{}}
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
:	<constructor> 'constructorToken' <leftParen> 'left' FormalParameters <rightParen> 'right' <semicolon> 'semicolon' {{}}   ## changed ParameterList
;
AmbientPropertyMemberDeclaration
:	AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' TypeAnnotation? <semicolon> 'semicolon' {{}}
|	AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' CallSignature 'signature' <semicolon> 'semicolon' {{}}
;
AmbientEnumDeclaration
:	EnumDeclaration
;
AmbientNamespaceDeclaration
:	<namespace> 'namespaceToken' IdentifierPath <leftBrace> 'leftBrace' AmbientNamespaceBody <rightBrace> 'rightBrace' {{}}
;
AmbientNamespaceBody
:	AmbientNamespaceElements?
;
AmbientNamespaceElements
:	AmbientNamespaceElement 'element'
|	AmbientNamespaceElements AmbientNamespaceElement 'element'
;
AmbientNamespaceElement
:	<export> 'exportToken'? AmbientVariableDeclaration 'declaration' {{}}
|	<export> 'exportToken'? LexicalDeclaration 'declaration' {{}}
|	<export> 'exportToken'? AmbientFunctionDeclaration 'declaration' {{}}
|	<export> 'exportToken'? AmbientClassDeclaration 'declaration' {{}}
|	<export> 'exportToken'? InterfaceDeclaration 'declaration' {{}}
|	<export> 'exportToken'? AmbientEnumDeclaration 'declaration' {{}}
|	<export> 'exportToken'? AmbientNamespaceDeclaration 'declaration' {{}}
|	<export> 'exportToken'? ImportAliasDeclaration 'declaration' {{}}
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
	#(144 0 #reduceActionForStartTemplateLiteral1: 11672577 true ) 
	#(320 0 #reduceActionForSwitchToJSX1: 40602625 true ) 
	#(274 0 #reduceActionForModule1: 35352577 false ) 
	#(272 0 #reduceActionForScript1: 35294209 false ) 
	#(411 0 #reduceActionForImplementationModule1: 55870465 false ) 
	#(414 0 #reduceActionForImplementationModule1: 56311809 false ) 
	#(407 0 #reduceActionForImplementationModule1: 55473153 false ) 
	#(403 0 #reduceActionForImplementationModule1: 54930433 false ) 
	#(236 0 #reduceActionForFormalParameters1: 30377985 false ) 
	#(209 1 #reduceActionForEmptyStatement1: 24736769 false ) 
	#(217 0 #reduceActionForCheckEOL1: 28225537 true ) 
	#(192 1 #liftFirstValue: 22395906 false ) 
	#(294 1 #liftFirstValue: 37957634 false ) 
	#(192 1 #liftFirstValue: 22395905 false ) 
	#(293 1 #liftFirstValue: 37934081 false ) 
	#(128 1 #reduceActionForPrimaryExpression1: 8502273 false ) 
	#(294 1 #liftFirstValue: 37957633 false ) 
	#(255 1 #reduceActionForYieldExpression1: 32856065 false ) 
	#(126 1 #reduceActionForIdentifier1: 8207361 false ) 
	#(295 1 #liftFirstValue: 37994497 false ) 
	#(296 1 #liftFirstValue: 38022145 false ) 
	#(297 1 #reduceActionForRegularExpressionLiteral1: 38051841 false ) 
	#(143 1 #reduceActionForTemplateLiteral1: 11516929 false ) 
	#(321 0 #reduceActionForSwitchToJSXText1: 40643585 true ) 
	#(128 1 #liftFirstValue: 8502274 false ) 
	#(243 1 #reduceActionForArrowParameters1: 30934017 false ) 
	#(147 1 #liftFirstValue: 11942913 false ) 
	#(128 1 #liftFirstValue: 8502285 false ) 
	#(128 1 #liftFirstValue: 8502275 false ) 
	#(128 1 #liftFirstValue: 8502276 false ) 
	#(128 1 #liftFirstValue: 8502277 false ) 
	#(128 1 #liftFirstValue: 8502284 false ) 
	#(151 1 #liftFirstValue: 12840961 false ) 
	#(147 1 #liftFirstValue: 11942917 false ) 
	#(147 1 #liftFirstValue: 11942918 false ) 
	#(149 1 #liftFirstValue: 12709889 false ) 
	#(161 1 #liftFirstValue: 14932993 false ) 
	#(161 1 #liftFirstValue: 14932994 false ) 
	#(152 1 #liftFirstValue: 12931074 false ) 
	#(152 1 #liftFirstValue: 12931075 false ) 
	#(161 1 #liftFirstValue: 14932995 false ) 
	#(162 1 #liftFirstValue: 15014913 false ) 
	#(163 1 #liftFirstValue: 15383553 false ) 
	#(164 1 #liftFirstValue: 15836161 false ) 
	#(165 1 #liftFirstValue: 16006145 false ) 
	#(167 1 #liftFirstValue: 16266241 false ) 
	#(168 1 #liftFirstValue: 16564225 false ) 
	#(169 1 #liftFirstValue: 16949249 false ) 
	#(170 1 #liftFirstValue: 17687553 false ) 
	#(171 1 #liftFirstValue: 18217985 false ) 
	#(172 1 #liftFirstValue: 18381825 false ) 
	#(173 1 #liftFirstValue: 18549761 false ) 
	#(174 1 #liftFirstValue: 18716673 false ) 
	#(177 1 #liftFirstValue: 19214338 false ) 
	#(175 1 #liftFirstValue: 18886657 false ) 
	#(178 1 #liftFirstValue: 19288065 false ) 
	#(178 1 #liftFirstValue: 19288066 false ) 
	#(177 1 #liftFirstValue: 19214337 false ) 
	#(179 1 #liftFirstValue: 19361793 false ) 
	#(180 1 #liftFirstValue: 19589121 false ) 
	#(182 1 #liftFirstValue: 21316609 false ) 
	#(190 1 #liftFirstValue: 22239233 false ) 
	#(183 1 #liftFirstValue: 21468166 false ) 
	#(183 1 #liftFirstValue: 21468161 false ) 
	#(187 1 #liftFirstValue: 22019073 false ) 
	#(277 1 #liftFirstValue: 35485699 false ) 
	#(190 1 #liftFirstValue: 22239234 false ) 
	#(183 1 #liftFirstValue: 21468162 false ) 
	#(183 1 #liftFirstValue: 21468163 false ) 
	#(183 1 #liftFirstValue: 21468164 false ) 
	#(183 1 #liftFirstValue: 21468165 false ) 
	#(186 1 #liftFirstValue: 21956609 false ) 
	#(183 1 #liftFirstValue: 21468167 false ) 
	#(183 1 #liftFirstValue: 21468168 false ) 
	#(183 1 #liftFirstValue: 21468169 false ) 
	#(183 1 #liftFirstValue: 21468170 false ) 
	#(186 1 #liftFirstValue: 21956610 false ) 
	#(183 1 #liftFirstValue: 21468171 false ) 
	#(183 1 #liftFirstValue: 21468172 false ) 
	#(183 1 #liftFirstValue: 21468173 false ) 
	#(183 1 #liftFirstValue: 21468174 false ) 
	#(128 1 #liftFirstValue: 8502278 false ) 
	#(180 1 #liftFirstValue: 19589123 false ) 
	#(243 1 #reduceActionForArrowParameters2: 30934018 false ) 
	#(180 1 #liftFirstValue: 19589124 false ) 
	#(128 1 #liftFirstValue: 8502280 false ) 
	#(180 1 #liftFirstValue: 19589122 false ) 
	#(128 1 #liftFirstValue: 8502282 false ) 
	#(128 1 #liftFirstValue: 8502281 false ) 
	#(163 1 #liftFirstValue: 15383561 false ) 
	#(128 1 #liftFirstValue: 8502279 false ) 
	#(125 1 #liftFirstValue: 8094721 false ) 
	#(274 1 #reduceActionForModule2: 35352578 false ) 
	#(275 1 #reduceActionForModuleBody1: 35381249 false ) 
	#(276 1 #reduceActionForModuleItemList1: 35411969 false ) 
	#(277 1 #liftFirstValue: 35485697 false ) 
	#(277 1 #liftFirstValue: 35485698 false ) 
	#(130 1 #reduceActionForLiteral1: 9603073 false ) 
	#(130 1 #reduceActionForLiteral2: 9603074 false ) 
	#(130 1 #reduceActionForLiteral4: 9603076 false ) 
	#(130 1 #reduceActionForLiteral3: 9603075 false ) 
	#(128 1 #liftFirstValue: 8502283 false ) 
	#(128 1 #liftFirstValue: 8502286 false ) 
	#(298 1 #liftFirstValue: 38303745 false ) 
	#(322 0 #reduceActionForStartJSXText1: 40692737 true ) 
	#(128 1 #liftFirstValue: 8502287 false ) 
	#(273 1 #reduceActionForModuleBody1: 35322881 false ) 
	#(189 1 #reduceActionForModuleItemList1: 22141953 false ) 
	#(272 1 #reduceActionForScript2: 35294210 false ) 
	#(406 1 #liftFirstValue: 55213057 false ) 
	#(406 1 #liftFirstValue: 55213058 false ) 
	#(406 1 #liftFirstValue: 55213059 false ) 
	#(406 1 #liftFirstValue: 55213060 false ) 
	#(406 1 #liftFirstValue: 55213061 false ) 
	#(413 1 #liftFirstValue: 56070146 false ) 
	#(416 1 #liftFirstValue: 56493058 false ) 
	#(406 1 #liftFirstValue: 55213063 false ) 
	#(410 1 #liftFirstValue: 55731202 false ) 
	#(406 1 #liftFirstValue: 55213062 false ) 
	#(410 1 #liftFirstValue: 55731201 false ) 
	#(406 1 #liftFirstValue: 55213064 false ) 
	#(406 1 #liftFirstValue: 55213065 false ) 
	#(410 1 #liftFirstValue: 55731203 false ) 
	#(413 1 #liftFirstValue: 56070147 false ) 
	#(406 1 #liftFirstValue: 55213067 false ) 
	#(416 1 #liftFirstValue: 56493059 false ) 
	#(410 1 #liftFirstValue: 55731205 false ) 
	#(400 1 #reduceActionForSourceFile1: 54689793 false ) 
	#(400 1 #reduceActionForSourceFile1: 54689794 false ) 
	#(401 1 #reduceActionForModuleBody1: 54790145 false ) 
	#(403 1 #reduceActionForModuleBody1: 54930434 false ) 
	#(404 1 #reduceActionForModuleItemList1: 54986753 false ) 
	#(413 1 #liftFirstValue: 56070145 false ) 
	#(405 1 #liftFirstValue: 55130113 false ) 
	#(402 1 #reduceActionForModuleBody1: 54864897 false ) 
	#(407 1 #reduceActionForModuleBody1: 55473154 false ) 
	#(408 1 #reduceActionForModuleItemList1: 55523329 false ) 
	#(416 1 #liftFirstValue: 56493057 false ) 
	#(409 1 #liftFirstValue: 55654401 false ) 
	#(401 1 #reduceActionForModuleBody1: 54790146 false ) 
	#(411 1 #reduceActionForModuleBody1: 55870466 false ) 
	#(412 1 #reduceActionForModuleItemList1: 55926785 false ) 
	#(402 1 #reduceActionForModuleBody1: 54864898 false ) 
	#(414 1 #reduceActionForModuleBody1: 56311810 false ) 
	#(415 1 #reduceActionForModuleItemList1: 56361985 false ) 
	#(413 1 #liftFirstValue: 56070148 false ) 
	#(413 1 #liftFirstValue: 56070149 false ) 
	#(416 1 #liftFirstValue: 56493060 false ) 
	#(413 1 #liftFirstValue: 56070150 false ) 
	#(416 1 #liftFirstValue: 56493061 false ) 
	#(413 1 #liftFirstValue: 56070151 false ) 
	#(416 1 #liftFirstValue: 56493062 false ) 
	#(413 1 #liftFirstValue: 56070152 false ) 
	#(416 1 #liftFirstValue: 56493063 false ) 
	#(406 1 #liftFirstValue: 55213066 false ) 
	#(410 1 #liftFirstValue: 55731204 false ) 
	#(405 1 #liftFirstValue: 55130114 false ) 
	#(409 1 #liftFirstValue: 55654402 false ) 
	#(207 1 #reduceActionForSingleNameBinding1: 24468481 false ) 
	#(206 1 #reduceActionForSingleNameBinding1: 24364034 false ) 
	#(198 1 #liftFirstValue: 23072769 false ) 
	#(198 1 #liftFirstValue: 23072770 false ) 
	#(239 1 #liftFirstValue: 30747649 false ) 
	#(206 1 #liftFirstValue: 24364033 false ) 
	#(238 1 #liftFirstValue: 30701569 false ) 
	#(235 1 #reduceActionForModuleBody1: 30332929 false ) 
	#(236 1 #reduceActionForFormalParameters3: 30377987 false ) 
	#(236 1 #reduceActionForFormalParameters2: 30377986 false ) 
	#(237 1 #reduceActionForFormalParameterList1: 30579713 false ) 
	#(135 2 #reduceActionForObjectLiteral1: 10418177 false ) 
	#(188 2 #reduceActionForBlock1: 22044673 false ) 
	#(127 1 #reduceActionForIdentifier1: 8400897 false ) 
	#(137 1 #liftFirstValue: 10810369 false ) 
	#(139 1 #liftFirstValue: 11121665 false ) 
	#(136 1 #reduceActionForFormalParameterList1: 10675201 false ) 
	#(138 1 #liftFirstValue: 11059201 false ) 
	#(138 1 #liftFirstValue: 11059202 false ) 
	#(137 1 #liftFirstValue: 10810370 false ) 
	#(137 1 #liftFirstValue: 10810372 false ) 
	#(249 1 #liftFirstValue: 31479810 false ) 
	#(249 1 #liftFirstValue: 31479812 false ) 
	#(249 1 #liftFirstValue: 31479811 false ) 
	#(139 1 #reduceActionForIdentifier1: 11121666 false ) 
	#(139 1 #reduceActionForIdentifier1: 11121667 false ) 
	#(249 1 #liftFirstValue: 31479816 false ) 
	#(249 1 #liftFirstValue: 31479817 false ) 
	#(131 2 #reduceActionForArrayLiteral1: 9785345 false ) 
	#(133 1 #reduceActionForModuleItemList1: 10264577 false ) 
	#(132 1 #reduceActionForFormalParameterList1: 10046467 false ) 
	#(132 1 #reduceActionForFormalParameterList1: 10046465 false ) 
	#(163 2 #reduceActionForUnaryExpression5: 15383557 false ) 
	#(162 2 #reduceActionForUpdateExpression4: 15014916 false ) 
	#(163 2 #reduceActionForUnaryExpression5: 15383558 false ) 
	#(162 2 #reduceActionForUpdateExpression4: 15014917 false ) 
	#(163 2 #reduceActionForUnaryExpression5: 15383559 false ) 
	#(163 2 #reduceActionForUnaryExpression5: 15383560 false ) 
	#(264 2 #reduceActionForAwaitExpression1: 34582529 false ) 
	#(266 2 #reduceActionForClassExpression1: 34755585 false ) 
	#(232 2 #reduceActionForDebuggerStatement1: 29824001 false ) 
	#(163 2 #reduceActionForUnaryExpression5: 15383554 false ) 
	#(289 1 #reduceActionForExportFromClause1: 37384193 false ) 
	#(288 2 #reduceActionForExportDeclaration4: 36700164 false ) 
	#(184 1 #liftFirstValue: 21751809 false ) 
	#(184 1 #liftFirstValue: 21751811 false ) 
	#(288 2 #reduceActionForExportDeclaration3: 36700163 false ) 
	#(185 1 #liftFirstValue: 21830657 false ) 
	#(185 1 #liftFirstValue: 21830658 false ) 
	#(185 1 #liftFirstValue: 21830660 false ) 
	#(185 1 #liftFirstValue: 21830659 false ) 
	#(184 1 #liftFirstValue: 21751810 false ) 
	#(289 1 #reduceActionForExportFromClause3: 37384195 false ) 
	#(287 1 #liftFirstValue: 36665345 false ) 
	#(279 1 #reduceActionForImportClause1: 35732481 false ) 
	#(279 1 #reduceActionForImportClause1: 35732482 false ) 
	#(279 1 #reduceActionForImportClause1: 35732483 false ) 
	#(280 1 #liftFirstValue: 35985409 false ) 
	#(286 1 #liftFirstValue: 36623361 false ) 
	#(151 2 #reduceActionForNewExpression2: 12840962 false ) 
	#(153 2 #reduceActionForSuperCall1: 13414401 false ) 
	#(163 2 #reduceActionForUnaryExpression5: 15383556 false ) 
	#(197 1 #reduceActionForSingleNameBinding1: 22912001 false ) 
	#(196 1 #reduceActionForFormalParameterList1: 22775809 false ) 
	#(163 2 #reduceActionForUnaryExpression5: 15383555 false ) 
	#(255 2 #reduceActionForYieldExpression2: 32856066 false ) 
	#(147 2 #reduceActionForMemberExpression4: 11942916 false ) 
	#(152 2 #reduceActionForCallExpression1: 12931073 false ) 
	#(157 2 #reduceActionForOptionalExpression1: 14078977 false ) 
	#(152 2 #reduceActionForMemberExpression4: 12931079 false ) 
	#(152 2 #reduceActionForCallExpression1: 12931076 false ) 
	#(157 2 #reduceActionForOptionalExpression1: 14078978 false ) 
	#(157 2 #reduceActionForOptionalExpression1: 14078979 false ) 
	#(181 1 #liftFirstValue: 19793923 false ) 
	#(181 1 #liftFirstValue: 19793927 false ) 
	#(181 1 #liftFirstValue: 19793928 false ) 
	#(181 1 #liftFirstValue: 19793929 false ) 
	#(181 1 #liftFirstValue: 19793921 false ) 
	#(181 1 #liftFirstValue: 19793922 false ) 
	#(181 1 #liftFirstValue: 19793924 false ) 
	#(181 1 #liftFirstValue: 19793930 false ) 
	#(181 1 #liftFirstValue: 19793931 false ) 
	#(181 1 #liftFirstValue: 19793932 false ) 
	#(181 1 #liftFirstValue: 19793926 false ) 
	#(181 1 #liftFirstValue: 19793925 false ) 
	#(162 2 #reduceActionForUpdateExpression2: 15014914 false ) 
	#(162 2 #reduceActionForUpdateExpression2: 15014915 false ) 
	#(181 1 #liftFirstValue: 19793933 false ) 
	#(166 1 #liftFirstValue: 16208898 false ) 
	#(166 1 #liftFirstValue: 16208897 false ) 
	#(166 1 #liftFirstValue: 16208899 false ) 
	#(210 2 #reduceActionForExpressionStatement1: 24786945 false ) 
	#(194 1 #reduceActionForSingleNameBinding1: 22525953 false ) 
	#(193 1 #reduceActionForFormalParameterList1: 22427649 false ) 
	#(194 1 #liftFirstValue: 22525956 false ) 
	#(194 1 #liftFirstValue: 22525957 false ) 
	#(276 2 #reduceActionForModuleItemList2: 35411970 false ) 
	#(317 0 #reduceActionForImplementationModule1: 40288257 false ) 
	#(246 2 #reduceActionForArrowFormalParameters2: 31164418 false ) 
	#(189 2 #reduceActionForModuleItemList2: 22141954 false ) 
	#(265 2 #reduceActionForClassExpression1: 34659329 false ) 
	#(435 1 #liftFirstValue: 60997633 false ) 
	#(424 2 #reduceActionForAmbientDeclaration1: 59097089 false ) 
	#(424 2 #reduceActionForAmbientDeclaration1: 59097090 false ) 
	#(424 2 #reduceActionForAmbientDeclaration1: 59097091 false ) 
	#(424 2 #reduceActionForAmbientDeclaration1: 59097092 false ) 
	#(424 2 #reduceActionForAmbientDeclaration1: 59097093 false ) 
	#(418 2 #reduceActionForExportImplementationElement2: 56913922 false ) 
	#(418 2 #reduceActionForExportImplementationElement2: 56913921 false ) 
	#(418 2 #reduceActionForExportImplementationElement2: 56913923 false ) 
	#(418 2 #reduceActionForExportImplementationElement2: 56913924 false ) 
	#(418 2 #reduceActionForExportImplementationElement2: 56913925 false ) 
	#(418 2 #reduceActionForExportImplementationElement2: 56913931 false ) 
	#(418 2 #reduceActionForExportImplementationElement2: 56913927 false ) 
	#(419 2 #reduceActionForExportDeclarationElement2: 57656322 false ) 
	#(418 2 #reduceActionForExportImplementationElement2: 56913926 false ) 
	#(419 2 #reduceActionForExportDeclarationElement2: 57656321 false ) 
	#(418 2 #reduceActionForExportImplementationElement2: 56913928 false ) 
	#(418 2 #reduceActionForExportImplementationElement2: 56913929 false ) 
	#(419 2 #reduceActionForExportDeclarationElement2: 57656324 false ) 
	#(418 2 #reduceActionForExportImplementationElement2: 56913930 false ) 
	#(419 2 #reduceActionForExportDeclarationElement2: 57656323 false ) 
	#(393 1 #reduceActionForFormalParameterList1: 53176321 false ) 
	#(404 2 #reduceActionForModuleItemList2: 54986754 false ) 
	#(408 2 #reduceActionForModuleItemList2: 55523330 false ) 
	#(412 2 #reduceActionForModuleItemList2: 55926786 false ) 
	#(415 2 #reduceActionForModuleItemList2: 56361986 false ) 
	#(199 2 #reduceActionForObjectBindingPattern1: 23136257 false ) 
	#(202 1 #reduceActionForFormalParameterList1: 23961601 false ) 
	#(205 1 #liftFirstValue: 24250369 false ) 
	#(200 2 #reduceActionForArrayBindingPattern1: 23524353 false ) 
	#(203 1 #reduceActionForBindingElementList1: 24080385 false ) 
	#(204 1 #reduceActionForBindingElisionElement1: 24188929 false ) 
	#(208 2 #reduceActionForBindingRestElement1: 24554497 false ) 
	#(208 2 #reduceActionForBindingRestElement1: 24554498 false ) 
	#(207 2 #reduceActionForSingleNameBinding2: 24468482 false ) 
	#(129 3 #reduceActionForParenthesizedExpression1: 8867841 false ) 
	#(206 2 #reduceActionForSingleNameBinding2: 24364035 false ) 
	#(246 3 #reduceActionForArrowFormalParameters1: 31164417 false ) 
	#(236 2 #reduceActionForFormalParameters4: 30377988 false ) 
	#(360 1 #liftFirstValue: 45986818 false ) 
	#(360 1 #liftFirstValue: 45986819 false ) 
	#(360 1 #liftFirstValue: 45986817 false ) 
	#(137 2 #reduceActionForPropertyDefinition5: 10810373 false ) 
	#(141 2 #reduceActionForCoverInitializedName1: 11369473 false ) 
	#(135 3 #reduceActionForObjectLiteral2: 10418178 false ) 
	#(188 3 #reduceActionForBlock2: 22044674 false ) 
	#(134 2 #reduceActionForSpreadElement1: 10319873 false ) 
	#(131 3 #reduceActionForArrayLiteral3: 9785347 false ) 
	#(131 3 #reduceActionForArrayLiteral2: 9785346 false ) 
	#(133 2 #reduceActionForModuleItemList2: 10264578 false ) 
	#(132 2 #reduceActionForElementList4: 10046468 false ) 
	#(132 2 #reduceActionForElementList4: 10046466 false ) 
	#(216 3 #reduceActionForBreakStatement1: 28118017 false ) 
	#(267 2 #reduceActionForClassTail1: 34835457 false ) 
	#(271 1 #reduceActionForEmptyStatement1: 35128323 false ) 
	#(271 1 #liftFirstValue: 35128321 false ) 
	#(269 1 #reduceActionForModuleBody1: 35008513 false ) 
	#(270 1 #reduceActionForModuleItemList1: 35040257 false ) 
	#(268 2 #reduceActionForClassHeritage1: 34927617 false ) 
	#(266 3 #reduceActionForClassExpression2: 34755586 false ) 
	#(268 2 #reduceActionForClassHeritage2: 34927618 false ) 
	#(215 3 #reduceActionForContinueStatement1: 28003329 false ) 
	#(290 2 #reduceActionForNamedExports1: 37491713 false ) 
	#(292 1 #reduceActionForExportSpecifier1: 37812225 false ) 
	#(291 1 #reduceActionForFormalParameterList1: 37707777 false ) 
	#(288 3 #reduceActionForExportDeclaration2: 36700162 false ) 
	#(184 2 #liftSecondValue: 21751813 false ) 
	#(184 2 #liftSecondValue: 21751812 false ) 
	#(184 2 #liftSecondValue: 21751814 false ) 
	#(282 2 #reduceActionForNamedImports1: 36110337 false ) 
	#(284 1 #reduceActionForFormalParameterList1: 36392961 false ) 
	#(285 1 #reduceActionForImportSpecifier1: 36497409 false ) 
	#(278 3 #reduceActionForImportDeclaration2: 35560450 false ) 
	#(150 3 #reduceActionForNewTarget1: 12737537 false ) 
	#(147 3 #reduceActionForMemberExpression7: 11942919 false ) 
	#(218 3 #reduceActionForReturnStatement1: 28260353 false ) 
	#(155 2 #reduceActionForArguments1: 13625345 false ) 
	#(156 1 #reduceActionForArgumentList1: 13810689 false ) 
	#(148 3 #reduceActionForSuperProperty2: 12444674 false ) 
	#(227 3 #reduceActionForThrowStatement1: 29277185 false ) 
	#(228 3 #reduceActionForTryStatement1: 29373441 false ) 
	#(228 3 #reduceActionForTryStatement2: 29373442 false ) 
	#(197 2 #reduceActionForSingleNameBinding2: 22912002 false ) 
	#(195 3 #reduceActionForVariableStatement1: 22680577 false ) 
	#(197 2 #reduceActionForVariableDeclaration3: 22912003 false ) 
	#(197 2 #liftSecondValue: 22912004 false ) 
	#(197 2 #liftSecondValue: 22912005 false ) 
	#(255 3 #reduceActionForYieldExpression3: 32856067 false ) 
	#(226 1 #liftFirstValue: 29182977 false ) 
	#(225 3 #reduceActionForLabelledStatement1: 29083649 false ) 
	#(147 3 #reduceActionForMemberExpression3: 11942915 false ) 
	#(160 1 #reduceActionForOptionalFirst3: 14667779 false ) 
	#(160 1 #reduceActionForOptionalFirst4: 14667780 false ) 
	#(160 1 #reduceActionForOptionalFirst1: 14667777 false ) 
	#(158 2 #reduceActionForOptionalChain1: 14257153 false ) 
	#(159 1 #reduceActionForOptionalFirst4: 14380036 false ) 
	#(159 1 #reduceActionForOptionalFirst1: 14380033 false ) 
	#(158 2 #reduceActionForOptionalChain2: 14257154 false ) 
	#(152 3 #reduceActionForMemberExpression3: 12931078 false ) 
	#(180 3 #reduceActionForAssignmentExpression5: 19589125 false ) 
	#(164 3 #reduceActionForExponentiationExpression2: 15836162 false ) 
	#(165 3 #reduceActionForExponentiationExpression2: 16006146 false ) 
	#(167 3 #reduceActionForExponentiationExpression2: 16266242 false ) 
	#(167 3 #reduceActionForExponentiationExpression2: 16266243 false ) 
	#(168 3 #reduceActionForExponentiationExpression2: 16564226 false ) 
	#(168 3 #reduceActionForExponentiationExpression2: 16564227 false ) 
	#(168 3 #reduceActionForExponentiationExpression2: 16564228 false ) 
	#(169 3 #reduceActionForExponentiationExpression2: 16949250 false ) 
	#(169 3 #reduceActionForExponentiationExpression2: 16949251 false ) 
	#(169 3 #reduceActionForExponentiationExpression2: 16949252 false ) 
	#(169 3 #reduceActionForExponentiationExpression2: 16949253 false ) 
	#(169 3 #reduceActionForExponentiationExpression2: 16949255 false ) 
	#(169 3 #reduceActionForExponentiationExpression2: 16949254 false ) 
	#(170 3 #reduceActionForExponentiationExpression2: 17687554 false ) 
	#(170 3 #reduceActionForExponentiationExpression2: 17687556 false ) 
	#(170 3 #reduceActionForExponentiationExpression2: 17687555 false ) 
	#(170 3 #reduceActionForExponentiationExpression2: 17687557 false ) 
	#(171 3 #reduceActionForExponentiationExpression2: 18217986 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 18381826 false ) 
	#(173 3 #reduceActionForExponentiationExpression2: 18549762 false ) 
	#(174 3 #reduceActionForExponentiationExpression2: 18716674 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 18886658 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 19056641 false ) 
	#(182 3 #reduceActionForExpression2: 21316610 false ) 
	#(194 2 #reduceActionForSingleNameBinding2: 22525954 false ) 
	#(191 3 #reduceActionForLexicalDeclaration1: 22306817 false ) 
	#(194 2 #reduceActionForVariableDeclaration3: 22525955 false ) 
	#(241 0 #reduceActionForImplementationModule1: 30824449 false ) 
	#(245 1 #liftFirstValue: 31123457 false ) 
	#(242 3 #reduceActionForArrowFunction1: 30866433 false ) 
	#(244 1 #reduceActionForConciseBody1: 31008769 false ) 
	#(325 0 #reduceActionForSwitchToDefault1: 40854529 true ) 
	#(316 1 #reduceActionForModuleBody1: 40273921 false ) 
	#(303 1 #reduceActionForJSXElementName1: 39130113 false ) 
	#(303 1 #liftFirstValue: 39130114 false ) 
	#(303 1 #liftFirstValue: 39130115 false ) 
	#(307 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 39456769 false ) 
	#(356 1 #reduceActionForThisType1: 43924481 false ) 
	#(338 1 #reduceActionForPredefinedType1: 41981953 false ) 
	#(340 1 #reduceActionForTypeName1: 42128385 false ) 
	#(328 1 #reduceActionForTypeParameter1: 41200641 false ) 
	#(341 1 #reduceActionForFormalParameterList1: 42234881 false ) 
	#(327 1 #reduceActionForFormalParameterList1: 41088001 false ) 
	#(333 1 #liftFirstValue: 41515009 false ) 
	#(334 1 #liftFirstValue: 41591810 false ) 
	#(335 1 #liftFirstValue: 41668610 false ) 
	#(336 1 #liftFirstValue: 41731073 false ) 
	#(336 1 #liftFirstValue: 41731074 false ) 
	#(336 1 #liftFirstValue: 41731075 false ) 
	#(336 1 #liftFirstValue: 41731076 false ) 
	#(336 1 #liftFirstValue: 41731077 false ) 
	#(336 1 #liftFirstValue: 41731078 false ) 
	#(334 1 #liftFirstValue: 41591809 false ) 
	#(335 1 #liftFirstValue: 41668609 false ) 
	#(333 1 #liftFirstValue: 41515010 false ) 
	#(333 1 #liftFirstValue: 41515011 false ) 
	#(336 1 #liftFirstValue: 41731079 false ) 
	#(336 1 #liftFirstValue: 41731080 false ) 
	#(265 3 #reduceActionForClassExpression2: 34659330 false ) 
	#(427 1 #reduceActionForAmbientBinding1: 59839489 false ) 
	#(426 1 #reduceActionForFormalParameterList1: 59726849 false ) 
	#(420 3 #reduceActionForExportDefaultImplementationElement1: 57950209 false ) 
	#(420 3 #reduceActionForExportDefaultImplementationElement1: 57950210 false ) 
	#(420 3 #reduceActionForExportDefaultImplementationElement1: 57950211 false ) 
	#(421 3 #reduceActionForExportDefaultDeclarationElement1: 58376193 false ) 
	#(421 3 #reduceActionForExportDefaultDeclarationElement1: 58376194 false ) 
	#(422 3 #reduceActionForExportListDeclaration3: 58711043 false ) 
	#(374 3 #reduceActionForInterfaceDeclaration1: 50307073 false ) 
	#(394 0 #reduceActionForImplementationModule1: 53281793 false ) 
	#(265 3 #reduceActionForClassDeclaration3: 34659331 false ) 
	#(201 2 #reduceActionForBindingRestProperty1: 23889921 false ) 
	#(199 3 #reduceActionForObjectBindingPattern2: 23136258 false ) 
	#(199 3 #reduceActionForObjectBindingPattern3: 23136259 false ) 
	#(200 3 #reduceActionForArrayBindingPattern3: 23524355 false ) 
	#(204 2 #reduceActionForBindingElisionElement2: 24188930 false ) 
	#(200 3 #reduceActionForArrayBindingPattern5: 23524357 false ) 
	#(200 3 #reduceActionForArrayBindingPattern2: 23524354 false ) 
	#(208 3 #reduceActionForBindingRestElement3: 24554499 false ) 
	#(142 2 #reduceActionForInitializer1: 11452417 false ) 
	#(236 3 #reduceActionForFormalParameters5: 30377989 false ) 
	#(237 3 #reduceActionForFormalParameterList2: 30579714 false ) 
	#(207 3 #reduceActionForSingleNameBinding9: 24468489 false ) 
	#(207 3 #reduceActionForSingleNameBinding3: 24468483 false ) 
	#(206 3 #reduceActionForSingleNameBinding9: 24364042 false ) 
	#(206 3 #reduceActionForSingleNameBinding3: 24364036 false ) 
	#(207 3 #reduceActionForSingleNameBinding7: 24468487 false ) 
	#(206 3 #reduceActionForSingleNameBinding7: 24364040 false ) 
	#(140 3 #reduceActionForComputedPropertyName1: 11248641 false ) 
	#(135 4 #reduceActionForObjectLiteral3: 10418179 false ) 
	#(136 3 #reduceActionForFormalParameterList2: 10675202 false ) 
	#(137 3 #reduceActionForPropertyDefinition3: 10810371 false ) 
	#(131 4 #reduceActionForArrayLiteral4: 9785348 false ) 
	#(132 3 #reduceActionForElementList6: 10046470 false ) 
	#(132 3 #reduceActionForElementList6: 10046469 false ) 
	#(248 1 #reduceActionForConciseBody1: 31358977 false ) 
	#(247 4 #reduceActionForAsyncArrowFunction1: 31256577 false ) 
	#(216 4 #reduceActionForBreakStatement2: 28118018 false ) 
	#(271 2 #reduceActionForClassElement2: 35128322 false ) 
	#(267 3 #reduceActionForClassTail2: 34835458 false ) 
	#(270 2 #reduceActionForModuleItemList2: 35040258 false ) 
	#(385 1 #reduceActionForMemberAccessorDeclaration1: 52301825 false ) 
	#(385 1 #reduceActionForMemberAccessorDeclaration1: 52301829 false ) 
	#(271 2 #liftSecondValue: 35128324 false ) 
	#(271 2 #liftSecondValue: 35128325 false ) 
	#(382 1 #liftFirstValue: 51672065 false ) 
	#(382 1 #liftFirstValue: 51672066 false ) 
	#(382 1 #liftFirstValue: 51672067 false ) 
	#(271 2 #liftSecondValue: 35128326 false ) 
	#(267 3 #reduceActionForClassTail3: 34835459 false ) 
	#(379 1 #liftFirstValue: 50963457 false ) 
	#(378 2 #reduceActionForInitializer1: 50904065 false ) 
	#(268 3 #reduceActionForClassHeritage3: 34927619 false ) 
	#(377 1 #liftFirstValue: 50678785 false ) 
	#(380 2 #reduceActionForImplementsClause1: 51005441 false ) 
	#(376 1 #reduceActionForFormalParameterList1: 50547713 false ) 
	#(215 4 #reduceActionForContinueStatement2: 28003330 false ) 
	#(290 3 #reduceActionForNamedExports2: 37491714 false ) 
	#(289 3 #reduceActionForExportFromClause2: 37384194 false ) 
	#(288 4 #reduceActionForExportDeclaration5: 36700165 false ) 
	#(283 2 #reduceActionForInitializer1: 36341761 false ) 
	#(288 4 #reduceActionForExportDeclaration1: 36700161 false ) 
	#(214 1 #liftFirstValue: 27956225 false ) 
	#(214 1 #liftFirstValue: 27956226 false ) 
	#(213 2 #reduceActionForInitializer1: 27891713 false ) 
	#(154 4 #reduceActionForImportCall1: 13485057 false ) 
	#(282 3 #reduceActionForNamedImports2: 36110338 false ) 
	#(281 3 #reduceActionForNameSpaceImport1: 36029441 false ) 
	#(278 4 #reduceActionForImportDeclaration1: 35560449 false ) 
	#(279 3 #reduceActionForImportClause4: 35732484 false ) 
	#(279 3 #reduceActionForImportClause4: 35732485 false ) 
	#(218 4 #reduceActionForReturnStatement2: 28260354 false ) 
	#(156 2 #reduceActionForArgumentList2: 13810690 false ) 
	#(155 3 #reduceActionForArguments2: 13625346 false ) 
	#(148 4 #reduceActionForSuperProperty1: 12444673 false ) 
	#(331 1 #reduceActionForFormalParameterList1: 41385985 false ) 
	#(332 1 #liftFirstValue: 41492481 false ) 
	#(229 2 #reduceActionForCatch2: 29544450 false ) 
	#(230 2 #reduceActionForInitializer1: 29712385 false ) 
	#(228 4 #reduceActionForTryStatement3: 29373443 false ) 
	#(196 3 #reduceActionForFormalParameterList2: 22775810 false ) 
	#(370 2 #reduceActionForSimpleVariableDeclaration1: 49470465 false ) 
	#(145 1 #reduceActionForFormalParameterList1: 11710465 false ) 
	#(143 4 #reduceActionForTemplateLiteral2: 11516930 false ) 
	#(147 4 #reduceActionForMemberExpression2: 11942914 false ) 
	#(159 2 #reduceActionForOptionalRest3: 14380035 false ) 
	#(152 4 #reduceActionForCallExpression5: 12931077 false ) 
	#(193 3 #reduceActionForFormalParameterList2: 22427650 false ) 
	#(372 3 #reduceActionForSingleNameBinding3: 49770497 false ) 
	#(373 3 #reduceActionForSingleNameBinding3: 49880065 false ) 
	#(241 1 #reduceActionForModuleBody1: 30824450 false ) 
	#(240 1 #reduceActionForModuleBody1: 30783489 false ) 
	#(298 4 #reduceActionForJSXElement2: 38303746 false ) 
	#(318 1 #reduceActionForJSXChild1: 40308737 false ) 
	#(318 1 #liftFirstValue: 40308738 false ) 
	#(317 2 #reduceActionForModuleItemList2: 40288258 false ) 
	#(306 2 #reduceActionForInitializer1: 39456769 false ) 
	#(323 0 #reduceActionForSwitchToJSXTextOrDefault11: 40721409 true ) 
	#(313 1 #reduceActionForJSXElementName1: 39880705 false ) 
	#(313 1 #liftFirstValue: 39880706 false ) 
	#(310 1 #reduceActionForModuleItemList1: 39583745 false ) 
	#(308 1 #reduceActionForModuleBody1: 39567361 false ) 
	#(309 1 #liftFirstValue: 39583745 false ) 
	#(309 1 #liftFirstValue: 39583746 false ) 
	#(312 1 #reduceActionForJSXAttribute1: 39797761 false ) 
	#(305 2 #reduceActionForJSXMemberExpression1: 39434241 false ) 
	#(307 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 39456770 false ) 
	#(342 2 #reduceActionForObjectType1: 42339329 false ) 
	#(357 1 #reduceActionForPropertySignature1: 43962369 false ) 
	#(343 1 #reduceActionForModuleBody1: 42421249 false ) 
	#(344 1 #reduceActionForFormalParameterList1: 42516481 false ) 
	#(345 1 #liftFirstValue: 42671105 false ) 
	#(345 1 #liftFirstValue: 42671106 false ) 
	#(345 1 #liftFirstValue: 42671107 false ) 
	#(345 1 #liftFirstValue: 42671108 false ) 
	#(345 1 #liftFirstValue: 42671109 false ) 
	#(349 1 #liftFirstValue: 43091969 false ) 
	#(348 1 #reduceActionForFormalParameterList1: 42983425 false ) 
	#(355 1 #reduceActionForTypeQueryExpression1: 43800577 false ) 
	#(354 2 #reduceActionForTypeQuery1: 43726849 false ) 
	#(328 2 #reduceActionForTypeParameter2: 41200642 false ) 
	#(326 3 #reduceActionForTypeParameters1: 41009153 false ) 
	#(339 2 #reduceActionForTypeReference1: 42034177 false ) 
	#(427 2 #reduceActionForAmbientBinding2: 59839490 false ) 
	#(425 3 #reduceActionForAmbientVariableDeclaration3: 59486211 false ) 
	#(425 3 #reduceActionForAmbientVariableDeclaration3: 59486210 false ) 
	#(437 0 #reduceActionForImplementationModule1: 61197313 false ) 
	#(425 3 #reduceActionForAmbientVariableDeclaration3: 59486209 false ) 
	#(387 4 #reduceActionForEnumDeclaration1: 52601857 false ) 
	#(390 1 #reduceActionForEnumMember1: 52887553 false ) 
	#(388 1 #reduceActionForModuleBody1: 52749313 false ) 
	#(389 1 #reduceActionForFormalParameterList1: 52795393 false ) 
	#(423 4 #reduceActionForExportAssignment1: 58964993 false ) 
	#(422 4 #reduceActionForExportListDeclaration1: 58711041 false ) 
	#(421 4 #reduceActionForExportDefaultDeclarationElement3: 58376195 false ) 
	#(420 4 #reduceActionForExportDefaultImplementationElement4: 57950212 false ) 
	#(422 4 #reduceActionForExportListDeclaration2: 58711042 false ) 
	#(399 1 #liftFirstValue: 54578177 false ) 
	#(375 2 #reduceActionForInitializer1: 50462721 false ) 
	#(374 4 #reduceActionForInterfaceDeclaration3: 50307075 false ) 
	#(374 4 #reduceActionForInterfaceDeclaration2: 50307074 false ) 
	#(396 1 #liftFirstValue: 53417985 false ) 
	#(396 1 #liftFirstValue: 53417986 false ) 
	#(396 1 #liftFirstValue: 53417987 false ) 
	#(396 1 #liftFirstValue: 53417988 false ) 
	#(396 1 #liftFirstValue: 53417989 false ) 
	#(396 1 #liftFirstValue: 53417991 false ) 
	#(396 1 #liftFirstValue: 53417990 false ) 
	#(396 1 #liftFirstValue: 53417992 false ) 
	#(396 1 #liftFirstValue: 53417993 false ) 
	#(394 1 #reduceActionForModuleBody1: 53281794 false ) 
	#(395 1 #reduceActionForModuleItemList1: 53319681 false ) 
	#(396 1 #liftFirstValue: 53417996 false ) 
	#(396 1 #liftFirstValue: 53417995 false ) 
	#(396 1 #liftFirstValue: 53417994 false ) 
	#(393 3 #reduceActionForFormalParameterList2: 53176322 false ) 
	#(233 4 #reduceActionForFunctionDeclaration5: 29910021 false ) 
	#(265 4 #reduceActionForClassDeclaration4: 34659332 false ) 
	#(205 3 #reduceActionForBindingProperty2: 24250370 false ) 
	#(199 4 #reduceActionForObjectBindingPattern4: 23136260 false ) 
	#(202 3 #reduceActionForFormalParameterList2: 23961602 false ) 
	#(200 4 #reduceActionForArrayBindingPattern4: 23524356 false ) 
	#(200 4 #reduceActionForArrayBindingPattern6: 23524358 false ) 
	#(203 3 #reduceActionForBindingElementList2: 24080386 false ) 
	#(358 2 #reduceActionForInitializer1: 44131329 false ) 
	#(207 4 #reduceActionForSingleNameBinding4: 24468484 false ) 
	#(206 4 #reduceActionForSingleNameBinding4: 24364037 false ) 
	#(207 4 #reduceActionForSingleNameBinding10: 24468490 false ) 
	#(207 4 #reduceActionForSingleNameBinding8: 24468488 false ) 
	#(207 4 #reduceActionForSingleNameBinding5: 24468485 false ) 
	#(206 4 #reduceActionForSingleNameBinding10: 24364043 false ) 
	#(206 4 #reduceActionForSingleNameBinding8: 24364041 false ) 
	#(206 4 #reduceActionForSingleNameBinding5: 24364038 false ) 
	#(250 1 #liftFirstValue: 32077825 false ) 
	#(263 1 #reduceActionForModuleBody1: 34546689 false ) 
	#(385 2 #reduceActionForMemberAccessorDeclaration2: 52301826 false ) 
	#(385 2 #reduceActionForMemberAccessorDeclaration2: 52301830 false ) 
	#(383 2 #reduceActionForMemberVariableDeclaration1: 51786753 false ) 
	#(385 2 #reduceActionForMemberAccessorDeclaration3: 52301827 false ) 
	#(385 2 #reduceActionForMemberAccessorDeclaration3: 52301831 false ) 
	#(386 2 #reduceActionForIndexMemberDeclaration1: 52510721 false ) 
	#(267 4 #reduceActionForClassTail4: 34835460 false ) 
	#(292 3 #reduceActionForExportSpecifier2: 37812226 false ) 
	#(290 4 #reduceActionForNamedExports3: 37491715 false ) 
	#(291 3 #reduceActionForFormalParameterList2: 37707778 false ) 
	#(211 5 #reduceActionForIfStatement2: 24866818 false ) 
	#(285 3 #reduceActionForImportSpecifier2: 36497410 false ) 
	#(282 4 #reduceActionForNamedImports3: 36110339 false ) 
	#(284 3 #reduceActionForFormalParameterList2: 36392962 false ) 
	#(155 4 #reduceActionForArguments3: 13625347 false ) 
	#(156 3 #reduceActionForArgumentList3: 13810691 false ) 
	#(330 3 #reduceActionForTypeArguments1: 41308161 false ) 
	#(155 4 #reduceActionForArguments4: 13625348 false ) 
	#(220 5 #reduceActionForSwitchStatement1: 28506113 false ) 
	#(231 1 #liftFirstValue: 29772801 false ) 
	#(231 1 #liftFirstValue: 29772802 false ) 
	#(370 3 #reduceActionForSimpleVariableDeclaration2: 49470466 false ) 
	#(371 3 #reduceActionForDestructuringVariableDeclaration1: 49575937 false ) 
	#(212 5 #reduceActionForIterationStatement2: 25157634 false ) 
	#(219 5 #reduceActionForWithStatement1: 28374017 false ) 
	#(146 2 #reduceActionForTemplateMiddleList1: 11797505 false ) 
	#(145 2 #reduceActionForTemplateSpans2: 11710466 false ) 
	#(160 3 #reduceActionForOptionalFirst2: 14667778 false ) 
	#(159 3 #reduceActionForOptionalFirst2: 14380034 false ) 
	#(179 5 #reduceActionForConditionalExpression2: 19361794 false ) 
	#(372 4 #reduceActionForSingleNameBinding4: 49770498 false ) 
	#(373 4 #reduceActionForSingleNameBinding4: 49880066 false ) 
	#(244 3 #reduceActionForConciseBody2: 31008770 false ) 
	#(304 3 #reduceActionForJSXNamespacedName1: 39310337 false ) 
	#(310 2 #reduceActionForModuleItemList2: 39583746 false ) 
	#(312 2 #reduceActionForJSXAttribute2: 39797762 false ) 
	#(300 5 #reduceActionForJSXOpeningElement1: 38637569 false ) 
	#(366 4 #reduceActionForTypeCallSignature1: 47648769 false ) 
	#(337 3 #reduceActionForParenthesizedExpression1: 41893889 false ) 
	#(357 2 #reduceActionForPropertySignature3: 43962371 false ) 
	#(357 2 #reduceActionForPropertySignature2: 43962370 false ) 
	#(364 2 #reduceActionForMethodSignature1: 47205377 false ) 
	#(342 3 #reduceActionForObjectType2: 42339330 false ) 
	#(343 2 #reduceActionForOptionalChain2: 42421250 false ) 
	#(343 2 #reduceActionForOptionalChain2: 42421251 false ) 
	#(347 3 #reduceActionForTupleType1: 42886145 false ) 
	#(329 2 #reduceActionForInitializer1: 41254913 false ) 
	#(327 3 #reduceActionForFormalParameterList2: 41088002 false ) 
	#(163 5 #reduceActionForUnaryExpression10: 15383562 false ) 
	#(350 3 #reduceActionForUnionType1: 43118593 false ) 
	#(351 3 #reduceActionForIntersectionType1: 43239425 false ) 
	#(339 3 #reduceActionForTypeReference2: 42034178 false ) 
	#(340 3 #reduceActionForTypeName2: 42128386 false ) 
	#(341 3 #reduceActionForFormalParameterList2: 42234882 false ) 
	#(366 4 #reduceActionForTypeCallSignature3: 47648771 false ) 
	#(387 5 #reduceActionForEnumDeclaration3: 52601859 false ) 
	#(430 0 #reduceActionForImplementationModule1: 60223489 false ) 
	#(426 3 #reduceActionForFormalParameterList2: 59726850 false ) 
	#(428 4 #reduceActionForAmbientFunctionDeclaration1: 59898881 false ) 
	#(439 1 #reduceActionForAmbientNamespaceElement3: 61376515 false ) 
	#(439 1 #reduceActionForAmbientNamespaceElement3: 61376521 false ) 
	#(439 1 #reduceActionForAmbientNamespaceElement3: 61376527 false ) 
	#(439 1 #reduceActionForAmbientNamespaceElement3: 61376513 false ) 
	#(439 1 #reduceActionForAmbientNamespaceElement3: 61376517 false ) 
	#(439 1 #reduceActionForAmbientNamespaceElement3: 61376519 false ) 
	#(439 1 #reduceActionForAmbientNamespaceElement3: 61376523 false ) 
	#(439 1 #reduceActionForAmbientNamespaceElement3: 61376525 false ) 
	#(437 1 #reduceActionForModuleBody1: 61197314 false ) 
	#(438 1 #reduceActionForModuleItemList1: 61249537 false ) 
	#(387 5 #reduceActionForEnumDeclaration2: 52601858 false ) 
	#(388 2 #reduceActionForOptionalChain2: 52749314 false ) 
	#(398 5 #reduceActionForImportAliasDeclaration1: 54440961 false ) 
	#(374 5 #reduceActionForInterfaceDeclaration4: 50307076 false ) 
	#(397 2 #reduceActionForExportNamespaceElement2: 53698562 false ) 
	#(397 2 #reduceActionForExportNamespaceElement2: 53698561 false ) 
	#(397 2 #reduceActionForExportNamespaceElement2: 53698563 false ) 
	#(397 2 #reduceActionForExportNamespaceElement2: 53698564 false ) 
	#(397 2 #reduceActionForExportNamespaceElement2: 53698565 false ) 
	#(397 2 #reduceActionForExportNamespaceElement2: 53698567 false ) 
	#(397 2 #reduceActionForExportNamespaceElement2: 53698566 false ) 
	#(397 2 #reduceActionForExportNamespaceElement2: 53698568 false ) 
	#(397 2 #reduceActionForExportNamespaceElement2: 53698569 false ) 
	#(397 2 #reduceActionForExportNamespaceElement2: 53698571 false ) 
	#(397 2 #reduceActionForExportNamespaceElement2: 53698570 false ) 
	#(392 5 #reduceActionForNamespaceDeclaration1: 53035009 false ) 
	#(395 2 #reduceActionForModuleItemList2: 53319682 false ) 
	#(365 5 #reduceActionForTypeAliasDeclaration1: 47310849 false ) 
	#(359 3 #reduceActionForCallSignature1: 44184577 false ) 
	#(233 5 #reduceActionForFunctionDeclaration6: 29910022 false ) 
	#(199 5 #reduceActionForObjectBindingPattern5: 23136261 false ) 
	#(200 5 #reduceActionForArrayBindingPattern8: 23524360 false ) 
	#(200 5 #reduceActionForArrayBindingPattern7: 23524359 false ) 
	#(207 5 #reduceActionForSingleNameBinding6: 24468486 false ) 
	#(206 5 #reduceActionForSingleNameBinding6: 24364039 false ) 
	#(361 1 #liftFirstValue: 46049281 false ) 
	#(361 1 #liftFirstValue: 46049282 false ) 
	#(248 3 #reduceActionForConciseBody2: 31358978 false ) 
	#(383 3 #reduceActionForMemberVariableDeclaration5: 51786757 false ) 
	#(383 3 #reduceActionForMemberVariableDeclaration2: 51786754 false ) 
	#(383 3 #reduceActionForMemberVariableDeclaration3: 51786755 false ) 
	#(384 3 #reduceActionForMemberFunctionDeclaration5: 51956741 false ) 
	#(385 3 #reduceActionForMemberAccessorDeclaration4: 52301828 false ) 
	#(385 3 #reduceActionForMemberAccessorDeclaration4: 52301832 false ) 
	#(383 3 #reduceActionForMemberVariableDeclaration9: 51786761 false ) 
	#(376 3 #reduceActionForFormalParameterList2: 50547714 false ) 
	#(212 6 #reduceActionForIterationStatement3: 25157635 false ) 
	#(212 6 #reduceActionForIterationStatement15: 25157647 false ) 
	#(156 4 #reduceActionForArgumentList4: 13810692 false ) 
	#(331 3 #reduceActionForFormalParameterList2: 41385986 false ) 
	#(155 5 #reduceActionForArguments5: 13625349 false ) 
	#(221 2 #reduceActionForCaseBlock1: 28632065 false ) 
	#(222 1 #reduceActionForModuleItemList1: 28816385 false ) 
	#(146 3 #reduceActionForTemplateMiddleList2: 11797506 false ) 
	#(319 1 #liftFirstValue: 40541186 false ) 
	#(319 1 #liftFirstValue: 40541185 false ) 
	#(299 6 #reduceActionForJSXSelfClosingElement1: 38454273 false ) 
	#(300 6 #reduceActionForJSXOpeningElement2: 38637570 false ) 
	#(315 1 #reduceActionForLiteral4: 40045569 false ) 
	#(315 1 #liftFirstValue: 40045571 false ) 
	#(315 1 #liftFirstValue: 40045572 false ) 
	#(314 2 #reduceActionForInitializer1: 39971841 false ) 
	#(357 3 #reduceActionForPropertySignature4: 43962372 false ) 
	#(364 3 #reduceActionForMethodSignature2: 47205378 false ) 
	#(344 3 #reduceActionForFormalParameterList2: 42516482 false ) 
	#(344 3 #reduceActionForFormalParameterList2: 42516483 false ) 
	#(348 3 #reduceActionForFormalParameterList2: 42983426 false ) 
	#(355 3 #reduceActionForTypeQueryExpression2: 43800578 false ) 
	#(346 4 #reduceActionForArrayType1: 42778625 false ) 
	#(234 6 #reduceActionForFunctionExpression3: 30121987 false ) 
	#(366 5 #reduceActionForTypeCallSignature2: 47648770 false ) 
	#(387 6 #reduceActionForEnumDeclaration4: 52601860 false ) 
	#(432 1 #liftFirstValue: 60398595 false ) 
	#(430 1 #reduceActionForModuleBody1: 60223490 false ) 
	#(431 1 #reduceActionForModuleItemList1: 60271617 false ) 
	#(432 1 #liftFirstValue: 60398593 false ) 
	#(432 1 #liftFirstValue: 60398594 false ) 
	#(440 6 #reduceActionForAmbientModuleDeclaration1: 61968385 false ) 
	#(439 2 #reduceActionForAmbientNamespaceElement4: 61376516 false ) 
	#(439 2 #reduceActionForAmbientNamespaceElement4: 61376522 false ) 
	#(439 2 #reduceActionForAmbientNamespaceElement4: 61376528 false ) 
	#(439 2 #reduceActionForAmbientNamespaceElement4: 61376514 false ) 
	#(439 2 #reduceActionForAmbientNamespaceElement4: 61376518 false ) 
	#(439 2 #reduceActionForAmbientNamespaceElement4: 61376520 false ) 
	#(439 2 #reduceActionForAmbientNamespaceElement4: 61376524 false ) 
	#(439 2 #reduceActionForAmbientNamespaceElement4: 61376526 false ) 
	#(436 5 #reduceActionForAmbientNamespaceDeclaration1: 61041665 false ) 
	#(438 2 #reduceActionForModuleItemList2: 61249538 false ) 
	#(391 1 #liftFirstValue: 52993025 false ) 
	#(390 3 #reduceActionForEnumMember2: 52887554 false ) 
	#(389 3 #reduceActionForFormalParameterList2: 52795394 false ) 
	#(365 6 #reduceActionForTypeAliasDeclaration2: 47310850 false ) 
	#(359 4 #reduceActionForCallSignature2: 44184578 false ) 
	#(359 4 #reduceActionForCallSignature3: 44184579 false ) 
	#(233 6 #reduceActionForFunctionExpression3: 29910019 false ) 
	#(200 6 #reduceActionForArrayBindingPattern9: 23524361 false ) 
	#(369 2 #reduceActionForTypedPropertySetParameterList1: 48681985 false ) 
	#(249 6 #reduceActionForMethodDefinition7: 31479815 false ) 
	#(383 4 #reduceActionForMemberVariableDeclaration6: 51786758 false ) 
	#(383 4 #reduceActionForMemberVariableDeclaration7: 51786759 false ) 
	#(384 4 #reduceActionForMemberFunctionDeclaration6: 51956742 false ) 
	#(383 4 #reduceActionForMemberVariableDeclaration4: 51786756 false ) 
	#(383 4 #reduceActionForMemberVariableDeclaration13: 51786765 false ) 
	#(383 4 #reduceActionForMemberVariableDeclaration10: 51786762 false ) 
	#(383 4 #reduceActionForMemberVariableDeclaration11: 51786763 false ) 
	#(384 4 #reduceActionForMemberFunctionDeclaration7: 51956743 false ) 
	#(212 7 #reduceActionForIterationStatement1: 25157633 false ) 
	#(212 7 #reduceActionForIterationStatement4: 25157636 false ) 
	#(212 7 #reduceActionForIterationStatement5: 25157637 false ) 
	#(212 7 #reduceActionForIterationStatement19: 25157651 false ) 
	#(212 7 #reduceActionForIterationStatement22: 25157654 false ) 
	#(212 7 #reduceActionForIterationStatement7: 25157639 false ) 
	#(212 7 #reduceActionForIterationStatement16: 25157648 false ) 
	#(212 7 #reduceActionForIterationStatement17: 25157649 false ) 
	#(212 7 #reduceActionForIterationStatement21: 25157653 false ) 
	#(212 7 #reduceActionForIterationStatement24: 25157656 false ) 
	#(234 7 #reduceActionForFunctionExpression1: 30121985 false ) 
	#(254 1 #reduceActionForModuleBody1: 32824321 false ) 
	#(211 7 #reduceActionForIfStatement1: 24866817 false ) 
	#(224 2 #reduceActionForDefaultClause1: 28995585 false ) 
	#(221 3 #reduceActionForCaseBlock2: 28632066 false ) 
	#(222 2 #reduceActionForModuleItemList2: 28816386 false ) 
	#(221 3 #reduceActionForCaseBlock3: 28632067 false ) 
	#(229 5 #reduceActionForCatch1: 29544449 false ) 
	#(324 0 #reduceActionForSwitchToJSXTextOrDefault21: 40787969 true ) 
	#(318 4 #reduceActionForJSXChild3: 40308739 false ) 
	#(299 7 #reduceActionForJSXSelfClosingElement2: 38454274 false ) 
	#(352 5 #reduceActionForFunctionType1: 43345921 false ) 
	#(362 4 #reduceActionForConstructSignature1: 46728193 false ) 
	#(234 7 #reduceActionForFunctionExpression4: 30121988 false ) 
	#(434 2 #reduceActionForAmbientPropertyMemberDeclaration1: 60695553 false ) 
	#(429 6 #reduceActionForAmbientClassDeclaration1: 60033025 false ) 
	#(431 2 #reduceActionForModuleItemList2: 60271618 false ) 
	#(233 7 #reduceActionForFunctionExpression1: 29910017 false ) 
	#(233 7 #reduceActionForFunctionExpression4: 29910020 false ) 
	#(359 5 #reduceActionForCallSignature4: 44184580 false ) 
	#(249 7 #reduceActionForMethodDefinition5: 31479813 false ) 
	#(249 7 #reduceActionForMethodDefinition1: 31479809 false ) 
	#(262 8 #reduceActionForAsyncFunctionExpression1: 34296833 false ) 
	#(259 1 #reduceActionForModuleBody1: 33790977 false ) 
	#(381 5 #reduceActionForConstructorDeclaration3: 51213315 false ) 
	#(383 5 #reduceActionForMemberVariableDeclaration8: 51786760 false ) 
	#(384 5 #reduceActionForMemberFunctionDeclaration1: 51956737 false ) 
	#(383 5 #reduceActionForMemberVariableDeclaration14: 51786766 false ) 
	#(383 5 #reduceActionForMemberVariableDeclaration15: 51786767 false ) 
	#(384 5 #reduceActionForMemberFunctionDeclaration8: 51956744 false ) 
	#(383 5 #reduceActionForMemberVariableDeclaration12: 51786764 false ) 
	#(212 8 #reduceActionForIterationStatement6: 25157638 false ) 
	#(212 8 #reduceActionForIterationStatement11: 25157643 false ) 
	#(212 8 #reduceActionForIterationStatement23: 25157655 false ) 
	#(212 8 #reduceActionForIterationStatement20: 25157652 false ) 
	#(212 8 #reduceActionForIterationStatement8: 25157640 false ) 
	#(212 8 #reduceActionForIterationStatement9: 25157641 false ) 
	#(212 8 #reduceActionForIterationStatement18: 25157650 false ) 
	#(212 8 #reduceActionForIterationStatement25: 25157657 false ) 
	#(212 8 #reduceActionForIterationStatement27: 25157659 false ) 
	#(253 8 #reduceActionForGeneratorExpression1: 32588801 false ) 
	#(234 8 #reduceActionForFunctionExpression2: 30121986 false ) 
	#(223 3 #reduceActionForCaseClause1: 28889089 false ) 
	#(224 3 #reduceActionForDefaultClause2: 28995586 false ) 
	#(221 4 #reduceActionForCaseBlock5: 28632069 false ) 
	#(221 4 #reduceActionForCaseBlock4: 28632068 false ) 
	#(318 5 #reduceActionForJSXChild4: 40308740 false ) 
	#(311 5 #reduceActionForJSXSpreadAttribute1: 39648257 false ) 
	#(362 5 #reduceActionForConstructSignature2: 46728194 false ) 
	#(362 5 #reduceActionForConstructSignature3: 46728195 false ) 
	#(353 6 #reduceActionForConstructorType1: 43526145 false ) 
	#(352 6 #reduceActionForFunctionType2: 43345922 false ) 
	#(434 3 #reduceActionForAmbientPropertyMemberDeclaration3: 60695555 false ) 
	#(434 3 #reduceActionForAmbientPropertyMemberDeclaration2: 60695554 false ) 
	#(434 3 #reduceActionForAmbientPropertyMemberDeclaration9: 60695561 false ) 
	#(434 3 #reduceActionForAmbientPropertyMemberDeclaration5: 60695557 false ) 
	#(429 7 #reduceActionForAmbientClassDeclaration2: 60033026 false ) 
	#(252 8 #reduceActionForGeneratorExpression1: 32352257 false ) 
	#(233 8 #reduceActionForFunctionExpression2: 29910018 false ) 
	#(417 8 #reduceActionForImportRequireDeclaration1: 56694785 false ) 
	#(251 8 #reduceActionForGeneratorMethod1: 32136193 false ) 
	#(260 8 #reduceActionForAsyncMethod1: 33827841 false ) 
	#(249 8 #reduceActionForMethodDefinition6: 31479814 false ) 
	#(258 9 #reduceActionForAsyncGeneratorExpression1: 33516545 false ) 
	#(262 9 #reduceActionForAsyncFunctionExpression2: 34296834 false ) 
	#(363 6 #reduceActionForIndexSignature1: 46920705 false ) 
	#(363 6 #reduceActionForIndexSignature1: 46920706 false ) 
	#(384 6 #reduceActionForMemberFunctionDeclaration2: 51956738 false ) 
	#(381 6 #reduceActionForConstructorDeclaration4: 51213316 false ) 
	#(383 6 #reduceActionForMemberVariableDeclaration16: 51786768 false ) 
	#(384 6 #reduceActionForMemberFunctionDeclaration3: 51956739 false ) 
	#(261 8 #reduceActionForAsyncFunctionExpression1: 34046977 false ) 
	#(212 9 #reduceActionForIterationStatement12: 25157644 false ) 
	#(212 9 #reduceActionForIterationStatement13: 25157645 false ) 
	#(212 9 #reduceActionForIterationStatement10: 25157642 false ) 
	#(212 9 #reduceActionForIterationStatement26: 25157658 false ) 
	#(253 9 #reduceActionForGeneratorExpression2: 32588802 false ) 
	#(223 4 #reduceActionForCaseClause2: 28889090 false ) 
	#(221 5 #reduceActionForCaseBlock6: 28632070 false ) 
	#(302 9 #reduceActionForJSXFragment1: 38941697 false ) 
	#(301 6 #reduceActionForJSXClosingElement1: 38781953 false ) 
	#(362 6 #reduceActionForConstructSignature4: 46728196 false ) 
	#(353 7 #reduceActionForConstructorType2: 43526146 false ) 
	#(434 4 #reduceActionForAmbientPropertyMemberDeclaration4: 60695556 false ) 
	#(434 4 #reduceActionForAmbientPropertyMemberDeclaration10: 60695562 false ) 
	#(434 4 #reduceActionForAmbientPropertyMemberDeclaration7: 60695559 false ) 
	#(434 4 #reduceActionForAmbientPropertyMemberDeclaration6: 60695558 false ) 
	#(434 4 #reduceActionForAmbientPropertyMemberDeclaration11: 60695563 false ) 
	#(252 9 #reduceActionForGeneratorExpression2: 32352258 false ) 
	#(256 9 #reduceActionForAsyncGeneratorMethod1: 32988161 false ) 
	#(367 9 #reduceActionForGetAccessor1: 48011265 false ) 
	#(368 9 #reduceActionForSetAccessor2: 48217090 false ) 
	#(258 10 #reduceActionForAsyncGeneratorExpression2: 33516546 false ) 
	#(381 7 #reduceActionForConstructorDeclaration1: 51213313 false ) 
	#(384 7 #reduceActionForMemberFunctionDeclaration4: 51956740 false ) 
	#(257 9 #reduceActionForAsyncGeneratorExpression1: 33241089 false ) 
	#(261 9 #reduceActionForAsyncFunctionExpression2: 34046978 false ) 
	#(212 10 #reduceActionForIterationStatement14: 25157646 false ) 
	#(315 5 #reduceActionForJSXChild4: 40045570 false ) 
	#(433 5 #reduceActionForAmbientConstructorDeclaration1: 60511233 false ) 
	#(434 5 #reduceActionForAmbientPropertyMemberDeclaration8: 60695560 false ) 
	#(434 5 #reduceActionForAmbientPropertyMemberDeclaration12: 60695564 false ) 
	#(368 10 #reduceActionForSetAccessor1: 48217089 false ) 
	#(368 10 #reduceActionForSetAccessor1: 48217091 false ) 
	#(381 8 #reduceActionForConstructorDeclaration2: 51213314 false ) 
	#(257 10 #reduceActionForAsyncGeneratorExpression2: 33241090 false )
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
JSParser class >> startingStateForgoal [
	^ 1
]

{ #category : #generated }
JSParser class >> symbolNames [
	^ #('<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<question>' '<questionDot>' '<percent>' '<bar>' '<barBar>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<instanceof>' '<interface>' '<let>' '<module>' '<namespace>' '<new>' '<null>' '<of>' '<private>' '<protected>' '<public>' '<return>' '<set>' '<static>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<whitespace>' '<string>' '<numeric>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'FunctionDeclaration' 'FunctionExpression' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorMethod' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorBody' 'AsyncMethod' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrimaryType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' '<implements>' '<questionQuestion>' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSNewTargetExpressionNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSVariableDeclarationNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSVariableDeclarationNode #JSGeneratorMethodDefinitionNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorMethodDefinitionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #OrderedCollection #JSAsyncMethodDefinitionNode #JSAsyncFunctionNode #JSAsyncFunctionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSProgramNode #JSMemberVariableDeclarationNode #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSAmbientVariableDeclarationNode #OrderedCollection #JSAmbientBindingNode #JSAmbientFunctionDeclarationNode #JSAmbientClassDeclarationNode #OrderedCollection #OrderedCollection #JSProgramNode #JSAmbientConstructorDeclarationNode #JSAmbientPropertyMemberDeclarationNode #JSEnumDeclarationNode #JSAmbientNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSAmbientNamespaceElementNode #JSAmbientModuleDeclarationNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 0 105 0 67 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 0 125 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 217 0 125 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 1 253 0 183 1 253 0 186 1 253 0 187 1 253 0 188 1 253 0 190 1 253 0 191 1 137 0 192 1 253 0 195 1 253 0 209 1 253 0 210 1 253 0 211 1 253 0 212 1 253 0 215 1 253 0 216 1 253 0 218 1 253 0 219 1 253 0 220 1 253 0 225 1 253 0 227 1 253 0 228 1 253 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 0 217 1 18 1 245 1 19 1 249 1 20 1 253 1 21 1 253 1 22 1 253 1 32 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189 0 14 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 2 65 0 179 2 65 0 180 2 65 0 182 0 253 0 234 2 65 0 242 1 205 0 243 1 209 0 246 2 65 0 247 0 253 0 253 2 65 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 69 0 183 2 69 0 186 2 69 0 187 2 69 0 188 2 69 0 195 2 69 0 209 2 69 0 210 2 69 0 211 2 69 0 212 2 69 0 215 2 69 0 216 2 69 0 218 2 69 0 219 2 69 0 220 2 69 0 225 2 69 0 227 2 69 0 228 2 69 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 2 73 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 81 1 16 2 85 1 17 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189 0 18 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 0 105 0 67 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 0 125 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 1 253 0 183 1 253 0 186 1 253 0 187 1 253 0 188 1 253 0 190 1 253 0 191 1 137 0 192 1 253 0 195 1 253 0 209 1 253 0 210 1 253 0 211 1 253 0 212 1 253 0 215 1 253 0 216 1 253 0 218 1 253 0 219 1 253 0 220 1 253 0 225 1 253 0 227 1 253 0 228 1 253 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 89 1 18 1 245 1 19 1 249 1 20 1 253 1 21 1 253 1 22 1 253 1 32 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189 0 14 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 2 101 0 61 0 97 0 63 0 101 0 64 2 105 0 66 2 109 0 67 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 2 117 0 76 2 121 0 79 1 137 0 80 2 125 0 82 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 2 129 0 99 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 201 0 183 2 201 0 186 2 201 0 187 2 201 0 188 2 201 0 191 1 137 0 192 2 201 0 195 2 201 0 209 2 201 0 210 2 201 0 211 2 201 0 212 2 201 0 215 2 201 0 216 2 201 0 218 2 201 0 219 2 201 0 220 2 201 0 225 2 201 0 227 2 201 0 228 2 201 0 232 2 201 0 233 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 2 201 0 252 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 2 201 1 9 0 253 1 10 2 153 1 22 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 157 1 109 2 161 1 118 2 201 1 131 2 169 1 136 2 173 1 142 2 177 1 144 2 181 1 145 2 185 1 146 2 189 1 147 2 193 1 148 2 197 1 149 2 201 1 150 2 205 1 151 2 209 1 152 2 213 1 153 2 217 1 154 2 221 1 155 2 225 1 156 2 229 1 157 2 233 1 158 2 237 1 159 2 241 1 160 2 229 1 161 2 229 1 162 2 241 1 163 2 229 1 164 2 241 1 165 3 9 1 166 3 13 1 167 3 17 1 168 3 21 1 184 3 25 1 189 0 11 1 190] 
#[1 0 29 0 1 0 38 0 2 3 29 0 3 3 33 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 3 37 0 106 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 3 41 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 3 45 0 179 3 45 0 180 3 45 0 182 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 0 253 0 234 3 73 0 235 3 77 0 236 3 81 0 237 3 85 0 238 3 89 0 239 3 45 0 242 1 205 0 243 1 209 0 246 3 45 0 247 0 253 0 253 3 45 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 93 1 189] 
#[1 0 29 0 1 0 33 0 3 3 97 0 4 3 101 0 5 0 41 0 7 3 105 0 25 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 109 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 3 113 0 74 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 3 117 0 90 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 3 121 0 106 0 193 0 110 3 125 0 111 3 181 0 113 3 185 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 3 129 0 126 3 145 0 127 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 3 137 0 136 3 141 0 137 3 145 0 138 3 145 0 139 3 145 0 140 3 141 0 141 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 3 161 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 3 141 0 249 3 141 0 251 0 253 0 253 1 109 0 255 3 141 1 0 0 253 1 2 3 141 1 4 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 3 181 1 39 3 185 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 141 1 111 3 141 1 112 3 197 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 3 201 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 3 205 0 106 3 209 0 107 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 3 213 0 132 3 217 0 133 3 221 0 134 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 3 225 0 179 3 225 0 180 0 253 0 234 3 225 0 242 1 205 0 243 1 209 0 246 3 225 0 247 0 253 0 253 3 225 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 0 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 3 245 0 162 3 245 0 163 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 3 245 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 3 253 0 162 3 253 0 163 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 3 253 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 4 1 0 162 4 1 0 163 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 4 1 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 4 5 0 162 4 5 0 163 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 4 5 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 4 9 0 162 4 9 0 163 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 4 9 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 4 13 0 162 4 13 0 163 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 4 13 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 4 17 0 1 4 21 0 73 2 61 0 110 4 25 0 126 4 29 0 243 1 209 0 246 4 33 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 4 37 0 162 4 37 0 163 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 4 37 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 0 46 0 7 0 46 0 110 4 41 0 217] 
#[1 4 45 0 3 4 49 0 68 2 61 0 110 4 53 0 126 4 57 1 11 4 61 1 12 4 65 1 189] 
#[0 0 50 0 3 0 5 0 110 1 189] 
#[1 0 46 0 7 0 46 0 110 4 69 0 217] 
#[0 4 73 0 7] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 4 77 0 162 4 77 0 163 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 4 77 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 4 81 0 183 4 81 0 186 4 81 0 187 4 81 0 188 4 81 0 195 4 81 0 209 4 81 0 210 4 81 0 211 4 81 0 212 4 81 0 215 4 81 0 216 4 81 0 218 4 81 0 219 4 81 0 220 4 81 0 225 4 81 0 227 4 81 0 228 4 81 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 4 85 0 3 4 89 0 25 4 93 0 51 4 97 0 56 1 137 0 57 4 101 0 62 4 105 0 73 1 137 0 80 0 173 0 101 4 109 0 184 4 109 0 185 4 109 0 191 1 137 0 192 4 121 0 195 4 109 0 233 4 109 0 252 4 109 1 1 4 109 1 5 4 109 1 9 4 145 1 33 4 149 1 34 4 153 1 189] 
#[0 0 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 4 157 0 1 4 161 0 52] 
#[1 4 165 0 1 4 169 0 25 2 61 0 110 4 173 0 126] 
#[0 4 177 0 1] 
#[1 4 181 0 1 4 185 0 3 4 189 0 25 2 61 0 110 4 213 0 113 4 201 0 126 4 197 1 23 4 201 1 24 4 205 1 25 4 209 1 26 4 213 1 30 4 201 1 31 4 213 1 39] 
#[0 0 58 0 3 0 5 0 110 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 4 225 0 21 3 233 0 51 0 81 0 56 2 13 0 69 0 117 0 73 0 133 0 83 2 9 0 84 4 229 0 92 0 153 0 95 2 13 0 97 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 4 233 0 126 4 233 0 128 4 233 0 129 4 233 0 130 4 233 0 131 4 233 0 135 4 233 0 143 0 249 0 144 4 233 0 147 4 233 0 148 4 233 0 149 4 233 0 150 4 237 0 151 4 233 0 234 4 233 0 253 4 233 1 2 4 233 1 6 4 233 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 4 233 1 41 4 233 1 42 4 233 1 43 2 37 1 44 4 233 1 46 2 45 1 64 4 241 1 189] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 46 0 1 0 46 0 3 0 46 0 5 0 46 0 7 0 46 0 34 0 46 0 35 0 46 0 36 0 46 0 37 0 46 0 38 0 46 0 47 0 46 0 51 0 46 0 52 0 46 0 56 0 46 0 63 0 46 0 69 0 46 0 73 0 46 0 76 0 46 0 83 0 46 0 84 0 46 0 92 0 46 0 95 0 46 0 97 0 46 0 100 0 46 0 102 0 46 0 105 0 46 0 110 0 46 0 113 0 46 0 114 0 46 0 115 0 46 0 117 0 46 0 118 0 46 0 121 4 245 0 217 0 46 1 189] 
#[1 4 249 0 1 4 253 0 5 5 1 0 21 5 5 0 155 5 9 1 189] 
#[0 5 13 0 1] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 5 17 0 179 5 17 0 180 5 17 0 182 0 253 0 234 5 17 0 242 1 205 0 243 1 209 0 246 5 17 0 247 0 253 0 253 5 17 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 0 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 5 21 0 3 5 25 0 188] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 5 29 0 162 5 29 0 163 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 5 29 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 5 41 0 126 5 45 0 196 5 49 0 197 5 53 0 198 5 53 0 199 5 53 0 200 5 57 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 5 61 0 162 5 61 0 163 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 5 61 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[0 5 65 0 1] 
#[0 5 69 0 1] 
#[1 0 29 0 1 0 74 0 2 2 53 0 3 0 74 0 4 0 37 0 5 0 74 0 6 0 74 0 7 5 73 0 25 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 74 0 85 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 0 74 0 107 0 74 0 108 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 74 0 119 0 74 0 120 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 5 77 0 179 5 77 0 180 0 253 0 234 5 77 0 242 1 205 0 243 1 209 0 246 5 77 0 247 0 253 0 253 5 77 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189 0 74 1 190] 
#[1 0 78 0 1 0 78 0 4 0 78 0 5 0 78 0 7 0 78 0 8 0 78 0 9 0 78 0 10 0 78 0 11 0 78 0 12 0 78 0 13 0 78 0 14 0 78 0 15 0 78 0 16 0 78 0 17 0 78 0 18 0 78 0 19 0 78 0 20 0 78 0 21 0 78 0 22 0 78 0 23 0 78 0 24 0 78 0 25 0 78 0 26 0 78 0 27 0 78 0 28 0 78 0 29 0 78 0 30 0 78 0 31 0 78 0 32 0 78 0 33 0 78 0 34 0 78 0 35 0 78 0 36 0 78 0 37 0 78 0 39 0 78 0 40 0 78 0 41 0 78 0 42 0 78 0 43 0 78 0 44 0 78 0 45 0 78 0 46 0 78 0 48 0 78 0 49 0 78 0 77 0 78 0 78 0 78 0 107 5 81 0 108 0 78 0 117 0 78 0 118 0 78 1 186 0 78 1 188 0 78 1 189] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 0 122 1 186 1 188 1 189 1 190] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 98 0 13 5 85 1 65] 
#[0 0 0 1 190] 
#[1 0 102 0 1 0 102 0 2 0 102 0 4 0 102 0 5 0 102 0 6 0 102 0 7 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 77 0 102 0 78 0 102 0 85 0 102 0 107 0 102 0 108 0 102 0 117 0 102 0 118 0 102 0 119 0 102 0 120 0 102 1 186 0 102 1 188 0 102 1 189 0 102 1 190] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 0 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 5 89 0 118] 
#[1 4 249 0 1 0 134 0 2 0 134 0 3 0 134 0 4 5 93 0 5 0 134 0 6 0 134 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 19 0 134 0 20 5 97 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 5 101 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 48 0 134 0 49 0 134 0 77 0 134 0 78 0 134 0 85 0 134 0 107 0 134 0 108 0 209 0 117 0 6 0 118 0 134 0 119 0 134 0 120 5 105 0 143 0 249 0 144 5 109 0 155 5 113 0 158 0 134 1 186 0 134 1 188 5 9 1 189 0 134 1 190] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 0 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 0 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 188 1 190] 
#[1 4 249 0 1 0 154 0 2 0 154 0 3 0 154 0 4 5 117 0 5 0 154 0 6 0 154 0 7 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 154 0 15 0 154 0 16 0 154 0 17 0 154 0 19 0 154 0 20 5 121 0 21 0 154 0 22 0 154 0 23 0 154 0 24 0 154 0 25 0 154 0 26 0 154 0 27 0 154 0 28 0 154 0 29 0 154 0 30 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 39 0 154 0 40 0 154 0 41 5 101 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 48 0 154 0 49 0 154 0 77 0 154 0 78 0 154 0 85 0 154 0 107 0 154 0 108 0 209 0 117 0 6 0 118 0 154 0 119 0 154 0 120 5 125 0 143 0 249 0 144 5 129 0 155 5 133 0 158 0 154 1 186 0 154 1 188 5 9 1 189 0 154 1 190] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 0 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 19 0 166 0 20 0 166 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 39 0 166 0 40 0 166 0 41 5 101 0 42 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 48 0 166 0 49 0 166 0 77 0 166 0 78 0 166 0 85 0 166 0 107 0 166 0 108 0 166 0 119 0 166 0 120 5 137 0 158 0 166 1 186 0 166 1 188 0 166 1 190] 
#[1 0 170 0 2 0 170 0 4 0 170 0 6 0 170 0 7 0 170 0 8 5 197 0 9 0 170 0 10 0 170 0 11 5 197 0 12 0 170 0 13 0 170 0 14 5 197 0 15 5 197 0 16 0 170 0 17 0 170 0 19 0 170 0 20 5 197 0 22 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 5 197 0 27 5 197 0 28 5 197 0 29 5 197 0 30 5 197 0 31 5 197 0 32 5 197 0 33 0 170 0 34 5 189 0 35 0 170 0 36 5 193 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 48 0 170 0 49 0 170 0 77 0 170 0 78 0 170 0 85 0 170 0 107 0 170 0 108 0 170 0 119 0 170 0 120 5 197 0 181 0 170 1 186 5 197 1 188 0 170 1 190] 
#[0 0 174 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[1 0 178 0 2 0 178 0 4 0 178 0 6 0 178 0 7 0 178 0 8 0 178 0 10 0 178 0 11 0 178 0 13 0 178 0 14 0 178 0 17 0 178 0 19 0 178 0 20 0 178 0 23 0 178 0 24 0 178 0 25 5 205 0 26 0 178 0 34 0 178 0 36 0 178 0 39 0 178 0 40 0 178 0 41 0 178 0 43 0 178 0 44 0 178 0 45 0 178 0 46 0 178 0 48 0 178 0 49 0 178 0 77 0 178 0 78 0 178 0 85 0 178 0 107 0 178 0 108 0 178 0 119 0 178 0 120 0 178 1 186 0 178 1 190] 
#[0 0 182 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[1 0 186 0 2 0 186 0 4 0 186 0 6 0 186 0 7 5 221 0 8 0 186 0 10 0 186 0 11 0 186 0 13 0 186 0 14 0 186 0 17 0 186 0 19 0 186 0 20 0 186 0 23 0 186 0 24 5 221 0 25 0 186 0 34 0 186 0 36 0 186 0 39 0 186 0 40 0 186 0 41 5 221 0 43 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 48 0 186 0 49 0 186 0 77 0 186 0 78 0 186 0 85 0 186 0 107 0 186 0 108 0 186 0 119 0 186 0 120 5 221 0 166 0 186 1 186 0 186 1 190] 
#[1 0 190 0 2 0 190 0 4 0 190 0 6 0 190 0 7 0 190 0 10 0 190 0 11 0 190 0 13 0 190 0 14 0 190 0 17 0 190 0 19 0 190 0 20 0 190 0 23 0 190 0 24 5 225 0 34 5 229 0 36 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 44 0 190 0 45 0 190 0 46 0 190 0 48 0 190 0 49 0 190 0 77 0 190 0 78 0 190 0 85 0 190 0 107 0 190 0 108 0 190 0 119 0 190 0 120 0 190 1 186 0 190 1 190] 
#[1 0 194 0 2 0 194 0 4 0 194 0 6 0 194 0 7 0 194 0 10 5 233 0 11 0 194 0 13 5 237 0 14 5 241 0 17 0 194 0 19 0 194 0 20 0 194 0 23 0 194 0 24 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 48 0 194 0 49 0 194 0 77 0 194 0 78 0 194 0 85 0 194 0 107 0 194 0 108 0 194 0 119 0 194 0 120 0 194 1 186 0 194 1 190] 
#[1 0 198 0 2 0 198 0 4 0 198 0 6 0 198 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 0 198 0 23 0 198 0 24 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 48 0 198 0 49 6 5 0 77 6 9 0 78 0 198 0 85 0 198 0 107 0 198 0 108 0 198 0 119 0 198 0 120 0 198 1 186 0 198 1 190] 
#[1 0 202 0 2 0 202 0 4 0 202 0 6 0 202 0 7 6 13 0 23 6 17 0 24 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 44 0 202 0 45 0 202 0 46 6 21 0 48 6 25 0 49 0 202 0 85 0 202 0 107 0 202 0 108 0 202 0 119 0 202 0 120 0 202 1 186 0 202 1 190] 
#[1 0 206 0 2 0 206 0 4 0 206 0 6 0 206 0 7 6 29 0 39 0 206 0 40 0 206 0 41 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 85 0 206 0 107 0 206 0 108 0 206 0 119 0 206 0 120 0 206 1 186 0 206 1 190] 
#[1 0 210 0 2 0 210 0 4 0 210 0 6 0 210 0 7 0 210 0 40 0 210 0 41 0 210 0 44 0 210 0 45 6 33 0 46 0 210 0 85 0 210 0 107 0 210 0 108 0 210 0 119 0 210 0 120 0 210 1 186 0 210 1 190] 
#[1 0 214 0 2 0 214 0 4 0 214 0 6 0 214 0 7 0 214 0 40 0 214 0 41 6 37 0 44 0 214 0 45 0 214 0 85 0 214 0 107 0 214 0 108 0 214 0 119 0 214 0 120 0 218 1 186 0 214 1 190] 
#[1 0 222 0 2 0 222 0 4 0 222 0 6 0 222 0 7 6 41 0 40 0 222 0 41 0 222 0 45 0 222 0 85 0 222 0 107 0 222 0 108 0 222 0 119 0 222 0 120 0 222 1 190] 
#[1 0 226 0 2 0 226 0 4 0 226 0 6 0 226 0 7 0 226 0 41 6 45 0 45 0 226 0 85 0 226 0 107 0 226 0 108 0 226 0 119 0 226 0 120 0 226 1 190] 
#[1 0 230 0 2 0 230 0 4 0 230 0 6 0 230 0 7 0 230 0 41 0 230 0 85 0 230 0 107 0 230 0 108 0 230 0 119 0 230 0 120 0 234 1 186 0 230 1 190] 
#[0 6 49 1 186] 
#[1 0 238 0 2 0 238 0 4 0 238 0 6 0 238 0 7 6 53 0 41 0 238 0 85 0 238 0 107 0 238 0 108 0 238 0 119 0 238 0 120 0 238 1 190] 
#[0 0 242 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[0 0 246 0 2 0 6 0 7 0 107 0 108 0 119 0 120 1 190] 
#[1 6 57 0 7 6 61 0 107] 
#[0 0 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 62 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 0 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 10 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 62 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 6 65 0 126 6 69 0 193 6 73 0 194 6 77 0 198 6 77 0 199 6 77 0 200 6 73 1 116 6 73 1 117 6 89 1 189] 
#[0 1 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 1 78 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[0 6 93 0 18] 
#[0 1 82 0 18] 
#[0 1 86 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[0 1 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 1 94 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[0 1 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 1 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 1 106 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[0 1 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 1 114 1 190] 
#[0 1 118 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 0 105 0 67 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 0 125 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 6 97 0 183 6 97 0 186 6 97 0 187 6 97 0 188 6 97 0 190 6 97 0 191 1 137 0 192 6 97 0 195 6 97 0 209 6 97 0 210 6 97 0 211 6 97 0 212 6 97 0 215 6 97 0 216 6 97 0 218 6 97 0 219 6 97 0 220 6 97 0 225 6 97 0 227 6 97 0 228 6 97 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 6 97 1 21 6 97 1 22 6 97 1 32 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189 1 122 1 190] 
#[0 1 126 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 130 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 134 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 0 121 0 122 0 123 1 186 1 188 1 189 1 190] 
#[1 1 166 0 3 1 166 0 121 1 166 0 123 6 101 1 66] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 6 105 0 121] 
#[1 6 109 0 1 6 113 0 10 6 117 0 73 6 121 1 70 6 125 1 110] 
#[1 6 129 0 4 6 133 0 5 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 90 3 121 0 106 2 61 0 110 3 125 0 111 6 145 0 113 6 149 0 114 6 141 0 126 3 145 0 127 3 137 0 136 3 141 0 137 3 145 0 138 3 145 0 139 3 145 0 140 3 141 0 141 3 141 0 249 3 141 0 251 3 141 1 0 3 141 1 4 6 145 1 39 6 149 1 40 3 141 1 111 3 141 1 112 6 153 1 189] 
#[0 4 181 0 1] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 68 0 72 0 77 0 78 0 85 0 86 0 87 0 88 0 91 0 107 0 108 0 111 0 113 0 114 0 117 0 118 0 119 0 120 1 185 1 186 1 188 1 189 1 190] 
#[1 6 61 0 107 0 0 1 190] 
#[0 0 0 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 6 157 0 183 6 157 0 186 6 157 0 187 6 157 0 188 6 157 0 190 6 157 0 191 1 137 0 192 6 157 0 195 6 157 0 209 6 157 0 210 6 157 0 211 6 157 0 212 6 157 0 215 6 157 0 216 6 157 0 218 6 157 0 219 6 157 0 220 6 157 0 225 6 157 0 227 6 157 0 228 6 157 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189 1 174 1 190] 
#[0 1 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 62 0 63 0 64 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 0 0 1 190] 
#[0 1 182 1 190] 
#[0 0 0 1 190] 
#[1 4 45 0 3 4 49 0 68 2 61 0 110 6 161 0 126 6 165 1 11 4 61 1 12 4 65 1 189] 
#[1 0 50 0 3 0 50 0 5 6 169 0 66 0 50 0 110 0 50 1 189] 
#[1 6 173 0 56 6 177 0 57 2 105 0 66 6 181 0 73 6 185 0 80 6 189 0 81 6 193 0 82 6 197 0 101 6 217 1 131 6 205 1 169 6 209 1 172 6 213 1 173 6 217 1 179 6 221 1 180] 
#[1 2 61 0 110 6 225 0 126] 
#[1 4 85 0 3 6 229 0 22 6 233 0 25 4 97 0 56 2 97 0 57 6 237 0 61 6 241 0 62 2 105 0 66 4 105 0 73 6 245 0 76 2 121 0 79 1 137 0 80 2 125 0 82 2 129 0 99 0 173 0 101 6 249 0 191 1 137 0 192 6 253 0 195 7 1 0 233 7 5 0 252 7 9 1 9 7 13 1 22 7 17 1 34 7 21 1 109 7 25 1 118 7 29 1 131 7 33 1 136 7 37 1 142 7 41 1 168 7 45 1 189] 
#[1 7 49 0 1 7 53 0 25 2 61 0 110 7 57 0 126] 
#[1 4 181 0 1 4 185 0 3 4 189 0 25 2 61 0 110 4 213 0 113 7 61 0 126 4 197 1 23 4 201 1 24 4 205 1 25 4 209 1 26 4 213 1 30 4 201 1 31 4 213 1 39] 
#[1 2 61 0 110 7 65 0 126] 
#[1 2 61 0 110 7 69 0 126 7 73 1 137] 
#[1 2 61 0 110 7 77 0 126] 
#[0 1 186 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 190 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 194 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 198 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 202 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 1 206 0 1 1 206 0 3 1 206 0 5 1 206 0 7 1 206 0 34 1 206 0 35 1 206 0 36 1 206 0 37 1 206 0 38 1 206 0 47 1 206 0 51 1 206 0 52 1 206 0 53 1 206 0 56 1 206 0 57 1 206 0 59 1 206 0 60 0 15 0 61 1 206 0 63 1 206 0 64 1 206 0 66 0 15 0 67 1 206 0 69 1 206 0 71 1 206 0 73 1 206 0 75 0 15 0 76 0 15 0 79 1 206 0 80 0 15 0 82 1 206 0 83 1 206 0 84 1 206 0 89 1 206 0 92 1 206 0 93 1 206 0 95 1 206 0 96 1 206 0 97 1 206 0 98 0 15 0 99 1 206 0 100 1 206 0 101 1 206 0 102 1 206 0 103 1 206 0 104 1 206 0 105 1 206 0 110 1 206 0 113 1 206 0 114 1 206 0 115 1 206 0 117 1 206 0 118 1 206 0 121 1 206 1 189 0 15 1 190] 
#[1 1 214 0 1 1 214 0 3 1 214 0 5 1 214 0 7 1 214 0 34 1 214 0 35 1 214 0 36 1 214 0 37 1 214 0 38 1 214 0 47 1 214 0 51 1 214 0 52 1 214 0 53 1 214 0 56 1 214 0 57 1 214 0 59 1 214 0 60 0 19 0 61 1 214 0 63 1 214 0 64 1 214 0 66 0 19 0 67 1 214 0 69 1 214 0 71 1 214 0 73 1 214 0 75 0 19 0 76 0 19 0 79 1 214 0 80 0 19 0 82 1 214 0 83 1 214 0 84 1 214 0 89 1 214 0 92 1 214 0 93 1 214 0 95 1 214 0 96 1 214 0 97 1 214 0 98 0 19 0 99 1 214 0 100 1 214 0 101 1 214 0 102 1 214 0 103 1 214 0 104 1 214 0 105 1 214 0 110 1 214 0 113 1 214 0 114 1 214 0 115 1 214 0 117 1 214 0 118 1 214 0 121 1 214 1 189 0 19 1 190] 
#[1 1 222 0 1 1 222 0 3 1 222 0 5 1 222 0 7 1 222 0 34 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 38 1 222 0 47 1 222 0 51 1 222 0 52 1 222 0 53 1 222 0 56 1 222 0 57 1 222 0 59 1 222 0 60 0 23 0 61 1 222 0 63 1 222 0 64 1 222 0 66 0 23 0 67 1 222 0 69 1 222 0 71 1 222 0 73 1 222 0 75 0 23 0 76 0 23 0 79 1 222 0 80 0 23 0 82 1 222 0 83 1 222 0 84 1 222 0 89 1 222 0 92 1 222 0 93 1 222 0 95 1 222 0 96 1 222 0 97 1 222 0 98 0 23 0 99 1 222 0 100 1 222 0 101 1 222 0 102 1 222 0 103 1 222 0 104 1 222 0 105 1 222 0 110 1 222 0 113 1 222 0 114 1 222 0 115 1 222 0 117 1 222 0 118 1 222 0 121 1 222 1 189 0 23 1 190] 
#[0 1 230 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 7 1 234 0 34 1 234 0 35 1 234 0 36 1 234 0 37 1 234 0 38 1 234 0 47 1 234 0 51 1 234 0 52 1 234 0 53 1 234 0 56 1 234 0 57 1 234 0 59 1 234 0 60 0 27 0 61 1 234 0 63 1 234 0 64 1 234 0 66 0 27 0 67 1 234 0 69 1 234 0 71 1 234 0 73 1 234 0 75 0 27 0 76 0 27 0 79 1 234 0 80 0 27 0 82 1 234 0 83 1 234 0 84 1 234 0 89 1 234 0 92 1 234 0 93 1 234 0 95 1 234 0 96 1 234 0 97 1 234 0 98 0 27 0 99 1 234 0 100 1 234 0 101 1 234 0 102 1 234 0 103 1 234 0 104 1 234 0 105 1 234 0 110 1 234 0 113 1 234 0 114 1 234 0 115 1 234 0 117 1 234 0 118 1 234 0 121 1 234 1 189 0 27 1 190] 
#[1 0 31 0 1 0 31 0 3 0 31 0 5 0 31 0 7 0 31 0 34 0 31 0 35 0 31 0 36 0 31 0 37 0 31 0 38 0 31 0 47 0 31 0 51 0 31 0 52 0 31 0 53 0 31 0 56 0 31 0 57 0 31 0 59 0 31 0 60 0 35 0 61 0 31 0 63 0 31 0 64 0 31 0 66 0 35 0 67 0 31 0 69 0 31 0 71 0 31 0 73 0 31 0 75 0 35 0 76 0 35 0 79 0 31 0 80 0 35 0 82 0 31 0 83 0 31 0 84 0 31 0 89 0 31 0 92 0 31 0 93 0 31 0 95 0 31 0 96 0 31 0 97 0 31 0 98 0 35 0 99 0 31 0 100 0 31 0 101 0 31 0 102 0 31 0 103 0 31 0 104 0 31 0 105 0 31 0 110 0 31 0 113 0 31 0 114 0 31 0 115 0 31 0 117 0 31 0 118 0 31 0 121 0 31 1 189 0 35 1 190] 
#[0 0 0 1 190] 
#[0 2 2 1 190] 
#[0 2 6 1 190] 
#[0 2 10 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 2 101 0 61 0 97 0 63 0 101 0 64 2 105 0 66 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 7 81 0 76 2 121 0 79 1 137 0 80 2 125 0 82 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 2 129 0 99 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 7 101 0 183 7 101 0 186 7 101 0 187 7 101 0 188 7 101 0 191 1 137 0 192 7 101 0 195 7 101 0 209 7 101 0 210 7 101 0 211 7 101 0 212 7 101 0 215 7 101 0 216 7 101 0 218 7 101 0 219 7 101 0 220 7 101 0 225 7 101 0 227 7 101 0 228 7 101 0 232 7 101 0 233 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 7 101 0 252 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 7 101 1 9 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 7 101 1 109 7 101 1 118 7 101 1 131 7 101 1 136 7 101 1 142 7 101 1 149 7 101 1 150 7 101 1 168 7 101 1 184 3 25 1 189 2 14 1 190] 
#[0 2 18 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 39 0 1 0 39 0 3 0 39 0 5 0 39 0 7 0 39 0 34 0 39 0 35 0 39 0 36 0 39 0 37 0 39 0 38 0 39 0 47 0 39 0 51 0 39 0 52 0 39 0 53 0 39 0 56 0 39 0 57 0 39 0 59 0 39 0 60 0 39 0 61 0 39 0 63 0 39 0 64 0 39 0 66 2 22 0 67 0 39 0 69 0 39 0 71 0 39 0 73 0 39 0 75 0 39 0 76 0 39 0 79 0 39 0 80 0 39 0 82 0 39 0 83 0 39 0 84 0 39 0 89 0 39 0 92 0 39 0 93 0 39 0 95 0 39 0 96 0 39 0 97 0 39 0 98 0 39 0 99 0 39 0 100 0 39 0 101 0 39 0 102 0 39 0 103 0 39 0 104 0 39 0 105 0 39 0 110 0 39 0 113 0 39 0 114 0 39 0 115 0 39 0 117 0 39 0 118 0 39 0 121 0 39 1 189 0 39 1 190] 
#[0 2 30 1 190] 
#[1 2 101 0 61 7 117 0 76 2 121 0 79 2 125 0 82 2 129 0 99 7 137 1 109 7 137 1 118 7 137 1 136 7 137 1 142 7 137 1 153 7 137 1 154 7 137 1 168 7 137 1 184 2 34 1 190] 
#[0 2 38 0 61 0 76 0 79 0 82 0 99 1 190] 
#[1 0 43 0 61 2 42 0 67 0 43 0 76 0 43 0 79 0 43 0 82 0 43 0 99 0 43 1 190] 
#[0 2 50 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 6 237 0 61 0 97 0 63 0 101 0 64 2 105 0 66 7 153 0 67 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 2 117 0 76 2 121 0 79 1 137 0 80 2 125 0 82 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 2 129 0 99 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 7 169 0 183 7 169 0 186 7 169 0 187 7 169 0 188 7 169 0 191 1 137 0 192 7 169 0 195 7 169 0 209 7 169 0 210 7 169 0 211 7 169 0 212 7 169 0 215 7 169 0 216 7 169 0 218 7 169 0 219 7 169 0 220 7 169 0 225 7 169 0 227 7 169 0 228 7 169 0 232 7 169 0 233 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 7 169 0 252 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 7 169 1 9 0 253 1 10 7 169 1 22 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 7 169 1 109 7 169 1 118 7 169 1 131 7 169 1 136 7 161 1 142 7 169 1 150 7 169 1 157 7 169 1 161 7 169 1 162 7 169 1 164 7 169 1 166 7 169 1 167 7 169 1 168 3 25 1 189 2 54 1 190] 
#[0 2 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 2 62 1 190] 
#[1 2 66 0 4 6 237 0 61 7 181 0 67 6 245 0 76 2 121 0 79 2 125 0 82 2 129 0 99 7 197 1 22 7 197 1 109 7 197 1 118 7 197 1 136 7 189 1 142 7 197 1 154 7 197 1 160 7 197 1 163 7 197 1 165 7 197 1 166 7 197 1 167 7 197 1 168 2 66 1 190] 
#[0 2 70 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 2 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 2 78 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 2 82 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 2 86 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 2 90 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[1 2 94 0 1 2 94 0 3 2 94 0 5 2 94 0 7 2 94 0 34 2 94 0 35 2 94 0 36 2 94 0 37 2 94 0 38 2 94 0 47 2 94 0 51 2 94 0 52 2 94 0 53 2 94 0 56 2 94 0 57 2 94 0 59 2 94 0 60 0 47 0 61 2 94 0 63 2 94 0 64 2 94 0 66 0 47 0 67 2 94 0 69 2 94 0 71 2 94 0 73 2 94 0 75 0 47 0 76 0 47 0 79 2 94 0 80 0 47 0 82 2 94 0 83 2 94 0 84 2 94 0 89 2 94 0 92 2 94 0 93 2 94 0 95 2 94 0 96 2 94 0 97 2 94 0 98 0 47 0 99 2 94 0 100 2 94 0 101 2 94 0 102 2 94 0 103 2 94 0 104 2 94 0 105 2 94 0 110 2 94 0 113 2 94 0 114 2 94 0 115 2 94 0 117 2 94 0 118 2 94 0 121 2 94 1 189 0 47 1 190] 
#[1 2 102 0 1 2 102 0 3 2 102 0 5 2 102 0 7 2 102 0 34 2 102 0 35 2 102 0 36 2 102 0 37 2 102 0 38 2 102 0 47 2 102 0 51 2 102 0 52 2 102 0 53 2 102 0 56 2 102 0 57 2 102 0 59 2 102 0 60 0 51 0 61 2 102 0 63 2 102 0 64 2 102 0 66 0 51 0 67 2 102 0 69 2 102 0 71 2 102 0 73 2 102 0 75 0 51 0 76 0 51 0 79 2 102 0 80 0 51 0 82 2 102 0 83 2 102 0 84 2 102 0 89 2 102 0 92 2 102 0 93 2 102 0 95 2 102 0 96 2 102 0 97 2 102 0 98 0 51 0 99 2 102 0 100 2 102 0 101 2 102 0 102 2 102 0 103 2 102 0 104 2 102 0 105 2 102 0 110 2 102 0 113 2 102 0 114 2 102 0 115 2 102 0 117 2 102 0 118 2 102 0 121 2 102 1 189 0 51 1 190] 
#[1 2 110 0 1 2 110 0 3 2 110 0 5 2 110 0 7 2 110 0 34 2 110 0 35 2 110 0 36 2 110 0 37 2 110 0 38 2 110 0 47 2 110 0 51 2 110 0 52 2 110 0 53 2 110 0 56 2 110 0 57 2 110 0 59 2 110 0 60 0 55 0 61 2 110 0 63 2 110 0 64 2 110 0 66 0 55 0 67 2 110 0 69 2 110 0 71 2 110 0 73 2 110 0 75 0 55 0 76 0 55 0 79 2 110 0 80 0 55 0 82 2 110 0 83 2 110 0 84 2 110 0 89 2 110 0 92 2 110 0 93 2 110 0 95 2 110 0 96 2 110 0 97 2 110 0 98 0 55 0 99 2 110 0 100 2 110 0 101 2 110 0 102 2 110 0 103 2 110 0 104 2 110 0 105 2 110 0 110 2 110 0 113 2 110 0 114 2 110 0 115 2 110 0 117 2 110 0 118 2 110 0 121 2 110 1 189 0 55 1 190] 
#[1 2 118 0 1 2 118 0 3 2 118 0 5 2 118 0 7 2 118 0 34 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 2 118 0 47 2 118 0 51 2 118 0 52 2 118 0 53 2 118 0 56 2 118 0 57 2 118 0 59 2 118 0 60 0 59 0 61 2 118 0 63 2 118 0 64 2 118 0 66 2 118 0 69 2 118 0 71 2 118 0 73 2 118 0 75 0 59 0 76 0 59 0 79 2 118 0 80 0 59 0 82 2 118 0 83 2 118 0 84 2 118 0 89 2 118 0 92 2 118 0 93 2 118 0 95 2 118 0 96 2 118 0 97 2 118 0 98 0 59 0 99 2 118 0 100 2 118 0 101 2 118 0 102 2 118 0 103 2 118 0 104 2 118 0 105 2 118 0 110 2 118 0 113 2 118 0 114 2 118 0 115 2 118 0 117 2 118 0 118 2 118 0 121 2 118 1 189 0 59 1 190] 
#[1 6 109 0 1 6 113 0 10 7 209 0 73 2 61 0 110 7 213 0 126 7 217 1 70 6 125 1 110] 
#[1 7 221 0 4 6 133 0 5 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 90 7 225 0 106 2 61 0 110 3 125 0 111 6 145 0 113 6 149 0 114 7 229 0 126 7 233 0 127 3 137 0 136 3 141 0 137 7 233 0 138 7 233 0 139 7 233 0 140 3 141 0 141 7 237 0 201 7 241 0 202 7 245 0 205 7 245 0 207 3 141 0 249 3 141 0 251 3 141 1 0 3 141 1 4 6 145 1 39 6 149 1 40 3 141 1 111 3 141 1 112 7 253 1 189] 
#[1 0 29 0 1 3 29 0 3 3 33 0 5 8 1 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 8 5 0 106 3 209 0 107 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 3 41 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 3 213 0 132 8 9 0 133 3 221 0 134 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 3 225 0 179 3 225 0 180 3 49 0 198 3 49 0 199 3 49 0 200 8 13 0 203 8 17 0 204 8 21 0 206 8 21 0 207 8 25 0 208 0 253 0 234 3 225 0 242 1 205 0 243 1 209 0 246 3 225 0 247 0 253 0 253 3 225 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 93 1 189] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 8 29 0 126 8 33 0 198 8 33 0 199 8 33 0 200] 
#[1 0 102 0 1 0 63 0 2 0 63 0 4 0 102 0 5 0 63 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 67 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 77 0 102 0 78 0 63 0 107 0 102 0 117 0 102 0 118 8 41 0 142 0 102 1 186 0 102 1 188 0 102 1 189] 
#[1 8 45 0 2 6 61 0 107] 
#[1 2 130 0 2 2 130 0 4 2 130 0 6 8 37 0 22 2 130 0 107 8 49 0 142] 
#[0 2 134 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[0 2 138 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[0 2 142 0 2 0 107] 
#[0 2 146 0 2 0 4 0 6 0 107] 
#[0 2 150 0 2] 
#[0 8 53 0 2] 
#[0 2 154 0 2] 
#[1 2 158 0 2 8 57 0 107] 
#[0 2 162 0 2] 
#[0 2 166 0 2 0 107] 
#[1 6 109 0 1 5 33 0 3 5 37 0 5 6 113 0 10 6 117 0 73 8 81 0 86 8 81 0 87 8 81 0 88 2 61 0 110 8 73 0 126 8 77 0 198 8 77 0 199 8 77 0 200 6 121 1 70 8 81 1 104 6 125 1 110] 
#[1 0 71 0 1 2 174 0 3 2 174 0 4 0 71 0 5 0 71 0 7 2 170 0 8 2 170 0 9 2 170 0 10 2 170 0 11 2 170 0 12 2 170 0 13 2 170 0 14 2 170 0 15 2 170 0 16 2 170 0 17 2 170 0 19 2 170 0 20 2 170 0 21 2 170 0 22 2 170 0 23 2 170 0 24 2 170 0 25 2 170 0 26 2 170 0 27 2 170 0 28 2 170 0 29 2 170 0 30 2 170 0 31 2 170 0 32 2 170 0 33 0 71 0 34 0 71 0 35 0 71 0 36 0 71 0 37 2 174 0 38 2 170 0 39 2 170 0 40 2 170 0 41 2 170 0 42 2 170 0 43 2 170 0 44 2 170 0 45 2 170 0 46 2 174 0 47 2 170 0 48 2 170 0 49 2 174 0 51 2 174 0 52 2 174 0 53 2 174 0 54 2 174 0 56 2 174 0 57 2 174 0 59 2 174 0 60 2 174 0 61 2 174 0 62 2 174 0 63 2 174 0 64 2 174 0 65 2 174 0 66 2 174 0 67 2 174 0 69 2 174 0 71 2 174 0 73 2 174 0 75 2 174 0 76 2 170 0 77 2 170 0 78 2 174 0 79 2 174 0 80 2 174 0 82 2 174 0 83 2 174 0 84 2 174 0 89 2 174 0 92 2 174 0 93 2 174 0 95 2 174 0 96 2 174 0 97 2 174 0 98 2 174 0 99 2 174 0 100 2 174 0 101 2 174 0 102 2 174 0 103 2 174 0 104 2 174 0 105 2 170 0 107 2 174 0 110 2 174 0 113 2 174 0 114 2 174 0 115 0 71 0 117 0 71 0 118 2 174 0 121 2 170 1 186 2 170 1 188 0 71 1 189 2 174 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 3 201 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 3 205 0 106 3 209 0 107 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 3 213 0 132 3 217 0 133 3 221 0 134 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 8 85 0 179 8 85 0 180 0 253 0 234 8 85 0 242 1 205 0 243 1 209 0 246 8 85 0 247 0 253 0 253 8 85 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 8 89 0 127 8 89 0 138 8 89 0 139 8 89 0 140 6 145 1 39 6 149 1 40] 
#[1 4 17 0 1 6 133 0 5 8 93 0 25 4 21 0 73 2 61 0 110 3 125 0 111 6 145 0 113 6 149 0 114 4 25 0 126 8 97 0 127 8 97 0 138 8 97 0 139 8 97 0 140 4 29 0 243 1 209 0 246 6 145 1 39 6 149 1 40 4 33 1 189] 
#[1 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 8 101 0 127 8 101 0 138 8 101 0 139 8 101 0 140 6 145 1 39 6 149 1 40] 
#[1 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 8 105 0 127 8 105 0 138 8 105 0 139 8 105 0 140 6 145 1 39 6 149 1 40] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 8 109 0 179 8 109 0 180 0 253 0 234 8 109 0 242 1 205 0 243 1 209 0 246 8 109 0 247 0 253 0 253 8 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 2 178 0 1 0 4 0 7 0 10 0 22 0 41 0 107 0 108] 
#[1 0 102 0 1 2 182 0 4 0 102 0 5 0 102 0 7 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 67 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 77 0 102 0 78 0 75 0 107 0 102 0 117 0 102 0 118 8 113 0 142 0 102 1 186 0 102 1 188 0 102 1 189] 
#[0 2 186 0 1 0 4 0 7 0 10 0 22 0 41 0 107 0 108] 
#[1 8 117 0 4 8 121 0 107] 
#[0 2 190 0 4 0 107] 
#[1 8 125 0 1 8 129 0 108] 
#[0 2 194 0 1 0 4 0 7 0 10 0 22 0 41 0 107 0 108] 
#[0 2 198 0 1 0 4 0 7 0 10 0 22 0 41 0 107 0 108] 
#[0 2 202 0 4 0 107] 
#[1 0 29 0 1 0 33 0 3 8 133 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 6 157 0 183 6 157 0 186 6 157 0 187 6 157 0 188 6 157 0 190 6 157 0 191 1 137 0 192 6 157 0 195 6 157 0 209 6 157 0 210 6 157 0 211 6 157 0 212 6 157 0 215 6 157 0 216 6 157 0 218 6 157 0 219 6 157 0 220 6 157 0 225 6 157 0 227 6 157 0 228 6 157 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 2 206 0 4 0 107] 
#[0 2 210 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 2 214 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 2 218 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[1 0 79 0 1 1 146 0 5 1 146 0 7 1 146 0 8 1 146 0 9 1 146 0 10 1 146 0 11 1 146 0 12 1 146 0 13 1 146 0 14 1 146 0 15 1 146 0 16 1 146 0 17 1 146 0 19 1 146 0 20 1 146 0 21 1 146 0 22 1 146 0 23 1 146 0 24 1 146 0 25 1 146 0 26 1 146 0 27 1 146 0 28 1 146 0 29 1 146 0 30 1 146 0 31 1 146 0 32 1 146 0 33 1 146 0 34 1 146 0 35 1 146 0 36 1 146 0 37 1 146 0 39 1 146 0 40 1 146 0 41 1 146 0 42 1 146 0 43 1 146 0 44 1 146 0 45 1 146 0 46 1 146 0 48 1 146 0 49 1 146 0 77 1 146 0 78 1 146 0 107 2 222 0 108 1 146 0 117 1 146 0 118 1 146 1 186 1 146 1 188 1 146 1 189] 
#[1 0 83 0 1 1 150 0 5 1 150 0 7 1 150 0 8 1 150 0 9 1 150 0 10 1 150 0 11 1 150 0 12 1 150 0 13 1 150 0 14 1 150 0 15 1 150 0 16 1 150 0 17 1 150 0 19 1 150 0 20 1 150 0 21 1 150 0 22 1 150 0 23 1 150 0 24 1 150 0 25 1 150 0 26 1 150 0 27 1 150 0 28 1 150 0 29 1 150 0 30 1 150 0 31 1 150 0 32 1 150 0 33 1 150 0 34 1 150 0 35 1 150 0 36 1 150 0 37 1 150 0 39 1 150 0 40 1 150 0 41 1 150 0 42 1 150 0 43 1 150 0 44 1 150 0 45 1 150 0 46 1 150 0 48 1 150 0 49 1 150 0 77 1 150 0 78 1 150 0 107 2 226 0 108 1 150 0 117 1 150 0 118 1 150 1 186 1 150 1 188 1 150 1 189] 
#[0 2 230 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 2 234 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[1 6 109 0 1 6 133 0 5 6 113 0 10 6 117 0 73 8 137 0 74 8 141 0 90 3 125 0 111 6 145 0 113 6 149 0 114 8 145 0 127 8 145 0 138 8 145 0 139 8 145 0 140 6 145 1 39 6 149 1 40 6 121 1 70 6 125 1 110] 
#[0 2 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 8 149 0 179 8 149 0 180 0 253 0 234 8 149 0 242 1 205 0 243 1 209 0 246 8 149 0 247 0 253 0 253 8 149 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 2 242 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 106 0 107 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[1 8 153 0 6 3 209 0 107 8 157 0 133] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 8 161 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 3 205 0 106 8 165 0 107 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 8 169 0 134 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 8 173 0 179 8 173 0 180 0 253 0 234 8 173 0 242 1 205 0 243 1 209 0 246 8 173 0 247 0 253 0 253 8 173 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 2 246 0 6 0 107] 
#[0 2 250 0 6 0 107] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 3 45 0 179 3 45 0 180 3 45 0 182 0 253 0 234 3 45 0 242 1 205 0 243 1 209 0 246 3 45 0 247 0 253 0 253 3 45 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 4 21 0 73] 
#[0 0 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 170 0 2 0 170 0 4 0 170 0 6 0 170 0 7 0 170 0 8 0 170 0 10 0 170 0 11 0 170 0 13 0 170 0 14 0 170 0 17 0 170 0 19 0 170 0 20 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 0 170 0 34 5 189 0 35 0 170 0 36 5 193 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 48 0 170 0 49 0 170 0 77 0 170 0 78 0 170 0 85 0 170 0 107 0 170 0 108 0 170 0 119 0 170 0 120 0 170 1 186 0 170 1 190] 
#[0 2 254 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[1 8 177 0 10 6 117 0 73] 
#[0 3 2 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[0 3 6 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[0 3 10 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[0 3 14 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[0 3 18 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 3 73 0 235 3 77 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 8 189 0 1 8 193 0 25 2 61 0 110 8 197 0 126] 
#[0 0 106 0 18] 
#[0 8 201 0 18] 
#[1 6 109 0 1 8 205 0 10 6 121 1 70 6 125 1 110] 
#[0 3 22 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[1 8 209 0 7 2 61 0 110 8 213 0 126] 
#[1 8 217 0 4 6 133 0 5 8 221 0 7 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 90 8 225 0 91 3 125 0 111 6 145 0 113 6 149 0 114 8 229 0 127 8 229 0 138 8 229 0 139 8 229 0 140 8 245 0 249 8 245 0 251 8 245 1 0 8 245 1 4 8 237 1 13 8 241 1 14 8 245 1 15 6 145 1 39 6 149 1 40 8 245 1 111 8 245 1 112 8 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 3 233 0 51 0 81 0 56 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 8 253 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 8 253 0 161 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 4 241 1 189] 
#[1 4 45 0 3 4 49 0 68 9 1 1 11 4 61 1 12 4 65 1 189] 
#[0 3 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 9 5 0 3] 
#[1 9 9 0 68 9 13 1 122 9 17 1 124 9 21 1 185] 
#[1 9 25 0 7 2 61 0 110 9 29 0 126] 
#[0 3 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 3 34 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[0 9 33 0 103] 
#[1 9 37 0 4 9 41 0 111 9 45 1 35 9 49 1 36] 
#[1 9 53 0 50 3 38 0 72] 
#[0 9 57 0 73] 
#[1 4 45 0 3 4 49 0 68 2 61 0 110 9 61 0 126 9 65 1 11 4 61 1 12 4 65 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 9 69 0 179 9 69 0 180 0 253 0 234 9 69 0 242 1 205 0 243 1 209 0 246 9 69 0 247 0 253 0 253 9 69 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 9 73 0 1 9 77 0 25 2 61 0 110 9 81 0 126] 
#[0 3 42 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 3 46 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 3 50 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 3 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 3 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 3 62 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 3 66 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 3 70 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 3 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 9 85 0 72 9 89 1 27] 
#[1 9 93 0 7 3 78 0 72] 
#[1 8 205 0 10 9 97 0 57 2 105 0 66 9 101 0 73 2 121 0 79 2 129 0 99 2 61 0 110 7 213 0 126 9 105 1 70 9 109 1 109 9 113 1 118 9 117 1 131] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 9 121 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 9 141 0 57 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 9 141 0 80 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 9 125 0 101 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 9 129 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 9 129 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 9 133 0 179 9 133 0 180 9 133 0 182 9 137 0 191 9 141 0 192 9 145 0 213 0 253 0 234 9 133 0 242 1 205 0 243 1 209 0 246 9 133 0 247 0 253 0 253 9 133 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 9 149 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 9 153 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 9 157 0 1 2 61 0 110 9 161 0 126] 
#[0 9 165 0 1] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 9 169 0 179 9 169 0 180 9 169 0 182 0 253 0 234 9 169 0 242 1 205 0 243 1 209 0 246 9 169 0 247 0 253 0 253 9 169 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 9 173 0 179 9 173 0 180 0 253 0 234 9 173 0 242 1 205 0 243 1 209 0 246 9 173 0 247 0 253 0 253 9 173 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 9 177 0 4 2 61 0 110 9 181 0 111 9 193 0 126 9 185 1 28 9 189 1 29 9 193 1 31] 
#[0 9 197 0 50] 
#[0 3 82 0 4 0 72 0 107] 
#[1 9 85 0 72 9 201 1 27] 
#[1 3 86 0 72 9 205 0 107] 
#[0 3 90 0 72] 
#[0 3 94 0 72] 
#[0 9 209 0 7] 
#[0 3 98 0 72 0 107] 
#[0 3 102 0 7] 
#[0 9 213 0 94] 
#[1 4 253 0 5 5 1 0 21] 
#[1 4 249 0 1 0 134 0 2 0 134 0 3 0 134 0 4 5 93 0 5 0 134 0 6 0 134 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 19 0 134 0 20 5 97 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 48 0 134 0 49 0 134 0 77 0 134 0 78 0 134 0 85 0 134 0 107 0 134 0 108 0 209 0 117 0 6 0 118 0 134 0 119 0 134 0 120 5 105 0 143 0 249 0 144 9 217 0 155 0 134 1 186 0 134 1 188 5 9 1 189 0 134 1 190] 
#[0 3 106 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 188 1 190] 
#[0 6 117 0 73] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 9 221 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 9 225 0 179 9 225 0 180 9 225 0 182 0 253 0 234 9 225 0 242 1 205 0 243 1 209 0 246 9 225 0 247 0 253 0 253 9 225 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 9 229 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 9 233 0 106 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 9 237 0 156 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 9 241 0 179 9 241 0 180 0 253 0 234 9 241 0 242 1 205 0 243 1 209 0 246 9 241 0 247 0 253 0 253 9 241 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 9 245 0 179 9 245 0 180 9 245 0 182 0 253 0 234 9 245 0 242 1 205 0 243 1 209 0 246 9 245 0 247 0 253 0 253 9 245 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 9 249 0 111] 
#[0 3 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 9 253 0 10 10 1 1 74] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 10 5 0 179 10 5 0 180 10 5 0 182 0 253 0 234 10 5 0 242 1 205 0 243 1 209 0 246 10 5 0 247 0 253 0 253 10 5 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 10 9 0 7 6 61 0 107] 
#[1 0 29 0 1 0 33 0 3 10 13 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 3 161 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 10 17 0 55 10 21 0 70 10 25 0 229 10 29 0 230] 
#[0 3 114 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[1 10 33 0 4 6 133 0 5 10 37 0 106 2 61 0 110 3 125 0 111 6 145 0 113 6 149 0 114 8 181 0 126 10 41 0 127 10 41 0 138 10 41 0 139 10 41 0 140 7 237 0 201 7 241 0 202 7 245 0 205 7 245 0 207 6 145 1 39 6 149 1 40 10 45 1 189] 
#[1 5 33 0 3 5 37 0 5 10 49 0 6 3 37 0 106 3 209 0 107 2 61 0 110 8 181 0 126 10 53 0 133 3 49 0 198 3 49 0 199 3 49 0 200 8 13 0 203 8 17 0 204 8 21 0 206 8 21 0 207 8 25 0 208 8 185 1 189] 
#[1 3 118 0 7 8 37 0 22 3 118 0 85 3 118 0 107 10 57 0 142] 
#[1 10 61 0 7 10 65 0 107] 
#[0 3 122 0 7 0 107] 
#[1 8 37 0 22 10 69 0 142] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 10 73 0 126 10 77 0 198 10 77 0 199 10 77 0 200 10 81 1 114 10 85 1 115] 
#[0 3 126 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 10 89 0 179 10 89 0 180 10 89 0 182 0 253 0 234 10 89 0 242 1 205 0 243 1 209 0 246 10 89 0 247 0 253 0 253 10 89 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 10 93 0 179 10 93 0 180 10 93 0 182 0 253 0 234 10 93 0 242 1 205 0 243 1 209 0 246 10 93 0 247 0 253 0 253 10 93 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 10 97 0 179 10 97 0 180 0 253 0 234 10 97 0 242 1 205 0 243 1 209 0 246 10 97 0 247 0 253 0 253 10 97 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 3 130 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 10 105 0 183 10 105 0 186 10 105 0 187 10 105 0 188 10 105 0 195 10 105 0 209 10 105 0 210 10 105 0 211 10 105 0 212 10 105 0 215 10 105 0 216 10 105 0 218 10 105 0 219 10 105 0 220 10 105 0 225 10 105 0 226 10 105 0 227 10 105 0 228 10 105 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 10 109 0 13] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 10 113 0 179 10 113 0 180 10 113 0 182 0 253 0 234 10 113 0 242 1 205 0 243 1 209 0 246 10 113 0 247 0 253 0 253 10 113 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 10 117 0 179 10 117 0 180 10 117 0 182 0 253 0 234 10 117 0 242 1 205 0 243 1 209 0 246 10 117 0 247 0 253 0 253 10 117 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 10 121 0 111] 
#[1 4 249 0 1 10 125 0 5 10 129 0 111 0 209 0 117 0 6 0 118 10 133 0 143 0 249 0 144 10 137 0 155 10 141 0 160 5 9 1 189] 
#[0 3 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 3 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 4 249 0 1 3 142 0 2 3 142 0 3 3 142 0 4 10 145 0 5 3 142 0 6 3 142 0 7 3 142 0 8 3 142 0 9 3 142 0 10 3 142 0 11 3 142 0 12 3 142 0 13 3 142 0 14 3 142 0 15 3 142 0 16 3 142 0 17 3 142 0 19 3 142 0 20 10 149 0 21 3 142 0 22 3 142 0 23 3 142 0 24 3 142 0 25 3 142 0 26 3 142 0 27 3 142 0 28 3 142 0 29 3 142 0 30 3 142 0 31 3 142 0 32 3 142 0 33 3 142 0 34 3 142 0 35 3 142 0 36 3 142 0 37 3 142 0 39 3 142 0 40 3 142 0 41 3 142 0 42 3 142 0 43 3 142 0 44 3 142 0 45 3 142 0 46 3 142 0 48 3 142 0 49 3 142 0 77 3 142 0 78 3 142 0 85 3 142 0 107 3 142 0 108 0 209 0 117 0 6 0 118 3 142 0 119 3 142 0 120 10 153 0 143 0 249 0 144 10 157 0 155 10 161 0 159 3 142 1 186 3 142 1 188 5 9 1 189 3 142 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 10 165 0 179 10 165 0 180 10 165 0 182 0 253 0 234 10 165 0 242 1 205 0 243 1 209 0 246 10 165 0 247 0 253 0 253 10 165 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 10 169 0 111] 
#[0 3 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 3 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 4 249 0 1 3 154 0 2 3 154 0 3 3 154 0 4 10 145 0 5 3 154 0 6 3 154 0 7 3 154 0 8 3 154 0 9 3 154 0 10 3 154 0 11 3 154 0 12 3 154 0 13 3 154 0 14 3 154 0 15 3 154 0 16 3 154 0 17 3 154 0 19 3 154 0 20 10 149 0 21 3 154 0 22 3 154 0 23 3 154 0 24 3 154 0 25 3 154 0 26 3 154 0 27 3 154 0 28 3 154 0 29 3 154 0 30 3 154 0 31 3 154 0 32 3 154 0 33 3 154 0 34 3 154 0 35 3 154 0 36 3 154 0 37 3 154 0 39 3 154 0 40 3 154 0 41 3 154 0 42 3 154 0 43 3 154 0 44 3 154 0 45 3 154 0 46 3 154 0 48 3 154 0 49 3 154 0 77 3 154 0 78 3 154 0 85 3 154 0 107 3 154 0 108 0 209 0 117 0 6 0 118 3 154 0 119 3 154 0 120 10 153 0 143 0 249 0 144 10 157 0 155 10 161 0 159 3 154 1 186 3 154 1 188 5 9 1 189 3 154 1 190] 
#[1 4 249 0 1 3 158 0 2 3 158 0 3 3 158 0 4 10 145 0 5 3 158 0 6 3 158 0 7 3 158 0 8 3 158 0 9 3 158 0 10 3 158 0 11 3 158 0 12 3 158 0 13 3 158 0 14 3 158 0 15 3 158 0 16 3 158 0 17 3 158 0 19 3 158 0 20 10 149 0 21 3 158 0 22 3 158 0 23 3 158 0 24 3 158 0 25 3 158 0 26 3 158 0 27 3 158 0 28 3 158 0 29 3 158 0 30 3 158 0 31 3 158 0 32 3 158 0 33 3 158 0 34 3 158 0 35 3 158 0 36 3 158 0 37 3 158 0 39 3 158 0 40 3 158 0 41 3 158 0 42 3 158 0 43 3 158 0 44 3 158 0 45 3 158 0 46 3 158 0 48 3 158 0 49 3 158 0 77 3 158 0 78 3 158 0 85 3 158 0 107 3 158 0 108 0 209 0 117 0 6 0 118 3 158 0 119 3 158 0 120 10 153 0 143 0 249 0 144 10 157 0 155 10 161 0 159 3 158 1 186 3 158 1 188 5 9 1 189 3 158 1 190] 
#[0 3 162 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 166 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 170 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 174 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 178 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 182 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 186 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 190 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 194 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 198 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 202 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 206 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 210 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[0 3 214 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 10 173 0 179 10 173 0 180 0 253 0 234 10 173 0 242 1 205 0 243 1 209 0 246 10 173 0 247 0 253 0 253 10 173 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 3 218 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 10 177 0 164 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[0 3 222 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 226 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 3 230 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 10 181 0 164 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 10 185 0 164 10 185 0 165 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 10 189 0 164 10 189 0 165 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 10 193 0 167 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 10 197 0 167 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 10 201 0 167 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 10 205 0 168 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 10 209 0 168 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 10 213 0 168 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 10 217 0 168 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 10 221 0 168 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 10 225 0 168 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 10 229 0 169 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 10 233 0 169 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 10 237 0 169 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 10 241 0 169 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 10 245 0 170 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 10 249 0 171 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 10 253 0 172 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 11 1 0 173 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 11 5 0 173 11 9 0 174 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 11 13 0 173 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 11 17 0 179 11 17 0 180 0 253 0 234 11 17 0 242 1 205 0 243 1 209 0 246 11 17 0 247 0 253 0 253 11 17 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 3 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 11 21 0 179 11 21 0 180 0 253 0 234 11 21 0 242 1 205 0 243 1 209 0 246 11 21 0 247 0 253 0 253 11 21 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 3 238 0 7 8 37 0 22 3 238 0 107 11 25 0 142] 
#[1 11 29 0 7 11 33 0 107] 
#[0 3 242 0 7 0 107] 
#[1 8 37 0 22 11 37 0 142] 
#[0 3 246 0 7 0 107] 
#[0 3 250 0 7 0 107] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 11 41 0 126 11 45 0 198 11 45 0 199 11 45 0 200] 
#[1 0 29 0 1 11 49 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 11 61 0 179 11 61 0 180 0 253 0 234 11 61 0 242 1 205 0 243 11 57 0 244 11 61 0 245 1 209 0 246 11 61 0 247 0 253 0 253 11 61 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 3 254 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 4 2 0 3 4 2 0 121 4 2 0 123 11 65 1 60 11 69 1 61] 
#[1 11 73 0 122 11 77 1 47 11 77 1 48 11 77 1 49 11 89 1 50 11 93 1 51] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 11 97 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 11 129 0 126 11 133 1 70 11 137 1 71 11 141 1 72 11 145 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 11 145 1 96 11 145 1 97 11 157 1 98 11 157 1 100] 
#[1 6 109 0 1 8 205 0 10 2 61 0 110 11 217 0 126 6 121 1 70 11 221 1 110] 
#[0 11 225 0 1] 
#[0 4 6 0 18] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 11 229 0 179 11 229 0 180 0 253 0 234 11 229 0 242 1 205 0 243 1 209 0 246 11 229 0 247 0 253 0 253 11 229 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 6 133 0 5 8 93 0 25 3 125 0 111 6 145 0 113 6 149 0 114 8 97 0 127 8 97 0 138 8 97 0 139 8 97 0 140 6 145 1 39 6 149 1 40] 
#[1 2 182 0 4 8 37 0 22 2 182 0 107 8 113 0 142] 
#[0 2 222 0 1 0 4 0 7 0 10 0 22 0 41 0 107 0 108] 
#[0 2 226 0 1 0 4 0 7 0 10 0 22 0 41 0 107 0 108] 
#[1 6 133 0 5 8 137 0 74 8 141 0 90 3 125 0 111 6 145 0 113 6 149 0 114 8 145 0 127 8 145 0 138 8 145 0 139 8 145 0 140 6 145 1 39 6 149 1 40] 
#[0 4 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 62 0 63 0 64 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 4 45 0 3 4 49 0 68 11 233 1 11 4 61 1 12 4 65 1 189] 
#[1 0 87 0 1 4 14 0 3 4 14 0 4 0 87 0 5 0 87 0 7 3 26 0 8 3 26 0 9 3 26 0 10 3 26 0 11 3 26 0 12 3 26 0 13 3 26 0 14 3 26 0 15 3 26 0 16 3 26 0 17 3 26 0 19 3 26 0 20 3 26 0 21 3 26 0 22 3 26 0 23 3 26 0 24 3 26 0 25 3 26 0 26 3 26 0 27 3 26 0 28 3 26 0 29 3 26 0 30 3 26 0 31 3 26 0 32 3 26 0 33 0 87 0 34 0 87 0 35 0 87 0 36 0 87 0 37 4 14 0 38 3 26 0 39 3 26 0 40 3 26 0 41 3 26 0 42 3 26 0 43 3 26 0 44 3 26 0 45 3 26 0 46 4 14 0 47 3 26 0 48 3 26 0 49 4 14 0 51 4 14 0 52 4 14 0 53 4 14 0 56 4 14 0 57 4 14 0 59 4 14 0 60 4 14 0 61 4 14 0 63 4 14 0 64 4 14 0 66 4 14 0 67 4 14 0 69 4 14 0 71 4 14 0 73 4 14 0 75 4 14 0 76 3 26 0 77 3 26 0 78 4 14 0 79 4 14 0 80 4 14 0 82 4 14 0 83 4 14 0 84 4 14 0 89 4 14 0 92 4 14 0 93 4 14 0 95 4 14 0 96 4 14 0 97 4 14 0 98 4 14 0 99 4 14 0 100 4 14 0 101 4 14 0 102 4 14 0 103 4 14 0 104 4 14 0 105 3 26 0 107 4 14 0 110 4 14 0 113 4 14 0 114 4 14 0 115 0 87 0 117 0 87 0 118 4 14 0 121 3 26 1 186 3 26 1 188 0 87 1 189 4 14 1 190] 
#[1 2 61 0 110 11 237 0 126] 
#[1 2 61 0 110 11 241 0 126] 
#[1 6 169 0 66 2 61 0 110 11 245 0 126 11 249 1 170 11 253 1 171] 
#[1 2 61 0 110 12 1 0 126] 
#[1 2 61 0 110 11 245 0 126 12 5 1 170 11 253 1 171] 
#[0 12 9 0 113 1 39] 
#[1 2 61 0 110 7 69 0 126 12 13 1 137] 
#[1 2 61 0 110 11 245 0 126 12 17 1 170 11 253 1 171] 
#[0 4 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 12 21 0 3] 
#[1 2 61 0 110 12 25 0 126] 
#[1 9 85 0 72 12 29 1 27] 
#[1 6 173 0 56 6 177 0 57 2 105 0 66 6 181 0 73 6 185 0 80 6 193 0 82 6 197 0 101 6 217 1 131 6 205 1 169 6 209 1 172 6 213 1 173 6 217 1 179 6 221 1 180] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 12 33 0 56 0 97 0 63 2 13 0 69 12 37 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 12 41 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 12 45 0 179 12 45 0 180 12 49 0 233 0 253 0 234 12 45 0 242 1 205 0 243 1 209 0 246 12 45 0 247 12 53 0 252 0 253 0 253 12 45 0 255 0 253 1 2 0 253 1 6 1 41 1 8 12 57 1 9 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 12 61 1 172 12 65 1 173 3 25 1 189] 
#[1 4 185 0 3 4 189 0 25 2 61 0 110 4 213 0 113 12 69 0 126 4 197 1 23 4 201 1 24 4 205 1 25 4 209 1 26 4 213 1 30 4 201 1 31 4 213 1 39] 
#[0 4 42 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 46 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 50 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 62 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 12 73 0 7 9 85 0 72 12 77 1 27] 
#[1 4 66 0 1 4 66 0 3 4 66 0 5 4 66 0 7 4 66 0 34 4 66 0 35 4 66 0 36 4 66 0 37 4 66 0 38 4 66 0 47 4 66 0 51 4 66 0 52 4 66 0 53 4 66 0 56 4 66 0 57 4 66 0 59 4 66 0 60 0 91 0 61 4 66 0 63 4 66 0 64 4 66 0 66 0 91 0 67 4 66 0 69 4 66 0 71 4 66 0 73 4 66 0 75 0 91 0 76 0 91 0 79 4 66 0 80 0 91 0 82 4 66 0 83 4 66 0 84 4 66 0 89 4 66 0 92 4 66 0 93 4 66 0 95 4 66 0 96 4 66 0 97 4 66 0 98 0 91 0 99 4 66 0 100 4 66 0 101 4 66 0 102 4 66 0 103 4 66 0 104 4 66 0 105 4 66 0 110 4 66 0 113 4 66 0 114 4 66 0 115 4 66 0 117 4 66 0 118 4 66 0 121 4 66 1 189 0 91 1 190] 
#[1 4 74 0 1 4 74 0 3 4 74 0 5 4 74 0 7 4 74 0 34 4 74 0 35 4 74 0 36 4 74 0 37 4 74 0 38 4 74 0 47 4 74 0 51 4 74 0 52 4 74 0 53 4 74 0 56 4 74 0 57 4 74 0 59 4 74 0 60 0 95 0 61 4 74 0 63 4 74 0 64 4 74 0 66 0 95 0 67 4 74 0 69 4 74 0 71 4 74 0 73 4 74 0 75 0 95 0 76 0 95 0 79 4 74 0 80 0 95 0 82 4 74 0 83 4 74 0 84 4 74 0 89 4 74 0 92 4 74 0 93 4 74 0 95 4 74 0 96 4 74 0 97 4 74 0 98 0 95 0 99 4 74 0 100 4 74 0 101 4 74 0 102 4 74 0 103 4 74 0 104 4 74 0 105 4 74 0 110 4 74 0 113 4 74 0 114 4 74 0 115 4 74 0 117 4 74 0 118 4 74 0 121 4 74 1 189 0 95 1 190] 
#[0 4 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 86 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 90 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[1 4 94 0 1 4 94 0 3 4 94 0 5 4 94 0 7 4 94 0 34 4 94 0 35 4 94 0 36 4 94 0 37 4 94 0 38 4 94 0 47 4 94 0 51 4 94 0 52 4 94 0 53 4 94 0 56 4 94 0 57 4 94 0 59 4 94 0 60 0 99 0 61 4 94 0 63 4 94 0 64 4 94 0 66 0 99 0 67 4 94 0 69 4 94 0 71 4 94 0 73 4 94 0 75 0 99 0 76 0 99 0 79 4 94 0 80 0 99 0 82 4 94 0 83 4 94 0 84 4 94 0 89 4 94 0 92 4 94 0 93 4 94 0 95 4 94 0 96 4 94 0 97 4 94 0 98 0 99 0 99 4 94 0 100 4 94 0 101 4 94 0 102 4 94 0 103 4 94 0 104 4 94 0 105 4 94 0 110 4 94 0 113 4 94 0 114 4 94 0 115 4 94 0 117 4 94 0 118 4 94 0 121 4 94 1 189 0 99 1 190] 
#[1 8 205 0 10 9 101 0 73 2 61 0 110 7 213 0 126 9 105 1 70] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 12 81 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 12 85 0 1 2 61 0 110 12 89 0 126] 
#[0 12 93 0 1] 
#[1 12 97 0 22 3 82 0 72 3 82 0 107] 
#[1 11 105 0 3 8 205 0 10 12 101 0 68 12 105 1 70 12 109 1 86 12 113 1 119] 
#[0 4 102 0 3 0 21] 
#[1 12 117 0 3 12 121 0 21] 
#[1 8 205 0 10 12 125 0 22 12 129 1 70] 
#[1 4 181 0 1 2 61 0 110 12 133 0 126] 
#[0 1 214 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 222 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 234 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 1 246 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 2 26 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 2 110 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 2 118 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 2 61 0 110 12 133 0 126] 
#[0 1 218 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 1 226 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 1 238 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 1 254 0 61 0 76 0 79 0 82 0 99 1 190] 
#[0 4 110 0 61 0 76 0 79 0 82 0 99 1 190] 
#[0 2 46 0 61 0 76 0 79 0 82 0 99 1 190] 
#[0 2 114 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 2 122 0 61 0 76 0 79 0 82 0 99 1 190] 
#[1 4 85 0 3 6 229 0 22 6 233 0 25 4 97 0 56 2 97 0 57 6 237 0 61 12 137 0 62 2 105 0 66 4 105 0 73 12 141 0 76 2 121 0 79 1 137 0 80 2 125 0 82 2 129 0 99 0 173 0 101 6 249 0 191 1 137 0 192 6 253 0 195 7 1 0 233 7 5 0 252 7 9 1 9 7 13 1 22 7 17 1 34 12 145 1 109 12 149 1 118 7 29 1 131 7 33 1 136 12 153 1 168 7 45 1 189] 
#[0 1 206 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 0 31 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 2 22 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 114 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 2 94 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 2 102 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 4 85 0 3 6 229 0 22 6 233 0 25 6 237 0 61 12 157 0 62 7 117 0 76 2 121 0 79 2 129 0 99 7 17 1 34 12 161 1 109 12 165 1 118 7 37 1 142 12 169 1 168] 
#[0 1 210 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 0 103 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 2 42 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 4 118 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 2 98 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 2 106 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[1 12 173 0 1 8 205 0 10 2 61 0 110 12 177 0 126 12 181 1 70 12 185 1 103 12 189 1 110] 
#[1 8 205 0 10 12 193 1 70] 
#[1 11 225 0 1 4 45 0 3 4 49 0 68 12 197 1 11 4 61 1 12 4 65 1 189] 
#[1 2 170 0 1 0 107 0 2 0 107 0 4 2 170 0 5 0 107 0 6 2 170 0 8 2 170 0 9 2 170 0 10 2 170 0 11 2 170 0 12 2 170 0 13 2 170 0 14 2 170 0 15 2 170 0 16 2 170 0 17 2 170 0 19 2 170 0 20 2 170 0 21 0 107 0 22 2 170 0 23 2 170 0 24 2 170 0 25 2 170 0 26 2 170 0 27 2 170 0 28 2 170 0 29 2 170 0 30 2 170 0 31 2 170 0 32 2 170 0 33 2 170 0 34 2 170 0 35 2 170 0 36 2 170 0 37 2 170 0 39 2 170 0 40 2 170 0 41 2 170 0 42 2 170 0 43 2 170 0 44 2 170 0 45 2 170 0 46 2 170 0 48 2 170 0 49 2 170 0 77 2 170 0 78 0 107 0 107 2 170 0 117 2 170 0 118 2 170 1 186 2 170 1 188 2 170 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 12 201 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 8 109 0 179 8 109 0 180 0 253 0 234 8 109 0 242 1 205 0 243 1 209 0 246 8 109 0 247 0 253 0 253 8 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 111 0 4 8 37 0 22 0 111 0 107 12 205 0 142] 
#[1 8 125 0 1 12 209 0 108] 
#[0 12 213 0 4] 
#[1 12 217 0 4 12 221 0 107] 
#[0 4 126 0 4 0 107] 
#[0 4 130 0 4 0 107] 
#[1 6 133 0 5 8 137 0 74 12 225 0 86 12 225 0 87 12 225 0 88 8 141 0 90 2 61 0 110 3 125 0 111 6 145 0 113 6 149 0 114 8 73 0 126 8 145 0 127 8 145 0 138 8 145 0 139 8 145 0 140 6 145 1 39 6 149 1 40 12 225 1 104] 
#[1 2 238 0 1 0 115 0 2 0 115 0 4 2 238 0 5 0 115 0 6 2 238 0 8 2 238 0 9 2 238 0 10 2 238 0 11 2 238 0 12 2 238 0 13 2 238 0 14 2 238 0 15 2 238 0 16 2 238 0 17 2 238 0 19 2 238 0 20 2 238 0 21 0 115 0 22 2 238 0 23 2 238 0 24 2 238 0 25 2 238 0 26 2 238 0 27 2 238 0 28 2 238 0 29 2 238 0 30 2 238 0 31 2 238 0 32 2 238 0 33 2 238 0 34 2 238 0 35 2 238 0 36 2 238 0 37 2 238 0 39 2 238 0 40 2 238 0 41 2 238 0 42 2 238 0 43 2 238 0 44 2 238 0 45 2 238 0 46 2 238 0 48 2 238 0 49 2 238 0 77 2 238 0 78 0 115 0 107 2 238 0 117 2 238 0 118 2 238 1 186 2 238 1 188 2 238 1 189] 
#[1 0 29 0 1 3 29 0 3 3 33 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 12 229 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 8 149 0 179 8 149 0 180 8 33 0 198 8 33 0 199 8 33 0 200 0 253 0 234 8 149 0 242 1 205 0 243 1 209 0 246 8 149 0 247 0 253 0 253 8 149 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 3 29 0 3 3 33 0 5 12 233 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 8 5 0 106 8 165 0 107 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 3 41 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 8 169 0 134 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 8 173 0 179 8 173 0 180 3 49 0 198 3 49 0 199 3 49 0 200 12 237 0 206 12 237 0 207 12 241 0 208 0 253 0 234 8 173 0 242 1 205 0 243 1 209 0 246 8 173 0 247 0 253 0 253 8 173 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 93 1 189] 
#[1 12 245 0 6 12 249 0 107] 
#[0 4 138 0 6 0 107] 
#[0 4 142 0 6 0 107] 
#[0 12 253 0 6] 
#[1 4 146 0 2 4 146 0 6 13 1 0 108 13 5 1 102] 
#[0 4 150 0 2 0 6] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 13 9 0 179 13 9 0 180 0 253 0 234 13 9 0 242 1 205 0 243 1 209 0 246 13 9 0 247 0 253 0 253 13 9 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 4 154 0 2 0 4 0 6 0 107] 
#[0 4 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 4 162 0 2 0 4 0 6 0 107] 
#[0 4 166 0 18] 
#[1 4 170 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 13 17 0 206 13 17 0 207 13 13 0 208 13 13 0 238 13 17 0 239 8 185 1 189] 
#[0 4 174 0 3 0 5 0 58 0 91 0 110 0 111 0 113 0 114 1 189] 
#[0 4 178 0 3 0 5 0 58 0 91 0 110 0 111 0 113 0 114 1 189] 
#[0 4 182 0 3 0 5 0 58 0 91 0 110 0 111 0 113 0 114 1 189] 
#[1 13 21 0 41 13 1 0 108 13 25 1 102] 
#[1 13 29 0 41 13 1 0 108 13 33 1 102] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 13 37 0 126 13 41 0 198 13 41 0 199 13 41 0 200] 
#[1 0 119 0 6 2 250 0 107] 
#[0 13 49 0 1] 
#[1 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 13 53 0 127 13 53 0 138 13 53 0 139 13 53 0 140 6 145 1 39 6 149 1 40] 
#[0 13 57 0 1] 
#[0 13 61 0 1] 
#[0 13 65 0 1] 
#[0 4 186 0 4 0 107] 
#[0 4 190 0 4 0 107] 
#[0 4 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 13 69 0 4 6 133 0 5 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 90 3 121 0 106 2 61 0 110 3 125 0 111 6 145 0 113 6 149 0 114 6 141 0 126 3 145 0 127 13 73 0 137 3 145 0 138 3 145 0 139 3 145 0 140 13 73 0 141 13 73 0 249 13 73 0 251 13 73 1 0 13 73 1 4 6 145 1 39 6 149 1 40 13 73 1 111 13 73 1 112 6 153 1 189] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 13 77 0 235 3 77 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 13 81 0 179 13 81 0 180 0 253 0 234 13 81 0 242 1 205 0 243 1 209 0 246 13 81 0 247 0 253 0 253 13 81 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 4 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 13 85 0 127 13 85 0 138 13 85 0 139 13 85 0 140 6 145 1 39 6 149 1 40] 
#[1 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 13 89 0 127 13 89 0 138 13 89 0 139 13 89 0 140 6 145 1 39 6 149 1 40] 
#[1 6 109 0 1 8 205 0 10 6 121 1 70 13 93 1 110] 
#[0 4 202 0 4 0 6 0 107] 
#[0 4 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 13 97 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 3 205 0 106 8 165 0 107 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 13 101 0 134 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 13 105 0 179 13 105 0 180 0 253 0 234 13 105 0 242 1 205 0 243 1 209 0 246 13 105 0 247 0 253 0 253 13 105 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 4 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 4 214 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 83 0 84 0 92 0 95 0 97 0 100 0 102 0 105 0 106 0 107 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 4 218 0 6 0 107] 
#[0 4 222 0 6 0 107] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 11 145 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 11 145 1 96 11 145 1 97 11 157 1 98 11 157 1 100] 
#[1 2 126 0 2 2 126 0 4 2 126 0 6 8 37 0 22 2 126 0 107 8 41 0 142] 
#[1 5 33 0 3 5 37 0 5 8 81 0 86 8 81 0 87 8 81 0 88 2 61 0 110 8 73 0 126 8 77 0 198 8 77 0 199 8 77 0 200 8 81 1 104] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 13 113 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 13 117 0 1 2 61 0 110 13 121 0 126] 
#[0 13 125 0 1] 
#[1 0 29 0 1 13 129 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 13 133 0 179 13 133 0 180 0 253 0 234 13 133 0 242 1 205 0 243 13 133 0 245 1 209 0 246 13 133 0 247 13 137 0 248 0 253 0 253 13 133 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 2 61 0 110 13 141 0 126 11 137 1 71 11 141 1 72] 
#[0 4 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 13 145 0 7] 
#[0 4 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 85 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 110 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 1 186 1 188 1 189 1 190] 
#[0 4 234 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[1 6 133 0 5 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 90 3 125 0 111 6 145 0 113 6 149 0 114 8 229 0 127 8 229 0 138 8 229 0 139 8 229 0 140 13 149 0 249 13 149 0 251 13 149 1 0 13 149 1 4 6 145 1 39 6 149 1 40 13 149 1 111 13 149 1 112 6 153 1 189] 
#[0 8 125 0 1] 
#[0 4 238 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 13 153 0 4] 
#[1 4 242 0 4 6 133 0 5 8 221 0 7 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 90 8 225 0 91 3 125 0 111 6 145 0 113 6 149 0 114 8 229 0 127 8 229 0 138 8 229 0 139 8 229 0 140 13 157 0 249 13 157 0 251 13 157 1 0 13 157 1 4 13 157 1 15 6 145 1 39 6 149 1 40 13 157 1 111 13 157 1 112 8 249 1 189] 
#[0 4 246 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[1 13 161 0 3 6 133 0 5 13 165 0 58 8 137 0 74 13 177 0 86 13 177 0 87 13 177 0 88 8 141 0 90 13 169 0 91 3 125 0 111 6 145 0 113 6 149 0 114 13 173 0 127 13 173 0 138 13 173 0 139 13 173 0 140 6 145 1 39 6 149 1 40 13 177 1 104 13 181 1 107 13 185 1 111 13 189 1 112 13 193 1 125 13 197 1 126 13 197 1 127 13 197 1 128 13 197 1 129 13 213 1 130 13 217 1 189] 
#[0 4 250 0 3] 
#[0 4 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 13 221 0 4 6 133 0 5 8 221 0 7 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 90 8 225 0 91 3 125 0 111 6 145 0 113 6 149 0 114 8 229 0 127 8 229 0 138 8 229 0 139 8 229 0 140 8 245 0 249 8 245 0 251 8 245 1 0 8 245 1 4 13 225 1 13 8 241 1 14 8 245 1 15 6 145 1 39 6 149 1 40 8 245 1 111 8 245 1 112 8 249 1 189] 
#[1 2 61 0 110 13 109 0 126 13 233 1 83 11 173 1 84 11 177 1 85 13 233 1 123] 
#[1 13 237 1 124 9 21 1 185] 
#[0 5 2 0 3] 
#[1 2 61 0 110 13 109 0 126 13 249 1 83 11 173 1 84 11 177 1 85 13 245 1 120 13 249 1 121] 
#[0 5 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 13 253 0 7] 
#[0 14 1 0 1] 
#[0 5 10 0 7 0 72] 
#[1 5 14 0 4 14 5 0 50 5 14 0 107] 
#[1 14 9 0 4 14 13 0 107] 
#[0 5 18 0 4 0 107] 
#[0 14 17 0 111] 
#[1 14 21 0 1 14 25 0 25 2 61 0 110 14 29 0 126] 
#[1 4 45 0 3 4 49 0 68 14 33 1 11 4 61 1 12 4 65 1 189] 
#[0 4 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 14 37 0 7] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 14 41 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 14 45 0 1 2 61 0 110 14 49 0 126] 
#[0 14 53 0 1] 
#[0 14 57 0 113 1 30 1 39] 
#[0 14 61 0 7] 
#[0 5 22 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 6 169 0 66] 
#[1 12 173 0 1 8 205 0 10 2 61 0 110 14 65 0 126 12 181 1 70 12 185 1 103 14 69 1 110] 
#[1 4 45 0 3 4 49 0 68 12 197 1 11 4 61 1 12 4 65 1 189] 
#[0 5 26 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 5 30 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 5 34 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 14 73 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 14 77 0 179 14 77 0 180 14 77 0 182 0 253 0 234 14 77 0 242 1 205 0 243 1 209 0 246 14 77 0 247 0 253 0 253 14 77 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 14 81 0 126 14 85 0 196 14 89 0 197 14 93 0 198 14 93 0 199 14 93 0 200 14 97 0 214 5 57 1 189] 
#[1 0 170 0 7 0 170 0 8 5 197 0 9 0 170 0 10 0 170 0 11 5 197 0 12 0 170 0 13 0 170 0 14 5 197 0 15 5 197 0 16 0 170 0 17 0 170 0 19 0 170 0 20 5 197 0 22 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 5 197 0 27 5 197 0 28 5 197 0 29 5 197 0 30 5 197 0 31 5 197 0 32 5 197 0 33 0 170 0 34 5 189 0 35 0 170 0 36 5 193 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 48 0 170 0 49 0 123 0 77 0 170 0 78 14 105 0 85 0 170 0 107 5 197 0 181 0 170 1 186 5 197 1 188] 
#[1 14 109 0 7 6 61 0 107] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 14 113 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 14 117 0 179 14 117 0 180 14 117 0 182 0 253 0 234 14 117 0 242 1 205 0 243 1 209 0 246 14 117 0 247 0 253 0 253 14 117 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 14 121 0 126 6 69 0 193 6 73 0 194 14 125 0 198 14 125 0 199 14 125 0 200 14 129 0 214 6 73 1 116 6 73 1 117 6 89 1 189] 
#[1 14 133 0 77 14 137 0 85] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 3 233 0 51 0 81 0 56 14 149 0 57 2 13 0 69 0 117 0 73 2 57 0 76 14 149 0 80 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 14 141 0 101 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 14 145 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 14 145 0 161 14 149 0 192 14 153 0 213 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 4 241 1 189] 
#[0 14 157 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 14 161 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 14 165 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 14 169 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 14 173 0 2 6 61 0 107] 
#[0 14 177 0 2] 
#[0 5 38 0 72] 
#[0 14 181 0 50] 
#[1 14 185 0 4 14 189 0 107] 
#[0 5 42 0 4 0 107] 
#[0 5 46 0 4 0 107] 
#[1 2 61 0 110 14 193 0 126 14 193 1 31] 
#[0 14 197 0 7] 
#[1 4 185 0 3 4 189 0 25 14 201 1 25 14 205 1 26] 
#[0 5 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 5 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 5 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 5 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 14 209 0 7 6 61 0 107] 
#[0 5 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 14 213 0 179 14 213 0 180 0 253 0 234 14 213 0 242 1 205 0 243 1 209 0 246 14 213 0 247 0 253 0 253 14 213 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 14 217 0 2 14 221 0 107] 
#[0 5 70 0 2 0 107] 
#[1 14 225 0 6 6 61 0 107] 
#[0 5 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 14 229 1 75 14 233 1 76 14 233 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 14 233 1 96 14 233 1 97 11 157 1 98 11 157 1 100] 
#[0 14 241 0 1] 
#[1 14 245 0 2 6 61 0 107] 
#[0 5 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 2 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 14 249 0 1 5 21 0 3 14 253 0 188] 
#[1 5 21 0 3 15 1 0 188] 
#[1 5 82 0 1 5 82 0 3 5 82 0 4 5 82 0 5 5 82 0 7 5 82 0 34 5 82 0 35 5 82 0 36 5 82 0 37 5 82 0 38 5 82 0 47 5 82 0 51 5 82 0 52 5 82 0 53 5 82 0 54 5 82 0 56 5 82 0 57 5 82 0 59 5 82 0 60 5 82 0 61 5 82 0 62 5 82 0 63 5 82 0 64 5 82 0 65 5 82 0 66 5 82 0 67 5 82 0 69 10 21 0 70 5 82 0 71 5 82 0 73 5 82 0 75 5 82 0 76 5 82 0 79 5 82 0 80 5 82 0 82 5 82 0 83 5 82 0 84 5 82 0 89 5 82 0 92 5 82 0 93 5 82 0 95 5 82 0 96 5 82 0 97 5 82 0 98 5 82 0 99 5 82 0 100 5 82 0 101 5 82 0 102 5 82 0 103 5 82 0 104 5 82 0 105 5 82 0 110 5 82 0 113 5 82 0 114 5 82 0 115 5 82 0 117 5 82 0 118 5 82 0 121 15 5 0 230 5 82 1 189 5 82 1 190] 
#[0 5 86 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 122 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[1 2 61 0 110 15 9 0 126] 
#[0 15 13 0 108] 
#[1 12 225 0 86 12 225 0 87 12 225 0 88 2 61 0 110 8 73 0 126 12 225 1 104] 
#[0 4 134 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[1 5 33 0 3 5 37 0 5 15 17 0 6 3 37 0 106 8 165 0 107 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 12 237 0 206 12 237 0 207 12 241 0 208 8 185 1 189] 
#[0 5 90 0 7 0 85 0 107] 
#[0 5 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 5 41 0 126 15 21 0 197 5 53 0 198 5 53 0 199 5 53 0 200 5 57 1 189] 
#[0 5 98 0 7 0 85 0 107] 
#[1 13 1 0 108 15 25 1 102] 
#[1 13 1 0 108 15 29 1 102] 
#[0 5 102 0 7 0 85 0 107] 
#[0 5 106 0 7 0 85 0 107] 
#[1 15 33 0 2 6 61 0 107] 
#[1 15 37 0 2 6 61 0 107] 
#[0 5 110 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[0 5 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 5 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 1 166 0 3 1 166 0 121 1 166 0 123 15 41 1 66] 
#[1 6 61 0 107 15 45 0 119 15 49 0 120 15 53 0 145 15 57 0 146] 
#[1 15 61 0 6 6 61 0 107] 
#[0 5 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 15 65 0 179 15 65 0 180 15 65 0 182 0 253 0 234 15 65 0 242 1 205 0 243 1 209 0 246 15 65 0 247 0 253 0 253 15 65 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 5 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 5 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 5 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 5 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 15 69 0 179 15 69 0 180 15 69 0 182 0 253 0 234 15 69 0 242 1 205 0 243 1 209 0 246 15 69 0 247 0 253 0 253 15 69 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 15 73 0 111] 
#[0 5 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 5 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 5 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 15 77 0 6 6 61 0 107] 
#[0 5 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 5 158 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[0 5 162 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[0 5 166 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[1 5 170 0 2 5 170 0 4 5 170 0 6 5 170 0 7 5 221 0 8 5 170 0 10 5 170 0 11 5 170 0 13 5 170 0 14 5 170 0 17 5 170 0 19 5 170 0 20 5 170 0 23 5 170 0 24 5 221 0 25 5 170 0 34 5 170 0 36 5 170 0 39 5 170 0 40 5 170 0 41 5 221 0 43 5 170 0 44 5 170 0 45 5 170 0 46 5 170 0 48 5 170 0 49 5 170 0 77 5 170 0 78 5 170 0 85 5 170 0 107 5 170 0 108 5 170 0 119 5 170 0 120 5 221 0 166 5 170 1 186 5 170 1 190] 
#[1 5 174 0 2 5 174 0 4 5 174 0 6 5 174 0 7 5 221 0 8 5 174 0 10 5 174 0 11 5 174 0 13 5 174 0 14 5 174 0 17 5 174 0 19 5 174 0 20 5 174 0 23 5 174 0 24 5 221 0 25 5 174 0 34 5 174 0 36 5 174 0 39 5 174 0 40 5 174 0 41 5 221 0 43 5 174 0 44 5 174 0 45 5 174 0 46 5 174 0 48 5 174 0 49 5 174 0 77 5 174 0 78 5 174 0 85 5 174 0 107 5 174 0 108 5 174 0 119 5 174 0 120 5 221 0 166 5 174 1 186 5 174 1 190] 
#[1 5 178 0 2 5 178 0 4 5 178 0 6 5 178 0 7 5 178 0 10 5 178 0 11 5 178 0 13 5 178 0 14 5 178 0 17 5 178 0 19 5 178 0 20 5 178 0 23 5 178 0 24 5 225 0 34 5 229 0 36 5 178 0 39 5 178 0 40 5 178 0 41 5 178 0 44 5 178 0 45 5 178 0 46 5 178 0 48 5 178 0 49 5 178 0 77 5 178 0 78 5 178 0 85 5 178 0 107 5 178 0 108 5 178 0 119 5 178 0 120 5 178 1 186 5 178 1 190] 
#[1 5 182 0 2 5 182 0 4 5 182 0 6 5 182 0 7 5 182 0 10 5 182 0 11 5 182 0 13 5 182 0 14 5 182 0 17 5 182 0 19 5 182 0 20 5 182 0 23 5 182 0 24 5 225 0 34 5 229 0 36 5 182 0 39 5 182 0 40 5 182 0 41 5 182 0 44 5 182 0 45 5 182 0 46 5 182 0 48 5 182 0 49 5 182 0 77 5 182 0 78 5 182 0 85 5 182 0 107 5 182 0 108 5 182 0 119 5 182 0 120 5 182 1 186 5 182 1 190] 
#[1 5 186 0 2 5 186 0 4 5 186 0 6 5 186 0 7 5 186 0 10 5 186 0 11 5 186 0 13 5 186 0 14 5 186 0 17 5 186 0 19 5 186 0 20 5 186 0 23 5 186 0 24 5 225 0 34 5 229 0 36 5 186 0 39 5 186 0 40 5 186 0 41 5 186 0 44 5 186 0 45 5 186 0 46 5 186 0 48 5 186 0 49 5 186 0 77 5 186 0 78 5 186 0 85 5 186 0 107 5 186 0 108 5 186 0 119 5 186 0 120 5 186 1 186 5 186 1 190] 
#[1 5 190 0 2 5 190 0 4 5 190 0 6 5 190 0 7 5 190 0 10 5 233 0 11 5 190 0 13 5 237 0 14 5 241 0 17 5 190 0 19 5 190 0 20 5 190 0 23 5 190 0 24 5 190 0 39 5 190 0 40 5 190 0 41 5 190 0 44 5 190 0 45 5 190 0 46 5 190 0 48 5 190 0 49 5 190 0 77 5 190 0 78 5 190 0 85 5 190 0 107 5 190 0 108 5 190 0 119 5 190 0 120 5 190 1 186 5 190 1 190] 
#[1 5 194 0 2 5 194 0 4 5 194 0 6 5 194 0 7 5 194 0 10 5 233 0 11 5 194 0 13 5 237 0 14 5 241 0 17 5 194 0 19 5 194 0 20 5 194 0 23 5 194 0 24 5 194 0 39 5 194 0 40 5 194 0 41 5 194 0 44 5 194 0 45 5 194 0 46 5 194 0 48 5 194 0 49 5 194 0 77 5 194 0 78 5 194 0 85 5 194 0 107 5 194 0 108 5 194 0 119 5 194 0 120 5 194 1 186 5 194 1 190] 
#[1 5 198 0 2 5 198 0 4 5 198 0 6 5 198 0 7 5 198 0 10 5 233 0 11 5 198 0 13 5 237 0 14 5 241 0 17 5 198 0 19 5 198 0 20 5 198 0 23 5 198 0 24 5 198 0 39 5 198 0 40 5 198 0 41 5 198 0 44 5 198 0 45 5 198 0 46 5 198 0 48 5 198 0 49 5 198 0 77 5 198 0 78 5 198 0 85 5 198 0 107 5 198 0 108 5 198 0 119 5 198 0 120 5 198 1 186 5 198 1 190] 
#[1 5 202 0 2 5 202 0 4 5 202 0 6 5 202 0 7 5 202 0 10 5 233 0 11 5 202 0 13 5 237 0 14 5 241 0 17 5 202 0 19 5 202 0 20 5 202 0 23 5 202 0 24 5 202 0 39 5 202 0 40 5 202 0 41 5 202 0 44 5 202 0 45 5 202 0 46 5 202 0 48 5 202 0 49 5 202 0 77 5 202 0 78 5 202 0 85 5 202 0 107 5 202 0 108 5 202 0 119 5 202 0 120 5 202 1 186 5 202 1 190] 
#[1 5 206 0 2 5 206 0 4 5 206 0 6 5 206 0 7 5 206 0 10 5 233 0 11 5 206 0 13 5 237 0 14 5 241 0 17 5 206 0 19 5 206 0 20 5 206 0 23 5 206 0 24 5 206 0 39 5 206 0 40 5 206 0 41 5 206 0 44 5 206 0 45 5 206 0 46 5 206 0 48 5 206 0 49 5 206 0 77 5 206 0 78 5 206 0 85 5 206 0 107 5 206 0 108 5 206 0 119 5 206 0 120 5 206 1 186 5 206 1 190] 
#[1 5 210 0 2 5 210 0 4 5 210 0 6 5 210 0 7 5 210 0 10 5 233 0 11 5 210 0 13 5 237 0 14 5 241 0 17 5 210 0 19 5 210 0 20 5 210 0 23 5 210 0 24 5 210 0 39 5 210 0 40 5 210 0 41 5 210 0 44 5 210 0 45 5 210 0 46 5 210 0 48 5 210 0 49 5 210 0 77 5 210 0 78 5 210 0 85 5 210 0 107 5 210 0 108 5 210 0 119 5 210 0 120 5 210 1 186 5 210 1 190] 
#[1 5 214 0 2 5 214 0 4 5 214 0 6 5 214 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 5 214 0 23 5 214 0 24 5 214 0 39 5 214 0 40 5 214 0 41 5 214 0 44 5 214 0 45 5 214 0 46 5 214 0 48 5 214 0 49 6 5 0 77 6 9 0 78 5 214 0 85 5 214 0 107 5 214 0 108 5 214 0 119 5 214 0 120 5 214 1 186 5 214 1 190] 
#[1 5 218 0 2 5 218 0 4 5 218 0 6 5 218 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 5 218 0 23 5 218 0 24 5 218 0 39 5 218 0 40 5 218 0 41 5 218 0 44 5 218 0 45 5 218 0 46 5 218 0 48 5 218 0 49 6 5 0 77 6 9 0 78 5 218 0 85 5 218 0 107 5 218 0 108 5 218 0 119 5 218 0 120 5 218 1 186 5 218 1 190] 
#[1 5 222 0 2 5 222 0 4 5 222 0 6 5 222 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 5 222 0 23 5 222 0 24 5 222 0 39 5 222 0 40 5 222 0 41 5 222 0 44 5 222 0 45 5 222 0 46 5 222 0 48 5 222 0 49 6 5 0 77 6 9 0 78 5 222 0 85 5 222 0 107 5 222 0 108 5 222 0 119 5 222 0 120 5 222 1 186 5 222 1 190] 
#[1 5 226 0 2 5 226 0 4 5 226 0 6 5 226 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 5 226 0 23 5 226 0 24 5 226 0 39 5 226 0 40 5 226 0 41 5 226 0 44 5 226 0 45 5 226 0 46 5 226 0 48 5 226 0 49 6 5 0 77 6 9 0 78 5 226 0 85 5 226 0 107 5 226 0 108 5 226 0 119 5 226 0 120 5 226 1 186 5 226 1 190] 
#[1 5 230 0 2 5 230 0 4 5 230 0 6 5 230 0 7 6 13 0 23 6 17 0 24 5 230 0 39 5 230 0 40 5 230 0 41 5 230 0 44 5 230 0 45 5 230 0 46 6 21 0 48 6 25 0 49 5 230 0 85 5 230 0 107 5 230 0 108 5 230 0 119 5 230 0 120 5 230 1 186 5 230 1 190] 
#[1 5 234 0 2 5 234 0 4 5 234 0 6 5 234 0 7 6 29 0 39 5 234 0 40 5 234 0 41 5 234 0 44 5 234 0 45 5 234 0 46 5 234 0 85 5 234 0 107 5 234 0 108 5 234 0 119 5 234 0 120 5 234 1 186 5 234 1 190] 
#[1 5 238 0 2 5 238 0 4 5 238 0 6 5 238 0 7 5 238 0 40 5 238 0 41 5 238 0 44 5 238 0 45 6 33 0 46 5 238 0 85 5 238 0 107 5 238 0 108 5 238 0 119 5 238 0 120 5 238 1 186 5 238 1 190] 
#[1 5 242 0 2 5 242 0 4 5 242 0 6 5 242 0 7 5 242 0 40 5 242 0 41 6 37 0 44 5 242 0 45 5 242 0 85 5 242 0 107 5 242 0 108 5 242 0 119 5 242 0 120 5 242 1 190] 
#[1 0 214 0 2 0 214 0 4 0 214 0 6 0 214 0 7 0 214 0 40 0 214 0 41 6 37 0 44 0 214 0 45 0 214 0 85 0 214 0 107 0 214 0 108 0 214 0 119 0 214 0 120 0 214 1 190] 
#[1 5 246 0 2 5 246 0 4 5 246 0 6 5 246 0 7 6 41 0 40 5 246 0 41 5 246 0 45 5 246 0 85 5 246 0 107 5 246 0 108 5 246 0 119 5 246 0 120 5 246 1 190] 
#[1 5 250 0 2 5 250 0 4 5 250 0 6 5 250 0 7 5 250 0 41 6 37 0 44 5 250 0 85 5 250 0 107 5 250 0 108 5 250 0 119 5 250 0 120 5 250 1 186 5 250 1 190] 
#[0 15 81 0 108] 
#[0 5 254 0 2 0 6 0 7 0 107 0 108 0 119 0 120 1 190] 
#[0 6 2 0 7 0 107] 
#[0 6 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 6 65 0 126 15 85 0 194 6 77 0 198 6 77 0 199 6 77 0 200 15 85 1 116 15 85 1 117 6 89 1 189] 
#[0 6 10 0 7 0 107] 
#[1 13 1 0 108 15 89 1 102] 
#[1 13 1 0 108 15 93 1 102] 
#[1 0 29 0 1 0 33 0 3 0 127 0 4 3 101 0 5 0 41 0 7 3 105 0 25 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 109 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 3 113 0 74 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 3 117 0 90 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 3 121 0 106 0 193 0 110 3 125 0 111 3 181 0 113 3 185 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 3 129 0 126 3 145 0 127 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 3 137 0 136 3 141 0 137 3 145 0 138 3 145 0 139 3 145 0 140 3 141 0 141 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 15 101 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 3 141 0 249 3 141 0 251 0 253 0 253 1 109 0 255 3 141 1 0 0 253 1 2 3 141 1 4 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 3 181 1 39 3 185 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 141 1 111 3 141 1 112 3 197 1 189] 
#[0 6 18 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[0 6 22 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[0 6 26 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[1 0 10 0 121 15 109 1 45 15 113 1 64] 
#[1 6 30 0 3 0 131 0 121 15 117 0 123 15 125 1 42 15 125 1 43 2 37 1 44 15 125 1 62 2 45 1 64 15 129 1 69] 
#[1 6 38 0 3 6 38 0 8 6 38 0 13 15 133 0 21 15 137 0 108 6 38 0 122] 
#[1 6 30 0 3 15 141 0 8 0 98 0 13 15 145 0 122 15 173 1 48 15 153 1 52 15 157 1 53 15 161 1 54 15 157 1 55 15 157 1 56 15 173 1 57 15 177 1 65 15 181 1 69] 
#[0 6 42 0 3 0 8 0 13 0 122] 
#[0 6 46 0 3 0 8 0 13 0 122] 
#[0 6 50 0 122] 
#[1 15 185 0 122 15 189 1 50] 
#[0 15 193 0 2] 
#[1 11 101 0 1 0 38 0 2 15 197 0 3 15 201 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 3 37 0 106 2 61 0 110 15 205 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 15 209 0 236 3 81 0 237 3 85 0 238 3 89 0 239 11 133 1 70 15 213 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 15 213 1 96 15 213 1 97 11 157 1 98 11 157 1 100 8 185 1 189] 
#[1 15 217 0 1 13 161 0 3 15 221 0 4 6 133 0 5 8 205 0 10 15 225 0 83 3 125 0 111 6 145 0 113 6 149 0 114 15 229 0 127 15 229 0 138 15 229 0 139 15 229 0 140 6 145 1 39 6 149 1 40 15 233 1 70 15 237 1 87 15 241 1 88 15 245 1 89 15 245 1 101 15 245 1 103 15 245 1 106 15 245 1 107 15 245 1 108] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 16 21 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 16 17 1 92 16 21 1 93 11 149 1 94 11 153 1 95 16 21 1 96 16 21 1 97 11 157 1 98 11 157 1 100] 
#[1 16 25 0 1 8 205 0 10 16 29 1 70] 
#[0 6 54 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[1 2 61 0 110 16 33 0 126 16 37 1 99] 
#[0 6 58 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[1 6 62 0 5 6 62 0 10 0 135 0 13 6 70 0 21 6 62 0 39 6 62 0 44 16 41 0 68 6 66 0 107 16 45 1 73] 
#[0 16 49 0 1] 
#[1 16 53 0 13 16 57 0 107] 
#[0 6 74 0 13 0 107] 
#[0 16 61 0 13] 
#[1 6 78 0 2 6 78 0 3 6 78 0 4 6 78 0 5 6 78 0 6 6 78 0 7 6 78 0 13 6 78 0 18 6 78 0 22 16 65 0 44 6 78 0 58 6 78 0 85 6 78 0 86 6 78 0 87 6 78 0 88 6 78 0 91 6 78 0 107 6 78 0 111 6 78 0 113 6 78 0 114] 
#[1 6 82 0 2 6 82 0 3 6 82 0 4 6 82 0 5 6 82 0 6 6 82 0 7 6 82 0 13 6 82 0 18 6 82 0 22 16 69 0 39 6 82 0 44 6 82 0 58 6 82 0 85 6 82 0 86 6 82 0 87 6 82 0 88 6 82 0 91 6 82 0 107 6 82 0 111 6 82 0 113 6 82 0 114] 
#[1 6 86 0 2 6 86 0 3 6 86 0 4 0 139 0 5 6 86 0 6 6 86 0 7 6 86 0 13 6 86 0 18 6 86 0 22 6 86 0 39 6 86 0 44 6 86 0 58 6 86 0 85 6 86 0 86 6 86 0 87 6 86 0 88 6 86 0 91 6 86 0 107 6 86 0 111 6 86 0 113 6 86 0 114 16 73 0 217] 
#[0 6 90 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 6 94 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 6 98 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[1 0 46 0 2 0 46 0 3 0 46 0 4 0 46 0 5 0 46 0 6 0 46 0 7 0 46 0 10 0 46 0 13 0 46 0 18 0 46 0 22 0 46 0 39 0 46 0 44 0 46 0 58 0 46 0 85 0 46 0 86 0 46 0 87 0 46 0 88 0 46 0 91 0 46 0 107 0 46 0 111 0 46 0 113 0 46 0 114 16 77 0 217 0 46 1 185] 
#[0 16 81 0 21] 
#[0 6 102 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 6 106 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 6 110 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 6 114 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 6 118 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 6 122 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 6 126 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 6 130 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 6 134 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[1 6 109 0 1 8 205 0 10 6 121 1 70 16 85 1 110] 
#[0 16 89 0 3] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 16 93 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 13 45 0 6] 
#[1 0 143 0 1 6 138 0 3 6 138 0 4 0 143 0 5 0 143 0 7 4 254 0 8 4 254 0 9 4 254 0 10 4 254 0 11 4 254 0 12 4 254 0 13 4 254 0 14 4 254 0 15 4 254 0 16 4 254 0 17 4 254 0 19 4 254 0 20 4 254 0 21 4 254 0 22 4 254 0 23 4 254 0 24 4 254 0 25 4 254 0 26 4 254 0 27 4 254 0 28 4 254 0 29 4 254 0 30 4 254 0 31 4 254 0 32 4 254 0 33 0 143 0 34 0 143 0 35 0 143 0 36 0 143 0 37 6 138 0 38 4 254 0 39 4 254 0 40 4 254 0 41 4 254 0 42 4 254 0 43 4 254 0 44 4 254 0 45 4 254 0 46 6 138 0 47 4 254 0 48 4 254 0 49 6 138 0 51 6 138 0 52 6 138 0 53 6 138 0 56 6 138 0 57 6 138 0 59 6 138 0 60 6 138 0 61 6 138 0 63 6 138 0 64 6 138 0 66 6 138 0 67 6 138 0 69 6 138 0 71 6 138 0 73 6 138 0 75 6 138 0 76 4 254 0 77 4 254 0 78 6 138 0 79 6 138 0 80 6 138 0 82 6 138 0 83 6 138 0 84 6 138 0 89 6 138 0 92 6 138 0 93 6 138 0 95 6 138 0 96 6 138 0 97 6 138 0 98 6 138 0 99 6 138 0 100 6 138 0 101 6 138 0 102 6 138 0 103 6 138 0 104 6 138 0 105 4 254 0 107 6 138 0 110 6 138 0 113 6 138 0 114 6 138 0 115 0 143 0 117 0 143 0 118 6 138 0 121 4 254 1 186 4 254 1 188 0 143 1 189 6 138 1 190] 
#[0 16 97 0 3] 
#[1 8 205 0 10 4 49 0 68 16 101 1 12 16 105 1 70 4 65 1 189] 
#[1 6 142 0 7 6 142 0 107 13 1 0 108 16 109 1 102] 
#[1 16 113 0 7 16 117 0 107] 
#[0 6 146 0 7 0 107] 
#[1 15 217 0 1 8 205 0 10 15 233 1 70 16 121 1 103] 
#[1 16 125 0 7 16 117 0 107] 
#[0 16 129 0 3] 
#[1 16 133 0 3 12 121 0 21] 
#[1 16 137 0 7 16 117 0 107] 
#[1 16 141 0 4 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 16 145 0 127 16 145 0 138 16 145 0 139 16 145 0 140 6 145 1 39 6 149 1 40 16 149 1 132 16 153 1 133 16 157 1 134] 
#[0 16 161 0 7] 
#[0 16 165 0 7] 
#[1 4 45 0 3 4 49 0 68 2 61 0 110 16 169 0 126 6 165 1 11 4 61 1 12 4 65 1 189] 
#[1 7 49 0 1 7 53 0 25 2 61 0 110 16 173 0 126] 
#[1 0 102 0 1 0 102 0 5 0 147 0 7 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 77 0 102 0 78 0 102 0 117 0 102 0 118 0 102 1 186 0 102 1 188 0 102 1 189] 
#[0 16 181 0 7] 
#[0 6 150 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 6 154 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 6 158 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 6 162 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 6 166 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[1 16 185 0 22 3 82 0 72 3 82 0 107] 
#[0 6 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 16 189 0 7] 
#[0 16 193 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 16 197 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 16 201 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 16 205 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 2 61 0 110 16 209 0 126 16 213 1 85 16 217 1 143 16 221 1 187] 
#[1 2 61 0 110 13 109 0 126 16 225 1 83 11 173 1 84 11 177 1 85 16 225 1 121] 
#[1 11 105 0 3 12 101 0 68 16 229 1 86 16 233 1 119] 
#[0 6 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 11 105 0 3 16 237 1 86] 
#[1 0 29 0 1 0 33 0 3 6 178 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 6 237 0 61 0 97 0 63 0 101 0 64 2 105 0 66 16 241 0 67 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 7 81 0 76 2 121 0 79 1 137 0 80 2 125 0 82 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 2 129 0 99 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 17 33 0 183 17 33 0 186 17 33 0 187 17 33 0 188 17 33 0 191 1 137 0 192 17 33 0 195 17 33 0 209 17 33 0 210 17 33 0 211 17 33 0 212 17 33 0 215 17 33 0 216 17 33 0 218 17 33 0 219 17 33 0 220 17 33 0 225 17 33 0 227 17 33 0 228 17 33 0 232 17 33 0 233 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 17 33 0 252 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 17 33 1 9 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 17 33 1 109 17 33 1 118 17 33 1 131 17 33 1 136 17 25 1 138 17 29 1 139 17 33 1 140 17 33 1 141 17 33 1 142 17 33 1 168 3 25 1 189] 
#[1 2 61 0 110 17 49 0 126] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 17 53 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 17 53 1 96 17 53 1 97 11 157 1 98 11 157 1 100] 
#[0 17 57 0 22] 
#[0 16 185 0 22] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 2 93 0 56 0 97 0 63 2 13 0 69 2 113 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 12 45 0 179 12 45 0 180 12 49 0 233 0 253 0 234 12 45 0 242 1 205 0 243 1 209 0 246 12 45 0 247 12 53 0 252 0 253 0 253 12 45 0 255 0 253 1 2 0 253 1 6 1 41 1 8 12 57 1 9 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 25 1 189] 
#[1 4 185 0 3 4 189 0 25 2 61 0 110 4 213 0 113 4 201 0 126 4 197 1 23 4 201 1 24 4 205 1 25 4 209 1 26 4 213 1 30 4 201 1 31 4 213 1 39] 
#[0 4 66 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 4 94 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 6 173 0 56 6 181 0 73 2 61 0 110 17 61 0 126 12 61 1 172 12 65 1 173] 
#[0 4 70 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 4 78 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 4 98 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 17 65 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 12 173 0 1 8 205 0 10 12 181 1 70 17 69 1 103 17 73 1 110] 
#[0 17 77 0 1] 
#[0 17 81 0 7] 
#[0 17 85 0 3] 
#[1 4 45 0 3 4 49 0 68 17 89 1 11 4 61 1 12 4 65 1 189] 
#[0 6 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 102 0 1 0 151 0 4 0 102 0 5 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 77 0 102 0 78 0 102 0 107 0 102 0 117 0 102 0 118 0 102 1 186 0 102 1 188 0 102 1 189] 
#[0 0 155 0 4 0 107] 
#[1 0 29 0 1 3 29 0 3 3 33 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 3 41 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 13 81 0 179 13 81 0 180 3 49 0 198 3 49 0 199 3 49 0 200 17 93 0 206 17 93 0 207 0 253 0 234 13 81 0 242 1 205 0 243 1 209 0 246 13 81 0 247 0 253 0 253 13 81 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 93 1 189] 
#[0 6 190 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[0 6 194 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[1 17 97 0 4 6 133 0 5 10 37 0 106 2 61 0 110 3 125 0 111 6 145 0 113 6 149 0 114 8 181 0 126 10 41 0 127 10 41 0 138 10 41 0 139 10 41 0 140 17 101 0 201 17 105 0 205 17 105 0 207 6 145 1 39 6 149 1 40 10 45 1 189] 
#[1 2 61 0 110 13 37 0 126] 
#[1 0 102 0 1 0 102 0 5 0 159 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 77 0 102 0 78 0 102 0 107 13 1 0 108 0 102 0 117 0 102 0 118 13 5 1 102 0 102 1 186 0 102 1 188 0 102 1 189] 
#[1 4 210 0 1 0 163 0 2 0 163 0 4 4 210 0 5 0 163 0 6 4 210 0 8 4 210 0 9 4 210 0 10 4 210 0 11 4 210 0 12 4 210 0 13 4 210 0 14 4 210 0 15 4 210 0 16 4 210 0 17 4 210 0 19 4 210 0 20 4 210 0 21 0 163 0 22 4 210 0 23 4 210 0 24 4 210 0 25 4 210 0 26 4 210 0 27 4 210 0 28 4 210 0 29 4 210 0 30 4 210 0 31 4 210 0 32 4 210 0 33 4 210 0 34 4 210 0 35 4 210 0 36 4 210 0 37 4 210 0 39 4 210 0 40 4 210 0 41 4 210 0 42 4 210 0 43 4 210 0 44 4 210 0 45 4 210 0 46 4 210 0 48 4 210 0 49 4 210 0 77 4 210 0 78 0 163 0 107 4 210 0 117 4 210 0 118 4 210 1 186 4 210 1 188 4 210 1 189] 
#[0 6 202 0 6 0 107] 
#[0 17 109 0 6] 
#[0 6 206 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[1 5 33 0 3 5 37 0 5 17 113 0 6 3 37 0 106 3 209 0 107 2 61 0 110 8 181 0 126 17 117 0 133 3 49 0 198 3 49 0 199 3 49 0 200 17 121 0 204 8 21 0 206 8 21 0 207 17 125 0 208 8 185 1 189] 
#[0 6 210 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 17 129 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 17 129 1 96 17 129 1 97 11 157 1 98 11 157 1 100] 
#[0 6 214 0 2 0 6] 
#[0 6 218 0 2 0 4 0 6 0 7 0 85 0 107] 
#[0 6 222 0 2] 
#[0 6 226 0 2 0 107] 
#[0 6 230 0 2 0 4 0 6 0 107] 
#[1 6 234 0 2 6 234 0 4 6 234 0 6 8 37 0 22 6 234 0 107 17 133 0 142] 
#[0 6 238 0 2 0 4 0 6 0 107] 
#[1 6 242 0 2 6 242 0 4 6 242 0 6 8 37 0 22 6 242 0 107 17 137 0 142] 
#[1 6 246 0 2 6 246 0 4 6 246 0 6 8 37 0 22 17 141 0 41 6 246 0 107 13 1 0 108 17 145 0 142 17 149 1 102] 
#[1 6 250 0 2 6 250 0 4 6 250 0 6 8 37 0 22 17 153 0 41 6 250 0 107 13 1 0 108 17 157 0 142 17 161 1 102] 
#[0 6 254 0 1 0 4 0 7 0 10 0 22 0 41 0 107 0 108] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 17 165 0 235 3 77 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 17 169 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 17 173 0 235 3 77 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 17 177 0 2] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 17 185 0 206 17 185 0 207 17 185 0 239 17 185 0 250 8 185 1 189] 
#[0 7 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 7 6 0 4 0 107] 
#[0 17 189 0 2] 
#[0 7 10 0 4 0 107] 
#[0 17 193 0 1] 
#[0 17 197 0 1] 
#[0 17 201 0 3] 
#[0 7 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 7 18 0 6 0 107] 
#[0 7 22 0 6 0 107] 
#[1 6 62 0 2 6 62 0 3 6 62 0 4 6 62 0 5 6 62 0 6 6 62 0 7 6 62 0 10 6 62 0 13 6 62 0 18 6 70 0 21 6 62 0 22 6 62 0 39 6 62 0 44 6 62 0 58 6 62 0 85 6 62 0 86 6 62 0 87 6 62 0 88 6 62 0 91 6 62 0 107 6 62 0 111 6 62 0 113 6 62 0 114 6 62 1 185] 
#[0 17 205 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 17 209 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 17 213 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 17 217 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 0 29 0 1 0 33 0 3 0 127 0 4 3 101 0 5 0 41 0 7 3 105 0 25 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 109 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 3 113 0 74 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 3 117 0 90 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 3 121 0 106 0 193 0 110 3 125 0 111 3 181 0 113 3 185 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 3 129 0 126 3 145 0 127 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 3 137 0 136 3 141 0 137 3 145 0 138 3 145 0 139 3 145 0 140 3 141 0 141 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 17 221 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 3 141 0 249 3 141 0 251 0 253 0 253 1 109 0 255 3 141 1 0 0 253 1 2 3 141 1 4 0 253 1 6 17 225 1 7 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 3 181 1 39 3 185 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 141 1 111 3 141 1 112 3 197 1 189] 
#[0 7 26 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[0 7 30 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[1 6 66 0 13 16 41 0 68 6 66 0 107 16 45 1 73] 
#[0 7 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 7 38 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 7 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 85 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 110 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 1 186 1 188 1 189 1 190] 
#[0 7 46 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[1 2 61 0 110 17 229 0 126] 
#[0 17 233 0 1] 
#[1 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 17 237 0 127 17 237 0 138 17 237 0 139 17 237 0 140 6 145 1 39 6 149 1 40 17 241 1 111 17 245 1 112 13 217 1 189] 
#[1 12 173 0 1 17 249 0 7 8 205 0 10 8 37 0 22 13 1 0 108 17 253 0 142 12 181 1 70 18 1 1 102 18 5 1 103 13 93 1 110] 
#[1 6 133 0 5 18 9 0 58 18 13 0 91 3 125 0 111 6 145 0 113 6 149 0 114 18 17 0 127 18 17 0 138 18 17 0 139 18 17 0 140 6 145 1 39 6 149 1 40 18 21 1 111 18 25 1 112 13 217 1 189] 
#[0 18 29 0 7] 
#[0 7 50 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 7 54 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 7 58 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 7 62 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 7 66 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 7 70 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 7 74 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 7 78 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[1 8 137 0 74 8 141 0 90] 
#[0 7 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 85 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 110 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 1 186 1 188 1 189 1 190] 
#[0 18 33 0 4] 
#[0 7 86 1 185] 
#[0 7 90 1 185] 
#[0 7 94 0 3] 
#[0 7 98 0 3 0 107] 
#[1 7 102 0 3 18 37 0 107] 
#[0 7 106 0 3 0 107] 
#[0 7 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 18 41 0 179 18 41 0 180 18 41 0 182 0 253 0 234 18 41 0 242 1 205 0 243 1 209 0 246 18 41 0 247 0 253 0 253 18 41 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 18 45 0 111] 
#[0 7 114 0 7 0 72] 
#[1 18 49 0 4 9 41 0 111 18 53 1 36] 
#[0 7 118 0 72] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 18 57 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 18 61 0 1 2 61 0 110 18 65 0 126] 
#[0 18 69 0 1] 
#[0 6 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 7 122 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 18 73 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 18 77 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 18 81 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 18 85 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 7 126 0 7] 
#[0 7 130 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 12 173 0 1 8 205 0 10 12 181 1 70 17 69 1 103 18 89 1 110] 
#[0 18 93 0 3] 
#[1 0 29 0 1 18 97 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 18 101 0 179 18 101 0 180 18 101 0 182 0 253 0 234 18 101 0 242 1 205 0 243 1 209 0 246 18 101 0 247 0 253 0 253 18 101 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 18 105 0 7 6 61 0 107] 
#[1 3 118 0 7 8 37 0 22 7 134 0 77 3 118 0 85 3 118 0 107 10 57 0 142] 
#[1 18 109 0 7 10 65 0 107] 
#[1 3 122 0 7 18 113 0 85 3 122 0 107] 
#[1 8 37 0 22 7 138 0 77 10 69 0 142] 
#[0 18 117 0 77] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 18 121 0 179 18 121 0 180 18 121 0 182 0 253 0 234 18 121 0 242 1 205 0 243 1 209 0 246 18 121 0 247 0 253 0 253 18 121 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 18 125 0 179 18 125 0 180 0 253 0 234 18 125 0 242 1 205 0 243 1 209 0 246 18 125 0 247 0 253 0 253 18 125 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 18 129 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 18 133 0 179 18 133 0 180 18 133 0 182 0 253 0 234 18 133 0 242 1 205 0 243 1 209 0 246 18 133 0 247 0 253 0 253 18 133 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 18 137 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 18 141 0 179 18 141 0 180 18 141 0 182 0 253 0 234 18 141 0 242 1 205 0 243 1 209 0 246 18 141 0 247 0 253 0 253 18 141 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 18 145 0 7 6 61 0 107] 
#[1 3 238 0 7 8 37 0 22 7 134 0 77 7 134 0 85 3 238 0 107 11 25 0 142] 
#[1 8 37 0 22 7 138 0 77 7 138 0 85 11 37 0 142] 
#[0 7 142 0 77 0 85] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 18 149 0 179 18 149 0 180 18 149 0 182 0 253 0 234 18 149 0 242 1 205 0 243 1 209 0 246 18 149 0 247 0 253 0 253 18 149 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 18 153 0 179 18 153 0 180 0 253 0 234 18 153 0 242 1 205 0 243 1 209 0 246 18 153 0 247 0 253 0 253 18 153 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 5 41 0 126 18 157 0 197 5 53 0 198 5 53 0 199 5 53 0 200 5 57 1 189] 
#[0 18 161 0 85] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 14 129 0 126 14 129 0 198 14 129 0 199 14 129 0 200 14 129 0 214] 
#[0 18 173 0 85] 
#[0 18 177 0 3] 
#[0 18 181 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 18 185 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 18 189 0 2] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 18 193 0 183 18 193 0 186 18 193 0 187 18 193 0 188 18 193 0 195 18 193 0 209 18 193 0 210 18 193 0 211 18 193 0 212 18 193 0 215 18 193 0 216 18 193 0 218 18 193 0 219 18 193 0 220 18 193 0 225 18 193 0 227 18 193 0 228 18 193 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 7 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 2 61 0 110 18 197 0 126 18 197 1 31] 
#[0 7 150 0 72] 
#[1 18 201 0 4 2 61 0 110 9 181 0 111 9 193 0 126 18 205 1 29 9 193 1 31] 
#[0 7 154 0 72] 
#[0 7 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 7 162 0 72] 
#[0 7 166 0 72] 
#[0 7 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 7 174 0 2 0 107] 
#[0 7 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 18 209 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 18 213 0 106 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 18 217 0 179 18 217 0 180 0 253 0 234 18 217 0 242 1 205 0 243 1 209 0 246 18 217 0 247 0 253 0 253 18 217 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 7 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 18 221 0 13 18 225 0 107] 
#[0 7 186 0 13 0 107] 
#[0 7 190 0 13 0 107] 
#[1 0 29 0 1 18 229 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 9 233 0 106 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 18 233 0 156 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 9 241 0 179 9 241 0 180 0 253 0 234 9 241 0 242 1 205 0 243 1 209 0 246 9 241 0 247 0 253 0 253 9 241 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 18 237 0 3 18 241 0 221] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 18 253 0 126 18 253 0 198 18 253 0 199 18 253 0 200 18 253 0 231] 
#[0 7 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 7 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 7 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 6 186 0 4] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 17 93 0 206 17 93 0 207 8 185 1 189] 
#[0 6 198 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[0 7 206 0 7 0 107] 
#[1 7 210 0 7 8 37 0 22 7 210 0 85 7 210 0 107 19 1 0 142] 
#[1 8 37 0 22 19 5 0 142] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 19 9 0 183 19 9 0 186 19 9 0 187 19 9 0 188 19 9 0 195 19 9 0 209 19 9 0 210 19 9 0 211 19 9 0 212 19 9 0 215 19 9 0 216 19 9 0 218 19 9 0 219 19 9 0 220 19 9 0 225 19 9 0 227 19 9 0 228 19 9 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 19 13 0 183 19 13 0 186 19 13 0 187 19 13 0 188 19 13 0 195 19 13 0 209 19 13 0 210 19 13 0 211 19 13 0 212 19 13 0 215 19 13 0 216 19 13 0 218 19 13 0 219 19 13 0 220 19 13 0 225 19 13 0 227 19 13 0 228 19 13 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 4 2 0 3 4 2 0 121 4 2 0 123 19 17 1 60 11 69 1 61] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 19 21 0 179 19 21 0 180 19 21 0 182 0 253 0 234 19 21 0 242 1 205 0 243 1 209 0 246 19 21 0 247 0 253 0 253 19 21 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 7 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 7 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 19 25 0 119 19 29 0 120] 
#[0 7 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 19 33 0 6 6 61 0 107] 
#[1 19 37 0 6 6 61 0 107] 
#[0 7 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 7 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 19 41 0 179 19 41 0 180 0 253 0 234 19 41 0 242 1 205 0 243 1 209 0 246 19 41 0 247 0 253 0 253 19 41 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 7 234 0 7 0 107] 
#[1 7 238 0 7 8 37 0 22 7 238 0 107 19 45 0 142] 
#[1 7 242 0 7 8 37 0 22 7 242 0 107 19 49 0 142] 
#[1 0 29 0 1 0 33 0 3 7 246 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 6 157 0 183 6 157 0 186 6 157 0 187 6 157 0 188 6 157 0 190 6 157 0 191 1 137 0 192 6 157 0 195 6 157 0 209 6 157 0 210 6 157 0 211 6 157 0 212 6 157 0 215 6 157 0 216 6 157 0 218 6 157 0 219 6 157 0 220 6 157 0 225 6 157 0 227 6 157 0 228 6 157 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 19 53 0 4] 
#[0 7 250 0 4] 
#[0 7 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 0 121 0 122 0 123 1 186 1 188 1 189 1 190] 
#[0 19 57 0 121] 
#[0 8 2 0 3 0 121 0 123] 
#[0 8 6 0 3 0 121 0 123] 
#[0 8 10 0 3 0 121 0 123] 
#[0 19 61 0 3] 
#[0 8 14 0 122] 
#[0 19 65 0 122] 
#[1 8 18 0 13 19 69 1 67] 
#[1 8 22 0 3 8 22 0 8 8 22 0 13 8 22 0 22 15 137 0 108 8 22 0 122] 
#[0 8 26 0 3 0 8 0 13 0 22 0 122] 
#[1 19 73 0 8 0 98 0 13 19 77 1 65] 
#[0 8 30 0 3 0 8 0 13 0 122] 
#[1 6 30 0 3 8 34 0 8 8 34 0 13 15 145 0 122 15 173 1 48 19 81 1 53 19 81 1 55 19 81 1 56 15 173 1 57 15 181 1 69] 
#[0 8 38 0 3 0 8 0 13 0 122] 
#[0 8 42 0 3 0 8 0 13 0 122] 
#[1 8 46 0 3 8 46 0 8 8 46 0 13 19 85 0 22 8 46 0 122 19 89 1 58] 
#[0 19 93 0 13] 
#[0 19 97 0 3] 
#[1 8 50 0 3 8 50 0 8 8 50 0 13 15 133 0 21 8 50 0 122] 
#[0 8 54 0 122] 
#[1 13 1 0 108 19 101 1 102] 
#[1 15 217 0 1 13 161 0 3 19 105 0 4 6 133 0 5 8 205 0 10 15 225 0 83 10 37 0 106 2 61 0 110 3 125 0 111 6 145 0 113 6 149 0 114 8 181 0 126 19 109 0 127 19 109 0 138 19 109 0 139 19 109 0 140 7 237 0 201 7 241 0 202 7 245 0 205 7 245 0 207 6 145 1 39 6 149 1 40 15 233 1 70 15 237 1 87 15 241 1 88 15 245 1 89 15 245 1 101 15 245 1 103 15 245 1 106 15 245 1 107 15 245 1 108 10 45 1 189] 
#[1 11 101 0 1 15 197 0 3 15 201 0 5 10 49 0 6 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 3 37 0 106 3 209 0 107 2 61 0 110 15 205 0 126 10 53 0 133 3 49 0 198 3 49 0 199 3 49 0 200 8 13 0 203 8 17 0 204 8 21 0 206 8 21 0 207 8 25 0 208 11 133 1 70 16 21 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 16 17 1 92 16 21 1 93 11 149 1 94 11 153 1 95 16 21 1 96 16 21 1 97 11 157 1 98 11 157 1 100 8 185 1 189] 
#[1 0 167 0 2 0 167 0 4 6 62 0 5 0 167 0 6 6 62 0 7 6 62 0 10 6 70 0 21 8 37 0 22 6 62 0 39 6 62 0 44 0 167 0 107 8 41 0 142] 
#[0 19 113 0 2] 
#[0 19 117 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 19 121 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 8 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 34 0 35 0 36 0 37 0 38 0 39 0 44 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 110 0 111 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 19 125 0 1 8 205 0 10 19 129 1 70] 
#[1 15 217 0 1 8 62 0 4 8 62 0 7 8 205 0 10 19 133 0 41 8 62 0 107 13 1 0 108 15 233 1 70 19 137 1 102 19 141 1 103] 
#[0 19 145 0 1] 
#[0 19 149 0 4] 
#[1 8 66 0 4 19 153 0 7 19 157 0 107] 
#[0 8 70 0 4 0 7 0 107] 
#[0 8 74 0 4 0 7 0 107] 
#[0 8 78 0 4 0 7 0 107] 
#[0 8 82 0 4 0 7 0 107] 
#[0 8 86 0 4 0 7 0 107] 
#[0 8 90 0 4 0 7 0 107] 
#[0 8 94 0 6 0 107] 
#[1 19 161 0 6 19 165 0 107] 
#[0 8 98 0 6 0 107] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 19 169 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 19 173 0 1] 
#[0 8 102 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 21 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[1 8 106 0 2 8 106 0 3 8 106 0 4 8 106 0 5 8 106 0 6 8 106 0 7 8 106 0 13 8 106 0 18 19 177 0 21 8 106 0 22 8 106 0 39 8 106 0 44 8 106 0 58 8 106 0 85 8 106 0 86 8 106 0 87 8 106 0 88 8 106 0 91 8 106 0 107 8 106 0 111 8 106 0 113 8 106 0 114] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 19 181 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 19 181 1 96 19 181 1 97 11 157 1 98 11 157 1 100] 
#[0 8 110 0 13 0 107] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 19 185 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 8 114 0 1 0 3 0 22 0 68 1 189] 
#[1 2 61 0 110 13 141 0 126 19 189 1 72] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 253 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 3 241 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 3 241 0 161 19 193 0 162 19 193 0 163 0 253 0 234 0 253 0 253 0 253 1 2 0 253 1 6 19 193 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 3 249 1 189] 
#[1 19 197 0 1 11 105 0 3 11 109 0 5 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 19 201 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 19 201 1 95 11 157 1 98 11 157 1 100] 
#[1 19 197 0 1 11 105 0 3 11 109 0 5 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 19 205 1 80 19 205 1 81 19 205 1 82 19 205 1 83 11 173 1 84 11 177 1 85 19 205 1 86 19 205 1 90 19 205 1 91 19 205 1 98 19 205 1 100] 
#[0 19 209 0 5] 
#[1 8 118 0 2 8 118 0 3 8 118 0 4 8 118 0 5 8 118 0 6 8 118 0 7 9 253 0 10 8 118 0 13 8 118 0 18 8 118 0 22 8 118 0 39 8 118 0 44 8 118 0 58 8 118 0 85 8 118 0 86 8 118 0 87 8 118 0 88 8 118 0 91 8 118 0 107 8 118 0 111 8 118 0 113 8 118 0 114 19 213 1 74 8 118 1 185] 
#[1 2 61 0 110 19 217 0 126] 
#[0 19 221 0 3] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 19 225 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 19 229 0 2] 
#[1 19 233 0 4 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 16 145 0 127 16 145 0 138 16 145 0 139 16 145 0 140 6 145 1 39 6 149 1 40 19 237 1 132 16 153 1 133 16 157 1 134] 
#[0 19 241 0 3] 
#[1 4 49 0 68 19 245 1 12 4 65 1 189] 
#[0 8 122 0 7 0 107] 
#[0 8 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 2 61 0 110 11 245 0 126 19 249 1 171] 
#[0 19 253 0 7] 
#[0 8 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 26 0 4 6 237 0 61 7 181 0 67 6 245 0 76 2 121 0 79 2 125 0 82 2 129 0 99 2 241 1 22 2 241 1 109 2 241 1 118 2 241 1 136 7 189 1 142 2 241 1 154 20 1 1 158 2 237 1 159 2 241 1 160 2 241 1 163 2 241 1 165 2 241 1 166 2 241 1 167 2 241 1 168] 
#[1 8 134 0 4 6 173 0 56 20 5 0 57 2 105 0 66 20 9 0 67 6 181 0 73 7 117 0 76 2 121 0 79 20 13 0 80 6 193 0 82 6 197 0 101 20 17 0 191 1 137 0 192 20 21 1 118 20 41 1 131 20 25 1 142 20 29 1 169 20 33 1 172 20 37 1 173 20 41 1 179 20 45 1 180 20 49 1 181 20 53 1 182 20 57 1 183] 
#[0 8 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 8 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 8 146 0 4 20 61 0 22 8 146 0 107] 
#[0 20 65 0 4] 
#[1 8 150 0 4 20 69 0 107] 
#[0 8 154 0 4 0 107] 
#[0 8 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 8 162 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 4 45 0 3 8 205 0 10 4 49 0 68 11 233 1 11 20 73 1 12 16 105 1 70 4 65 1 189] 
#[1 20 77 0 1 8 205 0 10 15 233 1 70 16 121 1 103] 
#[0 8 166 0 4 0 61 0 67 0 76 0 79 0 82 0 99 1 190] 
#[0 8 170 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 2 61 0 110 16 209 0 126 16 213 1 85 16 217 1 143] 
#[0 8 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 20 81 0 3] 
#[0 20 85 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 20 89 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 20 93 0 2] 
#[0 6 70 0 7 0 21] 
#[1 8 178 0 7 20 97 0 21] 
#[0 20 101 0 7] 
#[0 20 105 0 1] 
#[0 8 182 0 3] 
#[0 8 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 11 105 0 3 20 109 1 86] 
#[0 8 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 4 97 0 56 2 97 0 57 6 237 0 61 2 105 0 66 4 105 0 73 7 117 0 76 2 121 0 79 1 137 0 80 2 125 0 82 2 129 0 99 0 173 0 101 20 113 0 191 1 137 0 192 20 117 0 195 20 121 0 233 20 125 0 252 20 129 1 9 20 133 1 109 20 137 1 118 20 141 1 131 20 145 1 136 20 149 1 142 20 153 1 168 7 45 1 189] 
#[0 8 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 8 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 8 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 8 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 8 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 8 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 8 218 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 8 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 8 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 20 157 0 4] 
#[1 0 29 0 1 0 33 0 3 8 230 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 6 237 0 61 0 97 0 63 0 101 0 64 2 105 0 66 16 241 0 67 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 7 81 0 76 2 121 0 79 1 137 0 80 2 125 0 82 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 2 129 0 99 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 20 161 0 183 20 161 0 186 20 161 0 187 20 161 0 188 20 161 0 191 1 137 0 192 20 161 0 195 20 161 0 209 20 161 0 210 20 161 0 211 20 161 0 212 20 161 0 215 20 161 0 216 20 161 0 218 20 161 0 219 20 161 0 220 20 161 0 225 20 161 0 227 20 161 0 228 20 161 0 232 20 161 0 233 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 20 161 0 252 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 20 161 1 9 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 20 161 1 109 20 161 1 118 20 161 1 131 20 161 1 136 20 161 1 140 20 161 1 141 20 161 1 142 20 161 1 168 3 25 1 189] 
#[0 8 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 8 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 8 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 8 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 8 250 0 3 0 21] 
#[0 20 165 0 7] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 20 169 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 20 169 1 96 20 169 1 97 11 157 1 98 11 157 1 100] 
#[0 16 177 0 7] 
#[0 20 173 0 2] 
#[0 20 177 0 7] 
#[0 20 181 0 3] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 20 185 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 8 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 20 189 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 9 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 9 6 0 4 0 107] 
#[0 9 10 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[0 20 193 0 4] 
#[0 9 14 0 4 0 107] 
#[0 9 18 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[0 9 22 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[1 5 33 0 3 5 37 0 5 20 197 0 6 3 37 0 106 8 165 0 107 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 12 237 0 206 12 237 0 207 20 201 0 208 8 185 1 189] 
#[0 9 26 0 6 0 107] 
#[0 20 205 0 6] 
#[0 9 30 0 2 0 3 0 4 0 5 0 6 0 7 0 18 0 22 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 9 34 0 2 0 4 0 6 0 107] 
#[0 9 38 0 2 0 4 0 6 0 107] 
#[0 9 42 0 2 0 4 0 6 0 107] 
#[0 9 46 0 2 0 4 0 6 0 107] 
#[1 9 50 0 2 9 50 0 4 9 50 0 6 8 37 0 22 9 50 0 107 20 209 0 142] 
#[0 9 54 0 2 0 4 0 6 0 107] 
#[0 9 58 0 2 0 4 0 6 0 107] 
#[1 9 62 0 2 9 62 0 4 9 62 0 6 8 37 0 22 9 62 0 107 20 213 0 142] 
#[0 20 217 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 20 221 0 235 3 77 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 20 225 0 2] 
#[0 20 229 0 3] 
#[0 9 66 0 2] 
#[0 20 233 0 2] 
#[0 20 237 0 3] 
#[0 20 241 0 2] 
#[1 5 33 0 3 5 37 0 5 2 61 0 110 20 245 0 126 20 249 0 198 20 249 0 199 20 249 0 200 20 253 0 206 20 253 0 207 20 253 0 239 20 253 0 250 21 1 1 105 21 5 1 113 8 185 1 189] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 21 9 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 21 13 0 3] 
#[0 21 17 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 21 21 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 21 25 0 2] 
#[0 9 70 0 4] 
#[0 21 29 0 4] 
#[0 21 33 0 108] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 21 37 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 15 217 0 1 21 41 0 7 8 205 0 10 8 37 0 22 13 1 0 108 21 45 0 142 15 233 1 70 21 49 1 102 21 53 1 103] 
#[0 9 74 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 9 78 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 9 82 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 21 57 0 7] 
#[1 21 61 0 7 8 37 0 22 21 65 0 142] 
#[1 21 69 0 3 21 73 0 7] 
#[0 21 77 0 1] 
#[1 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 21 81 0 127 21 81 0 138 21 81 0 139 21 81 0 140 6 145 1 39 6 149 1 40 21 85 1 111 21 89 1 112 13 217 1 189] 
#[1 15 217 0 1 21 93 0 7 8 205 0 10 8 37 0 22 13 1 0 108 21 97 0 142 15 233 1 70 21 101 1 102 21 105 1 103] 
#[0 9 86 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 9 90 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 9 94 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 9 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 85 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 110 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 1 186 1 188 1 189 1 190] 
#[1 2 61 0 110 13 109 0 126 21 109 1 83 11 173 1 84 11 177 1 85 21 109 1 121] 
#[1 21 113 0 2 6 61 0 107] 
#[0 9 102 0 4 0 107] 
#[0 9 106 0 7 0 72] 
#[0 9 110 0 4 0 107] 
#[0 21 117 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 21 121 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 21 125 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 21 129 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 21 133 0 3] 
#[0 21 137 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 21 141 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 21 145 0 2] 
#[0 21 149 0 3] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 21 153 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 21 157 0 183 21 157 0 186 21 157 0 187 21 157 0 188 21 157 0 195 21 157 0 209 21 157 0 210 21 157 0 211 21 157 0 212 21 157 0 215 21 157 0 216 21 157 0 218 21 157 0 219 21 157 0 220 21 157 0 225 21 157 0 227 21 157 0 228 21 157 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 21 161 0 2 6 61 0 107] 
#[1 0 29 0 1 21 165 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 21 169 0 179 21 169 0 180 21 169 0 182 0 253 0 234 21 169 0 242 1 205 0 243 1 209 0 246 21 169 0 247 0 253 0 253 21 169 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 21 173 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 21 177 0 179 21 177 0 180 21 177 0 182 0 253 0 234 21 177 0 242 1 205 0 243 1 209 0 246 21 177 0 247 0 253 0 253 21 177 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 21 181 0 179 21 181 0 180 0 253 0 234 21 181 0 242 1 205 0 243 1 209 0 246 21 181 0 247 0 253 0 253 21 181 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 21 185 0 179 21 185 0 180 21 185 0 182 0 253 0 234 21 185 0 242 1 205 0 243 1 209 0 246 21 185 0 247 0 253 0 253 21 185 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 21 189 0 2 6 61 0 107] 
#[0 21 193 0 2] 
#[1 0 29 0 1 21 197 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 21 201 0 179 21 201 0 180 21 201 0 182 0 253 0 234 21 201 0 242 1 205 0 243 1 209 0 246 21 201 0 247 0 253 0 253 21 201 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 21 205 0 7 6 61 0 107] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 21 209 0 183 21 209 0 186 21 209 0 187 21 209 0 188 21 209 0 195 21 209 0 209 21 209 0 210 21 209 0 211 21 209 0 212 21 209 0 215 21 209 0 216 21 209 0 218 21 209 0 219 21 209 0 220 21 209 0 225 21 209 0 227 21 209 0 228 21 209 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 21 213 0 2 6 61 0 107] 
#[1 0 29 0 1 21 217 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 21 221 0 179 21 221 0 180 21 221 0 182 0 253 0 234 21 221 0 242 1 205 0 243 1 209 0 246 21 221 0 247 0 253 0 253 21 221 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 21 225 0 2 6 61 0 107] 
#[0 21 229 0 2] 
#[0 21 233 0 85] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 21 237 0 179 21 237 0 180 0 253 0 234 21 237 0 242 1 205 0 243 1 209 0 246 21 237 0 247 0 253 0 253 21 237 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 7 134 0 85] 
#[0 7 138 0 85] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 21 241 0 179 21 241 0 180 0 253 0 234 21 241 0 242 1 205 0 243 1 209 0 246 21 241 0 247 0 253 0 253 21 241 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 21 245 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 21 249 0 3] 
#[0 21 253 0 2] 
#[0 22 1 0 3] 
#[1 9 114 0 1 9 114 0 3 9 114 0 4 9 114 0 5 9 114 0 7 9 114 0 34 9 114 0 35 9 114 0 36 9 114 0 37 9 114 0 38 9 114 0 47 9 114 0 51 9 114 0 52 9 114 0 53 9 114 0 54 9 114 0 56 9 114 0 57 9 114 0 59 9 114 0 60 9 114 0 61 9 114 0 62 9 114 0 63 9 114 0 64 22 5 0 65 9 114 0 66 9 114 0 67 9 114 0 69 9 114 0 71 9 114 0 73 9 114 0 75 9 114 0 76 9 114 0 79 9 114 0 80 9 114 0 82 9 114 0 83 9 114 0 84 9 114 0 89 9 114 0 92 9 114 0 93 9 114 0 95 9 114 0 96 9 114 0 97 9 114 0 98 9 114 0 99 9 114 0 100 9 114 0 101 9 114 0 102 9 114 0 103 9 114 0 104 9 114 0 105 9 114 0 110 9 114 0 113 9 114 0 114 9 114 0 115 9 114 0 117 9 114 0 118 9 114 0 121 9 114 1 189 9 114 1 190] 
#[0 9 118 0 4 0 107] 
#[0 9 122 0 72] 
#[0 9 126 0 4 0 107] 
#[0 9 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 22 9 0 179 22 9 0 180 0 253 0 234 22 9 0 242 1 205 0 243 1 209 0 246 22 9 0 247 0 253 0 253 22 9 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 9 134 0 2 0 107] 
#[0 9 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114 1 185] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 22 13 1 76 22 13 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 22 13 1 96 22 13 1 97 11 157 1 98 11 157 1 100] 
#[0 9 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 22 17 0 2 22 21 0 107] 
#[1 22 25 0 4 22 29 0 54 22 33 0 62 22 37 0 222 22 41 0 223 22 45 0 224] 
#[0 9 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 9 150 0 2] 
#[0 9 154 0 2] 
#[0 22 49 0 2] 
#[0 9 158 0 7 0 85 0 107] 
#[0 9 162 0 7 0 85 0 107] 
#[0 9 166 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 9 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 22 53 0 121] 
#[1 6 61 0 107 9 174 0 119 9 174 0 120] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 22 57 0 179 22 57 0 180 22 57 0 182 0 253 0 234 22 57 0 242 1 205 0 243 1 209 0 246 22 57 0 247 0 253 0 253 22 57 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 9 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 9 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 9 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 9 190 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[0 9 194 0 7 0 107] 
#[0 9 198 0 7 0 107] 
#[0 9 202 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[0 22 61 0 8] 
#[1 0 29 0 1 2 53 0 3 0 98 0 4 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 3 205 0 106 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 22 73 0 134 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 22 73 0 179 22 73 0 180 0 253 0 234 22 73 0 242 1 205 0 243 1 209 0 246 22 73 0 247 0 253 0 253 22 73 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 22 73 1 63 2 45 1 64 22 77 1 65 2 49 1 189] 
#[0 9 206 0 3 0 8 0 13 0 22 0 122] 
#[0 22 81 0 13] 
#[1 8 18 0 13 22 85 1 67] 
#[0 22 89 0 13] 
#[0 9 210 0 3 0 8 0 13 0 122] 
#[1 6 30 0 3 22 93 0 113 0 7 0 121 22 93 1 39 22 105 1 42 22 105 1 43 2 37 1 44 22 105 1 46 22 105 1 59 2 45 1 64 22 109 1 69] 
#[0 9 214 0 3 0 8 0 13 0 122] 
#[0 9 218 0 3 0 121 0 123] 
#[1 3 205 0 106 22 113 0 134] 
#[0 9 222 0 3 0 18] 
#[1 0 171 0 2 0 171 0 4 8 58 0 5 0 171 0 6 8 58 0 7 4 122 0 22 8 58 0 39 8 58 0 44 0 171 0 107] 
#[1 15 217 0 1 8 62 0 4 8 62 0 7 8 205 0 10 19 133 0 41 8 62 0 107 22 117 0 108 15 233 1 70 19 137 1 102 19 141 1 103] 
#[0 22 121 0 18] 
#[0 9 226 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 22 125 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 22 129 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 22 133 0 1] 
#[1 15 217 0 1 9 230 0 4 9 230 0 7 8 205 0 10 9 230 0 107 13 1 0 108 15 233 1 70 22 137 1 102 22 141 1 103] 
#[0 9 234 0 4 0 7 0 107] 
#[0 9 238 0 4 0 7 0 107] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 22 145 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 9 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 34 0 35 0 36 0 37 0 38 0 39 0 44 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 110 0 111 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 15 217 0 1 13 161 0 3 9 246 0 4 6 133 0 5 8 205 0 10 15 225 0 83 3 125 0 111 6 145 0 113 6 149 0 114 15 229 0 127 15 229 0 138 15 229 0 139 15 229 0 140 6 145 1 39 6 149 1 40 15 233 1 70 22 149 1 89 22 149 1 101 22 149 1 103 22 149 1 106 22 149 1 107 22 149 1 108] 
#[1 15 217 0 1 13 161 0 3 9 250 0 4 6 133 0 5 8 205 0 10 15 225 0 83 3 125 0 111 6 145 0 113 6 149 0 114 15 229 0 127 15 229 0 138 15 229 0 139 15 229 0 140 6 145 1 39 6 149 1 40 15 233 1 70 22 153 1 89 22 153 1 101 22 153 1 103 22 153 1 106 22 153 1 107 22 153 1 108] 
#[0 9 254 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 22 157 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 22 157 1 93 11 149 1 94 11 153 1 95 22 157 1 96 22 157 1 97 11 157 1 98 11 157 1 100] 
#[0 22 161 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 22 165 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 2 61 0 110 22 169 0 126] 
#[0 10 2 0 13 0 107] 
#[0 22 173 0 2] 
#[0 10 6 0 13 0 107] 
#[0 10 10 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 119 0 120 1 186 1 190] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 15 213 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 15 213 1 96 15 213 1 97 11 157 1 98 11 157 1 100] 
#[1 10 14 0 2 10 14 0 3 10 14 0 4 10 14 0 5 10 14 0 6 10 14 0 7 10 14 0 13 10 14 0 18 10 14 0 22 16 69 0 39 10 14 0 44 10 14 0 58 10 14 0 85 10 14 0 86 10 14 0 87 10 14 0 88 10 14 0 91 10 14 0 107 10 14 0 111 10 14 0 113 10 14 0 114] 
#[1 10 18 0 2 10 18 0 3 10 18 0 4 0 175 0 5 10 18 0 6 10 18 0 7 10 18 0 13 10 18 0 18 10 18 0 22 10 18 0 39 10 18 0 44 10 18 0 58 10 18 0 85 10 18 0 86 10 18 0 87 10 18 0 88 10 18 0 91 10 18 0 107 10 18 0 111 10 18 0 113 10 18 0 114 16 73 0 217] 
#[0 22 177 0 6] 
#[0 10 22 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114 1 185] 
#[1 10 26 0 2 10 26 0 3 10 26 0 4 10 26 0 5 10 26 0 6 10 26 0 7 10 26 0 10 10 26 0 13 10 26 0 18 10 30 0 21 10 26 0 22 10 26 0 39 10 26 0 44 10 26 0 58 10 26 0 85 10 26 0 86 10 26 0 87 10 26 0 88 10 26 0 91 10 26 0 107 10 26 0 111 10 26 0 113 10 26 0 114 10 26 1 185] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 22 181 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 22 185 0 4] 
#[1 10 34 0 3 10 34 0 18 13 1 0 108 22 189 1 102] 
#[0 10 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 22 193 0 4] 
#[1 13 161 0 3 10 42 0 4 6 133 0 5 22 197 0 58 22 209 0 86 22 209 0 87 22 209 0 88 22 201 0 91 3 125 0 111 6 145 0 113 6 149 0 114 22 205 0 127 22 205 0 138 22 205 0 139 22 205 0 140 6 145 1 39 6 149 1 40 22 209 1 104 22 225 1 107 22 217 1 174 22 221 1 175 22 225 1 176 22 225 1 177 22 225 1 178] 
#[0 22 237 0 3] 
#[0 10 46 0 7 0 107] 
#[0 10 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 22 241 0 4] 
#[1 0 50 0 3 0 50 0 5 6 169 0 66 0 179 0 110 11 245 0 126 11 249 1 170 11 253 1 171 0 50 1 189] 
#[1 6 173 0 56 20 5 0 57 2 105 0 66 6 181 0 73 7 117 0 76 2 121 0 79 20 13 0 80 6 193 0 82 6 197 0 101 22 245 0 191 1 137 0 192 22 249 1 118 23 13 1 131 22 253 1 142 23 1 1 169 23 5 1 172 23 9 1 173 23 13 1 179 23 17 1 180] 
#[1 0 58 0 3 0 58 0 5 0 183 0 110 11 245 0 126 12 5 1 170 11 253 1 171 0 58 1 189] 
#[0 10 54 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 10 58 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 10 62 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 10 66 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 10 70 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 10 74 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 10 78 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 10 82 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 23 21 0 4] 
#[1 10 86 0 4 6 173 0 56 20 5 0 57 2 105 0 66 20 9 0 67 6 181 0 73 7 117 0 76 2 121 0 79 20 13 0 80 6 193 0 82 6 197 0 101 20 17 0 191 1 137 0 192 20 21 1 118 20 41 1 131 20 25 1 142 20 29 1 169 20 33 1 172 20 37 1 173 20 41 1 179 20 45 1 180 23 25 1 183] 
#[0 10 90 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 23 33 0 179 23 33 0 180 0 253 0 234 23 33 0 242 1 205 0 243 1 209 0 246 23 33 0 247 0 253 0 253 23 33 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 23 33 1 135 2 49 1 189] 
#[0 10 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 10 98 0 4 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 16 145 0 127 16 145 0 138 16 145 0 139 16 145 0 140 6 145 1 39 6 149 1 40 23 37 1 134] 
#[0 23 41 0 3] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 23 45 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 23 49 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 23 53 0 3] 
#[0 23 57 0 2] 
#[0 23 61 0 3] 
#[1 2 61 0 110 23 65 0 126] 
#[0 10 102 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 23 69 0 113 1 39] 
#[0 10 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 10 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 10 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 10 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 10 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 10 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 10 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 10 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 10 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 10 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 10 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 10 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 10 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 10 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189] 
#[0 10 162 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 23 73 0 7] 
#[1 10 166 0 3 10 166 0 7 13 1 0 108 23 77 1 102] 
#[0 10 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 23 81 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 23 85 0 2] 
#[0 23 89 0 4] 
#[0 10 174 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[0 10 178 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[0 23 93 0 6] 
#[0 10 182 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[0 10 186 0 2 0 4 0 6 0 107] 
#[0 10 190 0 2 0 4 0 6 0 107] 
#[0 23 97 0 3] 
#[0 23 101 0 2] 
#[0 23 105 0 3] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 23 109 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 23 113 0 3] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 23 117 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 13 1 0 108 23 121 1 102] 
#[1 2 126 0 2 8 37 0 22 10 194 0 108 8 41 0 142] 
#[1 2 130 0 2 8 37 0 22 10 198 0 108 8 49 0 142] 
#[0 23 125 0 2] 
#[1 13 1 0 108 23 129 1 102] 
#[0 23 133 0 2] 
#[0 23 137 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 17 221 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 23 141 1 7 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 23 145 0 3] 
#[0 23 149 0 2] 
#[0 23 153 0 3] 
#[0 10 202 0 2 0 4 0 6 0 7 0 85 0 107 0 108 0 119 0 120 1 190] 
#[1 23 157 0 113 23 161 0 114] 
#[0 23 165 0 2] 
#[0 10 206 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 23 169 0 7] 
#[1 23 173 0 7 8 37 0 22 23 177 0 142] 
#[1 23 181 0 3 23 185 0 7] 
#[0 10 210 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 10 214 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 23 189 0 7] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 23 193 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 10 218 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 23 197 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 15 217 0 1 23 201 0 7 8 205 0 10 8 37 0 22 13 1 0 108 23 205 0 142 15 233 1 70 23 209 1 102 23 213 1 103] 
#[0 10 222 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 10 226 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 10 230 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 23 217 0 7] 
#[1 23 221 0 7 8 37 0 22 23 225 0 142] 
#[1 23 229 0 3 23 233 0 7] 
#[0 10 234 0 3 0 107] 
#[0 23 237 0 7] 
#[0 23 241 0 3] 
#[0 23 245 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 23 249 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 23 253 0 2] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 24 1 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 24 5 0 3] 
#[0 24 9 0 2] 
#[0 24 13 0 3] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 24 17 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 24 21 0 4] 
#[0 10 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 24 25 0 183 24 25 0 186 24 25 0 187 24 25 0 188 24 25 0 195 24 25 0 209 24 25 0 210 24 25 0 211 24 25 0 212 24 25 0 215 24 25 0 216 24 25 0 218 24 25 0 219 24 25 0 220 24 25 0 225 24 25 0 227 24 25 0 228 24 25 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 24 29 0 183 24 29 0 186 24 29 0 187 24 29 0 188 24 29 0 195 24 29 0 209 24 29 0 210 24 29 0 211 24 29 0 212 24 29 0 215 24 29 0 216 24 29 0 218 24 29 0 219 24 29 0 220 24 29 0 225 24 29 0 227 24 29 0 228 24 29 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 24 33 0 2 6 61 0 107] 
#[1 0 29 0 1 24 37 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 24 41 0 179 24 41 0 180 24 41 0 182 0 253 0 234 24 41 0 242 1 205 0 243 1 209 0 246 24 41 0 247 0 253 0 253 24 41 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 24 45 0 7 6 61 0 107] 
#[0 24 49 0 2] 
#[1 24 53 0 2 6 61 0 107] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 24 57 0 183 24 57 0 186 24 57 0 187 24 57 0 188 24 57 0 195 24 57 0 209 24 57 0 210 24 57 0 211 24 57 0 212 24 57 0 215 24 57 0 216 24 57 0 218 24 57 0 219 24 57 0 220 24 57 0 225 24 57 0 227 24 57 0 228 24 57 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 24 61 0 183 24 61 0 186 24 61 0 187 24 61 0 188 24 61 0 195 24 61 0 209 24 61 0 210 24 61 0 211 24 61 0 212 24 61 0 215 24 61 0 216 24 61 0 218 24 61 0 219 24 61 0 220 24 61 0 225 24 61 0 227 24 61 0 228 24 61 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 24 65 0 183 24 65 0 186 24 65 0 187 24 65 0 188 24 65 0 195 24 65 0 209 24 65 0 210 24 65 0 211 24 65 0 212 24 65 0 215 24 65 0 216 24 65 0 218 24 65 0 219 24 65 0 220 24 65 0 225 24 65 0 227 24 65 0 228 24 65 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 24 69 0 2 6 61 0 107] 
#[1 0 29 0 1 24 73 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 24 77 0 179 24 77 0 180 24 77 0 182 0 253 0 234 24 77 0 242 1 205 0 243 1 209 0 246 24 77 0 247 0 253 0 253 24 77 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 10 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 24 81 0 183 24 81 0 186 24 81 0 187 24 81 0 188 24 81 0 195 24 81 0 209 24 81 0 210 24 81 0 211 24 81 0 212 24 81 0 215 24 81 0 216 24 81 0 218 24 81 0 219 24 81 0 220 24 81 0 225 24 81 0 227 24 81 0 228 24 81 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 24 85 0 183 24 85 0 186 24 85 0 187 24 85 0 188 24 85 0 195 24 85 0 209 24 85 0 210 24 85 0 211 24 85 0 212 24 85 0 215 24 85 0 216 24 85 0 218 24 85 0 219 24 85 0 220 24 85 0 225 24 85 0 227 24 85 0 228 24 85 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 24 89 0 2 6 61 0 107] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 24 93 0 183 24 93 0 186 24 93 0 187 24 93 0 188 24 93 0 195 24 93 0 209 24 93 0 210 24 93 0 211 24 93 0 212 24 93 0 215 24 93 0 216 24 93 0 218 24 93 0 219 24 93 0 220 24 93 0 225 24 93 0 227 24 93 0 228 24 93 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 24 97 0 183 24 97 0 186 24 97 0 187 24 97 0 188 24 97 0 195 24 97 0 209 24 97 0 210 24 97 0 211 24 97 0 212 24 97 0 215 24 97 0 216 24 97 0 218 24 97 0 219 24 97 0 220 24 97 0 225 24 97 0 227 24 97 0 228 24 97 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 24 101 0 179 24 101 0 180 0 253 0 234 24 101 0 242 1 205 0 243 1 209 0 246 24 101 0 247 0 253 0 253 24 101 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 24 105 0 2] 
#[0 24 109 0 2] 
#[0 24 113 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 24 117 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 24 121 0 254 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 24 125 0 3] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 24 129 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 24 133 0 183 24 133 0 186 24 133 0 187 24 133 0 188 24 133 0 195 24 133 0 209 24 133 0 210 24 133 0 211 24 133 0 212 24 133 0 215 24 133 0 216 24 133 0 218 24 133 0 219 24 133 0 220 24 133 0 225 24 133 0 227 24 133 0 228 24 133 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 10 246 0 2 0 107] 
#[0 10 250 0 13 0 107] 
#[0 10 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 18 213 0 106 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 18 217 0 179 18 217 0 180 0 253 0 234 18 217 0 242 1 205 0 243 1 209 0 246 18 217 0 247 0 253 0 253 18 217 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 11 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 24 137 0 179 24 137 0 180 24 137 0 182 0 253 0 234 24 137 0 242 1 205 0 243 1 209 0 246 24 137 0 247 0 253 0 253 24 137 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 24 141 0 108] 
#[1 24 145 0 4 22 29 0 54 22 33 0 62 24 149 0 223 24 153 0 224] 
#[0 11 6 0 4 0 54 0 62] 
#[1 24 157 0 4 22 29 0 54 24 161 0 222 22 41 0 223] 
#[1 5 21 0 3 24 165 0 188] 
#[0 24 169 0 8] 
#[1 6 61 0 107 11 10 0 119 11 10 0 120] 
#[1 11 73 0 122 24 173 1 47 24 173 1 48 24 173 1 49 11 89 1 50 11 93 1 51] 
#[0 11 14 0 4] 
#[0 11 18 0 4] 
#[1 0 98 0 4 24 177 1 65] 
#[0 24 181 0 4] 
#[0 11 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 0 121 0 122 0 123 1 186 1 188 1 189 1 190] 
#[0 24 185 0 13] 
#[0 11 26 0 3 0 121 0 123] 
#[0 11 30 0 3 0 8 0 13 0 122] 
#[0 11 34 0 3 0 8 0 13 0 122] 
#[0 11 38 0 3 0 8 0 13 0 122] 
#[0 11 42 0 3 0 8 0 13 0 122] 
#[0 24 189 0 3] 
#[1 0 10 0 4 24 193 1 64] 
#[1 11 101 0 1 15 197 0 3 15 201 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 15 205 0 126 3 49 0 198 3 49 0 199 3 49 0 200 17 93 0 206 17 93 0 207 11 133 1 70 17 129 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 17 129 1 96 17 129 1 97 11 157 1 98 11 157 1 100 8 185 1 189] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 24 197 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 24 197 1 96 24 197 1 97 11 157 1 98 11 157 1 100] 
#[1 10 166 0 3 10 166 0 4 10 166 0 7 10 166 0 107 13 1 0 108 24 201 1 102] 
#[0 24 205 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 24 209 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[0 11 46 0 4 0 7 0 107] 
#[0 11 50 0 4 0 7 0 107] 
#[0 24 213 0 2] 
#[0 11 54 0 4 0 7 0 107] 
#[0 11 58 0 4 0 7 0 107] 
#[0 11 62 0 6 0 107] 
#[0 24 217 0 18] 
#[0 24 221 0 2] 
#[0 11 66 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 21 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 24 225 0 18] 
#[0 11 70 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 24 229 0 4] 
#[0 11 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 11 78 0 3 0 18] 
#[0 11 82 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 24 233 0 1] 
#[1 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 24 237 0 127 24 237 0 138 24 237 0 139 24 237 0 140 6 145 1 39 6 149 1 40] 
#[1 15 217 0 1 24 241 0 7 8 205 0 10 13 1 0 108 15 233 1 70 24 245 1 102 24 249 1 103] 
#[1 6 133 0 5 24 253 0 91 3 125 0 111 6 145 0 113 6 149 0 114 25 1 0 127 25 1 0 138 25 1 0 139 25 1 0 140 6 145 1 39 6 149 1 40] 
#[0 11 86 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 25 5 0 4] 
#[1 13 161 0 3 11 90 0 4 6 133 0 5 22 197 0 58 22 209 0 86 22 209 0 87 22 209 0 88 22 201 0 91 3 125 0 111 6 145 0 113 6 149 0 114 22 205 0 127 22 205 0 138 22 205 0 139 22 205 0 140 6 145 1 39 6 149 1 40 22 209 1 104 25 9 1 107 25 9 1 176 25 9 1 177 25 9 1 178] 
#[0 11 94 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 11 98 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 11 102 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[1 13 161 0 3 10 42 0 4 6 133 0 5 22 197 0 58 22 209 0 86 22 209 0 87 22 209 0 88 22 201 0 91 3 125 0 111 6 145 0 113 6 149 0 114 22 205 0 127 22 205 0 138 22 205 0 139 22 205 0 140 6 145 1 39 6 149 1 40 22 209 1 104 22 225 1 107 25 13 1 174 22 221 1 175 22 225 1 176 22 225 1 177 22 225 1 178] 
#[0 11 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 11 110 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 11 114 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 11 118 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 11 122 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 11 126 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 11 130 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 11 134 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 11 138 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 11 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 11 146 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 79 0 80 0 82 0 101] 
#[0 11 150 0 4 0 107] 
#[0 11 154 0 4 0 107] 
#[0 11 158 0 4 0 107] 
#[1 13 161 0 3 0 187 0 4 6 133 0 5 8 221 0 7 3 105 0 25 6 137 0 51 22 197 0 58 3 113 0 74 22 209 0 86 22 209 0 87 22 209 0 88 3 117 0 90 25 17 0 91 3 125 0 111 6 145 0 113 6 149 0 114 25 21 0 127 25 21 0 138 25 21 0 139 25 21 0 140 8 245 0 249 8 245 0 251 8 245 1 0 8 245 1 4 13 225 1 13 8 241 1 14 8 245 1 15 6 145 1 39 6 149 1 40 22 209 1 104 22 225 1 107 8 245 1 111 8 245 1 112 22 217 1 174 22 221 1 175 22 225 1 176 22 225 1 177 22 225 1 178 8 249 1 189] 
#[0 25 25 0 2] 
#[0 25 29 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 24 117 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 25 33 0 254 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 25 37 0 3] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 25 41 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 10 30 0 7 0 21] 
#[0 25 45 0 2] 
#[0 11 162 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 191 0 3 11 166 0 7] 
#[0 25 49 0 4] 
#[1 0 195 0 3 11 170 0 7 13 1 0 108 25 53 1 102] 
#[1 0 199 0 1 11 174 0 3 11 174 0 4 0 199 0 5 0 199 0 7 11 74 0 8 11 74 0 9 11 74 0 10 11 74 0 11 11 74 0 12 11 74 0 13 11 74 0 14 11 74 0 15 11 74 0 16 11 74 0 17 11 74 0 19 11 74 0 20 11 74 0 21 11 74 0 22 11 74 0 23 11 74 0 24 11 74 0 25 11 74 0 26 11 74 0 27 11 74 0 28 11 74 0 29 11 74 0 30 11 74 0 31 11 74 0 32 11 74 0 33 0 199 0 34 0 199 0 35 0 199 0 36 0 199 0 37 11 174 0 38 11 74 0 39 11 74 0 40 11 74 0 41 11 74 0 42 11 74 0 43 11 74 0 44 11 74 0 45 11 74 0 46 11 174 0 47 11 74 0 48 11 74 0 49 11 174 0 51 11 174 0 52 11 174 0 53 11 174 0 56 11 174 0 57 11 174 0 59 11 174 0 60 11 174 0 61 11 174 0 63 11 174 0 64 11 174 0 66 11 174 0 67 11 174 0 69 11 174 0 71 11 174 0 73 11 174 0 75 11 174 0 76 11 74 0 77 11 74 0 78 11 174 0 79 11 174 0 80 11 174 0 82 11 174 0 83 11 174 0 84 11 174 0 89 11 174 0 92 11 174 0 93 11 174 0 95 11 174 0 96 11 174 0 97 11 174 0 98 11 174 0 99 11 174 0 100 11 174 0 101 11 174 0 102 11 174 0 103 11 174 0 104 11 174 0 105 11 74 0 107 11 174 0 110 11 174 0 113 11 174 0 114 11 174 0 115 0 199 0 117 0 199 0 118 11 174 0 121 11 74 1 186 11 74 1 188 0 199 1 189 11 174 1 190] 
#[0 11 178 0 2 0 4 0 6 0 22 0 41 0 77 0 85 0 107 0 108] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 24 117 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 25 57 0 254 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 25 61 0 3] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 17 221 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 25 65 1 7 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 25 69 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 25 73 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 25 77 0 4] 
#[0 25 81 0 3] 
#[1 13 1 0 108 25 85 1 102] 
#[0 11 182 0 2] 
#[1 25 89 0 3 13 1 0 108 25 93 1 102] 
#[0 11 186 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 25 97 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 25 101 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 25 105 1 3 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 25 109 0 3] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 17 221 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 25 113 1 7 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 25 117 0 2] 
#[0 25 121 0 2] 
#[1 25 125 0 3 25 129 0 7] 
#[0 11 190 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 11 194 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 25 133 0 7] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 25 137 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 11 198 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 11 202 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 25 141 0 4] 
#[0 25 145 0 2] 
#[0 11 206 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 25 149 0 7] 
#[1 25 153 0 7 8 37 0 22 25 157 0 142] 
#[1 25 161 0 3 25 165 0 7] 
#[0 11 210 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 11 214 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 25 169 0 7] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 25 173 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 11 218 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 11 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 17 221 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 25 177 1 7 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 25 181 0 3] 
#[0 25 185 0 2] 
#[0 25 189 0 3] 
#[0 25 193 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 24 117 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 25 197 0 254 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 25 201 0 3] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 25 205 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 25 209 0 4] 
#[0 11 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 11 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 11 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 25 213 0 183 25 213 0 186 25 213 0 187 25 213 0 188 25 213 0 195 25 213 0 209 25 213 0 210 25 213 0 211 25 213 0 212 25 213 0 215 25 213 0 216 25 213 0 218 25 213 0 219 25 213 0 220 25 213 0 225 25 213 0 227 25 213 0 228 25 213 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 25 217 0 183 25 217 0 186 25 217 0 187 25 217 0 188 25 217 0 195 25 217 0 209 25 217 0 210 25 217 0 211 25 217 0 212 25 217 0 215 25 217 0 216 25 217 0 218 25 217 0 219 25 217 0 220 25 217 0 225 25 217 0 227 25 217 0 228 25 217 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 25 221 0 2 6 61 0 107] 
#[1 0 29 0 1 25 225 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 25 229 0 179 25 229 0 180 25 229 0 182 0 253 0 234 25 229 0 242 1 205 0 243 1 209 0 246 25 229 0 247 0 253 0 253 25 229 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 25 233 0 183 25 233 0 186 25 233 0 187 25 233 0 188 25 233 0 195 25 233 0 209 25 233 0 210 25 233 0 211 25 233 0 212 25 233 0 215 25 233 0 216 25 233 0 218 25 233 0 219 25 233 0 220 25 233 0 225 25 233 0 227 25 233 0 228 25 233 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 25 237 0 183 25 237 0 186 25 237 0 187 25 237 0 188 25 237 0 195 25 237 0 209 25 237 0 210 25 237 0 211 25 237 0 212 25 237 0 215 25 237 0 216 25 237 0 218 25 237 0 219 25 237 0 220 25 237 0 225 25 237 0 227 25 237 0 228 25 237 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 11 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 11 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 11 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 25 241 0 183 25 241 0 186 25 241 0 187 25 241 0 188 25 241 0 195 25 241 0 209 25 241 0 210 25 241 0 211 25 241 0 212 25 241 0 215 25 241 0 216 25 241 0 218 25 241 0 219 25 241 0 220 25 241 0 225 25 241 0 227 25 241 0 228 25 241 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 25 245 0 183 25 245 0 186 25 245 0 187 25 245 0 188 25 245 0 195 25 245 0 209 25 245 0 210 25 245 0 211 25 245 0 212 25 245 0 215 25 245 0 216 25 245 0 218 25 245 0 219 25 245 0 220 25 245 0 225 25 245 0 227 25 245 0 228 25 245 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 25 249 0 2 6 61 0 107] 
#[0 11 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 11 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 25 253 0 183 25 253 0 186 25 253 0 187 25 253 0 188 25 253 0 195 25 253 0 209 25 253 0 210 25 253 0 211 25 253 0 212 25 253 0 215 25 253 0 216 25 253 0 218 25 253 0 219 25 253 0 220 25 253 0 225 25 253 0 227 25 253 0 228 25 253 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 11 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 12 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 26 1 0 2] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 26 5 0 183 26 5 0 186 26 5 0 187 26 5 0 188 26 5 0 195 26 5 0 209 26 5 0 210 26 5 0 211 26 5 0 212 26 5 0 215 26 5 0 216 26 5 0 218 26 5 0 219 26 5 0 220 26 5 0 225 26 5 0 227 26 5 0 228 26 5 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 26 9 0 183 26 9 0 186 26 9 0 187 26 9 0 188 26 9 0 195 26 9 0 209 26 9 0 210 26 9 0 211 26 9 0 212 26 9 0 215 26 9 0 216 26 9 0 218 26 9 0 219 26 9 0 220 26 9 0 225 26 9 0 227 26 9 0 228 26 9 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 12 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 12 10 0 4] 
#[0 26 13 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 24 117 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 26 17 0 254 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 26 21 0 4] 
#[0 12 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 6 61 0 107 26 25 0 108] 
#[1 0 29 0 1 0 33 0 3 12 18 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 12 18 0 54 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 26 29 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 12 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 12 26 0 4 0 54 0 62] 
#[1 26 33 0 4 22 29 0 54 26 37 0 222 22 41 0 223] 
#[0 12 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 26 41 0 4 22 29 0 54 24 149 0 223] 
#[0 12 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 12 38 0 13 26 45 1 68] 
#[1 12 38 0 13 26 49 1 68] 
#[0 26 53 0 4] 
#[0 12 42 0 3 0 121 0 123] 
#[0 12 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 0 121 0 122 0 123 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 83 2 9 0 84 0 145 0 92 0 153 0 95 2 13 0 97 0 169 0 100 0 177 0 102 0 189 0 105 2 61 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 26 57 0 179 26 57 0 180 0 253 0 234 26 57 0 242 1 205 0 243 1 209 0 246 26 57 0 247 0 253 0 253 26 57 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 26 61 0 4] 
#[0 12 50 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 11 166 0 3 0 4 0 7 0 107] 
#[1 12 54 0 4 12 54 0 7 12 54 0 107 13 1 0 108 26 65 1 102] 
#[0 26 69 0 2] 
#[1 11 170 0 3 11 170 0 4 11 170 0 7 11 170 0 107 13 1 0 108 26 73 1 102] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 26 77 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 26 77 1 96 26 77 1 97 11 157 1 98 11 157 1 100] 
#[0 26 81 0 18] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 26 85 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 26 85 1 96 26 85 1 97 11 157 1 98 11 157 1 100] 
#[0 12 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 26 89 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 15 217 0 1 26 93 0 7 8 205 0 10 13 1 0 108 15 233 1 70 26 97 1 102 26 101 1 103] 
#[0 12 62 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 26 105 0 7] 
#[0 26 109 0 7] 
#[1 6 133 0 5 3 125 0 111 6 145 0 113 6 149 0 114 26 113 0 127 26 113 0 138 26 113 0 139 26 113 0 140 6 145 1 39 6 149 1 40] 
#[1 15 217 0 1 26 117 0 7 8 205 0 10 13 1 0 108 15 233 1 70 26 121 1 102 26 125 1 103] 
#[0 12 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 12 70 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 26 129 0 4] 
#[1 6 133 0 5 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 90 3 125 0 111 6 145 0 113 6 149 0 114 26 133 0 127 26 133 0 138 26 133 0 139 26 133 0 140 13 149 0 249 13 149 0 251 13 149 1 0 13 149 1 4 6 145 1 39 6 149 1 40 13 149 1 111 13 149 1 112 6 153 1 189] 
#[1 26 137 0 1 24 241 0 7 8 205 0 10 13 1 0 108 15 233 1 70 24 245 1 102 24 249 1 103] 
#[1 23 61 0 3 10 166 0 7 13 1 0 108 24 201 1 102] 
#[1 0 203 0 1 12 74 0 3 12 74 0 4 0 203 0 5 0 203 0 7 12 6 0 8 12 6 0 9 12 6 0 10 12 6 0 11 12 6 0 12 12 6 0 13 12 6 0 14 12 6 0 15 12 6 0 16 12 6 0 17 12 6 0 19 12 6 0 20 12 6 0 21 12 6 0 22 12 6 0 23 12 6 0 24 12 6 0 25 12 6 0 26 12 6 0 27 12 6 0 28 12 6 0 29 12 6 0 30 12 6 0 31 12 6 0 32 12 6 0 33 0 203 0 34 0 203 0 35 0 203 0 36 0 203 0 37 12 74 0 38 12 6 0 39 12 6 0 40 12 6 0 41 12 6 0 42 12 6 0 43 12 6 0 44 12 6 0 45 12 6 0 46 12 74 0 47 12 6 0 48 12 6 0 49 12 74 0 51 12 74 0 52 12 74 0 53 12 74 0 56 12 74 0 57 12 74 0 59 12 74 0 60 12 74 0 61 12 74 0 63 12 74 0 64 12 74 0 66 12 74 0 67 12 74 0 69 12 74 0 71 12 74 0 73 12 74 0 75 12 74 0 76 12 6 0 77 12 6 0 78 12 74 0 79 12 74 0 80 12 74 0 82 12 74 0 83 12 74 0 84 12 74 0 89 12 74 0 92 12 74 0 93 12 74 0 95 12 74 0 96 12 74 0 97 12 74 0 98 12 74 0 99 12 74 0 100 12 74 0 101 12 74 0 102 12 74 0 103 12 74 0 104 12 74 0 105 12 6 0 107 12 74 0 110 12 74 0 113 12 74 0 114 12 74 0 115 0 203 0 117 0 203 0 118 12 74 0 121 12 6 1 186 12 6 1 188 0 203 1 189 12 74 1 190] 
#[0 26 141 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 24 117 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 26 145 0 254 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 26 149 0 4] 
#[0 26 153 0 7] 
#[1 0 207 0 1 12 78 0 3 12 78 0 4 0 207 0 5 0 207 0 7 12 58 0 8 12 58 0 9 12 58 0 10 12 58 0 11 12 58 0 12 12 58 0 13 12 58 0 14 12 58 0 15 12 58 0 16 12 58 0 17 12 58 0 19 12 58 0 20 12 58 0 21 12 58 0 22 12 58 0 23 12 58 0 24 12 58 0 25 12 58 0 26 12 58 0 27 12 58 0 28 12 58 0 29 12 58 0 30 12 58 0 31 12 58 0 32 12 58 0 33 0 207 0 34 0 207 0 35 0 207 0 36 0 207 0 37 12 78 0 38 12 58 0 39 12 58 0 40 12 58 0 41 12 58 0 42 12 58 0 43 12 58 0 44 12 58 0 45 12 58 0 46 12 78 0 47 12 58 0 48 12 58 0 49 12 78 0 51 12 78 0 52 12 78 0 53 12 78 0 56 12 78 0 57 12 78 0 59 12 78 0 60 12 78 0 61 12 78 0 63 12 78 0 64 12 78 0 66 12 78 0 67 12 78 0 69 12 78 0 71 12 78 0 73 12 78 0 75 12 78 0 76 12 58 0 77 12 58 0 78 12 78 0 79 12 78 0 80 12 78 0 82 12 78 0 83 12 78 0 84 12 78 0 89 12 78 0 92 12 78 0 93 12 78 0 95 12 78 0 96 12 78 0 97 12 78 0 98 12 78 0 99 12 78 0 100 12 78 0 101 12 78 0 102 12 78 0 103 12 78 0 104 12 78 0 105 12 58 0 107 12 78 0 110 12 78 0 113 12 78 0 114 12 78 0 115 0 207 0 117 0 207 0 118 12 78 0 121 12 58 1 186 12 58 1 188 0 207 1 189 12 78 1 190] 
#[1 0 211 0 3 12 82 0 7] 
#[0 26 157 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 25 101 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 26 161 1 3 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 26 165 0 4] 
#[0 12 86 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 26 169 0 4] 
#[0 12 90 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 26 173 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 26 177 0 3] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 26 181 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 26 185 0 3] 
#[0 12 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 12 98 0 4] 
#[0 26 189 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 25 101 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 26 193 1 3 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 26 197 0 4] 
#[1 13 1 0 108 26 201 1 102] 
#[1 13 1 0 108 26 205 1 102] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 26 209 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 12 102 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 12 106 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 26 213 0 4] 
#[0 12 110 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[1 26 217 0 3 26 221 0 7] 
#[0 12 114 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 12 118 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 26 225 0 7] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 26 229 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 12 122 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 12 126 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 26 233 0 4] 
#[0 26 237 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 25 101 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 26 241 1 3 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 26 245 0 3] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 17 221 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 26 249 1 7 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 12 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 26 253 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 24 117 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 27 1 0 254 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 27 5 0 4] 
#[0 12 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 12 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 12 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 27 9 0 183 27 9 0 186 27 9 0 187 27 9 0 188 27 9 0 195 27 9 0 209 27 9 0 210 27 9 0 211 27 9 0 212 27 9 0 215 27 9 0 216 27 9 0 218 27 9 0 219 27 9 0 220 27 9 0 225 27 9 0 227 27 9 0 228 27 9 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 27 13 0 183 27 13 0 186 27 13 0 187 27 13 0 188 27 13 0 195 27 13 0 209 27 13 0 210 27 13 0 211 27 13 0 212 27 13 0 215 27 13 0 216 27 13 0 218 27 13 0 219 27 13 0 220 27 13 0 225 27 13 0 227 27 13 0 228 27 13 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 27 17 0 2 6 61 0 107] 
#[0 12 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 12 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 12 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 12 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 27 21 0 183 27 21 0 186 27 21 0 187 27 21 0 188 27 21 0 195 27 21 0 209 27 21 0 210 27 21 0 211 27 21 0 212 27 21 0 215 27 21 0 216 27 21 0 218 27 21 0 219 27 21 0 220 27 21 0 225 27 21 0 227 27 21 0 228 27 21 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 12 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 27 25 0 183 27 25 0 186 27 25 0 187 27 25 0 188 27 25 0 195 27 25 0 209 27 25 0 210 27 25 0 211 27 25 0 212 27 25 0 215 27 25 0 216 27 25 0 218 27 25 0 219 27 25 0 220 27 25 0 225 27 25 0 227 27 25 0 228 27 25 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 12 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 12 162 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 12 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 27 29 0 4] 
#[0 12 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 12 174 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 12 174 0 54 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 12 174 0 62 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 27 33 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[1 0 29 0 1 0 33 0 3 12 178 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 12 178 0 54 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 6 157 0 183 6 157 0 186 6 157 0 187 6 157 0 188 6 157 0 190 6 157 0 191 1 137 0 192 6 157 0 195 6 157 0 209 6 157 0 210 6 157 0 211 6 157 0 212 6 157 0 215 6 157 0 216 6 157 0 218 6 157 0 219 6 157 0 220 6 157 0 225 6 157 0 227 6 157 0 228 6 157 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 12 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 27 37 0 4 22 29 0 54 24 149 0 223] 
#[0 12 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 27 41 0 13] 
#[0 27 45 0 13] 
#[0 12 190 0 3 0 121 0 123] 
#[1 0 10 0 4 27 49 1 64] 
#[0 12 194 0 3 0 8 0 13 0 122] 
#[0 12 198 0 4 0 7 0 107] 
#[1 12 202 0 4 12 202 0 7 12 202 0 107 13 1 0 108 27 53 1 102] 
#[0 12 82 0 3 0 4 0 7 0 107] 
#[0 12 206 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[1 11 101 0 1 11 105 0 3 11 109 0 5 8 205 0 10 11 113 0 83 11 117 0 95 11 121 0 100 11 125 0 102 2 61 0 110 13 109 0 126 11 133 1 70 27 57 1 77 11 149 1 78 11 153 1 79 11 157 1 80 11 157 1 81 11 157 1 82 11 157 1 83 11 173 1 84 11 177 1 85 11 157 1 86 11 157 1 90 11 157 1 91 11 149 1 94 11 153 1 95 27 57 1 96 27 57 1 97 11 157 1 98 11 157 1 100] 
#[0 12 210 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 27 61 0 2] 
#[0 12 214 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 27 65 0 7] 
#[0 27 69 0 7] 
#[0 12 218 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 12 222 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[1 15 217 0 1 27 73 0 7 8 205 0 10 13 1 0 108 15 233 1 70 27 77 1 102 27 81 1 103] 
#[0 12 226 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 27 85 0 7] 
#[0 27 89 0 7] 
#[0 12 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 26 137 0 1 26 93 0 7 8 205 0 10 13 1 0 108 15 233 1 70 26 97 1 102 26 101 1 103] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 106 2 61 0 110 8 181 0 126 3 49 0 198 3 49 0 199 3 49 0 200 3 89 0 206 3 89 0 207 3 85 0 208 13 77 0 235 27 93 0 236 3 81 0 237 3 85 0 238 3 89 0 239 8 185 1 189] 
#[1 0 215 0 1 12 234 0 3 12 234 0 4 0 215 0 5 0 215 0 7 12 166 0 8 12 166 0 9 12 166 0 10 12 166 0 11 12 166 0 12 12 166 0 13 12 166 0 14 12 166 0 15 12 166 0 16 12 166 0 17 12 166 0 19 12 166 0 20 12 166 0 21 12 166 0 22 12 166 0 23 12 166 0 24 12 166 0 25 12 166 0 26 12 166 0 27 12 166 0 28 12 166 0 29 12 166 0 30 12 166 0 31 12 166 0 32 12 166 0 33 0 215 0 34 0 215 0 35 0 215 0 36 0 215 0 37 12 234 0 38 12 166 0 39 12 166 0 40 12 166 0 41 12 166 0 42 12 166 0 43 12 166 0 44 12 166 0 45 12 166 0 46 12 234 0 47 12 166 0 48 12 166 0 49 12 234 0 51 12 234 0 52 12 234 0 53 12 234 0 56 12 234 0 57 12 234 0 59 12 234 0 60 12 234 0 61 12 234 0 63 12 234 0 64 12 234 0 66 12 234 0 67 12 234 0 69 12 234 0 71 12 234 0 73 12 234 0 75 12 234 0 76 12 166 0 77 12 166 0 78 12 234 0 79 12 234 0 80 12 234 0 82 12 234 0 83 12 234 0 84 12 234 0 89 12 234 0 92 12 234 0 93 12 234 0 95 12 234 0 96 12 234 0 97 12 234 0 98 12 234 0 99 12 234 0 100 12 234 0 101 12 234 0 102 12 234 0 103 12 234 0 104 12 234 0 105 12 166 0 107 12 234 0 110 12 234 0 113 12 234 0 114 12 234 0 115 0 215 0 117 0 215 0 118 12 234 0 121 12 166 1 186 12 166 1 188 0 215 1 189 12 234 1 190] 
#[0 27 97 0 4] 
#[1 0 219 0 1 12 238 0 3 12 238 0 4 0 219 0 5 0 219 0 7 12 170 0 8 12 170 0 9 12 170 0 10 12 170 0 11 12 170 0 12 12 170 0 13 12 170 0 14 12 170 0 15 12 170 0 16 12 170 0 17 12 170 0 19 12 170 0 20 12 170 0 21 12 170 0 22 12 170 0 23 12 170 0 24 12 170 0 25 12 170 0 26 12 170 0 27 12 170 0 28 12 170 0 29 12 170 0 30 12 170 0 31 12 170 0 32 12 170 0 33 0 219 0 34 0 219 0 35 0 219 0 36 0 219 0 37 12 238 0 38 12 170 0 39 12 170 0 40 12 170 0 41 12 170 0 42 12 170 0 43 12 170 0 44 12 170 0 45 12 170 0 46 12 238 0 47 12 170 0 48 12 170 0 49 12 238 0 51 12 238 0 52 12 238 0 53 12 238 0 56 12 238 0 57 12 238 0 59 12 238 0 60 12 238 0 61 12 238 0 63 12 238 0 64 12 238 0 66 12 238 0 67 12 238 0 69 12 238 0 71 12 238 0 73 12 238 0 75 12 238 0 76 12 170 0 77 12 170 0 78 12 238 0 79 12 238 0 80 12 238 0 82 12 238 0 83 12 238 0 84 12 238 0 89 12 238 0 92 12 238 0 93 12 238 0 95 12 238 0 96 12 238 0 97 12 238 0 98 12 238 0 99 12 238 0 100 12 238 0 101 12 238 0 102 12 238 0 103 12 238 0 104 12 238 0 105 12 170 0 107 12 238 0 110 12 238 0 113 12 238 0 114 12 238 0 115 0 219 0 117 0 219 0 118 12 238 0 121 12 170 1 186 12 170 1 188 0 219 1 189 12 238 1 190] 
#[0 12 242 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 12 246 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 27 101 0 4] 
#[0 12 250 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 12 254 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 27 105 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 27 109 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 27 113 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 27 117 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 13 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 27 121 0 4] 
#[0 13 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 13 10 0 3 0 4 0 5 0 7 0 58 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 13 14 0 3 0 4 0 5 0 7 0 58 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 27 125 0 4] 
#[0 13 18 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 27 129 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 13 22 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 13 26 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 27 133 0 4] 
#[0 13 30 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 13 34 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 27 137 0 4] 
#[1 0 29 0 1 0 33 0 3 6 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 2 77 0 183 2 77 0 186 2 77 0 187 2 77 0 188 15 97 0 189 2 77 0 190 2 77 0 191 1 137 0 192 2 77 0 195 2 77 0 209 2 77 0 210 2 77 0 211 2 77 0 212 2 77 0 215 2 77 0 216 2 77 0 218 2 77 0 219 2 77 0 220 2 77 0 225 2 77 0 227 2 77 0 228 2 77 0 232 0 253 0 234 25 101 0 240 15 105 0 241 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 27 141 1 3 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 27 145 0 4] 
#[0 12 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 27 149 0 4] 
#[0 12 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 13 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 13 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 27 153 0 183 27 153 0 186 27 153 0 187 27 153 0 188 27 153 0 195 27 153 0 209 27 153 0 210 27 153 0 211 27 153 0 212 27 153 0 215 27 153 0 216 27 153 0 218 27 153 0 219 27 153 0 220 27 153 0 225 27 153 0 227 27 153 0 228 27 153 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 13 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 13 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 13 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[1 0 29 0 1 0 33 0 3 13 58 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 13 58 0 54 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 13 58 0 62 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 80 0 133 0 83 2 9 0 84 0 141 0 89 0 145 0 92 0 149 0 93 0 153 0 95 0 157 0 96 2 13 0 97 0 165 0 98 0 169 0 100 0 173 0 101 0 177 0 102 0 181 0 103 0 185 0 104 0 189 0 105 0 193 0 110 2 17 0 113 2 21 0 114 0 205 0 115 0 209 0 117 0 6 0 118 0 7 0 121 0 221 0 126 0 253 0 128 0 253 0 129 0 253 0 130 0 253 0 131 0 253 0 135 0 253 0 143 0 249 0 144 0 253 0 147 0 253 0 148 0 253 0 149 0 253 0 150 1 33 0 151 1 17 0 152 1 17 0 153 1 17 0 154 1 29 0 157 1 33 0 161 1 41 0 162 1 41 0 163 1 49 0 164 1 49 0 165 1 53 0 167 1 57 0 168 1 61 0 169 1 65 0 170 1 69 0 171 1 73 0 172 1 77 0 173 1 81 0 174 1 85 0 175 1 89 0 176 1 93 0 177 1 97 0 178 1 109 0 179 1 109 0 180 1 109 0 182 6 157 0 183 6 157 0 186 6 157 0 187 6 157 0 188 6 157 0 190 6 157 0 191 1 137 0 192 6 157 0 195 6 157 0 209 6 157 0 210 6 157 0 211 6 157 0 212 6 157 0 215 6 157 0 216 6 157 0 218 6 157 0 219 6 157 0 220 6 157 0 225 6 157 0 227 6 157 0 228 6 157 0 232 0 253 0 234 1 109 0 242 1 205 0 243 1 209 0 246 1 109 0 247 0 253 0 253 1 109 0 255 0 253 1 2 0 253 1 6 1 41 1 8 0 253 1 10 2 9 1 37 2 13 1 38 2 17 1 39 2 21 1 40 0 253 1 41 0 253 1 42 0 253 1 43 2 37 1 44 0 253 1 46 2 45 1 64 2 49 1 189] 
#[0 13 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 13 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 0 122 1 186 1 188 1 189 1 190] 
#[0 13 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 0 121 0 122 0 123 1 186 1 188 1 189 1 190] 
#[0 27 157 0 4] 
#[0 13 74 0 4 0 7 0 107] 
#[0 13 78 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 58 0 85 0 86 0 87 0 88 0 91 0 107 0 111 0 113 0 114] 
#[0 27 161 0 7] 
#[0 13 82 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 13 86 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 13 90 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 27 165 0 7] 
#[0 27 169 0 7] 
#[0 13 94 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 13 98 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 0 223 0 2] 
#[1 0 227 0 1 13 102 0 3 13 102 0 4 0 227 0 5 0 227 0 7 13 54 0 8 13 54 0 9 13 54 0 10 13 54 0 11 13 54 0 12 13 54 0 13 13 54 0 14 13 54 0 15 13 54 0 16 13 54 0 17 13 54 0 19 13 54 0 20 13 54 0 21 13 54 0 22 13 54 0 23 13 54 0 24 13 54 0 25 13 54 0 26 13 54 0 27 13 54 0 28 13 54 0 29 13 54 0 30 13 54 0 31 13 54 0 32 13 54 0 33 0 227 0 34 0 227 0 35 0 227 0 36 0 227 0 37 13 102 0 38 13 54 0 39 13 54 0 40 13 54 0 41 13 54 0 42 13 54 0 43 13 54 0 44 13 54 0 45 13 54 0 46 13 102 0 47 13 54 0 48 13 54 0 49 13 102 0 51 13 102 0 52 13 102 0 53 13 102 0 56 13 102 0 57 13 102 0 59 13 102 0 60 13 102 0 61 13 102 0 63 13 102 0 64 13 102 0 66 13 102 0 67 13 102 0 69 13 102 0 71 13 102 0 73 13 102 0 75 13 102 0 76 13 54 0 77 13 54 0 78 13 102 0 79 13 102 0 80 13 102 0 82 13 102 0 83 13 102 0 84 13 102 0 89 13 102 0 92 13 102 0 93 13 102 0 95 13 102 0 96 13 102 0 97 13 102 0 98 13 102 0 99 13 102 0 100 13 102 0 101 13 102 0 102 13 102 0 103 13 102 0 104 13 102 0 105 13 54 0 107 13 102 0 110 13 102 0 113 13 102 0 114 13 102 0 115 0 227 0 117 0 227 0 118 13 102 0 121 13 54 1 186 13 54 1 188 0 227 1 189 13 102 1 190] 
#[0 13 106 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 13 110 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 27 173 0 4] 
#[0 13 114 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 27 177 0 4] 
#[0 13 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 78 0 85 0 107 0 108 0 117 0 118 0 119 0 120 1 186 1 188 1 189 1 190] 
#[0 13 122 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 27 181 0 4] 
#[0 13 126 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 13 130 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 27 185 0 4] 
#[0 13 134 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 13 102 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 13 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 79 0 80 0 82 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190] 
#[0 13 142 0 3 0 8 0 13 0 122] 
#[0 13 146 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 13 150 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 13 154 0 3 0 4 0 5 0 58 0 86 0 87 0 88 0 91 0 111 0 113 0 114] 
#[0 13 158 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 13 162 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 107 0 111 0 113 0 114 1 189] 
#[0 13 166 0 4 0 5 0 7 0 25 0 51 0 74 0 90 0 91 0 111 0 113 0 114 1 189] 
#[0 13 170 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 80 0 83 0 84 0 89 0 92 0 93 0 95 0 96 0 97 0 98 0 100 0 101 0 102 0 103 0 104 0 105 0 110 0 113 0 114 0 115 0 117 0 118 0 121 1 189 1 190]
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
JSParser >> reduceActionForAmbientBinding1: nodes [
	| result |
	result := JSAmbientBindingNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientBinding2: nodes [
	| result |
	result := JSAmbientBindingNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientClassDeclaration1: nodes [
	| result |
	result := JSAmbientClassDeclarationNode new.
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
	result := JSAmbientClassDeclarationNode new.
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
	result := JSAmbientConstructorDeclarationNode new.
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
	result := JSAmbientFunctionDeclarationNode new.
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
JSParser >> reduceActionForAmbientNamespaceDeclaration1: nodes [
	| result |
	result := JSAmbientNamespaceDeclarationNode new.
	result namespaceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result names.
	result addTokens: ((nodes at: 2) at: 2) to: result periodTokens.
	result leftBrace: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result elements.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientNamespaceElement3: nodes [
	| result |
	result := JSAmbientNamespaceElementNode new.
	result declaration: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientNamespaceElement4: nodes [
	| result |
	result := JSAmbientNamespaceElementNode new.
	result exportToken: (nodes at: 1).
	result declaration: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration10: nodes [
	| result |
	result := JSAmbientPropertyMemberDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration11: nodes [
	| result |
	result := JSAmbientPropertyMemberDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration12: nodes [
	| result |
	result := JSAmbientPropertyMemberDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration1: nodes [
	| result |
	result := JSAmbientPropertyMemberDeclarationNode new.
	result name: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration2: nodes [
	| result |
	result := JSAmbientPropertyMemberDeclarationNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration3: nodes [
	| result |
	result := JSAmbientPropertyMemberDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration4: nodes [
	| result |
	result := JSAmbientPropertyMemberDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration5: nodes [
	| result |
	result := JSAmbientPropertyMemberDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration6: nodes [
	| result |
	result := JSAmbientPropertyMemberDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration7: nodes [
	| result |
	result := JSAmbientPropertyMemberDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration8: nodes [
	| result |
	result := JSAmbientPropertyMemberDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration9: nodes [
	| result |
	result := JSAmbientPropertyMemberDeclarationNode new.
	result name: (nodes at: 1).
	result signature: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientVariableDeclaration3: nodes [
	| result |
	result := JSAmbientVariableDeclarationNode new.
	result typeToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result bindings.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
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
JSParser >> reduceActionForImplementationModule1: nodes [
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
JSParser >> reduceActionForIndexSignature1: nodes [
	| result |
	result := JSIndexSignatureNode new.
	result leftBrace: (nodes at: 1).
	result name: (nodes at: 2).
	result addToken: (nodes at: 3) to: result colonTokens.
	result value: (nodes at: 4).
	result rightParen: (nodes at: 5).
	result addToken: ((nodes at: 6) at: 1) to: result colonTokens.
	result type: ((nodes at: 6) at: 2).
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
JSParser >> reduceActionForSingleNameBinding1: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding2: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding3: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding4: nodes [
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
JSParser >> reduceActionForVariableDeclaration3: nodes [
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
