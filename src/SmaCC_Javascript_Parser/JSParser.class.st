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
#[ 0 10 0 217] 
#[ 0 22 0 26 0 30 0 34] 
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
#[ 2 146 8 241] 
#[ 2 150 8 245] 
#[ 0 46 2 158] 
#[ 0 102 2 214] 
#[ 0 102 9 77] 
#[ 3 6 3 10] 
#[ 0 102 3 18] 
#[ 1 146 3 58] 
#[ 1 150 3 62] 
#[ 3 118 4 106] 
#[ 4 158 4 162] 
#[ 4 166 4 170] 
#[ 4 186 4 190] 
#[ 2 130 2 214] 
#[ 0 46 5 10] 
#[ 0 46 5 14] 
#[ 5 26 11 37] 
#[ 3 10 5 30] 
#[ 2 214 3 18] 
#[ 3 74 5 42] 
#[ 5 98 14 81] 
#[ 5 98 13 173] 
#[ 3 86 14 105] 
#[ 0 170 15 149] 
#[ 6 190 7 17] 
#[ 0 10 6 210] 
#[ 2 130 5 2] 
#[ 5 174 6 230] 
#[ 0 102 17 89] 
#[ 4 214 5 30] 
#[ 7 62 8 245] 
#[ 0 46 7 66] 
#[ 0 102 7 82] 
#[ 5 62 5 110] 
#[ 0 102 5 54] 
#[ 5 130 7 94] 
#[ 5 98 7 142] 
#[ 5 98 9 77] 
#[ 5 98 18 137] 
#[ 0 50 2 65] 
#[ 0 58 2 65] 
#[ 10 118 15 13] 
#[ 10 102 10 250] 
#[ 10 110 11 2] 
#[ 11 138 11 230] 
#[ 12 82 12 142] 
#[ 12 126 12 146] 
#[ 11 142 11 242] 
#[ 12 246 13 42] 
#[ 12 250 13 46] 
#[ 2 242 18 13] 
#[ 13 110 13 150]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2020-03-13T14:02:30.227699-05:00'
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
	#(150 0 #reduceActionForStartTemplateLiteral1: 12189697 true ) 
	#(326 0 #reduceActionForSwitchToJSX1: 41120769 true ) 
	#(280 0 #reduceActionForModule1: 35854337 false ) 
	#(278 0 #reduceActionForScript1: 35795969 false ) 
	#(416 0 #reduceActionForDeclarationScript1: 56493057 false ) 
	#(423 0 #reduceActionForDeclarationScript1: 57331713 false ) 
	#(420 0 #reduceActionForDeclarationScript1: 56890369 false ) 
	#(412 0 #reduceActionForDeclarationScript1: 55950337 false ) 
	#(242 0 #reduceActionForFormalParameters1: 30895105 false ) 
	#(215 1 #reduceActionForEmptyStatement1: 25253889 false ) 
	#(223 0 #reduceActionForCheckEOL1: 28742657 true ) 
	#(198 1 #liftFirstValue: 22913026 false ) 
	#(300 1 #liftFirstValue: 38459394 false ) 
	#(198 1 #liftFirstValue: 22913025 false ) 
	#(299 1 #liftFirstValue: 38435841 false ) 
	#(134 1 #reduceActionForPrimaryExpression1: 9019393 false ) 
	#(300 1 #liftFirstValue: 38459393 false ) 
	#(261 1 #reduceActionForYieldExpression1: 33373185 false ) 
	#(132 1 #reduceActionForIdentifier1: 8724481 false ) 
	#(301 1 #liftFirstValue: 38496257 false ) 
	#(302 1 #liftFirstValue: 38532097 false ) 
	#(303 1 #reduceActionForRegularExpressionLiteral1: 38569985 false ) 
	#(149 1 #reduceActionForTemplateLiteral1: 12034049 false ) 
	#(327 0 #reduceActionForSwitchToJSXText1: 41161729 true ) 
	#(134 1 #liftFirstValue: 9019394 false ) 
	#(249 1 #reduceActionForArrowParameters1: 31451137 false ) 
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
	#(196 1 #liftFirstValue: 22756353 false ) 
	#(189 1 #liftFirstValue: 21985286 false ) 
	#(189 1 #liftFirstValue: 21985281 false ) 
	#(193 1 #liftFirstValue: 22536193 false ) 
	#(283 1 #liftFirstValue: 35987459 false ) 
	#(196 1 #liftFirstValue: 22756354 false ) 
	#(189 1 #liftFirstValue: 21985282 false ) 
	#(189 1 #liftFirstValue: 21985283 false ) 
	#(189 1 #liftFirstValue: 21985284 false ) 
	#(189 1 #liftFirstValue: 21985285 false ) 
	#(192 1 #liftFirstValue: 22473729 false ) 
	#(189 1 #liftFirstValue: 21985287 false ) 
	#(189 1 #liftFirstValue: 21985288 false ) 
	#(189 1 #liftFirstValue: 21985289 false ) 
	#(189 1 #liftFirstValue: 21985290 false ) 
	#(192 1 #liftFirstValue: 22473730 false ) 
	#(189 1 #liftFirstValue: 21985291 false ) 
	#(189 1 #liftFirstValue: 21985292 false ) 
	#(189 1 #liftFirstValue: 21985293 false ) 
	#(189 1 #liftFirstValue: 21985294 false ) 
	#(134 1 #liftFirstValue: 9019398 false ) 
	#(186 1 #liftFirstValue: 20106243 false ) 
	#(249 1 #reduceActionForArrowParameters2: 31451138 false ) 
	#(186 1 #liftFirstValue: 20106244 false ) 
	#(134 1 #liftFirstValue: 9019400 false ) 
	#(186 1 #liftFirstValue: 20106242 false ) 
	#(134 1 #liftFirstValue: 9019402 false ) 
	#(134 1 #liftFirstValue: 9019401 false ) 
	#(169 1 #liftFirstValue: 15900681 false ) 
	#(134 1 #liftFirstValue: 9019399 false ) 
	#(131 1 #liftFirstValue: 8611841 false ) 
	#(280 1 #reduceActionForModule2: 35854338 false ) 
	#(281 1 #reduceActionForModuleBody1: 35883009 false ) 
	#(282 1 #reduceActionForModuleItemList1: 35913729 false ) 
	#(283 1 #liftFirstValue: 35987457 false ) 
	#(283 1 #liftFirstValue: 35987458 false ) 
	#(136 1 #reduceActionForLiteral1: 10120193 false ) 
	#(136 1 #reduceActionForLiteral2: 10120194 false ) 
	#(136 1 #reduceActionForLiteral4: 10120196 false ) 
	#(136 1 #reduceActionForLiteral3: 10120195 false ) 
	#(134 1 #liftFirstValue: 9019403 false ) 
	#(134 1 #liftFirstValue: 9019406 false ) 
	#(304 1 #liftFirstValue: 38821889 false ) 
	#(328 0 #reduceActionForStartJSXText1: 41210881 true ) 
	#(134 1 #liftFirstValue: 9019407 false ) 
	#(279 1 #reduceActionForModuleBody1: 35824641 false ) 
	#(195 1 #reduceActionForModuleItemList1: 22659073 false ) 
	#(278 1 #reduceActionForScript2: 35795970 false ) 
	#(415 1 #liftFirstValue: 56232961 false ) 
	#(415 1 #liftFirstValue: 56232962 false ) 
	#(415 1 #liftFirstValue: 56232963 false ) 
	#(415 1 #liftFirstValue: 56232964 false ) 
	#(415 1 #liftFirstValue: 56232965 false ) 
	#(422 1 #liftFirstValue: 57090050 false ) 
	#(425 1 #liftFirstValue: 57512962 false ) 
	#(415 1 #liftFirstValue: 56232967 false ) 
	#(419 1 #liftFirstValue: 56751106 false ) 
	#(415 1 #liftFirstValue: 56232966 false ) 
	#(419 1 #liftFirstValue: 56751105 false ) 
	#(415 1 #liftFirstValue: 56232968 false ) 
	#(415 1 #liftFirstValue: 56232969 false ) 
	#(419 1 #liftFirstValue: 56751107 false ) 
	#(422 1 #liftFirstValue: 57090051 false ) 
	#(415 1 #liftFirstValue: 56232971 false ) 
	#(419 1 #liftFirstValue: 56751109 false ) 
	#(409 1 #reduceActionForSourceFile1: 55709697 false ) 
	#(409 1 #reduceActionForSourceFile1: 55709698 false ) 
	#(410 1 #reduceActionForModuleBody1: 55810049 false ) 
	#(412 1 #reduceActionForModuleBody1: 55950338 false ) 
	#(413 1 #reduceActionForModuleItemList1: 56006657 false ) 
	#(414 1 #liftFirstValue: 56150017 false ) 
	#(422 1 #liftFirstValue: 57090049 false ) 
	#(411 1 #reduceActionForModuleBody1: 55884801 false ) 
	#(416 1 #reduceActionForModuleBody1: 56493058 false ) 
	#(417 1 #reduceActionForModuleItemList1: 56543233 false ) 
	#(425 1 #liftFirstValue: 57512961 false ) 
	#(418 1 #liftFirstValue: 56674305 false ) 
	#(410 1 #reduceActionForModuleBody1: 55810050 false ) 
	#(420 1 #reduceActionForModuleBody1: 56890370 false ) 
	#(421 1 #reduceActionForModuleItemList1: 56946689 false ) 
	#(411 1 #reduceActionForModuleBody1: 55884802 false ) 
	#(423 1 #reduceActionForModuleBody1: 57331714 false ) 
	#(424 1 #reduceActionForModuleItemList1: 57381889 false ) 
	#(422 1 #liftFirstValue: 57090052 false ) 
	#(422 1 #liftFirstValue: 57090053 false ) 
	#(425 1 #liftFirstValue: 57512963 false ) 
	#(422 1 #liftFirstValue: 57090054 false ) 
	#(425 1 #liftFirstValue: 57512964 false ) 
	#(422 1 #liftFirstValue: 57090055 false ) 
	#(425 1 #liftFirstValue: 57512965 false ) 
	#(422 1 #liftFirstValue: 57090056 false ) 
	#(425 1 #liftFirstValue: 57512966 false ) 
	#(415 1 #liftFirstValue: 56232970 false ) 
	#(419 1 #liftFirstValue: 56751108 false ) 
	#(414 1 #liftFirstValue: 56150018 false ) 
	#(418 1 #liftFirstValue: 56674306 false ) 
	#(364 1 #reduceActionForThisType1: 44675073 false ) 
	#(346 1 #reduceActionForPredefinedType1: 42731521 false ) 
	#(348 1 #reduceActionForTypeName1: 42877953 false ) 
	#(349 1 #reduceActionForNamespaceName1: 42984449 false ) 
	#(344 1 #reduceActionForLiteralType1: 42568705 false ) 
	#(344 1 #reduceActionForLiteralType1: 42568706 false ) 
	#(339 1 #liftFirstValue: 42033153 false ) 
	#(340 1 #liftFirstValue: 42109954 false ) 
	#(341 1 #liftFirstValue: 42186754 false ) 
	#(342 1 #liftFirstValue: 42248193 false ) 
	#(343 1 #liftFirstValue: 42391561 false ) 
	#(343 1 #liftFirstValue: 42391553 false ) 
	#(343 1 #liftFirstValue: 42391554 false ) 
	#(343 1 #liftFirstValue: 42391555 false ) 
	#(343 1 #liftFirstValue: 42391556 false ) 
	#(343 1 #liftFirstValue: 42391557 false ) 
	#(343 1 #liftFirstValue: 42391558 false ) 
	#(340 1 #liftFirstValue: 42109953 false ) 
	#(341 1 #liftFirstValue: 42186753 false ) 
	#(339 1 #liftFirstValue: 42033154 false ) 
	#(339 1 #liftFirstValue: 42033155 false ) 
	#(343 1 #liftFirstValue: 42391559 false ) 
	#(343 1 #liftFirstValue: 42391560 false ) 
	#(213 1 #reduceActionForSingleNameBinding1: 24985601 false ) 
	#(212 1 #reduceActionForSingleNameBinding1: 24881154 false ) 
	#(204 1 #liftFirstValue: 23589889 false ) 
	#(204 1 #liftFirstValue: 23589890 false ) 
	#(245 1 #liftFirstValue: 31264769 false ) 
	#(212 1 #liftFirstValue: 24881153 false ) 
	#(244 1 #liftFirstValue: 31218689 false ) 
	#(241 1 #reduceActionForModuleBody1: 30850049 false ) 
	#(242 1 #reduceActionForFormalParameters3: 30895107 false ) 
	#(242 1 #reduceActionForFormalParameters2: 30895106 false ) 
	#(243 1 #reduceActionForNamespaceName1: 31096833 false ) 
	#(368 0 #nil 45557764 false ) 
	#(194 2 #reduceActionForBlock1: 22561793 false ) 
	#(141 2 #reduceActionForObjectLiteral1: 10935297 false ) 
	#(133 1 #reduceActionForIdentifier1: 8918017 false ) 
	#(143 1 #liftFirstValue: 11327489 false ) 
	#(145 1 #liftFirstValue: 11638785 false ) 
	#(142 1 #reduceActionForNamespaceName1: 11192321 false ) 
	#(144 1 #liftFirstValue: 11576321 false ) 
	#(144 1 #liftFirstValue: 11576322 false ) 
	#(143 1 #liftFirstValue: 11327490 false ) 
	#(143 1 #liftFirstValue: 11327492 false ) 
	#(255 1 #liftFirstValue: 31996930 false ) 
	#(255 1 #liftFirstValue: 31996932 false ) 
	#(255 1 #liftFirstValue: 31996931 false ) 
	#(145 1 #reduceActionForIdentifier1: 11638786 false ) 
	#(145 1 #reduceActionForIdentifier1: 11638787 false ) 
	#(255 1 #liftFirstValue: 31996936 false ) 
	#(255 1 #liftFirstValue: 31996937 false ) 
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
	#(270 2 #reduceActionForAwaitExpression1: 35099649 false ) 
	#(272 2 #reduceActionForClassExpression1: 35272705 false ) 
	#(238 2 #reduceActionForDebuggerStatement1: 30341121 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900674 false ) 
	#(295 1 #reduceActionForExportFromClause1: 37885953 false ) 
	#(294 2 #reduceActionForExportDeclaration4: 37201924 false ) 
	#(190 1 #liftFirstValue: 22268929 false ) 
	#(190 1 #liftFirstValue: 22268931 false ) 
	#(294 2 #reduceActionForExportDeclaration3: 37201923 false ) 
	#(191 1 #liftFirstValue: 22347777 false ) 
	#(191 1 #liftFirstValue: 22347778 false ) 
	#(191 1 #liftFirstValue: 22347780 false ) 
	#(191 1 #liftFirstValue: 22347779 false ) 
	#(190 1 #liftFirstValue: 22268930 false ) 
	#(295 1 #reduceActionForExportFromClause3: 37885955 false ) 
	#(293 1 #liftFirstValue: 37167105 false ) 
	#(285 1 #reduceActionForImportClause1: 36234241 false ) 
	#(285 1 #reduceActionForImportClause1: 36234242 false ) 
	#(285 1 #reduceActionForImportClause1: 36234243 false ) 
	#(286 1 #liftFirstValue: 36487169 false ) 
	#(292 1 #liftFirstValue: 37125121 false ) 
	#(157 2 #reduceActionForNewExpression2: 13358082 false ) 
	#(159 2 #reduceActionForSuperCall1: 13931521 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900676 false ) 
	#(203 1 #reduceActionForSingleNameBinding1: 23429121 false ) 
	#(202 1 #reduceActionForNamespaceName1: 23292929 false ) 
	#(169 2 #reduceActionForUnaryExpression5: 15900675 false ) 
	#(261 2 #reduceActionForYieldExpression2: 33373186 false ) 
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
	#(216 2 #reduceActionForExpressionStatement1: 25304065 false ) 
	#(200 1 #reduceActionForSingleNameBinding1: 23043073 false ) 
	#(199 1 #reduceActionForNamespaceName1: 22944769 false ) 
	#(200 1 #liftFirstValue: 23043076 false ) 
	#(200 1 #liftFirstValue: 23043077 false ) 
	#(282 2 #reduceActionForModuleItemList2: 35913730 false ) 
	#(323 0 #reduceActionForDeclarationScript1: 40806401 false ) 
	#(252 2 #reduceActionForArrowFormalParameters2: 31681538 false ) 
	#(195 2 #reduceActionForModuleItemList2: 22659074 false ) 
	#(271 2 #reduceActionForClassExpression1: 35176449 false ) 
	#(444 1 #liftFirstValue: 62222337 false ) 
	#(433 2 #reduceActionForAmbientDeclaration1: 60150785 false ) 
	#(433 2 #reduceActionForAmbientDeclaration1: 60150786 false ) 
	#(433 2 #reduceActionForAmbientDeclaration1: 60150787 false ) 
	#(433 2 #reduceActionForAmbientDeclaration1: 60150788 false ) 
	#(433 2 #reduceActionForAmbientDeclaration1: 60150789 false ) 
	#(427 2 #reduceActionForExportImplementationElement2: 57967618 false ) 
	#(427 2 #reduceActionForExportImplementationElement2: 57967617 false ) 
	#(427 2 #reduceActionForExportImplementationElement2: 57967619 false ) 
	#(427 2 #reduceActionForExportImplementationElement2: 57967620 false ) 
	#(427 2 #reduceActionForExportImplementationElement2: 57967621 false ) 
	#(427 2 #reduceActionForExportImplementationElement2: 57967627 false ) 
	#(427 2 #reduceActionForExportImplementationElement2: 57967623 false ) 
	#(428 2 #reduceActionForExportDeclarationElement2: 58710018 false ) 
	#(427 2 #reduceActionForExportImplementationElement2: 57967622 false ) 
	#(428 2 #reduceActionForExportDeclarationElement2: 58710017 false ) 
	#(427 2 #reduceActionForExportImplementationElement2: 57967624 false ) 
	#(427 2 #reduceActionForExportImplementationElement2: 57967625 false ) 
	#(428 2 #reduceActionForExportDeclarationElement2: 58710020 false ) 
	#(427 2 #reduceActionForExportImplementationElement2: 57967626 false ) 
	#(428 2 #reduceActionForExportDeclarationElement2: 58710019 false ) 
	#(402 1 #reduceActionForNamespaceName1: 54196225 false ) 
	#(413 2 #reduceActionForModuleItemList2: 56006658 false ) 
	#(417 2 #reduceActionForModuleItemList2: 56543234 false ) 
	#(421 2 #reduceActionForModuleItemList2: 56946690 false ) 
	#(424 2 #reduceActionForModuleItemList2: 57381890 false ) 
	#(350 2 #reduceActionForObjectType1: 43088897 false ) 
	#(365 1 #reduceActionForPropertySignature1: 44712961 false ) 
	#(351 1 #reduceActionForModuleBody1: 43170817 false ) 
	#(352 1 #reduceActionForNamespaceName1: 43267073 false ) 
	#(353 1 #liftFirstValue: 43421697 false ) 
	#(353 1 #liftFirstValue: 43421698 false ) 
	#(353 1 #liftFirstValue: 43421699 false ) 
	#(353 1 #liftFirstValue: 43421700 false ) 
	#(353 1 #liftFirstValue: 43421701 false ) 
	#(357 1 #liftFirstValue: 43842561 false ) 
	#(356 1 #reduceActionForNamespaceName1: 43734017 false ) 
	#(334 1 #reduceActionForTypeParameter1: 41718785 false ) 
	#(333 1 #reduceActionForNamespaceName1: 41606145 false ) 
	#(342 2 #reduceActionForPrefixType3: 42248195 false ) 
	#(342 2 #reduceActionForPrefixType2: 42248194 false ) 
	#(363 1 #reduceActionForTypeQueryExpression1: 44551169 false ) 
	#(362 2 #reduceActionForTypeQuery1: 44477441 false ) 
	#(347 2 #reduceActionForTypeReference1: 42783745 false ) 
	#(205 2 #reduceActionForObjectBindingPattern1: 23653377 false ) 
	#(208 1 #reduceActionForNamespaceName1: 24478721 false ) 
	#(211 1 #liftFirstValue: 24767489 false ) 
	#(206 2 #reduceActionForArrayBindingPattern1: 24041473 false ) 
	#(209 1 #reduceActionForBindingElementList1: 24597505 false ) 
	#(210 1 #reduceActionForBindingElisionElement1: 24706049 false ) 
	#(214 2 #reduceActionForBindingRestElement1: 25071617 false ) 
	#(214 2 #reduceActionForBindingRestElement1: 25071618 false ) 
	#(213 2 #reduceActionForSingleNameBinding2: 24985602 false ) 
	#(135 3 #reduceActionForParenthesizedExpression1: 9384961 false ) 
	#(212 2 #reduceActionForSingleNameBinding2: 24881155 false ) 
	#(252 3 #reduceActionForArrowFormalParameters1: 31681537 false ) 
	#(242 2 #reduceActionForFormalParameters4: 30895108 false ) 
	#(369 1 #liftFirstValue: 46901250 false ) 
	#(369 1 #liftFirstValue: 46901251 false ) 
	#(369 1 #liftFirstValue: 46901249 false ) 
	#(368 1 #reduceActionForIdentifier1: 45557762 false ) 
	#(368 1 #liftFirstValue: 45557761 false ) 
	#(368 1 #liftFirstValue: 45557763 false ) 
	#(143 2 #reduceActionForPropertyDefinition5: 11327493 false ) 
	#(147 2 #reduceActionForCoverInitializedName1: 11886593 false ) 
	#(141 3 #reduceActionForObjectLiteral2: 10935298 false ) 
	#(194 3 #reduceActionForBlock2: 22561794 false ) 
	#(140 2 #reduceActionForSpreadElement1: 10836993 false ) 
	#(137 3 #reduceActionForArrayLiteral3: 10302467 false ) 
	#(137 3 #reduceActionForArrayLiteral2: 10302466 false ) 
	#(139 2 #reduceActionForModuleItemList2: 10781698 false ) 
	#(138 2 #reduceActionForElementList4: 10563588 false ) 
	#(138 2 #reduceActionForElementList4: 10563586 false ) 
	#(222 3 #reduceActionForBreakStatement1: 28635137 false ) 
	#(273 2 #reduceActionForClassTail1: 35352577 false ) 
	#(277 1 #reduceActionForEmptyStatement1: 35645443 false ) 
	#(277 1 #liftFirstValue: 35645441 false ) 
	#(275 1 #reduceActionForModuleBody1: 35525633 false ) 
	#(276 1 #reduceActionForModuleItemList1: 35557377 false ) 
	#(274 2 #reduceActionForClassHeritage1: 35444737 false ) 
	#(272 3 #reduceActionForClassExpression2: 35272706 false ) 
	#(274 2 #reduceActionForClassHeritage2: 35444738 false ) 
	#(221 3 #reduceActionForContinueStatement1: 28520449 false ) 
	#(296 2 #reduceActionForNamedExports1: 37993473 false ) 
	#(298 1 #reduceActionForExportSpecifier1: 38313985 false ) 
	#(297 1 #reduceActionForNamespaceName1: 38209537 false ) 
	#(294 3 #reduceActionForExportDeclaration2: 37201922 false ) 
	#(190 2 #liftSecondValue: 22268933 false ) 
	#(190 2 #liftSecondValue: 22268932 false ) 
	#(190 2 #liftSecondValue: 22268934 false ) 
	#(288 2 #reduceActionForNamedImports1: 36612097 false ) 
	#(290 1 #reduceActionForNamespaceName1: 36894721 false ) 
	#(291 1 #reduceActionForImportSpecifier1: 36999169 false ) 
	#(284 3 #reduceActionForImportDeclaration2: 36062210 false ) 
	#(156 3 #reduceActionForNewTarget1: 13254657 false ) 
	#(153 3 #reduceActionForMemberExpression7: 12460039 false ) 
	#(224 3 #reduceActionForReturnStatement1: 28777473 false ) 
	#(161 2 #reduceActionForArguments1: 14142465 false ) 
	#(162 1 #reduceActionForArgumentList1: 14327809 false ) 
	#(154 3 #reduceActionForSuperProperty2: 12961794 false ) 
	#(233 3 #reduceActionForThrowStatement1: 29794305 false ) 
	#(234 3 #reduceActionForTryStatement1: 29890561 false ) 
	#(234 3 #reduceActionForTryStatement2: 29890562 false ) 
	#(203 2 #reduceActionForSingleNameBinding2: 23429122 false ) 
	#(201 3 #reduceActionForVariableStatement1: 23197697 false ) 
	#(203 2 #reduceActionForVariableDeclaration3: 23429123 false ) 
	#(203 2 #liftSecondValue: 23429124 false ) 
	#(203 2 #liftSecondValue: 23429125 false ) 
	#(261 3 #reduceActionForYieldExpression3: 33373187 false ) 
	#(232 1 #liftFirstValue: 29700097 false ) 
	#(231 3 #reduceActionForLabelledStatement1: 29600769 false ) 
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
	#(200 2 #reduceActionForSingleNameBinding2: 23043074 false ) 
	#(197 3 #reduceActionForLexicalDeclaration1: 22823937 false ) 
	#(200 2 #reduceActionForVariableDeclaration3: 23043075 false ) 
	#(247 0 #reduceActionForDeclarationScript1: 31341569 false ) 
	#(251 1 #liftFirstValue: 31640577 false ) 
	#(248 3 #reduceActionForArrowFunction1: 31383553 false ) 
	#(250 1 #reduceActionForConciseBody1: 31525889 false ) 
	#(331 0 #reduceActionForSwitchToDefault1: 41372673 true ) 
	#(322 1 #reduceActionForModuleBody1: 40792065 false ) 
	#(309 1 #reduceActionForJSXElementName1: 39648257 false ) 
	#(309 1 #liftFirstValue: 39648258 false ) 
	#(309 1 #liftFirstValue: 39648259 false ) 
	#(313 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 39974913 false ) 
	#(271 3 #reduceActionForClassExpression2: 35176450 false ) 
	#(436 1 #reduceActionForSingleNameBinding1: 60948481 false ) 
	#(435 1 #reduceActionForNamespaceName1: 60835841 false ) 
	#(429 3 #reduceActionForExportDefaultImplementationElement1: 59003905 false ) 
	#(429 3 #reduceActionForExportDefaultImplementationElement1: 59003906 false ) 
	#(429 3 #reduceActionForExportDefaultImplementationElement1: 59003907 false ) 
	#(430 3 #reduceActionForExportDefaultDeclarationElement1: 59429889 false ) 
	#(430 3 #reduceActionForExportDefaultDeclarationElement1: 59429890 false ) 
	#(431 3 #reduceActionForExportListDeclaration3: 59764739 false ) 
	#(383 3 #reduceActionForInterfaceDeclaration1: 51326977 false ) 
	#(403 0 #reduceActionForDeclarationScript1: 54301697 false ) 
	#(271 3 #reduceActionForClassDeclaration3: 35176451 false ) 
	#(345 3 #reduceActionForParenthesizedExpression1: 42643457 false ) 
	#(365 2 #reduceActionForPropertySignature3: 44712963 false ) 
	#(365 2 #reduceActionForPropertySignature2: 44712962 false ) 
	#(373 2 #reduceActionForMethodSignature1: 48136193 false ) 
	#(350 3 #reduceActionForObjectType2: 43088898 false ) 
	#(351 2 #reduceActionForOptionalChain2: 43170818 false ) 
	#(351 2 #reduceActionForOptionalChain2: 43170820 false ) 
	#(355 3 #reduceActionForTupleType1: 43636737 false ) 
	#(334 2 #reduceActionForTypeParameter2: 41718786 false ) 
	#(332 3 #reduceActionForTypeParameters1: 41527297 false ) 
	#(358 3 #reduceActionForUnionType1: 43869185 false ) 
	#(359 3 #reduceActionForIntersectionType1: 43990017 false ) 
	#(347 3 #reduceActionForTypeReference2: 42783746 false ) 
	#(348 3 #reduceActionForTypeName2: 42877954 false ) 
	#(349 3 #reduceActionForNamespaceName2: 42984450 false ) 
	#(207 2 #reduceActionForBindingRestProperty1: 24407041 false ) 
	#(205 3 #reduceActionForObjectBindingPattern2: 23653378 false ) 
	#(205 3 #reduceActionForObjectBindingPattern3: 23653379 false ) 
	#(206 3 #reduceActionForArrayBindingPattern3: 24041475 false ) 
	#(210 2 #reduceActionForBindingElisionElement2: 24706050 false ) 
	#(206 3 #reduceActionForArrayBindingPattern5: 24041477 false ) 
	#(206 3 #reduceActionForArrayBindingPattern2: 24041474 false ) 
	#(214 3 #reduceActionForBindingRestElement3: 25071619 false ) 
	#(148 2 #reduceActionForInitializer1: 11969537 false ) 
	#(242 3 #reduceActionForFormalParameters5: 30895109 false ) 
	#(243 3 #reduceActionForNamespaceName2: 31096834 false ) 
	#(213 3 #reduceActionForSingleNameBinding9: 24985609 false ) 
	#(213 3 #reduceActionForSingleNameBinding3: 24985603 false ) 
	#(212 3 #reduceActionForSingleNameBinding9: 24881162 false ) 
	#(212 3 #reduceActionForSingleNameBinding3: 24881156 false ) 
	#(213 3 #reduceActionForSingleNameBinding7: 24985607 false ) 
	#(212 3 #reduceActionForSingleNameBinding7: 24881160 false ) 
	#(146 3 #reduceActionForComputedPropertyName1: 11765761 false ) 
	#(141 4 #reduceActionForObjectLiteral3: 10935299 false ) 
	#(142 3 #reduceActionForNamespaceName2: 11192322 false ) 
	#(143 3 #reduceActionForPropertyDefinition3: 11327491 false ) 
	#(137 4 #reduceActionForArrayLiteral4: 10302468 false ) 
	#(138 3 #reduceActionForElementList6: 10563590 false ) 
	#(138 3 #reduceActionForElementList6: 10563589 false ) 
	#(254 1 #reduceActionForConciseBody1: 31876097 false ) 
	#(253 4 #reduceActionForAsyncArrowFunction1: 31773697 false ) 
	#(222 4 #reduceActionForBreakStatement2: 28635138 false ) 
	#(277 2 #reduceActionForClassElement2: 35645442 false ) 
	#(273 3 #reduceActionForClassTail2: 35352578 false ) 
	#(276 2 #reduceActionForModuleItemList2: 35557378 false ) 
	#(394 1 #reduceActionForMemberAccessorDeclaration1: 53321729 false ) 
	#(394 1 #reduceActionForMemberAccessorDeclaration1: 53321733 false ) 
	#(277 2 #liftSecondValue: 35645444 false ) 
	#(277 2 #liftSecondValue: 35645445 false ) 
	#(391 1 #liftFirstValue: 52691969 false ) 
	#(391 1 #liftFirstValue: 52691970 false ) 
	#(391 1 #liftFirstValue: 52691971 false ) 
	#(277 2 #liftSecondValue: 35645446 false ) 
	#(273 3 #reduceActionForClassTail3: 35352579 false ) 
	#(388 1 #liftFirstValue: 51983361 false ) 
	#(387 2 #reduceActionForInitializer1: 51923969 false ) 
	#(386 1 #liftFirstValue: 51698689 false ) 
	#(389 2 #reduceActionForImplementsClause1: 52025345 false ) 
	#(385 1 #reduceActionForNamespaceName1: 51567617 false ) 
	#(274 3 #reduceActionForClassHeritage3: 35444739 false ) 
	#(221 4 #reduceActionForContinueStatement2: 28520450 false ) 
	#(296 3 #reduceActionForNamedExports2: 37993474 false ) 
	#(295 3 #reduceActionForExportFromClause2: 37885954 false ) 
	#(294 4 #reduceActionForExportDeclaration5: 37201925 false ) 
	#(289 2 #reduceActionForInitializer1: 36843521 false ) 
	#(294 4 #reduceActionForExportDeclaration1: 37201921 false ) 
	#(220 1 #liftFirstValue: 28473345 false ) 
	#(220 1 #liftFirstValue: 28473346 false ) 
	#(219 2 #reduceActionForInitializer1: 28408833 false ) 
	#(160 4 #reduceActionForImportCall1: 14002177 false ) 
	#(288 3 #reduceActionForNamedImports2: 36612098 false ) 
	#(287 3 #reduceActionForNameSpaceImport1: 36531201 false ) 
	#(284 4 #reduceActionForImportDeclaration1: 36062209 false ) 
	#(285 3 #reduceActionForImportClause4: 36234244 false ) 
	#(285 3 #reduceActionForImportClause4: 36234245 false ) 
	#(224 4 #reduceActionForReturnStatement2: 28777474 false ) 
	#(162 2 #reduceActionForArgumentList2: 14327810 false ) 
	#(161 3 #reduceActionForArguments2: 14142466 false ) 
	#(154 4 #reduceActionForSuperProperty1: 12961793 false ) 
	#(337 1 #reduceActionForNamespaceName1: 41904129 false ) 
	#(338 1 #liftFirstValue: 42010625 false ) 
	#(235 2 #reduceActionForCatch2: 30061570 false ) 
	#(236 2 #reduceActionForInitializer1: 30229505 false ) 
	#(234 4 #reduceActionForTryStatement3: 29890563 false ) 
	#(202 3 #reduceActionForNamespaceName2: 23292930 false ) 
	#(379 2 #reduceActionForSimpleVariableDeclaration1: 50490369 false ) 
	#(151 1 #reduceActionForNamespaceName1: 12227585 false ) 
	#(149 4 #reduceActionForTemplateLiteral2: 12034050 false ) 
	#(153 4 #reduceActionForMemberExpression2: 12460034 false ) 
	#(165 2 #reduceActionForOptionalRest3: 14897155 false ) 
	#(158 4 #reduceActionForCallExpression5: 13448197 false ) 
	#(169 4 #reduceActionForUnaryExpression11: 15900683 false ) 
	#(199 3 #reduceActionForNamespaceName2: 22944770 false ) 
	#(381 3 #reduceActionForSingleNameBinding3: 50790401 false ) 
	#(382 3 #reduceActionForSingleNameBinding3: 50899969 false ) 
	#(247 1 #reduceActionForModuleBody1: 31341570 false ) 
	#(246 1 #reduceActionForModuleBody1: 31300609 false ) 
	#(304 4 #reduceActionForJSXElement2: 38821890 false ) 
	#(324 1 #reduceActionForJSXChild1: 40826881 false ) 
	#(324 1 #liftFirstValue: 40826882 false ) 
	#(323 2 #reduceActionForModuleItemList2: 40806402 false ) 
	#(312 2 #reduceActionForInitializer1: 39974913 false ) 
	#(329 0 #reduceActionForSwitchToJSXTextOrDefault11: 41239553 true ) 
	#(319 1 #reduceActionForJSXElementName1: 40398849 false ) 
	#(319 1 #liftFirstValue: 40398850 false ) 
	#(316 1 #reduceActionForModuleItemList1: 40101889 false ) 
	#(314 1 #reduceActionForModuleBody1: 40085505 false ) 
	#(315 1 #liftFirstValue: 40101889 false ) 
	#(315 1 #liftFirstValue: 40101890 false ) 
	#(318 1 #reduceActionForJSXAttribute1: 40315905 false ) 
	#(311 2 #reduceActionForJSXMemberExpression1: 39952385 false ) 
	#(313 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 39974914 false ) 
	#(436 2 #reduceActionForAmbientBinding2: 60948482 false ) 
	#(434 3 #reduceActionForLexicalDeclaration1: 60539907 false ) 
	#(434 3 #reduceActionForLexicalDeclaration1: 60539906 false ) 
	#(446 0 #reduceActionForDeclarationScript1: 62442497 false ) 
	#(434 3 #reduceActionForLexicalDeclaration1: 60539905 false ) 
	#(396 4 #reduceActionForEnumDeclaration1: 53621761 false ) 
	#(399 1 #reduceActionForEnumMember1: 53907457 false ) 
	#(397 1 #reduceActionForModuleBody1: 53769217 false ) 
	#(398 1 #reduceActionForNamespaceName1: 53815297 false ) 
	#(432 4 #reduceActionForExportAssignment1: 60018689 false ) 
	#(431 4 #reduceActionForExportListDeclaration1: 59764737 false ) 
	#(430 4 #reduceActionForExportDefaultDeclarationElement3: 59429891 false ) 
	#(429 4 #reduceActionForExportDefaultImplementationElement4: 59003908 false ) 
	#(431 4 #reduceActionForExportListDeclaration2: 59764738 false ) 
	#(408 1 #liftFirstValue: 55598081 false ) 
	#(384 2 #reduceActionForInitializer1: 51482625 false ) 
	#(383 4 #reduceActionForInterfaceDeclaration3: 51326979 false ) 
	#(383 4 #reduceActionForInterfaceDeclaration2: 51326978 false ) 
	#(405 1 #liftFirstValue: 54437889 false ) 
	#(405 1 #liftFirstValue: 54437890 false ) 
	#(405 1 #liftFirstValue: 54437891 false ) 
	#(405 1 #liftFirstValue: 54437892 false ) 
	#(405 1 #liftFirstValue: 54437893 false ) 
	#(405 1 #liftFirstValue: 54437895 false ) 
	#(405 1 #liftFirstValue: 54437894 false ) 
	#(405 1 #liftFirstValue: 54437896 false ) 
	#(405 1 #liftFirstValue: 54437897 false ) 
	#(403 1 #reduceActionForModuleBody1: 54301698 false ) 
	#(404 1 #reduceActionForModuleItemList1: 54339585 false ) 
	#(405 1 #liftFirstValue: 54437900 false ) 
	#(405 1 #liftFirstValue: 54437899 false ) 
	#(405 1 #liftFirstValue: 54437898 false ) 
	#(402 3 #reduceActionForNamespaceName2: 54196226 false ) 
	#(239 4 #reduceActionForFunctionDeclaration5: 30427141 false ) 
	#(271 4 #reduceActionForClassDeclaration4: 35176452 false ) 
	#(367 3 #reduceActionForCallSignature1: 44935169 false ) 
	#(365 3 #reduceActionForPropertySignature4: 44712964 false ) 
	#(373 3 #reduceActionForMethodSignature2: 48136194 false ) 
	#(366 2 #reduceActionForInitializer1: 44881921 false ) 
	#(352 3 #reduceActionForNamespaceName2: 43267074 false ) 
	#(352 3 #reduceActionForNamespaceName2: 43267075 false ) 
	#(356 3 #reduceActionForNamespaceName2: 43734018 false ) 
	#(335 2 #reduceActionForInitializer1: 41773057 false ) 
	#(333 3 #reduceActionForNamespaceName2: 41606146 false ) 
	#(363 3 #reduceActionForTypeQueryExpression2: 44551170 false ) 
	#(354 4 #reduceActionForArrayType1: 43529217 false ) 
	#(211 3 #reduceActionForBindingProperty2: 24767490 false ) 
	#(205 4 #reduceActionForObjectBindingPattern4: 23653380 false ) 
	#(208 3 #reduceActionForNamespaceName2: 24478722 false ) 
	#(206 4 #reduceActionForArrayBindingPattern4: 24041476 false ) 
	#(206 4 #reduceActionForArrayBindingPattern6: 24041478 false ) 
	#(209 3 #reduceActionForBindingElementList2: 24597506 false ) 
	#(213 4 #reduceActionForSingleNameBinding4: 24985604 false ) 
	#(212 4 #reduceActionForBindingElement11: 24881163 false ) 
	#(212 4 #reduceActionForSingleNameBinding4: 24881157 false ) 
	#(213 4 #reduceActionForSingleNameBinding10: 24985610 false ) 
	#(213 4 #reduceActionForSingleNameBinding8: 24985608 false ) 
	#(213 4 #reduceActionForSingleNameBinding5: 24985605 false ) 
	#(212 4 #reduceActionForSingleNameBinding10: 24881164 false ) 
	#(212 4 #reduceActionForSingleNameBinding8: 24881161 false ) 
	#(212 4 #reduceActionForSingleNameBinding5: 24881158 false ) 
	#(256 1 #liftFirstValue: 32594945 false ) 
	#(269 1 #reduceActionForModuleBody1: 35063809 false ) 
	#(394 2 #reduceActionForMemberAccessorDeclaration2: 53321730 false ) 
	#(394 2 #reduceActionForMemberAccessorDeclaration2: 53321734 false ) 
	#(392 2 #reduceActionForMemberVariableDeclaration1: 52806657 false ) 
	#(394 2 #reduceActionForMemberAccessorDeclaration3: 53321731 false ) 
	#(394 2 #reduceActionForMemberAccessorDeclaration3: 53321735 false ) 
	#(395 2 #reduceActionForIndexMemberDeclaration1: 53530625 false ) 
	#(273 4 #reduceActionForClassTail4: 35352580 false ) 
	#(298 3 #reduceActionForExportSpecifier2: 38313986 false ) 
	#(296 4 #reduceActionForNamedExports3: 37993475 false ) 
	#(297 3 #reduceActionForNamespaceName2: 38209538 false ) 
	#(217 5 #reduceActionForIfStatement2: 25383938 false ) 
	#(291 3 #reduceActionForImportSpecifier2: 36999170 false ) 
	#(288 4 #reduceActionForNamedImports3: 36612099 false ) 
	#(290 3 #reduceActionForNamespaceName2: 36894722 false ) 
	#(161 4 #reduceActionForArguments3: 14142467 false ) 
	#(162 3 #reduceActionForArgumentList3: 14327811 false ) 
	#(336 3 #reduceActionForTypeArguments1: 41826305 false ) 
	#(161 4 #reduceActionForArguments4: 14142468 false ) 
	#(226 5 #reduceActionForSwitchStatement1: 29023233 false ) 
	#(237 1 #liftFirstValue: 30289921 false ) 
	#(237 1 #liftFirstValue: 30289922 false ) 
	#(379 3 #reduceActionForSimpleVariableDeclaration2: 50490370 false ) 
	#(380 3 #reduceActionForDestructuringVariableDeclaration1: 50595841 false ) 
	#(218 5 #reduceActionForIterationStatement2: 25674754 false ) 
	#(225 5 #reduceActionForWithStatement1: 28891137 false ) 
	#(152 2 #reduceActionForTemplateMiddleList1: 12314625 false ) 
	#(151 2 #reduceActionForTemplateSpans2: 12227586 false ) 
	#(166 3 #reduceActionForOptionalFirst2: 15184898 false ) 
	#(165 3 #reduceActionForOptionalFirst2: 14897154 false ) 
	#(185 5 #reduceActionForConditionalExpression2: 19878914 false ) 
	#(381 4 #reduceActionForSingleNameBinding4: 50790402 false ) 
	#(382 4 #reduceActionForSingleNameBinding4: 50899970 false ) 
	#(250 3 #reduceActionForConciseBody2: 31525890 false ) 
	#(310 3 #reduceActionForJSXNamespacedName1: 39828481 false ) 
	#(316 2 #reduceActionForModuleItemList2: 40101890 false ) 
	#(318 2 #reduceActionForJSXAttribute2: 40315906 false ) 
	#(306 5 #reduceActionForJSXOpeningElement1: 39155713 false ) 
	#(375 4 #reduceActionForTypeCallSignature1: 48579585 false ) 
	#(169 5 #reduceActionForUnaryExpression10: 15900682 false ) 
	#(375 4 #reduceActionForTypeCallSignature3: 48579587 false ) 
	#(396 5 #reduceActionForEnumDeclaration3: 53621763 false ) 
	#(439 0 #reduceActionForDeclarationScript1: 61384705 false ) 
	#(435 3 #reduceActionForNamespaceName2: 60835842 false ) 
	#(437 4 #reduceActionForAmbientFunctionDeclaration1: 61031425 false ) 
	#(448 1 #reduceActionForAmbientNamespaceElement3: 62621699 false ) 
	#(448 1 #reduceActionForAmbientNamespaceElement3: 62621705 false ) 
	#(448 1 #reduceActionForAmbientNamespaceElement3: 62621711 false ) 
	#(448 1 #reduceActionForAmbientNamespaceElement3: 62621697 false ) 
	#(448 1 #reduceActionForAmbientNamespaceElement3: 62621701 false ) 
	#(448 1 #reduceActionForAmbientNamespaceElement3: 62621703 false ) 
	#(448 1 #reduceActionForAmbientNamespaceElement3: 62621707 false ) 
	#(448 1 #reduceActionForAmbientNamespaceElement3: 62621709 false ) 
	#(446 1 #reduceActionForModuleBody1: 62442498 false ) 
	#(447 1 #reduceActionForModuleItemList1: 62494721 false ) 
	#(396 5 #reduceActionForEnumDeclaration2: 53621762 false ) 
	#(397 2 #reduceActionForOptionalChain2: 53769218 false ) 
	#(407 5 #reduceActionForImportAliasDeclaration1: 55460865 false ) 
	#(383 5 #reduceActionForInterfaceDeclaration4: 51326980 false ) 
	#(406 2 #reduceActionForExportNamespaceElement2: 54718466 false ) 
	#(406 2 #reduceActionForExportNamespaceElement2: 54718465 false ) 
	#(406 2 #reduceActionForExportNamespaceElement2: 54718467 false ) 
	#(406 2 #reduceActionForExportNamespaceElement2: 54718468 false ) 
	#(406 2 #reduceActionForExportNamespaceElement2: 54718469 false ) 
	#(406 2 #reduceActionForExportNamespaceElement2: 54718471 false ) 
	#(406 2 #reduceActionForExportNamespaceElement2: 54718470 false ) 
	#(406 2 #reduceActionForExportNamespaceElement2: 54718472 false ) 
	#(406 2 #reduceActionForExportNamespaceElement2: 54718473 false ) 
	#(406 2 #reduceActionForExportNamespaceElement2: 54718475 false ) 
	#(406 2 #reduceActionForExportNamespaceElement2: 54718474 false ) 
	#(401 5 #reduceActionForNamespaceDeclaration1: 54054913 false ) 
	#(404 2 #reduceActionForModuleItemList2: 54339586 false ) 
	#(374 5 #reduceActionForTypeAliasDeclaration1: 48241665 false ) 
	#(239 5 #reduceActionForFunctionDeclaration6: 30427142 false ) 
	#(360 5 #reduceActionForFunctionType1: 44096513 false ) 
	#(367 4 #reduceActionForCallSignature2: 44935170 false ) 
	#(371 4 #reduceActionForConstructSignature1: 47642625 false ) 
	#(367 4 #reduceActionForCallSignature3: 44935171 false ) 
	#(205 5 #reduceActionForObjectBindingPattern5: 23653381 false ) 
	#(206 5 #reduceActionForArrayBindingPattern8: 24041480 false ) 
	#(206 5 #reduceActionForArrayBindingPattern7: 24041479 false ) 
	#(213 5 #reduceActionForSingleNameBinding6: 24985606 false ) 
	#(212 5 #reduceActionForBindingElement13: 24881165 false ) 
	#(212 5 #reduceActionForSingleNameBinding6: 24881159 false ) 
	#(370 1 #liftFirstValue: 46963713 false ) 
	#(370 1 #liftFirstValue: 46963714 false ) 
	#(254 3 #reduceActionForConciseBody2: 31876098 false ) 
	#(392 3 #reduceActionForMemberVariableDeclaration5: 52806661 false ) 
	#(392 3 #reduceActionForMemberVariableDeclaration2: 52806658 false ) 
	#(392 3 #reduceActionForMemberVariableDeclaration3: 52806659 false ) 
	#(393 3 #reduceActionForMemberFunctionDeclaration5: 52976645 false ) 
	#(394 3 #reduceActionForMemberAccessorDeclaration4: 53321732 false ) 
	#(394 3 #reduceActionForMemberAccessorDeclaration4: 53321736 false ) 
	#(392 3 #reduceActionForMemberVariableDeclaration9: 52806665 false ) 
	#(385 3 #reduceActionForNamespaceName2: 51567618 false ) 
	#(218 6 #reduceActionForIterationStatement3: 25674755 false ) 
	#(218 6 #reduceActionForIterationStatement15: 25674767 false ) 
	#(162 4 #reduceActionForArgumentList4: 14327812 false ) 
	#(337 3 #reduceActionForNamespaceName2: 41904130 false ) 
	#(161 5 #reduceActionForArguments5: 14142469 false ) 
	#(227 2 #reduceActionForCaseBlock1: 29149185 false ) 
	#(228 1 #reduceActionForModuleItemList1: 29333505 false ) 
	#(152 3 #reduceActionForTemplateMiddleList2: 12314626 false ) 
	#(325 1 #liftFirstValue: 41059330 false ) 
	#(325 1 #liftFirstValue: 41059329 false ) 
	#(305 6 #reduceActionForJSXSelfClosingElement1: 38972417 false ) 
	#(306 6 #reduceActionForJSXOpeningElement2: 39155714 false ) 
	#(321 1 #reduceActionForLiteral4: 40563713 false ) 
	#(321 1 #liftFirstValue: 40563715 false ) 
	#(321 1 #liftFirstValue: 40563716 false ) 
	#(320 2 #reduceActionForInitializer1: 40489985 false ) 
	#(240 6 #reduceActionForFunctionExpression3: 30639107 false ) 
	#(375 5 #reduceActionForTypeCallSignature2: 48579586 false ) 
	#(396 6 #reduceActionForEnumDeclaration4: 53621764 false ) 
	#(441 1 #liftFirstValue: 61559811 false ) 
	#(439 1 #reduceActionForModuleBody1: 61384706 false ) 
	#(440 1 #reduceActionForModuleItemList1: 61432833 false ) 
	#(441 1 #liftFirstValue: 61559809 false ) 
	#(441 1 #liftFirstValue: 61559810 false ) 
	#(449 6 #reduceActionForAmbientModuleDeclaration1: 63393793 false ) 
	#(448 2 #reduceActionForExportNamespaceElement2: 62621700 false ) 
	#(448 2 #reduceActionForExportNamespaceElement2: 62621706 false ) 
	#(448 2 #reduceActionForExportNamespaceElement2: 62621712 false ) 
	#(448 2 #reduceActionForExportNamespaceElement2: 62621698 false ) 
	#(448 2 #reduceActionForExportNamespaceElement2: 62621702 false ) 
	#(448 2 #reduceActionForExportNamespaceElement2: 62621704 false ) 
	#(448 2 #reduceActionForExportNamespaceElement2: 62621708 false ) 
	#(448 2 #reduceActionForExportNamespaceElement2: 62621710 false ) 
	#(445 5 #reduceActionForNamespaceDeclaration1: 62266369 false ) 
	#(447 2 #reduceActionForModuleItemList2: 62494722 false ) 
	#(400 1 #liftFirstValue: 54012929 false ) 
	#(399 3 #reduceActionForEnumMember2: 53907458 false ) 
	#(398 3 #reduceActionForNamespaceName2: 53815298 false ) 
	#(374 6 #reduceActionForTypeAliasDeclaration2: 48241666 false ) 
	#(239 6 #reduceActionForFunctionExpression3: 30427139 false ) 
	#(371 5 #reduceActionForConstructSignature2: 47642626 false ) 
	#(371 5 #reduceActionForConstructSignature3: 47642627 false ) 
	#(367 5 #reduceActionForCallSignature4: 44935172 false ) 
	#(361 6 #reduceActionForConstructorType1: 44276737 false ) 
	#(360 6 #reduceActionForFunctionType2: 44096514 false ) 
	#(206 6 #reduceActionForArrayBindingPattern9: 24041481 false ) 
	#(378 2 #reduceActionForTypedPropertySetParameterList1: 49612801 false ) 
	#(255 6 #reduceActionForMethodDefinition7: 31996935 false ) 
	#(392 4 #reduceActionForMemberVariableDeclaration6: 52806662 false ) 
	#(392 4 #reduceActionForMemberVariableDeclaration7: 52806663 false ) 
	#(393 4 #reduceActionForMemberFunctionDeclaration6: 52976646 false ) 
	#(392 4 #reduceActionForMemberVariableDeclaration4: 52806660 false ) 
	#(392 4 #reduceActionForMemberVariableDeclaration13: 52806669 false ) 
	#(392 4 #reduceActionForMemberVariableDeclaration10: 52806666 false ) 
	#(392 4 #reduceActionForMemberVariableDeclaration11: 52806667 false ) 
	#(393 4 #reduceActionForMemberFunctionDeclaration7: 52976647 false ) 
	#(218 7 #reduceActionForIterationStatement1: 25674753 false ) 
	#(218 7 #reduceActionForIterationStatement4: 25674756 false ) 
	#(218 7 #reduceActionForIterationStatement5: 25674757 false ) 
	#(218 7 #reduceActionForIterationStatement19: 25674771 false ) 
	#(218 7 #reduceActionForIterationStatement22: 25674774 false ) 
	#(218 7 #reduceActionForIterationStatement7: 25674759 false ) 
	#(218 7 #reduceActionForIterationStatement16: 25674768 false ) 
	#(218 7 #reduceActionForIterationStatement17: 25674769 false ) 
	#(218 7 #reduceActionForIterationStatement21: 25674773 false ) 
	#(218 7 #reduceActionForIterationStatement24: 25674776 false ) 
	#(240 7 #reduceActionForFunctionExpression1: 30639105 false ) 
	#(260 1 #reduceActionForModuleBody1: 33341441 false ) 
	#(217 7 #reduceActionForIfStatement1: 25383937 false ) 
	#(230 2 #reduceActionForDefaultClause1: 29512705 false ) 
	#(227 3 #reduceActionForCaseBlock2: 29149186 false ) 
	#(228 2 #reduceActionForModuleItemList2: 29333506 false ) 
	#(227 3 #reduceActionForCaseBlock3: 29149187 false ) 
	#(235 5 #reduceActionForCatch1: 30061569 false ) 
	#(330 0 #reduceActionForSwitchToJSXTextOrDefault21: 41306113 true ) 
	#(324 4 #reduceActionForJSXChild3: 40826883 false ) 
	#(305 7 #reduceActionForJSXSelfClosingElement2: 38972418 false ) 
	#(240 7 #reduceActionForFunctionExpression4: 30639108 false ) 
	#(443 2 #reduceActionForMemberVariableDeclaration1: 61879297 false ) 
	#(438 6 #reduceActionForAmbientClassDeclaration1: 61178881 false ) 
	#(440 2 #reduceActionForModuleItemList2: 61432834 false ) 
	#(239 7 #reduceActionForFunctionExpression1: 30427137 false ) 
	#(239 7 #reduceActionForFunctionExpression4: 30427140 false ) 
	#(372 6 #reduceActionForIndexSignature2: 47835138 false ) 
	#(372 6 #reduceActionForIndexSignature2: 47835137 false ) 
	#(371 6 #reduceActionForConstructSignature4: 47642628 false ) 
	#(361 7 #reduceActionForConstructorType2: 44276738 false ) 
	#(255 7 #reduceActionForMethodDefinition5: 31996933 false ) 
	#(255 7 #reduceActionForMethodDefinition1: 31996929 false ) 
	#(268 8 #reduceActionForAsyncFunctionExpression1: 34813953 false ) 
	#(265 1 #reduceActionForModuleBody1: 34308097 false ) 
	#(390 5 #reduceActionForConstructorDeclaration3: 52233219 false ) 
	#(392 5 #reduceActionForMemberVariableDeclaration8: 52806664 false ) 
	#(393 5 #reduceActionForMemberFunctionDeclaration1: 52976641 false ) 
	#(392 5 #reduceActionForMemberVariableDeclaration14: 52806670 false ) 
	#(392 5 #reduceActionForMemberVariableDeclaration15: 52806671 false ) 
	#(393 5 #reduceActionForMemberFunctionDeclaration8: 52976648 false ) 
	#(392 5 #reduceActionForMemberVariableDeclaration12: 52806668 false ) 
	#(218 8 #reduceActionForIterationStatement6: 25674758 false ) 
	#(218 8 #reduceActionForIterationStatement11: 25674763 false ) 
	#(218 8 #reduceActionForIterationStatement23: 25674775 false ) 
	#(218 8 #reduceActionForIterationStatement20: 25674772 false ) 
	#(218 8 #reduceActionForIterationStatement8: 25674760 false ) 
	#(218 8 #reduceActionForIterationStatement9: 25674761 false ) 
	#(218 8 #reduceActionForIterationStatement18: 25674770 false ) 
	#(218 8 #reduceActionForIterationStatement25: 25674777 false ) 
	#(218 8 #reduceActionForIterationStatement27: 25674779 false ) 
	#(259 8 #reduceActionForGeneratorExpression1: 33105921 false ) 
	#(240 8 #reduceActionForFunctionExpression2: 30639106 false ) 
	#(229 3 #reduceActionForCaseClause1: 29406209 false ) 
	#(230 3 #reduceActionForDefaultClause2: 29512706 false ) 
	#(227 4 #reduceActionForCaseBlock5: 29149189 false ) 
	#(227 4 #reduceActionForCaseBlock4: 29149188 false ) 
	#(324 5 #reduceActionForJSXChild4: 40826884 false ) 
	#(317 5 #reduceActionForJSXSpreadAttribute1: 40166401 false ) 
	#(443 3 #reduceActionForMemberVariableDeclaration5: 61879299 false ) 
	#(443 3 #reduceActionForMemberVariableDeclaration3: 61879298 false ) 
	#(443 3 #reduceActionForAmbientPropertyMemberDeclaration9: 61879305 false ) 
	#(443 3 #reduceActionForMemberVariableDeclaration9: 61879301 false ) 
	#(438 7 #reduceActionForAmbientClassDeclaration2: 61178882 false ) 
	#(258 8 #reduceActionForGeneratorExpression1: 32869377 false ) 
	#(239 8 #reduceActionForFunctionExpression2: 30427138 false ) 
	#(426 8 #reduceActionForImportRequireDeclaration1: 57748481 false ) 
	#(257 8 #reduceActionForGeneratorMethod1: 32653313 false ) 
	#(266 8 #reduceActionForAsyncMethod1: 34344961 false ) 
	#(255 8 #reduceActionForMethodDefinition6: 31996934 false ) 
	#(264 9 #reduceActionForAsyncGeneratorExpression1: 34033665 false ) 
	#(268 9 #reduceActionForAsyncFunctionExpression2: 34813954 false ) 
	#(393 6 #reduceActionForMemberFunctionDeclaration2: 52976642 false ) 
	#(390 6 #reduceActionForConstructorDeclaration4: 52233220 false ) 
	#(392 6 #reduceActionForMemberVariableDeclaration16: 52806672 false ) 
	#(393 6 #reduceActionForMemberFunctionDeclaration3: 52976643 false ) 
	#(267 8 #reduceActionForAsyncFunctionExpression1: 34564097 false ) 
	#(218 9 #reduceActionForIterationStatement12: 25674764 false ) 
	#(218 9 #reduceActionForIterationStatement13: 25674765 false ) 
	#(218 9 #reduceActionForIterationStatement10: 25674762 false ) 
	#(218 9 #reduceActionForIterationStatement26: 25674778 false ) 
	#(259 9 #reduceActionForGeneratorExpression2: 33105922 false ) 
	#(229 4 #reduceActionForCaseClause2: 29406210 false ) 
	#(227 5 #reduceActionForCaseBlock6: 29149190 false ) 
	#(308 9 #reduceActionForJSXFragment1: 39459841 false ) 
	#(307 6 #reduceActionForJSXClosingElement1: 39300097 false ) 
	#(443 4 #reduceActionForMemberVariableDeclaration7: 61879300 false ) 
	#(443 4 #reduceActionForAmbientPropertyMemberDeclaration10: 61879306 false ) 
	#(443 4 #reduceActionForMemberVariableDeclaration13: 61879303 false ) 
	#(443 4 #reduceActionForMemberVariableDeclaration11: 61879302 false ) 
	#(443 4 #reduceActionForAmbientPropertyMemberDeclaration11: 61879307 false ) 
	#(258 9 #reduceActionForGeneratorExpression2: 32869378 false ) 
	#(262 9 #reduceActionForAsyncGeneratorMethod1: 33505281 false ) 
	#(376 9 #reduceActionForGetAccessor1: 48942081 false ) 
	#(377 9 #reduceActionForSetAccessor2: 49147906 false ) 
	#(264 10 #reduceActionForAsyncGeneratorExpression2: 34033666 false ) 
	#(390 7 #reduceActionForConstructorDeclaration1: 52233217 false ) 
	#(393 7 #reduceActionForMemberFunctionDeclaration4: 52976644 false ) 
	#(263 9 #reduceActionForAsyncGeneratorExpression1: 33758209 false ) 
	#(267 9 #reduceActionForAsyncFunctionExpression2: 34564098 false ) 
	#(218 10 #reduceActionForIterationStatement14: 25674766 false ) 
	#(321 5 #reduceActionForJSXChild4: 40563714 false ) 
	#(442 5 #reduceActionForAmbientConstructorDeclaration1: 61672449 false ) 
	#(443 5 #reduceActionForMemberVariableDeclaration15: 61879304 false ) 
	#(443 5 #reduceActionForAmbientPropertyMemberDeclaration12: 61879308 false ) 
	#(377 10 #reduceActionForSetAccessor1: 49147905 false ) 
	#(377 10 #reduceActionForSetAccessor1: 49147907 false ) 
	#(390 8 #reduceActionForConstructorDeclaration2: 52233218 false ) 
	#(263 10 #reduceActionForAsyncGeneratorExpression2: 33758210 false )
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
	^ #('<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<question>' '<questionDot>' '<questionQuestion>' '<percent>' '<bar>' '<barBar>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<private>' '<protected>' '<public>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'FunctionDeclaration' 'FunctionExpression' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorMethod' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorBody' 'AsyncMethod' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSNewTargetExpressionNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSVariableDeclarationNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSVariableDeclarationNode #JSGeneratorMethodDefinitionNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorMethodDefinitionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #OrderedCollection #JSAsyncMethodDefinitionNode #JSAsyncFunctionNode #JSAsyncFunctionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSProgramNode #JSMemberVariableDeclarationNode #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 0 109 0 68 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 0 129 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 221 0 131 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 1 0 189 2 1 0 192 2 1 0 193 2 1 0 194 2 1 0 196 2 1 0 197 1 141 0 198 2 1 0 201 2 1 0 215 2 1 0 216 2 1 0 217 2 1 0 218 2 1 0 221 2 1 0 222 2 1 0 224 2 1 0 225 2 1 0 226 2 1 0 231 2 1 0 233 2 1 0 234 2 1 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 0 221 1 24 1 249 1 25 1 253 1 26 2 1 1 27 2 1 1 28 2 1 1 38 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196 0 14 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 2 69 0 185 2 69 0 186 2 69 0 188 1 1 0 240 2 69 0 248 1 209 0 249 1 213 0 252 2 69 0 253 1 1 1 3 2 69 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 73 0 189 2 73 0 192 2 73 0 193 2 73 0 194 2 73 0 201 2 73 0 215 2 73 0 216 2 73 0 217 2 73 0 218 2 73 0 221 2 73 0 222 2 73 0 224 2 73 0 225 2 73 0 226 2 73 0 231 2 73 0 233 2 73 0 234 2 73 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 2 77 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 85 1 22 2 89 1 23 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196 0 18 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 0 109 0 68 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 0 129 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 1 0 189 2 1 0 192 2 1 0 193 2 1 0 194 2 1 0 196 2 1 0 197 1 141 0 198 2 1 0 201 2 1 0 215 2 1 0 216 2 1 0 217 2 1 0 218 2 1 0 221 2 1 0 222 2 1 0 224 2 1 0 225 2 1 0 226 2 1 0 231 2 1 0 233 2 1 0 234 2 1 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 93 1 24 1 249 1 25 1 253 1 26 2 1 1 27 2 1 1 28 2 1 1 38 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196 0 14 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 2 97 0 57 2 101 0 58 0 93 0 60 0 97 0 61 2 105 0 62 0 101 0 64 0 105 0 65 2 109 0 67 2 113 0 68 2 17 0 70 0 117 0 72 2 117 0 74 0 125 0 76 2 121 0 77 2 125 0 82 1 141 0 84 2 129 0 86 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 2 133 0 105 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 205 0 189 2 205 0 192 2 205 0 193 2 205 0 194 2 205 0 197 1 141 0 198 2 205 0 201 2 205 0 215 2 205 0 216 2 205 0 217 2 205 0 218 2 205 0 221 2 205 0 222 2 205 0 224 2 205 0 225 2 205 0 226 2 205 0 231 2 205 0 233 2 205 0 234 2 205 0 238 2 205 0 239 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 2 205 1 2 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 2 205 1 15 1 1 1 16 2 157 1 28 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 161 1 118 2 165 1 127 2 205 1 140 2 173 1 145 2 177 1 151 2 181 1 153 2 185 1 154 2 189 1 155 2 193 1 156 2 197 1 157 2 201 1 158 2 205 1 159 2 209 1 160 2 213 1 161 2 217 1 162 2 221 1 163 2 225 1 164 2 229 1 165 2 233 1 166 2 237 1 167 2 241 1 168 2 245 1 169 2 233 1 170 2 233 1 171 2 245 1 172 2 233 1 173 2 245 1 174 3 13 1 175 3 17 1 176 3 21 1 177 3 25 1 193 3 29 1 196 0 11 1 197] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 3 89 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 3 89 1 104 3 89 1 105 3 105 1 106 3 105 1 108] 
#[1 0 33 0 1 0 38 0 2 3 169 0 3 3 173 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 3 177 0 112 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 3 181 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 3 185 0 185 3 185 0 186 3 185 0 188 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 1 1 0 240 3 213 0 241 3 217 0 242 3 221 0 243 3 225 0 244 3 229 0 245 3 185 0 248 1 209 0 249 1 213 0 252 3 185 0 253 1 1 1 3 3 185 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 3 233 1 196] 
#[1 0 33 0 1 0 37 0 3 3 237 0 4 3 241 0 5 0 45 0 7 3 245 0 25 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 3 249 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 3 253 0 75 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 4 1 0 95 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 4 5 0 112 0 197 0 116 4 9 0 117 4 65 0 119 4 69 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 4 13 0 132 4 29 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 4 21 0 142 4 25 0 143 4 29 0 144 4 29 0 145 4 29 0 146 4 25 0 147 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 4 45 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 4 25 0 255 4 25 1 1 1 1 1 3 1 113 1 5 4 25 1 6 1 1 1 8 4 25 1 10 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 4 65 1 45 4 69 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 25 1 120 4 25 1 121 4 81 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 4 85 0 6 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 4 89 0 112 4 93 0 113 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 4 97 0 138 4 101 0 139 4 105 0 140 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 4 109 0 185 4 109 0 186 1 1 0 240 4 109 0 248 1 209 0 249 1 213 0 252 4 109 0 253 1 1 1 3 4 109 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 0 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 4 129 0 168 4 129 0 169 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 4 129 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 4 137 0 168 4 137 0 169 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 4 137 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 4 141 0 168 4 141 0 169 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 4 141 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 4 145 0 168 4 145 0 169 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 4 145 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 4 149 0 168 4 149 0 169 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 4 149 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 4 153 0 168 4 153 0 169 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 4 153 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 157 0 1 4 161 0 74 2 65 0 116 4 165 0 132 4 169 0 249 1 213 0 252 4 173 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 4 177 0 168 4 177 0 169 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 4 177 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 0 46 0 7 0 46 0 116 4 181 0 223] 
#[1 4 185 0 3 4 189 0 69 2 65 0 116 4 193 0 132 4 197 1 17 4 201 1 18 4 205 1 196] 
#[0 0 50 0 3 0 5 0 116 1 196] 
#[1 0 46 0 7 0 46 0 116 4 209 0 223] 
#[0 4 213 0 7] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 4 217 0 168 4 217 0 169 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 4 217 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 4 221 0 189 4 221 0 192 4 221 0 193 4 221 0 194 4 221 0 201 4 221 0 215 4 221 0 216 4 221 0 217 4 221 0 218 4 221 0 221 4 221 0 222 4 221 0 224 4 221 0 225 4 221 0 226 4 221 0 231 4 221 0 233 4 221 0 234 4 221 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 4 225 0 3 4 229 0 25 4 233 0 52 4 237 0 57 1 141 0 58 4 241 0 63 4 245 0 74 1 141 0 84 0 177 0 107 4 249 0 190 4 249 0 191 4 249 0 197 1 141 0 198 5 5 0 201 4 249 0 239 4 249 1 2 4 249 1 7 4 249 1 11 4 249 1 15 5 29 1 39 5 33 1 40 5 37 1 196] 
#[0 0 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 5 41 0 1 5 45 0 53] 
#[1 5 49 0 1 5 53 0 25 2 65 0 116 5 57 0 132] 
#[0 5 61 0 1] 
#[1 5 65 0 1 5 69 0 3 5 73 0 25 2 65 0 116 5 97 0 119 5 85 0 132 5 81 1 29 5 85 1 30 5 89 1 31 5 93 1 32 5 97 1 36 5 85 1 37 5 97 1 45] 
#[0 0 58 0 3 0 5 0 116 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 5 109 0 21 4 117 0 52 0 85 0 57 2 17 0 70 0 121 0 74 0 137 0 87 2 13 0 88 5 113 0 98 0 157 0 101 2 17 0 103 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 5 117 0 132 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 117 0 141 5 117 0 149 0 253 0 150 5 117 0 153 5 117 0 154 5 117 0 155 5 117 0 156 5 121 0 157 5 117 0 240 5 117 1 3 5 117 1 8 5 117 1 12 5 117 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 5 117 1 47 5 117 1 48 5 117 1 49 2 41 1 50 5 117 1 52 2 49 1 70 5 125 1 196] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 46 0 1 0 46 0 3 0 46 0 5 0 46 0 7 0 46 0 34 0 46 0 35 0 46 0 36 0 46 0 37 0 46 0 38 0 46 0 48 0 46 0 52 0 46 0 53 0 46 0 57 0 46 0 64 0 46 0 70 0 46 0 74 0 46 0 77 0 46 0 87 0 46 0 88 0 46 0 98 0 46 0 101 0 46 0 103 0 46 0 106 0 46 0 108 0 46 0 111 0 46 0 116 0 46 0 119 0 46 0 120 0 46 0 121 0 46 0 123 0 46 0 124 0 46 0 127 5 129 0 223 0 46 1 196] 
#[1 5 133 0 1 5 137 0 5 5 141 0 21 5 145 0 161 5 149 1 196] 
#[0 5 153 0 1] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 5 157 0 185 5 157 0 186 5 157 0 188 1 1 0 240 5 157 0 248 1 209 0 249 1 213 0 252 5 157 0 253 1 1 1 3 5 157 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 0 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 5 161 0 3 5 165 0 194] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 5 169 0 168 5 169 0 169 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 5 169 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 5 181 0 132 5 185 0 202 5 189 0 203 5 193 0 204 5 193 0 205 5 193 0 206 5 197 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 5 201 0 168 5 201 0 169 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 5 201 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[0 5 205 0 1] 
#[0 5 209 0 1] 
#[1 0 33 0 1 0 74 0 2 2 57 0 3 0 74 0 4 0 41 0 5 0 74 0 6 0 74 0 7 5 213 0 25 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 74 0 90 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 0 74 0 113 0 74 0 114 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 74 0 125 0 74 0 126 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 5 217 0 185 5 217 0 186 1 1 0 240 5 217 0 248 1 209 0 249 1 213 0 252 5 217 0 253 1 1 1 3 5 217 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196 0 74 1 197] 
#[1 0 78 0 1 0 78 0 4 0 78 0 5 0 78 0 7 0 78 0 8 0 78 0 9 0 78 0 10 0 78 0 11 0 78 0 12 0 78 0 13 0 78 0 14 0 78 0 15 0 78 0 16 0 78 0 17 0 78 0 18 0 78 0 19 0 78 0 20 0 78 0 21 0 78 0 22 0 78 0 23 0 78 0 24 0 78 0 25 0 78 0 26 0 78 0 27 0 78 0 28 0 78 0 29 0 78 0 30 0 78 0 31 0 78 0 32 0 78 0 33 0 78 0 34 0 78 0 35 0 78 0 36 0 78 0 37 0 78 0 39 0 78 0 40 0 78 0 41 0 78 0 42 0 78 0 43 0 78 0 44 0 78 0 45 0 78 0 46 0 78 0 47 0 78 0 49 0 78 0 50 0 78 0 51 0 78 0 78 0 78 0 81 0 78 0 113 5 221 0 114 0 78 0 123 0 78 0 124 0 78 1 195 0 78 1 196] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 123 0 124 0 125 0 126 0 128 1 195 1 196 1 197] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 98 0 13 5 225 1 71] 
#[0 0 0 1 197] 
#[1 0 102 0 1 0 102 0 2 0 102 0 4 0 102 0 5 0 102 0 6 0 102 0 7 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 47 0 102 0 49 0 102 0 50 0 102 0 51 0 102 0 78 0 102 0 81 0 102 0 90 0 102 0 113 0 102 0 114 0 102 0 123 0 102 0 124 0 102 0 125 0 102 0 126 0 102 1 195 0 102 1 196 0 102 1 197] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 0 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 5 229 0 124] 
#[1 5 133 0 1 0 134 0 2 0 134 0 3 0 134 0 4 5 233 0 5 0 134 0 6 0 134 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 19 0 134 0 20 5 237 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 5 241 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 49 0 134 0 50 0 134 0 51 0 134 0 78 0 134 0 81 0 134 0 90 0 134 0 113 0 134 0 114 0 213 0 123 0 6 0 124 0 134 0 125 0 134 0 126 5 245 0 149 0 253 0 150 5 249 0 161 5 253 0 164 0 134 1 195 5 149 1 196 0 134 1 197] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 0 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 0 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 195 1 197] 
#[1 5 133 0 1 0 154 0 2 0 154 0 3 0 154 0 4 6 1 0 5 0 154 0 6 0 154 0 7 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 154 0 15 0 154 0 16 0 154 0 17 0 154 0 19 0 154 0 20 6 5 0 21 0 154 0 22 0 154 0 23 0 154 0 24 0 154 0 25 0 154 0 26 0 154 0 27 0 154 0 28 0 154 0 29 0 154 0 30 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 39 0 154 0 40 0 154 0 41 5 241 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 47 0 154 0 49 0 154 0 50 0 154 0 51 0 154 0 78 0 154 0 81 0 154 0 90 0 154 0 113 0 154 0 114 0 213 0 123 0 6 0 124 0 154 0 125 0 154 0 126 6 9 0 149 0 253 0 150 6 13 0 161 6 17 0 164 0 154 1 195 5 149 1 196 0 154 1 197] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 0 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 19 0 166 0 20 0 166 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 39 0 166 0 40 0 166 0 41 5 241 0 42 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 47 0 166 0 49 0 166 0 50 0 166 0 51 0 166 0 78 0 166 0 81 0 166 0 90 0 166 0 113 0 166 0 114 0 166 0 125 0 166 0 126 6 21 0 164 0 166 1 195 0 166 1 197] 
#[1 0 170 0 2 0 170 0 4 0 170 0 6 0 170 0 7 0 170 0 8 6 85 0 9 0 170 0 10 0 170 0 11 6 85 0 12 0 170 0 13 0 170 0 14 6 85 0 15 6 85 0 16 0 170 0 17 0 170 0 19 0 170 0 20 6 85 0 22 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 6 85 0 27 6 85 0 28 6 85 0 29 6 85 0 30 6 85 0 31 6 85 0 32 6 85 0 33 0 170 0 34 6 73 0 35 0 170 0 36 6 77 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 47 0 170 0 49 0 170 0 50 6 81 0 51 0 170 0 78 0 170 0 81 0 170 0 90 0 170 0 113 0 170 0 114 0 170 0 125 0 170 0 126 6 85 0 187 6 85 1 195 0 170 1 197] 
#[0 0 174 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[1 0 178 0 2 0 178 0 4 0 178 0 6 0 178 0 7 0 178 0 8 0 178 0 10 0 178 0 11 0 178 0 13 0 178 0 14 0 178 0 17 0 178 0 19 0 178 0 20 0 178 0 23 0 178 0 24 0 178 0 25 6 93 0 26 0 178 0 34 0 178 0 36 0 178 0 39 0 178 0 40 0 178 0 41 0 178 0 43 0 178 0 44 0 178 0 45 0 178 0 46 0 178 0 47 0 178 0 49 0 178 0 50 0 178 0 78 0 178 0 81 0 178 0 90 0 178 0 113 0 178 0 114 0 178 0 125 0 178 0 126 0 178 1 197] 
#[0 0 182 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[1 0 186 0 2 0 186 0 4 0 186 0 6 0 186 0 7 6 109 0 8 0 186 0 10 0 186 0 11 0 186 0 13 0 186 0 14 0 186 0 17 0 186 0 19 0 186 0 20 0 186 0 23 0 186 0 24 6 109 0 25 0 186 0 34 0 186 0 36 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 43 6 109 0 44 0 186 0 45 0 186 0 46 0 186 0 47 0 186 0 49 0 186 0 50 0 186 0 78 0 186 0 81 0 186 0 90 0 186 0 113 0 186 0 114 0 186 0 125 0 186 0 126 6 109 0 172 0 186 1 197] 
#[1 0 190 0 2 0 190 0 4 0 190 0 6 0 190 0 7 0 190 0 10 0 190 0 11 0 190 0 13 0 190 0 14 0 190 0 17 0 190 0 19 0 190 0 20 0 190 0 23 0 190 0 24 6 113 0 34 6 117 0 36 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 43 0 190 0 45 0 190 0 46 0 190 0 47 0 190 0 49 0 190 0 50 0 190 0 78 0 190 0 81 0 190 0 90 0 190 0 113 0 190 0 114 0 190 0 125 0 190 0 126 0 190 1 197] 
#[1 0 194 0 2 0 194 0 4 0 194 0 6 0 194 0 7 0 194 0 10 6 121 0 11 0 194 0 13 6 125 0 14 6 129 0 17 0 194 0 19 0 194 0 20 0 194 0 23 0 194 0 24 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 43 0 194 0 45 0 194 0 46 0 194 0 47 0 194 0 49 0 194 0 50 0 194 0 78 0 194 0 81 0 194 0 90 0 194 0 113 0 194 0 114 0 194 0 125 0 194 0 126 0 194 1 197] 
#[1 0 198 0 2 0 198 0 4 0 198 0 6 0 198 0 7 6 133 0 10 6 137 0 13 6 141 0 19 6 145 0 20 0 198 0 23 0 198 0 24 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 43 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 49 0 198 0 50 6 149 0 78 6 153 0 81 0 198 0 90 0 198 0 113 0 198 0 114 0 198 0 125 0 198 0 126 0 198 1 197] 
#[1 0 202 0 2 0 202 0 4 0 202 0 6 0 202 0 7 6 157 0 23 6 161 0 24 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 43 0 202 0 45 0 202 0 46 0 202 0 47 6 165 0 49 6 169 0 50 0 202 0 90 0 202 0 113 0 202 0 114 0 202 0 125 0 202 0 126 0 202 1 197] 
#[1 0 206 0 2 0 206 0 4 0 206 0 6 0 206 0 7 6 173 0 39 0 206 0 40 0 206 0 41 0 206 0 43 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 90 0 206 0 113 0 206 0 114 0 206 0 125 0 206 0 126 0 206 1 197] 
#[1 0 210 0 2 0 210 0 4 0 210 0 6 0 210 0 7 0 210 0 40 0 210 0 41 0 210 0 43 0 210 0 45 0 210 0 46 6 177 0 47 0 210 0 90 0 210 0 113 0 210 0 114 0 210 0 125 0 210 0 126 0 210 1 197] 
#[1 0 214 0 2 0 214 0 4 0 214 0 6 0 214 0 7 0 214 0 40 0 214 0 41 0 218 0 43 6 181 0 45 0 214 0 46 0 214 0 90 0 214 0 113 0 214 0 114 0 214 0 125 0 214 0 126 0 214 1 197] 
#[1 0 222 0 2 0 222 0 4 0 222 0 6 0 222 0 7 6 185 0 40 0 222 0 41 0 222 0 46 0 222 0 90 0 222 0 113 0 222 0 114 0 222 0 125 0 222 0 126 0 222 1 197] 
#[1 0 226 0 2 0 226 0 4 0 226 0 6 0 226 0 7 0 226 0 41 6 189 0 46 0 226 0 90 0 226 0 113 0 226 0 114 0 226 0 125 0 226 0 126 0 226 1 197] 
#[1 0 230 0 2 0 230 0 4 0 230 0 6 0 230 0 7 0 230 0 41 0 234 0 43 0 230 0 90 0 230 0 113 0 230 0 114 0 230 0 125 0 230 0 126 0 230 1 197] 
#[0 6 193 0 43] 
#[1 0 238 0 2 0 238 0 4 0 238 0 6 0 238 0 7 6 197 0 41 0 238 0 90 0 238 0 113 0 238 0 114 0 238 0 125 0 238 0 126 0 238 1 197] 
#[0 0 242 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 0 246 0 2 0 6 0 7 0 113 0 114 0 125 0 126 1 197] 
#[1 6 201 0 7 6 205 0 113] 
#[0 0 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 0 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 10 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 6 209 0 132 6 213 0 199 6 217 0 200 6 221 0 204 6 221 0 205 6 221 0 206 6 217 1 125 6 217 1 126 6 233 1 196] 
#[0 1 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 1 78 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 6 237 0 18] 
#[0 1 82 0 18] 
#[0 1 86 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 1 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 1 94 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 1 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 1 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 1 106 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 1 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 1 114 1 197] 
#[0 1 118 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 0 109 0 68 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 0 129 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 6 241 0 189 6 241 0 192 6 241 0 193 6 241 0 194 6 241 0 196 6 241 0 197 1 141 0 198 6 241 0 201 6 241 0 215 6 241 0 216 6 241 0 217 6 241 0 218 6 241 0 221 6 241 0 222 6 241 0 224 6 241 0 225 6 241 0 226 6 241 0 231 6 241 0 233 6 241 0 234 6 241 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 6 241 1 27 6 241 1 28 6 241 1 38 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196 1 122 1 197] 
#[0 1 126 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 130 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 134 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 195 1 196 1 197] 
#[1 1 166 0 3 1 166 0 127 1 166 0 129 6 245 1 72] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 6 249 0 127] 
#[1 6 253 0 1 7 1 0 10 7 5 0 74 7 9 1 76 7 13 1 119] 
#[1 7 17 0 4 7 21 0 5 3 245 0 25 7 25 0 52 3 253 0 75 4 1 0 95 4 5 0 112 2 65 0 116 4 9 0 117 7 33 0 119 7 37 0 120 7 29 0 132 4 29 0 133 4 21 0 142 4 25 0 143 4 29 0 144 4 29 0 145 4 29 0 146 4 25 0 147 4 25 0 255 4 25 1 1 4 25 1 6 4 25 1 10 7 33 1 45 7 37 1 46 4 25 1 120 4 25 1 121 7 41 1 196] 
#[0 5 65 0 1] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 59 0 69 0 73 0 78 0 80 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 6 205 0 113 0 0 1 197] 
#[0 0 0 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 7 45 0 189 7 45 0 192 7 45 0 193 7 45 0 194 7 45 0 196 7 45 0 197 1 141 0 198 7 45 0 201 7 45 0 215 7 45 0 216 7 45 0 217 7 45 0 218 7 45 0 221 7 45 0 222 7 45 0 224 7 45 0 225 7 45 0 226 7 45 0 231 7 45 0 233 7 45 0 234 7 45 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196 1 174 1 197] 
#[0 1 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 0 0 1 197] 
#[0 1 182 1 197] 
#[0 0 0 1 197] 
#[1 4 185 0 3 4 189 0 69 2 65 0 116 7 49 0 132 7 53 1 17 4 201 1 18 4 205 1 196] 
#[1 0 50 0 3 0 50 0 5 7 57 0 67 0 50 0 116 0 50 1 196] 
#[1 7 61 0 57 7 65 0 58 2 109 0 67 7 69 0 74 7 73 0 84 7 77 0 85 7 81 0 86 7 85 0 107 7 105 1 140 7 93 1 178 7 97 1 181 7 101 1 182 7 105 1 188 7 109 1 189] 
#[1 2 65 0 116 7 113 0 132] 
#[1 4 225 0 3 7 117 0 22 7 121 0 25 4 237 0 57 2 101 0 58 7 125 0 62 7 129 0 63 2 109 0 67 4 245 0 74 7 133 0 77 2 125 0 82 1 141 0 84 2 129 0 86 2 133 0 105 0 177 0 107 7 137 0 197 1 141 0 198 7 141 0 201 7 145 0 239 7 149 1 2 7 153 1 15 7 157 1 28 7 161 1 40 7 165 1 118 7 169 1 127 7 173 1 140 7 177 1 145 7 181 1 151 7 185 1 177 7 189 1 196] 
#[1 7 193 0 1 7 197 0 25 2 65 0 116 7 201 0 132] 
#[1 5 65 0 1 5 69 0 3 5 73 0 25 2 65 0 116 5 97 0 119 7 205 0 132 5 81 1 29 5 85 1 30 5 89 1 31 5 93 1 32 5 97 1 36 5 85 1 37 5 97 1 45] 
#[1 2 65 0 116 7 209 0 132] 
#[1 2 65 0 116 7 213 0 132 7 217 1 146] 
#[1 2 65 0 116 7 221 0 132] 
#[0 1 186 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 190 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 194 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 198 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 202 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 1 206 0 1 1 206 0 3 1 206 0 5 1 206 0 7 1 206 0 34 1 206 0 35 1 206 0 36 1 206 0 37 1 206 0 38 1 206 0 48 1 206 0 52 1 206 0 53 1 206 0 54 1 206 0 57 1 206 0 58 1 206 0 60 1 206 0 61 0 15 0 62 1 206 0 64 1 206 0 65 1 206 0 67 0 15 0 68 1 206 0 70 1 206 0 72 1 206 0 74 1 206 0 76 0 15 0 77 0 15 0 82 1 206 0 84 0 15 0 86 1 206 0 87 1 206 0 88 1 206 0 94 1 206 0 98 1 206 0 99 1 206 0 101 1 206 0 102 1 206 0 103 1 206 0 104 0 15 0 105 1 206 0 106 1 206 0 107 1 206 0 108 1 206 0 109 1 206 0 110 1 206 0 111 1 206 0 116 1 206 0 119 1 206 0 120 1 206 0 121 1 206 0 123 1 206 0 124 1 206 0 127 1 206 1 196 0 15 1 197] 
#[1 1 214 0 1 1 214 0 3 1 214 0 5 1 214 0 7 1 214 0 34 1 214 0 35 1 214 0 36 1 214 0 37 1 214 0 38 1 214 0 48 1 214 0 52 1 214 0 53 1 214 0 54 1 214 0 57 1 214 0 58 1 214 0 60 1 214 0 61 0 19 0 62 1 214 0 64 1 214 0 65 1 214 0 67 0 19 0 68 1 214 0 70 1 214 0 72 1 214 0 74 1 214 0 76 0 19 0 77 0 19 0 82 1 214 0 84 0 19 0 86 1 214 0 87 1 214 0 88 1 214 0 94 1 214 0 98 1 214 0 99 1 214 0 101 1 214 0 102 1 214 0 103 1 214 0 104 0 19 0 105 1 214 0 106 1 214 0 107 1 214 0 108 1 214 0 109 1 214 0 110 1 214 0 111 1 214 0 116 1 214 0 119 1 214 0 120 1 214 0 121 1 214 0 123 1 214 0 124 1 214 0 127 1 214 1 196 0 19 1 197] 
#[1 1 222 0 1 1 222 0 3 1 222 0 5 1 222 0 7 1 222 0 34 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 38 1 222 0 48 1 222 0 52 1 222 0 53 1 222 0 54 1 222 0 57 1 222 0 58 1 222 0 60 1 222 0 61 0 23 0 62 1 222 0 64 1 222 0 65 1 222 0 67 0 23 0 68 1 222 0 70 1 222 0 72 1 222 0 74 1 222 0 76 0 23 0 77 0 23 0 82 1 222 0 84 0 23 0 86 1 222 0 87 1 222 0 88 1 222 0 94 1 222 0 98 1 222 0 99 1 222 0 101 1 222 0 102 1 222 0 103 1 222 0 104 0 23 0 105 1 222 0 106 1 222 0 107 1 222 0 108 1 222 0 109 1 222 0 110 1 222 0 111 1 222 0 116 1 222 0 119 1 222 0 120 1 222 0 121 1 222 0 123 1 222 0 124 1 222 0 127 1 222 1 196 0 23 1 197] 
#[0 1 230 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 7 1 234 0 34 1 234 0 35 1 234 0 36 1 234 0 37 1 234 0 38 1 234 0 48 1 234 0 52 1 234 0 53 1 234 0 54 1 234 0 57 1 234 0 58 1 234 0 60 1 234 0 61 0 27 0 62 1 234 0 64 1 234 0 65 1 234 0 67 0 27 0 68 1 234 0 70 1 234 0 72 1 234 0 74 1 234 0 76 0 27 0 77 0 27 0 82 1 234 0 84 0 27 0 86 1 234 0 87 1 234 0 88 1 234 0 94 1 234 0 98 1 234 0 99 1 234 0 101 1 234 0 102 1 234 0 103 1 234 0 104 0 27 0 105 1 234 0 106 1 234 0 107 1 234 0 108 1 234 0 109 1 234 0 110 1 234 0 111 1 234 0 116 1 234 0 119 1 234 0 120 1 234 0 121 1 234 0 123 1 234 0 124 1 234 0 127 1 234 1 196 0 27 1 197] 
#[1 0 31 0 1 0 31 0 3 0 31 0 5 0 31 0 7 0 31 0 34 0 31 0 35 0 31 0 36 0 31 0 37 0 31 0 38 0 31 0 48 0 31 0 52 0 31 0 53 0 31 0 54 0 31 0 57 0 31 0 58 0 31 0 60 0 31 0 61 0 35 0 62 0 31 0 64 0 31 0 65 0 31 0 67 0 35 0 68 0 31 0 70 0 31 0 72 0 31 0 74 0 31 0 76 0 35 0 77 0 35 0 82 0 31 0 84 0 35 0 86 0 31 0 87 0 31 0 88 0 31 0 94 0 31 0 98 0 31 0 99 0 31 0 101 0 31 0 102 0 31 0 103 0 31 0 104 0 35 0 105 0 31 0 106 0 31 0 107 0 31 0 108 0 31 0 109 0 31 0 110 0 31 0 111 0 31 0 116 0 31 0 119 0 31 0 120 0 31 0 121 0 31 0 123 0 31 0 124 0 31 0 127 0 31 1 196 0 35 1 197] 
#[0 0 0 1 197] 
#[0 1 254 1 197] 
#[0 2 2 1 197] 
#[0 2 6 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 2 97 0 57 2 101 0 58 0 93 0 60 0 97 0 61 2 105 0 62 0 101 0 64 0 105 0 65 2 109 0 67 2 17 0 70 0 117 0 72 2 117 0 74 0 125 0 76 7 225 0 77 2 125 0 82 1 141 0 84 2 129 0 86 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 2 133 0 105 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 7 245 0 189 7 245 0 192 7 245 0 193 7 245 0 194 7 245 0 197 1 141 0 198 7 245 0 201 7 245 0 215 7 245 0 216 7 245 0 217 7 245 0 218 7 245 0 221 7 245 0 222 7 245 0 224 7 245 0 225 7 245 0 226 7 245 0 231 7 245 0 233 7 245 0 234 7 245 0 238 7 245 0 239 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 7 245 1 2 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 7 245 1 15 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 7 245 1 118 7 245 1 127 7 245 1 140 7 245 1 145 7 245 1 151 7 245 1 158 7 245 1 159 7 245 1 177 7 245 1 193 3 29 1 196 2 10 1 197] 
#[0 2 14 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 39 0 1 0 39 0 3 0 39 0 5 0 39 0 7 0 39 0 34 0 39 0 35 0 39 0 36 0 39 0 37 0 39 0 38 0 39 0 48 0 39 0 52 0 39 0 53 0 39 0 54 0 39 0 57 0 39 0 58 0 39 0 60 0 39 0 61 0 39 0 62 0 39 0 64 0 39 0 65 0 39 0 67 2 22 0 68 0 39 0 70 0 39 0 72 0 39 0 74 0 39 0 76 0 39 0 77 0 39 0 82 0 39 0 84 0 39 0 86 0 39 0 87 0 39 0 88 0 39 0 94 0 39 0 98 0 39 0 99 0 39 0 101 0 39 0 102 0 39 0 103 0 39 0 104 0 39 0 105 0 39 0 106 0 39 0 107 0 39 0 108 0 39 0 109 0 39 0 110 0 39 0 111 0 39 0 116 0 39 0 119 0 39 0 120 0 39 0 121 0 39 0 123 0 39 0 124 0 39 0 127 0 39 1 196 0 39 1 197] 
#[0 2 26 1 197] 
#[1 2 105 0 62 8 5 0 77 2 125 0 82 2 129 0 86 2 133 0 105 8 25 1 118 8 25 1 127 8 25 1 145 8 25 1 151 8 25 1 162 8 25 1 163 8 25 1 177 8 25 1 193 2 30 1 197] 
#[0 2 34 0 62 0 77 0 82 0 86 0 105 1 197] 
#[1 0 43 0 62 2 38 0 68 0 43 0 77 0 43 0 82 0 43 0 86 0 43 0 105 0 43 1 197] 
#[0 2 46 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 2 97 0 57 2 101 0 58 0 93 0 60 0 97 0 61 7 125 0 62 0 101 0 64 0 105 0 65 2 109 0 67 8 41 0 68 2 17 0 70 0 117 0 72 2 117 0 74 0 125 0 76 2 121 0 77 2 125 0 82 1 141 0 84 2 129 0 86 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 2 133 0 105 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 8 57 0 189 8 57 0 192 8 57 0 193 8 57 0 194 8 57 0 197 1 141 0 198 8 57 0 201 8 57 0 215 8 57 0 216 8 57 0 217 8 57 0 218 8 57 0 221 8 57 0 222 8 57 0 224 8 57 0 225 8 57 0 226 8 57 0 231 8 57 0 233 8 57 0 234 8 57 0 238 8 57 0 239 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 8 57 1 2 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 8 57 1 15 1 1 1 16 8 57 1 28 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 8 57 1 118 8 57 1 127 8 57 1 140 8 57 1 145 8 49 1 151 8 57 1 159 8 57 1 166 8 57 1 170 8 57 1 171 8 57 1 173 8 57 1 175 8 57 1 176 8 57 1 177 3 29 1 196 2 50 1 197] 
#[0 2 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 2 58 1 197] 
#[1 2 62 0 4 7 125 0 62 8 69 0 68 7 133 0 77 2 125 0 82 2 129 0 86 2 133 0 105 8 81 1 28 8 81 1 118 8 81 1 127 8 81 1 145 8 81 1 151 8 81 1 163 8 81 1 169 8 81 1 172 8 81 1 174 8 81 1 175 8 81 1 176 8 81 1 177 2 62 1 197] 
#[0 2 66 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 2 70 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 2 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 2 78 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 2 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 2 86 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[1 2 90 0 1 2 90 0 3 2 90 0 5 2 90 0 7 2 90 0 34 2 90 0 35 2 90 0 36 2 90 0 37 2 90 0 38 2 90 0 48 2 90 0 52 2 90 0 53 2 90 0 54 2 90 0 57 2 90 0 58 2 90 0 60 2 90 0 61 0 47 0 62 2 90 0 64 2 90 0 65 2 90 0 67 0 47 0 68 2 90 0 70 2 90 0 72 2 90 0 74 2 90 0 76 0 47 0 77 0 47 0 82 2 90 0 84 0 47 0 86 2 90 0 87 2 90 0 88 2 90 0 94 2 90 0 98 2 90 0 99 2 90 0 101 2 90 0 102 2 90 0 103 2 90 0 104 0 47 0 105 2 90 0 106 2 90 0 107 2 90 0 108 2 90 0 109 2 90 0 110 2 90 0 111 2 90 0 116 2 90 0 119 2 90 0 120 2 90 0 121 2 90 0 123 2 90 0 124 2 90 0 127 2 90 1 196 0 47 1 197] 
#[1 2 98 0 1 2 98 0 3 2 98 0 5 2 98 0 7 2 98 0 34 2 98 0 35 2 98 0 36 2 98 0 37 2 98 0 38 2 98 0 48 2 98 0 52 2 98 0 53 2 98 0 54 2 98 0 57 2 98 0 58 2 98 0 60 2 98 0 61 0 51 0 62 2 98 0 64 2 98 0 65 2 98 0 67 0 51 0 68 2 98 0 70 2 98 0 72 2 98 0 74 2 98 0 76 0 51 0 77 0 51 0 82 2 98 0 84 0 51 0 86 2 98 0 87 2 98 0 88 2 98 0 94 2 98 0 98 2 98 0 99 2 98 0 101 2 98 0 102 2 98 0 103 2 98 0 104 0 51 0 105 2 98 0 106 2 98 0 107 2 98 0 108 2 98 0 109 2 98 0 110 2 98 0 111 2 98 0 116 2 98 0 119 2 98 0 120 2 98 0 121 2 98 0 123 2 98 0 124 2 98 0 127 2 98 1 196 0 51 1 197] 
#[1 2 106 0 1 2 106 0 3 2 106 0 5 2 106 0 7 2 106 0 34 2 106 0 35 2 106 0 36 2 106 0 37 2 106 0 38 2 106 0 48 2 106 0 52 2 106 0 53 2 106 0 54 2 106 0 57 2 106 0 58 2 106 0 60 2 106 0 61 0 55 0 62 2 106 0 64 2 106 0 65 2 106 0 67 0 55 0 68 2 106 0 70 2 106 0 72 2 106 0 74 2 106 0 76 0 55 0 77 0 55 0 82 2 106 0 84 0 55 0 86 2 106 0 87 2 106 0 88 2 106 0 94 2 106 0 98 2 106 0 99 2 106 0 101 2 106 0 102 2 106 0 103 2 106 0 104 0 55 0 105 2 106 0 106 2 106 0 107 2 106 0 108 2 106 0 109 2 106 0 110 2 106 0 111 2 106 0 116 2 106 0 119 2 106 0 120 2 106 0 121 2 106 0 123 2 106 0 124 2 106 0 127 2 106 1 196 0 55 1 197] 
#[1 2 114 0 1 2 114 0 3 2 114 0 5 2 114 0 7 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 38 2 114 0 48 2 114 0 52 2 114 0 53 2 114 0 54 2 114 0 57 2 114 0 58 2 114 0 60 2 114 0 61 0 59 0 62 2 114 0 64 2 114 0 65 2 114 0 67 2 114 0 70 2 114 0 72 2 114 0 74 2 114 0 76 0 59 0 77 0 59 0 82 2 114 0 84 0 59 0 86 2 114 0 87 2 114 0 88 2 114 0 94 2 114 0 98 2 114 0 99 2 114 0 101 2 114 0 102 2 114 0 103 2 114 0 104 0 59 0 105 2 114 0 106 2 114 0 107 2 114 0 108 2 114 0 109 2 114 0 110 2 114 0 111 2 114 0 116 2 114 0 119 2 114 0 120 2 114 0 121 2 114 0 123 2 114 0 124 2 114 0 127 2 114 1 196 0 59 1 197] 
#[1 6 253 0 1 7 1 0 10 8 93 0 74 2 65 0 116 8 97 0 132 8 101 1 76 7 13 1 119] 
#[1 3 33 0 1 0 38 0 2 8 105 0 3 8 109 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 3 177 0 112 2 65 0 116 3 77 0 119 3 81 0 120 8 113 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 8 117 0 242 3 221 0 243 3 225 0 244 3 229 0 245 3 77 1 45 3 81 1 46 3 85 1 76 8 121 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 8 121 1 104 8 121 1 105 3 105 1 106 3 105 1 108 8 125 1 196] 
#[1 8 129 0 1 8 133 0 4 8 137 0 5 3 45 0 10 8 141 0 87 4 9 0 117 7 33 0 119 7 37 0 120 8 145 0 133 8 145 0 144 8 145 0 145 8 145 0 146 7 33 1 45 7 37 1 46 8 149 1 76 8 153 1 95 8 157 1 96 8 161 1 97 8 161 1 109 8 161 1 111 8 161 1 115 8 161 1 116 8 161 1 117] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 8 193 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 8 189 1 100 8 193 1 101 3 93 1 102 3 97 1 103 8 193 1 104 8 193 1 105 3 105 1 106 3 105 1 108] 
#[1 2 65 0 116 8 197 0 132 8 201 1 77 8 205 1 78] 
#[1 8 209 0 1 3 37 0 3 3 41 0 5 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 8 213 1 87 8 213 1 88 8 213 1 89 8 213 1 90 8 213 1 91 3 125 1 92 3 129 1 93 8 213 1 94 8 213 1 98 8 213 1 99 8 213 1 106 8 213 1 108] 
#[1 8 209 0 1 3 37 0 3 3 41 0 5 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 8 217 1 87 8 217 1 88 8 217 1 89 8 217 1 90 8 217 1 91 3 125 1 92 3 129 1 93 8 217 1 94 8 217 1 98 8 217 1 99 8 217 1 106 8 217 1 108] 
#[1 8 221 0 1 3 45 0 10 8 225 1 76] 
#[0 2 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[1 2 65 0 116 8 229 0 132 8 233 1 107] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 5 2 130 0 6 2 130 0 7 2 130 0 8 2 130 0 10 2 130 0 11 2 130 0 13 2 130 0 14 2 130 0 17 2 130 0 18 2 130 0 19 2 130 0 20 2 134 0 21 2 130 0 22 2 130 0 23 2 130 0 24 2 130 0 25 2 130 0 26 2 130 0 34 2 130 0 36 2 130 0 39 2 130 0 40 2 130 0 41 2 130 0 43 2 130 0 44 2 130 0 45 2 130 0 46 2 130 0 47 2 130 0 49 2 130 0 50 2 130 0 59 2 130 0 78 2 130 0 80 2 130 0 81 2 130 0 90 2 130 0 91 2 130 0 92 2 130 0 93 2 130 0 96 2 130 0 113 2 130 0 114 2 130 0 117 2 130 0 119 2 130 0 120 2 130 0 125 2 130 0 126 2 130 1 197] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 2 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 8 237 0 1] 
#[0 0 0 1 197] 
#[1 2 146 0 2 2 146 0 3 2 146 0 4 2 146 0 5 2 146 0 6 2 146 0 7 2 146 0 8 2 146 0 10 2 146 0 11 2 146 0 13 2 146 0 14 2 146 0 17 2 146 0 18 2 146 0 19 2 146 0 20 2 146 0 22 2 146 0 23 2 146 0 24 2 146 0 25 2 146 0 26 2 146 0 34 2 146 0 36 2 146 0 39 2 146 0 40 2 146 0 41 2 146 0 43 2 146 0 44 0 63 0 45 2 146 0 46 2 146 0 47 2 146 0 49 2 146 0 50 2 146 0 59 2 146 0 78 2 146 0 81 2 146 0 90 2 146 0 91 2 146 0 92 2 146 0 93 2 146 0 96 2 146 0 113 2 146 0 114 2 146 0 117 2 146 0 119 2 146 0 120 2 146 0 125 2 146 0 126 2 146 1 197] 
#[1 2 150 0 2 2 150 0 3 2 150 0 4 2 150 0 5 2 150 0 6 2 150 0 7 2 150 0 8 2 150 0 10 2 150 0 11 2 150 0 13 2 150 0 14 2 150 0 17 2 150 0 18 2 150 0 19 2 150 0 20 2 150 0 22 2 150 0 23 2 150 0 24 2 150 0 25 2 150 0 26 2 150 0 34 2 150 0 36 0 67 0 39 2 150 0 40 2 150 0 41 2 150 0 43 2 150 0 44 2 150 0 45 2 150 0 46 2 150 0 47 2 150 0 49 2 150 0 50 2 150 0 59 2 150 0 78 2 150 0 81 2 150 0 90 2 150 0 91 2 150 0 92 2 150 0 93 2 150 0 96 2 150 0 113 2 150 0 114 2 150 0 117 2 150 0 119 2 150 0 120 2 150 0 125 2 150 0 126 2 150 1 197] 
#[0 2 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[1 2 158 0 2 2 158 0 3 2 158 0 4 0 71 0 5 2 158 0 6 2 158 0 7 2 158 0 8 2 158 0 10 2 158 0 11 2 158 0 13 2 158 0 14 2 158 0 17 2 158 0 18 2 158 0 19 2 158 0 20 2 158 0 22 2 158 0 23 2 158 0 24 2 158 0 25 2 158 0 26 2 158 0 34 2 158 0 36 2 158 0 39 2 158 0 40 2 158 0 41 2 158 0 43 2 158 0 44 2 158 0 45 2 158 0 46 2 158 0 47 2 158 0 49 2 158 0 50 2 158 0 59 2 158 0 78 2 158 0 81 2 158 0 90 2 158 0 91 2 158 0 92 2 158 0 93 2 158 0 96 2 158 0 113 2 158 0 114 2 158 0 117 2 158 0 119 2 158 0 120 2 158 0 125 2 158 0 126 8 249 0 223 2 158 1 197] 
#[0 2 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 2 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[1 0 46 0 2 0 46 0 3 0 46 0 4 0 46 0 5 0 46 0 6 0 46 0 7 0 46 0 8 0 46 0 10 0 46 0 11 0 46 0 13 0 46 0 14 0 46 0 17 0 46 0 18 0 46 0 19 0 46 0 20 0 46 0 22 0 46 0 23 0 46 0 24 0 46 0 25 0 46 0 26 0 46 0 34 0 46 0 36 0 46 0 39 0 46 0 40 0 46 0 41 0 46 0 43 0 46 0 44 0 46 0 45 0 46 0 46 0 46 0 47 0 46 0 49 0 46 0 50 0 46 0 59 0 46 0 78 0 46 0 80 0 46 0 81 0 46 0 90 0 46 0 91 0 46 0 92 0 46 0 93 0 46 0 96 0 46 0 113 0 46 0 114 0 46 0 117 0 46 0 119 0 46 0 120 0 46 0 125 0 46 0 126 8 253 0 223 0 46 1 197] 
#[0 9 1 0 21] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[1 9 5 0 4 7 21 0 5 3 245 0 25 7 25 0 52 3 253 0 75 4 1 0 95 9 9 0 112 2 65 0 116 4 9 0 117 7 33 0 119 7 37 0 120 9 13 0 132 9 17 0 133 4 21 0 142 4 25 0 143 9 17 0 144 9 17 0 145 9 17 0 146 4 25 0 147 9 21 0 207 9 25 0 208 9 29 0 211 9 29 0 213 4 25 0 255 4 25 1 1 4 25 1 6 4 25 1 10 7 33 1 45 7 37 1 46 4 25 1 120 4 25 1 121 9 37 1 196] 
#[1 0 33 0 1 3 169 0 3 3 173 0 5 9 41 0 6 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 9 45 0 112 4 93 0 113 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 3 181 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 4 97 0 138 9 49 0 139 4 105 0 140 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 4 109 0 185 4 109 0 186 3 189 0 204 3 189 0 205 3 189 0 206 9 53 0 209 9 57 0 210 9 61 0 212 9 61 0 213 9 65 0 214 1 1 0 240 4 109 0 248 1 209 0 249 1 213 0 252 4 109 0 253 1 1 1 3 4 109 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 3 233 1 196] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 9 69 0 132 9 73 0 204 9 73 0 205 9 73 0 206] 
#[1 0 102 0 1 0 75 0 2 0 75 0 4 0 102 0 5 0 75 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 79 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 47 0 102 0 49 0 102 0 50 0 102 0 51 0 102 0 78 0 102 0 81 0 75 0 113 0 102 0 123 0 102 0 124 9 81 0 148 0 102 1 195 0 102 1 196] 
#[1 9 85 0 2 6 205 0 113] 
#[1 2 218 0 2 2 218 0 4 2 218 0 6 9 77 0 22 2 218 0 113 9 89 0 148] 
#[0 2 222 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 2 226 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 2 230 0 2 0 113] 
#[0 2 234 0 2 0 4 0 6 0 113] 
#[0 2 238 0 2] 
#[0 9 93 0 2] 
#[0 2 242 0 2] 
#[1 2 246 0 2 9 97 0 113] 
#[0 2 250 0 2] 
#[0 2 254 0 2 0 113] 
#[1 6 253 0 1 5 173 0 3 5 177 0 5 7 1 0 10 3 2 0 41 7 5 0 74 9 129 0 91 9 129 0 92 9 129 0 93 9 113 0 101 3 2 0 114 2 65 0 116 9 117 0 132 9 125 0 204 9 125 0 205 9 125 0 206 7 9 1 76 9 125 1 112 9 129 1 113 7 13 1 119] 
#[1 0 83 0 1 3 6 0 3 3 6 0 4 0 83 0 5 0 83 0 7 3 10 0 8 3 10 0 9 3 10 0 10 3 10 0 11 3 10 0 12 3 10 0 13 3 10 0 14 3 10 0 15 3 10 0 16 3 10 0 17 3 10 0 19 3 10 0 20 3 10 0 21 3 10 0 22 3 10 0 23 3 10 0 24 3 10 0 25 3 10 0 26 3 10 0 27 3 10 0 28 3 10 0 29 3 10 0 30 3 10 0 31 3 10 0 32 3 10 0 33 0 83 0 34 0 83 0 35 0 83 0 36 0 83 0 37 3 6 0 38 3 10 0 39 3 10 0 40 3 10 0 41 3 10 0 42 3 10 0 43 3 10 0 44 3 10 0 45 3 10 0 46 3 10 0 47 3 6 0 48 3 10 0 49 3 10 0 50 3 10 0 51 3 6 0 52 3 6 0 53 3 6 0 54 3 6 0 55 3 6 0 57 3 6 0 58 3 6 0 60 3 6 0 61 3 6 0 62 3 6 0 63 3 6 0 64 3 6 0 65 3 6 0 66 3 6 0 67 3 6 0 68 3 6 0 70 3 6 0 72 3 6 0 74 3 6 0 76 3 6 0 77 3 10 0 78 3 10 0 81 3 6 0 82 3 6 0 84 3 6 0 86 3 6 0 87 3 6 0 88 3 6 0 94 3 6 0 98 3 6 0 99 3 6 0 101 3 6 0 102 3 6 0 103 3 6 0 104 3 6 0 105 3 6 0 106 3 6 0 107 3 6 0 108 3 6 0 109 3 6 0 110 3 6 0 111 3 10 0 113 3 6 0 116 3 6 0 119 3 6 0 120 3 6 0 121 0 83 0 123 0 83 0 124 3 6 0 127 3 10 1 195 0 83 1 196 3 6 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 4 85 0 6 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 4 89 0 112 4 93 0 113 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 4 97 0 138 4 101 0 139 4 105 0 140 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 9 133 0 185 9 133 0 186 1 1 0 240 9 133 0 248 1 209 0 249 1 213 0 252 9 133 0 253 1 1 1 3 9 133 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 9 137 0 133 9 137 0 144 9 137 0 145 9 137 0 146 7 33 1 45 7 37 1 46] 
#[1 4 157 0 1 7 21 0 5 9 141 0 25 4 161 0 74 2 65 0 116 4 9 0 117 7 33 0 119 7 37 0 120 4 165 0 132 9 145 0 133 9 145 0 144 9 145 0 145 9 145 0 146 4 169 0 249 1 213 0 252 7 33 1 45 7 37 1 46 4 173 1 196] 
#[1 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 9 149 0 133 9 149 0 144 9 149 0 145 9 149 0 146 7 33 1 45 7 37 1 46] 
#[1 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 9 153 0 133 9 153 0 144 9 153 0 145 9 153 0 146 7 33 1 45 7 37 1 46] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 9 157 0 185 9 157 0 186 1 1 0 240 9 157 0 248 1 209 0 249 1 213 0 252 9 157 0 253 1 1 1 3 9 157 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 3 14 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[1 0 102 0 1 3 18 0 4 0 102 0 5 0 102 0 7 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 79 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 47 0 102 0 49 0 102 0 50 0 102 0 51 0 102 0 78 0 102 0 81 0 87 0 113 0 102 0 123 0 102 0 124 9 161 0 148 0 102 1 195 0 102 1 196] 
#[0 3 22 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[1 9 165 0 4 9 169 0 113] 
#[0 3 26 0 4 0 113] 
#[1 9 173 0 1 9 177 0 114] 
#[0 3 30 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 3 34 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 3 38 0 4 0 113] 
#[1 0 33 0 1 0 37 0 3 9 181 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 7 45 0 189 7 45 0 192 7 45 0 193 7 45 0 194 7 45 0 196 7 45 0 197 1 141 0 198 7 45 0 201 7 45 0 215 7 45 0 216 7 45 0 217 7 45 0 218 7 45 0 221 7 45 0 222 7 45 0 224 7 45 0 225 7 45 0 226 7 45 0 231 7 45 0 233 7 45 0 234 7 45 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 3 42 0 4 0 113] 
#[0 3 46 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 3 50 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 3 54 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[1 0 91 0 1 1 146 0 5 1 146 0 7 1 146 0 8 1 146 0 9 1 146 0 10 1 146 0 11 1 146 0 12 1 146 0 13 1 146 0 14 1 146 0 15 1 146 0 16 1 146 0 17 1 146 0 19 1 146 0 20 1 146 0 21 1 146 0 22 1 146 0 23 1 146 0 24 1 146 0 25 1 146 0 26 1 146 0 27 1 146 0 28 1 146 0 29 1 146 0 30 1 146 0 31 1 146 0 32 1 146 0 33 1 146 0 34 1 146 0 35 1 146 0 36 1 146 0 37 1 146 0 39 1 146 0 40 1 146 0 41 1 146 0 42 1 146 0 43 1 146 0 44 1 146 0 45 1 146 0 46 1 146 0 47 1 146 0 49 1 146 0 50 1 146 0 51 1 146 0 78 1 146 0 81 1 146 0 113 3 58 0 114 1 146 0 123 1 146 0 124 1 146 1 195 1 146 1 196] 
#[1 0 95 0 1 1 150 0 5 1 150 0 7 1 150 0 8 1 150 0 9 1 150 0 10 1 150 0 11 1 150 0 12 1 150 0 13 1 150 0 14 1 150 0 15 1 150 0 16 1 150 0 17 1 150 0 19 1 150 0 20 1 150 0 21 1 150 0 22 1 150 0 23 1 150 0 24 1 150 0 25 1 150 0 26 1 150 0 27 1 150 0 28 1 150 0 29 1 150 0 30 1 150 0 31 1 150 0 32 1 150 0 33 1 150 0 34 1 150 0 35 1 150 0 36 1 150 0 37 1 150 0 39 1 150 0 40 1 150 0 41 1 150 0 42 1 150 0 43 1 150 0 44 1 150 0 45 1 150 0 46 1 150 0 47 1 150 0 49 1 150 0 50 1 150 0 51 1 150 0 78 1 150 0 81 1 150 0 113 3 62 0 114 1 150 0 123 1 150 0 124 1 150 1 195 1 150 1 196] 
#[0 3 66 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 3 70 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[1 6 253 0 1 7 21 0 5 7 1 0 10 7 5 0 74 9 185 0 75 9 189 0 95 4 9 0 117 7 33 0 119 7 37 0 120 9 193 0 133 9 193 0 144 9 193 0 145 9 193 0 146 7 33 1 45 7 37 1 46 7 9 1 76 7 13 1 119] 
#[0 3 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 9 197 0 185 9 197 0 186 1 1 0 240 9 197 0 248 1 209 0 249 1 213 0 252 9 197 0 253 1 1 1 3 9 197 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 3 78 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 112 0 113 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[1 9 201 0 6 4 93 0 113 9 205 0 139] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 9 209 0 6 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 4 89 0 112 9 213 0 113 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 9 217 0 140 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 9 221 0 185 9 221 0 186 1 1 0 240 9 221 0 248 1 209 0 249 1 213 0 252 9 221 0 253 1 1 1 3 9 221 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 3 82 0 6 0 113] 
#[0 3 86 0 6 0 113] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 3 185 0 185 3 185 0 186 3 185 0 188 1 1 0 240 3 185 0 248 1 209 0 249 1 213 0 252 3 185 0 253 1 1 1 3 3 185 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 4 161 0 74] 
#[0 0 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 170 0 2 0 170 0 4 0 170 0 6 0 170 0 7 0 170 0 8 0 170 0 10 0 170 0 11 0 170 0 13 0 170 0 14 0 170 0 17 0 170 0 19 0 170 0 20 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 0 170 0 34 6 73 0 35 0 170 0 36 6 77 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 47 0 170 0 49 0 170 0 50 6 81 0 51 0 170 0 78 0 170 0 81 0 170 0 90 0 170 0 113 0 170 0 114 0 170 0 125 0 170 0 126 0 170 1 197] 
#[0 3 90 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[1 9 225 0 10 7 5 0 74] 
#[0 3 94 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 3 98 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 3 102 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 3 106 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 3 110 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 3 213 0 241 3 217 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 9 233 0 1 9 237 0 25 2 65 0 116 9 241 0 132] 
#[0 0 106 0 18] 
#[0 9 245 0 18] 
#[1 6 253 0 1 3 45 0 10 7 9 1 76 7 13 1 119] 
#[0 3 114 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[1 9 249 0 7 2 65 0 116 9 253 0 132] 
#[1 10 1 0 4 7 21 0 5 10 5 0 7 3 245 0 25 7 25 0 52 3 253 0 75 4 1 0 95 10 9 0 96 4 9 0 117 7 33 0 119 7 37 0 120 10 13 0 133 10 13 0 144 10 13 0 145 10 13 0 146 10 29 0 255 10 29 1 1 10 29 1 6 10 29 1 10 10 21 1 19 10 25 1 20 10 29 1 21 7 33 1 45 7 37 1 46 10 29 1 120 10 29 1 121 10 33 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 4 117 0 52 0 85 0 57 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 10 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 10 37 0 167 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 5 125 1 196] 
#[1 4 185 0 3 4 189 0 69 10 41 1 17 4 201 1 18 4 205 1 196] 
#[0 3 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 10 45 0 3] 
#[1 10 49 0 69 10 53 0 80 10 57 1 131 10 61 1 133] 
#[1 10 65 0 7 2 65 0 116 10 69 0 132] 
#[0 3 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 3 126 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 10 73 0 109] 
#[1 10 77 0 4 10 81 0 117 10 85 1 41 10 89 1 42] 
#[1 10 93 0 51 3 130 0 73] 
#[0 10 97 0 74] 
#[1 4 185 0 3 4 189 0 69 2 65 0 116 10 101 0 132 10 105 1 17 4 201 1 18 4 205 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 10 109 0 185 10 109 0 186 1 1 0 240 10 109 0 248 1 209 0 249 1 213 0 252 10 109 0 253 1 1 1 3 10 109 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 10 113 0 1 10 117 0 25 2 65 0 116 10 121 0 132] 
#[0 3 134 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 3 138 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 3 142 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 3 146 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 3 150 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 3 154 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 3 158 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 3 162 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 3 166 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 10 125 0 73 10 129 1 33] 
#[1 10 133 0 7 3 170 0 73] 
#[1 3 45 0 10 10 137 0 58 2 109 0 67 10 141 0 74 2 125 0 82 2 133 0 105 2 65 0 116 8 97 0 132 10 145 1 76 10 149 1 118 10 153 1 127 10 157 1 140] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 10 161 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 10 181 0 58 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 10 181 0 84 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 10 165 0 107 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 10 169 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 10 169 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 10 173 0 185 10 173 0 186 10 173 0 188 10 177 0 197 10 181 0 198 10 185 0 219 1 1 0 240 10 173 0 248 1 209 0 249 1 213 0 252 10 173 0 253 1 1 1 3 10 173 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 10 189 0 1] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 10 193 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 10 197 0 1 2 65 0 116 10 201 0 132] 
#[0 10 205 0 1] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 10 209 0 185 10 209 0 186 10 209 0 188 1 1 0 240 10 209 0 248 1 209 0 249 1 213 0 252 10 209 0 253 1 1 1 3 10 209 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 10 213 0 185 10 213 0 186 1 1 0 240 10 213 0 248 1 209 0 249 1 213 0 252 10 213 0 253 1 1 1 3 10 213 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 10 217 0 4 2 65 0 116 10 221 0 117 10 233 0 132 10 225 1 34 10 229 1 35 10 233 1 37] 
#[0 10 237 0 51] 
#[0 3 174 0 4 0 73 0 113] 
#[1 10 125 0 73 10 241 1 33] 
#[1 3 178 0 73 10 245 0 113] 
#[0 3 182 0 73] 
#[0 3 186 0 73] 
#[0 10 249 0 7] 
#[0 3 190 0 73 0 113] 
#[0 3 194 0 7] 
#[0 10 253 0 100] 
#[1 5 137 0 5 5 141 0 21] 
#[1 5 133 0 1 0 134 0 2 0 134 0 3 0 134 0 4 5 233 0 5 0 134 0 6 0 134 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 19 0 134 0 20 5 237 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 49 0 134 0 50 0 134 0 51 0 134 0 78 0 134 0 81 0 134 0 90 0 134 0 113 0 134 0 114 0 213 0 123 0 6 0 124 0 134 0 125 0 134 0 126 5 245 0 149 0 253 0 150 11 1 0 161 0 134 1 195 5 149 1 196 0 134 1 197] 
#[0 3 198 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 195 1 197] 
#[0 7 5 0 74] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 11 5 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 11 9 0 185 11 9 0 186 11 9 0 188 1 1 0 240 11 9 0 248 1 209 0 249 1 213 0 252 11 9 0 253 1 1 1 3 11 9 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 11 13 0 2 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 11 17 0 112 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 11 21 0 162 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 11 25 0 185 11 25 0 186 1 1 0 240 11 25 0 248 1 209 0 249 1 213 0 252 11 25 0 253 1 1 1 3 11 25 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 11 29 0 185 11 29 0 186 11 29 0 188 1 1 0 240 11 29 0 248 1 209 0 249 1 213 0 252 11 29 0 253 1 1 1 3 11 29 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 11 33 0 117] 
#[0 3 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 11 37 0 10 11 41 1 80] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 11 45 0 185 11 45 0 186 11 45 0 188 1 1 0 240 11 45 0 248 1 209 0 249 1 213 0 252 11 45 0 253 1 1 1 3 11 45 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 11 49 0 7 6 205 0 113] 
#[1 0 33 0 1 0 37 0 3 11 53 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 4 45 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 11 57 0 56 11 61 0 71 11 65 0 235 11 69 0 236] 
#[0 3 206 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[1 11 73 0 4 7 21 0 5 11 77 0 112 2 65 0 116 4 9 0 117 7 33 0 119 7 37 0 120 9 229 0 132 11 81 0 133 11 81 0 144 11 81 0 145 11 81 0 146 9 21 0 207 9 25 0 208 9 29 0 211 9 29 0 213 7 33 1 45 7 37 1 46 11 85 1 196] 
#[1 5 173 0 3 5 177 0 5 11 89 0 6 3 177 0 112 4 93 0 113 2 65 0 116 9 229 0 132 11 93 0 139 3 189 0 204 3 189 0 205 3 189 0 206 9 53 0 209 9 57 0 210 9 61 0 212 9 61 0 213 9 65 0 214 8 125 1 196] 
#[1 3 210 0 7 9 77 0 22 3 210 0 90 3 210 0 113 11 97 0 148] 
#[1 11 101 0 7 11 105 0 113] 
#[0 3 214 0 7 0 113] 
#[1 9 77 0 22 11 109 0 148] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 11 113 0 132 11 117 0 204 11 117 0 205 11 117 0 206 11 121 1 123 11 125 1 124] 
#[0 3 218 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 11 129 0 185 11 129 0 186 11 129 0 188 1 1 0 240 11 129 0 248 1 209 0 249 1 213 0 252 11 129 0 253 1 1 1 3 11 129 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 11 133 0 185 11 133 0 186 11 133 0 188 1 1 0 240 11 133 0 248 1 209 0 249 1 213 0 252 11 133 0 253 1 1 1 3 11 133 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 11 137 0 185 11 137 0 186 1 1 0 240 11 137 0 248 1 209 0 249 1 213 0 252 11 137 0 253 1 1 1 3 11 137 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 3 222 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 11 145 0 189 11 145 0 192 11 145 0 193 11 145 0 194 11 145 0 201 11 145 0 215 11 145 0 216 11 145 0 217 11 145 0 218 11 145 0 221 11 145 0 222 11 145 0 224 11 145 0 225 11 145 0 226 11 145 0 231 11 145 0 232 11 145 0 233 11 145 0 234 11 145 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 11 149 0 13] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 11 153 0 185 11 153 0 186 11 153 0 188 1 1 0 240 11 153 0 248 1 209 0 249 1 213 0 252 11 153 0 253 1 1 1 3 11 153 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 11 157 0 185 11 157 0 186 11 157 0 188 1 1 0 240 11 157 0 248 1 209 0 249 1 213 0 252 11 157 0 253 1 1 1 3 11 157 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 11 161 0 117] 
#[1 5 133 0 1 11 165 0 5 11 169 0 117 0 213 0 123 0 6 0 124 11 173 0 149 0 253 0 150 11 177 0 161 11 181 0 166 5 149 1 196] 
#[0 3 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 3 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 5 133 0 1 3 234 0 2 3 234 0 3 3 234 0 4 11 185 0 5 3 234 0 6 3 234 0 7 3 234 0 8 3 234 0 9 3 234 0 10 3 234 0 11 3 234 0 12 3 234 0 13 3 234 0 14 3 234 0 15 3 234 0 16 3 234 0 17 3 234 0 19 3 234 0 20 11 189 0 21 3 234 0 22 3 234 0 23 3 234 0 24 3 234 0 25 3 234 0 26 3 234 0 27 3 234 0 28 3 234 0 29 3 234 0 30 3 234 0 31 3 234 0 32 3 234 0 33 3 234 0 34 3 234 0 35 3 234 0 36 3 234 0 37 3 234 0 39 3 234 0 40 3 234 0 41 3 234 0 42 3 234 0 43 3 234 0 44 3 234 0 45 3 234 0 46 3 234 0 47 3 234 0 49 3 234 0 50 3 234 0 51 3 234 0 78 3 234 0 81 3 234 0 90 3 234 0 113 3 234 0 114 0 213 0 123 0 6 0 124 3 234 0 125 3 234 0 126 11 193 0 149 0 253 0 150 11 197 0 161 11 201 0 165 3 234 1 195 5 149 1 196 3 234 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 11 205 0 185 11 205 0 186 11 205 0 188 1 1 0 240 11 205 0 248 1 209 0 249 1 213 0 252 11 205 0 253 1 1 1 3 11 205 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 11 209 0 117] 
#[0 3 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 3 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 5 133 0 1 3 246 0 2 3 246 0 3 3 246 0 4 11 185 0 5 3 246 0 6 3 246 0 7 3 246 0 8 3 246 0 9 3 246 0 10 3 246 0 11 3 246 0 12 3 246 0 13 3 246 0 14 3 246 0 15 3 246 0 16 3 246 0 17 3 246 0 19 3 246 0 20 11 189 0 21 3 246 0 22 3 246 0 23 3 246 0 24 3 246 0 25 3 246 0 26 3 246 0 27 3 246 0 28 3 246 0 29 3 246 0 30 3 246 0 31 3 246 0 32 3 246 0 33 3 246 0 34 3 246 0 35 3 246 0 36 3 246 0 37 3 246 0 39 3 246 0 40 3 246 0 41 3 246 0 42 3 246 0 43 3 246 0 44 3 246 0 45 3 246 0 46 3 246 0 47 3 246 0 49 3 246 0 50 3 246 0 51 3 246 0 78 3 246 0 81 3 246 0 90 3 246 0 113 3 246 0 114 0 213 0 123 0 6 0 124 3 246 0 125 3 246 0 126 11 193 0 149 0 253 0 150 11 197 0 161 11 201 0 165 3 246 1 195 5 149 1 196 3 246 1 197] 
#[1 5 133 0 1 3 250 0 2 3 250 0 3 3 250 0 4 11 185 0 5 3 250 0 6 3 250 0 7 3 250 0 8 3 250 0 9 3 250 0 10 3 250 0 11 3 250 0 12 3 250 0 13 3 250 0 14 3 250 0 15 3 250 0 16 3 250 0 17 3 250 0 19 3 250 0 20 11 189 0 21 3 250 0 22 3 250 0 23 3 250 0 24 3 250 0 25 3 250 0 26 3 250 0 27 3 250 0 28 3 250 0 29 3 250 0 30 3 250 0 31 3 250 0 32 3 250 0 33 3 250 0 34 3 250 0 35 3 250 0 36 3 250 0 37 3 250 0 39 3 250 0 40 3 250 0 41 3 250 0 42 3 250 0 43 3 250 0 44 3 250 0 45 3 250 0 46 3 250 0 47 3 250 0 49 3 250 0 50 3 250 0 51 3 250 0 78 3 250 0 81 3 250 0 90 3 250 0 113 3 250 0 114 0 213 0 123 0 6 0 124 3 250 0 125 3 250 0 126 11 193 0 149 0 253 0 150 11 197 0 161 11 201 0 165 3 250 1 195 5 149 1 196 3 250 1 197] 
#[0 3 254 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 2 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 6 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 10 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 14 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 18 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 22 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 26 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 30 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 34 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 38 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 42 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 46 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 4 50 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 11 213 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 11 217 0 185 11 217 0 186 1 1 0 240 11 217 0 248 1 209 0 249 1 213 0 252 11 217 0 253 1 1 1 3 11 217 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 4 54 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 11 221 0 170 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[0 4 58 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 62 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 4 66 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 11 225 0 170 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 11 229 0 170 11 229 0 171 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 11 233 0 170 11 233 0 171 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 11 237 0 173 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 11 241 0 173 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 11 245 0 173 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 11 249 0 174 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 11 253 0 174 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 12 1 0 174 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 12 5 0 174 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 12 9 0 174 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 12 13 0 174 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 12 17 0 175 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 12 21 0 175 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 12 25 0 175 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 12 29 0 175 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 12 33 0 176 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 12 37 0 177 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 12 41 0 178 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 12 45 0 179 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 12 49 0 179 12 53 0 180 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 12 57 0 179 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 12 61 0 185 12 61 0 186 1 1 0 240 12 61 0 248 1 209 0 249 1 213 0 252 12 61 0 253 1 1 1 3 12 61 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 4 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 12 65 0 185 12 65 0 186 1 1 0 240 12 65 0 248 1 209 0 249 1 213 0 252 12 65 0 253 1 1 1 3 12 65 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 4 74 0 7 9 77 0 22 4 74 0 113 12 69 0 148] 
#[1 12 73 0 7 12 77 0 113] 
#[0 4 78 0 7 0 113] 
#[1 9 77 0 22 12 81 0 148] 
#[0 4 82 0 7 0 113] 
#[0 4 86 0 7 0 113] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 12 85 0 132 12 89 0 204 12 89 0 205 12 89 0 206] 
#[1 0 33 0 1 12 93 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 12 105 0 185 12 105 0 186 1 1 0 240 12 105 0 248 1 209 0 249 12 101 0 250 12 105 0 251 1 213 0 252 12 105 0 253 1 1 1 3 12 105 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 4 90 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 4 94 0 3 4 94 0 127 4 94 0 129 12 109 1 66 12 113 1 67] 
#[1 12 117 0 128 12 121 1 53 12 121 1 54 12 121 1 55 12 133 1 56 12 137 1 57] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 12 141 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 12 145 0 132 3 77 1 45 3 81 1 46 3 85 1 76 8 201 1 77 8 205 1 78 12 149 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 12 149 1 104 12 149 1 105 3 105 1 106 3 105 1 108] 
#[1 6 253 0 1 3 45 0 10 2 65 0 116 12 153 0 132 7 9 1 76 12 157 1 119] 
#[0 12 161 0 1] 
#[0 4 98 0 18] 
#[0 3 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 12 165 0 185 12 165 0 186 1 1 0 240 12 165 0 248 1 209 0 249 1 213 0 252 12 165 0 253 1 1 1 3 12 165 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 7 21 0 5 9 141 0 25 4 9 0 117 7 33 0 119 7 37 0 120 9 145 0 133 9 145 0 144 9 145 0 145 9 145 0 146 7 33 1 45 7 37 1 46] 
#[1 3 18 0 4 9 77 0 22 3 18 0 113 9 161 0 148] 
#[0 3 58 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[0 3 62 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[1 7 21 0 5 9 185 0 75 9 189 0 95 4 9 0 117 7 33 0 119 7 37 0 120 9 193 0 133 9 193 0 144 9 193 0 145 9 193 0 146 7 33 1 45 7 37 1 46] 
#[0 4 102 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 63 0 64 0 65 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 4 185 0 3 4 189 0 69 12 169 1 17 4 201 1 18 4 205 1 196] 
#[1 0 99 0 1 4 106 0 3 4 106 0 4 0 99 0 5 0 99 0 7 3 118 0 8 3 118 0 9 3 118 0 10 3 118 0 11 3 118 0 12 3 118 0 13 3 118 0 14 3 118 0 15 3 118 0 16 3 118 0 17 3 118 0 19 3 118 0 20 3 118 0 21 3 118 0 22 3 118 0 23 3 118 0 24 3 118 0 25 3 118 0 26 3 118 0 27 3 118 0 28 3 118 0 29 3 118 0 30 3 118 0 31 3 118 0 32 3 118 0 33 0 99 0 34 0 99 0 35 0 99 0 36 0 99 0 37 4 106 0 38 3 118 0 39 3 118 0 40 3 118 0 41 3 118 0 42 3 118 0 43 3 118 0 44 3 118 0 45 3 118 0 46 3 118 0 47 4 106 0 48 3 118 0 49 3 118 0 50 3 118 0 51 4 106 0 52 4 106 0 53 4 106 0 54 4 106 0 57 4 106 0 58 4 106 0 60 4 106 0 61 4 106 0 62 4 106 0 64 4 106 0 65 4 106 0 67 4 106 0 68 4 106 0 70 4 106 0 72 4 106 0 74 4 106 0 76 4 106 0 77 3 118 0 78 3 118 0 81 4 106 0 82 4 106 0 84 4 106 0 86 4 106 0 87 4 106 0 88 4 106 0 94 4 106 0 98 4 106 0 99 4 106 0 101 4 106 0 102 4 106 0 103 4 106 0 104 4 106 0 105 4 106 0 106 4 106 0 107 4 106 0 108 4 106 0 109 4 106 0 110 4 106 0 111 3 118 0 113 4 106 0 116 4 106 0 119 4 106 0 120 4 106 0 121 0 99 0 123 0 99 0 124 4 106 0 127 3 118 1 195 0 99 1 196 4 106 1 197] 
#[1 2 65 0 116 12 173 0 132] 
#[1 2 65 0 116 12 177 0 132] 
#[1 7 57 0 67 2 65 0 116 12 181 0 132 12 185 1 179 12 189 1 180] 
#[1 2 65 0 116 12 193 0 132] 
#[1 2 65 0 116 12 181 0 132 12 197 1 179 12 189 1 180] 
#[0 12 201 0 119 1 45] 
#[1 2 65 0 116 7 213 0 132 12 205 1 146] 
#[1 2 65 0 116 12 181 0 132 12 209 1 179 12 189 1 180] 
#[0 4 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 213 0 3] 
#[1 2 65 0 116 12 217 0 132] 
#[1 10 125 0 73 12 221 1 33] 
#[1 7 61 0 57 7 65 0 58 2 109 0 67 7 69 0 74 7 73 0 84 7 81 0 86 7 85 0 107 7 105 1 140 7 93 1 178 7 97 1 181 7 101 1 182 7 105 1 188 7 109 1 189] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 12 225 0 57 0 101 0 64 2 17 0 70 12 229 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 12 233 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 12 237 0 185 12 237 0 186 12 241 0 239 1 1 0 240 12 237 0 248 1 209 0 249 1 213 0 252 12 237 0 253 12 245 1 2 1 1 1 3 12 237 1 5 1 1 1 8 1 1 1 12 1 45 1 14 12 249 1 15 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 12 253 1 181 13 1 1 182 3 29 1 196] 
#[1 5 69 0 3 5 73 0 25 2 65 0 116 5 97 0 119 13 5 0 132 5 81 1 29 5 85 1 30 5 89 1 31 5 93 1 32 5 97 1 36 5 85 1 37 5 97 1 45] 
#[0 4 134 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 138 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 142 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 146 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 150 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 154 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 13 9 0 7 10 125 0 73 13 13 1 33] 
#[1 4 158 0 1 4 158 0 3 4 158 0 5 4 158 0 7 4 158 0 34 4 158 0 35 4 158 0 36 4 158 0 37 4 158 0 38 4 158 0 48 4 158 0 52 4 158 0 53 4 158 0 54 4 158 0 57 4 158 0 58 4 158 0 60 4 158 0 61 0 103 0 62 4 158 0 64 4 158 0 65 4 158 0 67 0 103 0 68 4 158 0 70 4 158 0 72 4 158 0 74 4 158 0 76 0 103 0 77 0 103 0 82 4 158 0 84 0 103 0 86 4 158 0 87 4 158 0 88 4 158 0 94 4 158 0 98 4 158 0 99 4 158 0 101 4 158 0 102 4 158 0 103 4 158 0 104 0 103 0 105 4 158 0 106 4 158 0 107 4 158 0 108 4 158 0 109 4 158 0 110 4 158 0 111 4 158 0 116 4 158 0 119 4 158 0 120 4 158 0 121 4 158 0 123 4 158 0 124 4 158 0 127 4 158 1 196 0 103 1 197] 
#[1 4 166 0 1 4 166 0 3 4 166 0 5 4 166 0 7 4 166 0 34 4 166 0 35 4 166 0 36 4 166 0 37 4 166 0 38 4 166 0 48 4 166 0 52 4 166 0 53 4 166 0 54 4 166 0 57 4 166 0 58 4 166 0 60 4 166 0 61 0 107 0 62 4 166 0 64 4 166 0 65 4 166 0 67 0 107 0 68 4 166 0 70 4 166 0 72 4 166 0 74 4 166 0 76 0 107 0 77 0 107 0 82 4 166 0 84 0 107 0 86 4 166 0 87 4 166 0 88 4 166 0 94 4 166 0 98 4 166 0 99 4 166 0 101 4 166 0 102 4 166 0 103 4 166 0 104 0 107 0 105 4 166 0 106 4 166 0 107 4 166 0 108 4 166 0 109 4 166 0 110 4 166 0 111 4 166 0 116 4 166 0 119 4 166 0 120 4 166 0 121 4 166 0 123 4 166 0 124 4 166 0 127 4 166 1 196 0 107 1 197] 
#[0 4 174 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 178 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 182 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[1 4 186 0 1 4 186 0 3 4 186 0 5 4 186 0 7 4 186 0 34 4 186 0 35 4 186 0 36 4 186 0 37 4 186 0 38 4 186 0 48 4 186 0 52 4 186 0 53 4 186 0 54 4 186 0 57 4 186 0 58 4 186 0 60 4 186 0 61 0 111 0 62 4 186 0 64 4 186 0 65 4 186 0 67 0 111 0 68 4 186 0 70 4 186 0 72 4 186 0 74 4 186 0 76 0 111 0 77 0 111 0 82 4 186 0 84 0 111 0 86 4 186 0 87 4 186 0 88 4 186 0 94 4 186 0 98 4 186 0 99 4 186 0 101 4 186 0 102 4 186 0 103 4 186 0 104 0 111 0 105 4 186 0 106 4 186 0 107 4 186 0 108 4 186 0 109 4 186 0 110 4 186 0 111 4 186 0 116 4 186 0 119 4 186 0 120 4 186 0 121 4 186 0 123 4 186 0 124 4 186 0 127 4 186 1 196 0 111 1 197] 
#[1 3 45 0 10 10 141 0 74 2 65 0 116 8 97 0 132 10 145 1 76] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 13 17 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 13 21 0 1 2 65 0 116 13 25 0 132] 
#[0 13 29 0 1] 
#[1 13 33 0 22 3 174 0 73 3 174 0 113] 
#[1 3 37 0 3 3 45 0 10 13 37 0 69 13 41 1 76 13 45 1 94 13 49 1 128] 
#[0 4 194 0 3 0 21] 
#[1 13 53 0 3 13 57 0 21] 
#[1 3 45 0 10 13 61 0 22 13 65 1 76] 
#[1 5 65 0 1 2 65 0 116 13 69 0 132] 
#[0 1 214 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 222 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 234 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 1 246 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 198 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 2 18 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 2 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 2 114 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 2 65 0 116 13 69 0 132] 
#[0 1 218 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 1 226 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 1 238 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 1 250 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 4 202 0 62 0 77 0 82 0 86 0 105 1 197] 
#[0 2 42 0 62 0 77 0 82 0 86 0 105 1 197] 
#[0 2 110 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 2 118 0 62 0 77 0 82 0 86 0 105 1 197] 
#[1 4 225 0 3 7 117 0 22 7 121 0 25 4 237 0 57 2 101 0 58 7 125 0 62 13 73 0 63 2 109 0 67 4 245 0 74 13 77 0 77 2 125 0 82 1 141 0 84 2 129 0 86 2 133 0 105 0 177 0 107 7 137 0 197 1 141 0 198 7 141 0 201 7 145 0 239 7 149 1 2 7 153 1 15 7 157 1 28 7 161 1 40 13 81 1 118 13 85 1 127 7 173 1 140 7 177 1 145 13 89 1 177 7 189 1 196] 
#[0 1 206 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 0 31 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 2 22 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 206 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 2 90 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 2 98 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 4 225 0 3 7 117 0 22 7 121 0 25 7 125 0 62 13 93 0 63 8 5 0 77 2 125 0 82 2 133 0 105 7 161 1 40 13 97 1 118 13 101 1 127 7 181 1 151 13 105 1 177] 
#[0 1 210 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 2 38 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 4 210 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 2 94 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 2 102 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[1 13 109 0 1 3 45 0 10 2 65 0 116 13 113 0 132 13 117 1 76 13 121 1 111 13 125 1 119] 
#[1 3 45 0 10 13 129 1 76] 
#[1 12 161 0 1 4 185 0 3 4 189 0 69 13 133 1 17 4 201 1 18 4 205 1 196] 
#[1 8 129 0 1 13 137 0 4 8 137 0 5 3 45 0 10 8 141 0 87 11 77 0 112 2 65 0 116 4 9 0 117 7 33 0 119 7 37 0 120 9 229 0 132 13 141 0 133 13 141 0 144 13 141 0 145 13 141 0 146 9 21 0 207 9 25 0 208 9 29 0 211 9 29 0 213 7 33 1 45 7 37 1 46 8 149 1 76 8 153 1 95 8 157 1 96 8 161 1 97 8 161 1 109 8 161 1 111 8 161 1 115 8 161 1 116 8 161 1 117 11 85 1 196] 
#[1 3 33 0 1 8 105 0 3 8 109 0 5 11 89 0 6 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 3 177 0 112 4 93 0 113 2 65 0 116 3 77 0 119 3 81 0 120 8 113 0 132 11 93 0 139 3 189 0 204 3 189 0 205 3 189 0 206 9 53 0 209 9 57 0 210 9 61 0 212 9 61 0 213 9 65 0 214 3 77 1 45 3 81 1 46 3 85 1 76 8 193 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 8 189 1 100 8 193 1 101 3 93 1 102 3 97 1 103 8 193 1 104 8 193 1 105 3 105 1 106 3 105 1 108 8 125 1 196] 
#[1 0 115 0 2 0 115 0 4 2 130 0 5 0 115 0 6 2 130 0 7 2 130 0 10 2 134 0 21 9 77 0 22 2 130 0 39 2 130 0 45 0 115 0 113 9 81 0 148] 
#[0 13 145 0 2] 
#[0 13 149 0 2] 
#[1 5 173 0 3 5 177 0 5 3 2 0 41 9 129 0 91 9 129 0 92 9 129 0 93 9 113 0 101 3 2 0 114 2 65 0 116 9 117 0 132 9 125 0 204 9 125 0 205 9 125 0 206 9 125 1 112 9 129 1 113] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 13 153 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 4 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 91 0 92 0 93 0 94 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 13 157 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 12 165 0 185 12 165 0 186 1 1 0 240 12 165 0 248 1 209 0 249 1 213 0 252 12 165 0 253 1 1 1 3 12 165 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 13 161 0 1 3 45 0 10 13 165 1 76] 
#[1 8 129 0 1 4 218 0 4 4 218 0 7 3 45 0 10 13 169 0 41 4 218 0 113 13 173 0 114 8 149 1 76 13 177 1 110 13 181 1 111] 
#[0 13 185 0 1] 
#[0 13 189 0 4] 
#[1 4 222 0 4 13 193 0 7 13 197 0 113] 
#[0 4 226 0 4 0 7 0 113] 
#[0 4 230 0 4 0 7 0 113] 
#[0 4 234 0 4 0 7 0 113] 
#[0 4 238 0 4 0 7 0 113] 
#[0 4 242 0 4 0 7 0 113] 
#[0 4 246 0 4 0 7 0 113] 
#[0 4 250 0 6 0 113] 
#[1 13 201 0 6 13 205 0 113] 
#[0 4 254 0 6 0 113] 
#[1 5 2 0 13 13 209 0 69 5 2 0 113 13 213 1 79] 
#[1 13 217 0 13 13 221 0 113] 
#[0 5 6 0 13 0 113] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 8 121 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 8 121 1 104 8 121 1 105 3 105 1 106 3 105 1 108] 
#[1 5 10 0 2 5 10 0 3 5 10 0 4 0 119 0 5 5 10 0 6 5 10 0 7 5 10 0 8 5 10 0 10 5 10 0 11 5 10 0 13 5 10 0 14 5 10 0 17 5 10 0 18 5 10 0 19 5 10 0 20 5 10 0 22 5 10 0 23 5 10 0 24 5 10 0 25 5 10 0 26 5 10 0 34 5 10 0 36 5 10 0 39 5 10 0 40 5 10 0 41 5 10 0 43 5 10 0 44 5 10 0 45 5 10 0 46 5 10 0 47 5 10 0 49 5 10 0 50 5 10 0 59 5 10 0 78 5 10 0 81 5 10 0 90 5 10 0 91 5 10 0 92 5 10 0 93 5 10 0 96 5 10 0 113 5 10 0 114 5 10 0 117 5 10 0 119 5 10 0 120 5 10 0 125 5 10 0 126 8 249 0 223 5 10 1 197] 
#[1 5 14 0 2 5 14 0 3 5 14 0 4 0 123 0 5 5 14 0 6 5 14 0 7 5 14 0 8 5 14 0 10 5 14 0 11 5 14 0 13 5 14 0 14 5 14 0 17 5 14 0 18 5 14 0 19 5 14 0 20 5 14 0 22 5 14 0 23 5 14 0 24 5 14 0 25 5 14 0 26 5 14 0 34 5 14 0 36 5 14 0 39 5 14 0 40 5 14 0 41 5 14 0 43 5 14 0 44 5 14 0 45 5 14 0 46 5 14 0 47 5 14 0 49 5 14 0 50 5 14 0 59 5 14 0 78 5 14 0 81 5 14 0 90 5 14 0 91 5 14 0 92 5 14 0 93 5 14 0 96 5 14 0 113 5 14 0 114 5 14 0 117 5 14 0 119 5 14 0 120 5 14 0 125 5 14 0 126 8 249 0 223 5 14 1 197] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 13 225 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 13 229 0 1] 
#[0 5 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[1 5 22 0 2 5 22 0 3 5 22 0 4 5 22 0 5 5 22 0 6 5 22 0 7 5 22 0 8 5 22 0 10 5 22 0 11 5 22 0 13 5 22 0 14 5 22 0 17 5 22 0 18 5 22 0 19 5 22 0 20 13 233 0 21 5 22 0 22 5 22 0 23 5 22 0 24 5 22 0 25 5 22 0 26 5 22 0 34 5 22 0 36 5 22 0 39 5 22 0 40 5 22 0 41 5 22 0 43 5 22 0 44 5 22 0 45 5 22 0 46 5 22 0 47 5 22 0 49 5 22 0 50 5 22 0 59 5 22 0 78 5 22 0 81 5 22 0 90 5 22 0 91 5 22 0 92 5 22 0 93 5 22 0 96 5 22 0 113 5 22 0 114 5 22 0 117 5 22 0 119 5 22 0 120 5 22 0 125 5 22 0 126 5 22 1 197] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 13 237 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 8 209 0 1 3 37 0 3 3 41 0 5 3 49 0 79 3 53 0 83 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 13 241 1 85 13 241 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 13 241 1 103 3 105 1 106 3 105 1 108] 
#[1 8 209 0 1 3 37 0 3 3 41 0 5 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 13 245 1 87 13 245 1 88 13 245 1 89 13 245 1 90 13 245 1 91 3 125 1 92 3 129 1 93 13 245 1 94 13 245 1 98 13 245 1 99 13 245 1 106 13 245 1 108] 
#[0 13 249 0 5] 
#[1 5 26 0 2 5 26 0 3 5 26 0 4 5 26 0 5 5 26 0 6 5 26 0 7 5 26 0 8 0 127 0 10 5 26 0 11 5 26 0 13 5 26 0 14 5 26 0 17 5 26 0 18 5 26 0 19 5 26 0 20 5 26 0 22 5 26 0 23 5 26 0 24 5 26 0 25 5 26 0 26 5 26 0 34 5 26 0 36 5 26 0 39 5 26 0 40 5 26 0 41 5 26 0 43 5 26 0 44 5 26 0 45 5 26 0 46 5 26 0 47 5 26 0 49 5 26 0 50 5 26 0 59 5 26 0 78 5 26 0 80 5 26 0 81 5 26 0 90 5 26 0 91 5 26 0 92 5 26 0 93 5 26 0 96 5 26 0 113 5 26 0 114 5 26 0 117 5 26 0 119 5 26 0 120 5 26 0 125 5 26 0 126 13 253 1 80 5 26 1 197] 
#[1 2 65 0 116 14 1 0 132] 
#[1 3 10 0 1 0 131 0 2 0 131 0 4 3 10 0 5 0 131 0 6 3 10 0 8 3 10 0 9 3 10 0 10 3 10 0 11 3 10 0 12 3 10 0 13 3 10 0 14 3 10 0 15 3 10 0 16 3 10 0 17 3 10 0 19 3 10 0 20 3 10 0 21 0 131 0 22 3 10 0 23 3 10 0 24 3 10 0 25 3 10 0 26 3 10 0 27 3 10 0 28 3 10 0 29 3 10 0 30 3 10 0 31 3 10 0 32 3 10 0 33 3 10 0 34 3 10 0 35 3 10 0 36 3 10 0 37 3 10 0 39 3 10 0 40 3 10 0 41 3 10 0 42 3 10 0 43 3 10 0 44 3 10 0 45 3 10 0 46 3 10 0 47 3 10 0 49 3 10 0 50 3 10 0 51 3 10 0 78 3 10 0 81 0 131 0 113 3 10 0 123 3 10 0 124 3 10 1 195 3 10 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 14 5 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 9 157 0 185 9 157 0 186 1 1 0 240 9 157 0 248 1 209 0 249 1 213 0 252 9 157 0 253 1 1 1 3 9 157 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 135 0 4 9 77 0 22 0 135 0 113 14 9 0 148] 
#[1 9 173 0 1 14 13 0 114] 
#[0 14 17 0 4] 
#[1 14 21 0 4 14 25 0 113] 
#[0 5 34 0 4 0 113] 
#[0 5 38 0 4 0 113] 
#[1 7 21 0 5 9 185 0 75 14 33 0 91 14 33 0 92 14 33 0 93 9 189 0 95 2 65 0 116 4 9 0 117 7 33 0 119 7 37 0 120 14 29 0 132 9 193 0 133 9 193 0 144 9 193 0 145 9 193 0 146 7 33 1 45 7 37 1 46 14 33 1 113] 
#[1 3 74 0 1 0 139 0 2 0 139 0 4 3 74 0 5 0 139 0 6 3 74 0 8 3 74 0 9 3 74 0 10 3 74 0 11 3 74 0 12 3 74 0 13 3 74 0 14 3 74 0 15 3 74 0 16 3 74 0 17 3 74 0 19 3 74 0 20 3 74 0 21 0 139 0 22 3 74 0 23 3 74 0 24 3 74 0 25 3 74 0 26 3 74 0 27 3 74 0 28 3 74 0 29 3 74 0 30 3 74 0 31 3 74 0 32 3 74 0 33 3 74 0 34 3 74 0 35 3 74 0 36 3 74 0 37 3 74 0 39 3 74 0 40 3 74 0 41 3 74 0 42 3 74 0 43 3 74 0 44 3 74 0 45 3 74 0 46 3 74 0 47 3 74 0 49 3 74 0 50 3 74 0 51 3 74 0 78 3 74 0 81 0 139 0 113 3 74 0 123 3 74 0 124 3 74 1 195 3 74 1 196] 
#[1 0 33 0 1 3 169 0 3 3 173 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 14 37 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 9 197 0 185 9 197 0 186 9 73 0 204 9 73 0 205 9 73 0 206 1 1 0 240 9 197 0 248 1 209 0 249 1 213 0 252 9 197 0 253 1 1 1 3 9 197 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 3 169 0 3 3 173 0 5 14 41 0 6 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 9 45 0 112 9 213 0 113 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 3 181 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 9 217 0 140 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 9 221 0 185 9 221 0 186 3 189 0 204 3 189 0 205 3 189 0 206 14 45 0 212 14 45 0 213 14 49 0 214 1 1 0 240 9 221 0 248 1 209 0 249 1 213 0 252 9 221 0 253 1 1 1 3 9 221 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 3 233 1 196] 
#[1 14 53 0 6 14 57 0 113] 
#[0 5 46 0 6 0 113] 
#[0 5 50 0 6 0 113] 
#[0 14 61 0 6] 
#[1 5 54 0 2 5 54 0 6 13 173 0 114 14 65 1 110] 
#[0 5 58 0 2 0 6] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 14 69 0 185 14 69 0 186 1 1 0 240 14 69 0 248 1 209 0 249 1 213 0 252 14 69 0 253 1 1 1 3 14 69 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 5 62 0 2 0 4 0 6 0 113] 
#[0 5 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 5 70 0 2 0 4 0 6 0 113] 
#[0 5 74 0 18] 
#[1 5 78 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 14 77 0 212 14 77 0 213 14 73 0 214 14 73 0 244 14 77 0 245 8 125 1 196] 
#[0 5 82 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 59 0 96 0 101 0 113 0 114 0 116 0 117 0 119 0 120 1 196] 
#[0 5 86 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 59 0 96 0 101 0 113 0 114 0 116 0 117 0 119 0 120 1 196] 
#[0 5 90 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 59 0 96 0 101 0 113 0 114 0 116 0 117 0 119 0 120 1 196] 
#[0 5 94 0 2 0 4 0 6 0 22 0 41 0 113 0 114] 
#[1 0 143 0 41 0 147 0 114 14 85 1 110] 
#[0 5 102 0 2 0 4 0 6 0 22 0 41 0 113 0 114] 
#[1 14 89 0 41 13 173 0 114 14 93 1 110] 
#[1 3 2 0 2 5 173 0 3 3 2 0 4 5 177 0 5 3 2 0 6 3 2 0 22 3 2 0 41 9 113 0 101 3 2 0 113 3 2 0 114 2 65 0 116 14 97 0 132 14 101 0 204 14 101 0 205 14 101 0 206 14 101 1 112] 
#[1 0 151 0 6 3 86 0 113] 
#[0 14 109 0 1] 
#[1 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 14 113 0 133 14 113 0 144 14 113 0 145 14 113 0 146 7 33 1 45 7 37 1 46] 
#[0 14 117 0 1] 
#[0 14 121 0 1] 
#[0 14 125 0 1] 
#[0 5 106 0 4 0 113] 
#[0 5 110 0 4 0 113] 
#[0 5 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 14 129 0 4 7 21 0 5 3 245 0 25 7 25 0 52 3 253 0 75 4 1 0 95 4 5 0 112 2 65 0 116 4 9 0 117 7 33 0 119 7 37 0 120 7 29 0 132 4 29 0 133 14 133 0 143 4 29 0 144 4 29 0 145 4 29 0 146 14 133 0 147 14 133 0 255 14 133 1 1 14 133 1 6 14 133 1 10 7 33 1 45 7 37 1 46 14 133 1 120 14 133 1 121 7 41 1 196] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 14 137 0 241 3 217 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 14 141 0 185 14 141 0 186 1 1 0 240 14 141 0 248 1 209 0 249 1 213 0 252 14 141 0 253 1 1 1 3 14 141 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 5 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 14 145 0 133 14 145 0 144 14 145 0 145 14 145 0 146 7 33 1 45 7 37 1 46] 
#[1 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 14 149 0 133 14 149 0 144 14 149 0 145 14 149 0 146 7 33 1 45 7 37 1 46] 
#[1 6 253 0 1 3 45 0 10 7 9 1 76 14 153 1 119] 
#[0 5 122 0 4 0 6 0 113] 
#[0 5 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 14 157 0 6 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 4 89 0 112 9 213 0 113 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 14 161 0 140 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 14 165 0 185 14 165 0 186 1 1 0 240 14 165 0 248 1 209 0 249 1 213 0 252 14 165 0 253 1 1 1 3 14 165 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 5 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 5 134 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 57 0 64 0 70 0 74 0 77 0 87 0 88 0 98 0 101 0 103 0 106 0 108 0 111 0 112 0 113 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 5 138 0 6 0 113] 
#[0 5 142 0 6 0 113] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 12 149 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 12 149 1 104 12 149 1 105 3 105 1 106 3 105 1 108] 
#[1 2 214 0 2 2 214 0 4 2 214 0 6 9 77 0 22 2 214 0 113 9 81 0 148] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 14 169 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 14 173 0 1 2 65 0 116 14 177 0 132] 
#[0 14 181 0 1] 
#[1 0 33 0 1 14 185 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 14 189 0 185 14 189 0 186 1 1 0 240 14 189 0 248 1 209 0 249 14 189 0 251 1 213 0 252 14 189 0 253 14 193 0 254 1 1 1 3 14 189 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 5 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 14 197 0 7] 
#[0 5 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 195 1 196 1 197] 
#[0 5 154 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[1 7 21 0 5 3 245 0 25 7 25 0 52 3 253 0 75 4 1 0 95 4 9 0 117 7 33 0 119 7 37 0 120 10 13 0 133 10 13 0 144 10 13 0 145 10 13 0 146 14 201 0 255 14 201 1 1 14 201 1 6 14 201 1 10 7 33 1 45 7 37 1 46 14 201 1 120 14 201 1 121 7 41 1 196] 
#[0 9 173 0 1] 
#[0 5 158 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 14 205 0 4] 
#[1 5 162 0 4 7 21 0 5 10 5 0 7 3 245 0 25 7 25 0 52 3 253 0 75 4 1 0 95 10 9 0 96 4 9 0 117 7 33 0 119 7 37 0 120 10 13 0 133 10 13 0 144 10 13 0 145 10 13 0 146 14 209 0 255 14 209 1 1 14 209 1 6 14 209 1 10 14 209 1 21 7 33 1 45 7 37 1 46 14 209 1 120 14 209 1 121 10 33 1 196] 
#[0 5 166 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[1 8 137 0 5 14 213 0 59 9 185 0 75 14 225 0 91 14 225 0 92 14 225 0 93 9 189 0 95 14 217 0 96 4 9 0 117 7 33 0 119 7 37 0 120 14 221 0 133 14 221 0 144 14 221 0 145 14 221 0 146 7 33 1 45 7 37 1 46 14 225 1 113 14 229 1 116 14 233 1 120 14 237 1 121 14 241 1 134 14 245 1 135 14 245 1 136 14 245 1 137 14 245 1 138 15 5 1 139 15 9 1 196] 
#[0 5 170 0 3] 
#[0 5 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 15 13 0 4 7 21 0 5 10 5 0 7 3 245 0 25 7 25 0 52 3 253 0 75 4 1 0 95 10 9 0 96 4 9 0 117 7 33 0 119 7 37 0 120 10 13 0 133 10 13 0 144 10 13 0 145 10 13 0 146 10 29 0 255 10 29 1 1 10 29 1 6 10 29 1 10 15 17 1 19 10 25 1 20 10 29 1 21 7 33 1 45 7 37 1 46 10 29 1 120 10 29 1 121 10 33 1 196] 
#[1 2 65 0 116 3 73 0 132 15 25 1 91 3 125 1 92 3 129 1 93 15 25 1 132] 
#[1 2 65 0 116 3 73 0 132 15 37 1 91 3 125 1 92 3 129 1 93 15 33 1 129 15 37 1 130] 
#[1 10 53 0 80 15 41 1 133] 
#[0 5 178 0 3] 
#[0 5 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 15 45 0 7] 
#[0 15 49 0 1] 
#[0 5 186 0 7 0 73] 
#[1 5 190 0 4 15 53 0 51 5 190 0 113] 
#[1 15 57 0 4 15 61 0 113] 
#[0 5 194 0 4 0 113] 
#[0 15 65 0 117] 
#[1 15 69 0 1 15 73 0 25 2 65 0 116 15 77 0 132] 
#[1 4 185 0 3 4 189 0 69 15 81 1 17 4 201 1 18 4 205 1 196] 
#[0 4 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 15 85 0 7] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 15 89 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 15 93 0 1 2 65 0 116 15 97 0 132] 
#[0 15 101 0 1] 
#[0 15 105 0 119 1 36 1 45] 
#[0 15 109 0 7] 
#[0 5 198 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 7 57 0 67] 
#[1 13 109 0 1 3 45 0 10 2 65 0 116 15 113 0 132 13 117 1 76 13 121 1 111 15 117 1 119] 
#[1 4 185 0 3 4 189 0 69 13 133 1 17 4 201 1 18 4 205 1 196] 
#[0 5 202 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 5 206 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 5 210 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 15 121 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 15 125 0 185 15 125 0 186 15 125 0 188 1 1 0 240 15 125 0 248 1 209 0 249 1 213 0 252 15 125 0 253 1 1 1 3 15 125 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 15 129 0 132 15 133 0 202 15 137 0 203 15 141 0 204 15 141 0 205 15 141 0 206 15 145 0 220 5 197 1 196] 
#[1 0 170 0 7 0 170 0 8 6 85 0 9 0 170 0 10 0 170 0 11 6 85 0 12 0 170 0 13 0 170 0 14 6 85 0 15 6 85 0 16 0 170 0 17 0 170 0 19 0 170 0 20 6 85 0 22 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 6 85 0 27 6 85 0 28 6 85 0 29 6 85 0 30 6 85 0 31 6 85 0 32 6 85 0 33 0 170 0 34 6 73 0 35 0 170 0 36 6 77 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 47 0 170 0 49 0 170 0 50 6 81 0 51 0 155 0 78 0 170 0 81 15 153 0 90 0 170 0 113 6 85 0 187 6 85 1 195] 
#[1 15 157 0 7 6 205 0 113] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 15 161 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 15 165 0 185 15 165 0 186 15 165 0 188 1 1 0 240 15 165 0 248 1 209 0 249 1 213 0 252 15 165 0 253 1 1 1 3 15 165 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 15 169 0 132 6 213 0 199 6 217 0 200 15 173 0 204 15 173 0 205 15 173 0 206 15 177 0 220 6 217 1 125 6 217 1 126 6 233 1 196] 
#[1 15 181 0 78 15 185 0 90] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 4 117 0 52 0 85 0 57 15 197 0 58 2 17 0 70 0 121 0 74 2 61 0 77 15 197 0 84 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 15 189 0 107 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 15 193 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 15 193 0 167 15 197 0 198 15 201 0 219 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 5 125 1 196] 
#[0 15 205 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 15 209 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 15 213 0 1] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 15 217 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 15 221 0 2 6 205 0 113] 
#[0 15 225 0 2] 
#[0 5 214 0 73] 
#[0 15 229 0 51] 
#[1 15 233 0 4 15 237 0 113] 
#[0 5 218 0 4 0 113] 
#[0 5 222 0 4 0 113] 
#[1 2 65 0 116 15 241 0 132 15 241 1 37] 
#[0 15 245 0 7] 
#[1 5 69 0 3 5 73 0 25 15 249 1 31 15 253 1 32] 
#[0 5 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 5 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 5 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 5 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 16 1 0 7 6 205 0 113] 
#[0 5 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 16 5 0 185 16 5 0 186 1 1 0 240 16 5 0 248 1 209 0 249 1 213 0 252 16 5 0 253 1 1 1 3 16 5 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 16 9 0 2 16 13 0 113] 
#[0 5 246 0 2 0 113] 
#[1 16 17 0 6 6 205 0 113] 
#[0 5 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 16 21 1 81 16 25 1 82 16 25 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 16 25 1 104 16 25 1 105 3 105 1 106 3 105 1 108] 
#[0 16 33 0 1] 
#[1 16 37 0 2 6 205 0 113] 
#[0 5 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 3 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 16 41 0 1 5 161 0 3 16 45 0 194] 
#[1 5 161 0 3 16 49 0 194] 
#[1 6 2 0 1 6 2 0 3 6 2 0 4 6 2 0 5 6 2 0 7 6 2 0 34 6 2 0 35 6 2 0 36 6 2 0 37 6 2 0 38 6 2 0 48 6 2 0 52 6 2 0 53 6 2 0 54 6 2 0 55 6 2 0 57 6 2 0 58 6 2 0 60 6 2 0 61 6 2 0 62 6 2 0 63 6 2 0 64 6 2 0 65 6 2 0 66 6 2 0 67 6 2 0 68 6 2 0 70 11 61 0 71 6 2 0 72 6 2 0 74 6 2 0 76 6 2 0 77 6 2 0 82 6 2 0 84 6 2 0 86 6 2 0 87 6 2 0 88 6 2 0 94 6 2 0 98 6 2 0 99 6 2 0 101 6 2 0 102 6 2 0 103 6 2 0 104 6 2 0 105 6 2 0 106 6 2 0 107 6 2 0 108 6 2 0 109 6 2 0 110 6 2 0 111 6 2 0 116 6 2 0 119 6 2 0 120 6 2 0 121 6 2 0 123 6 2 0 124 6 2 0 127 16 53 0 236 6 2 1 196 6 2 1 197] 
#[0 6 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 5 30 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 2 65 0 116 16 57 0 132] 
#[0 16 61 0 114] 
#[1 14 33 0 91 14 33 0 92 14 33 0 93 2 65 0 116 14 29 0 132 14 33 1 113] 
#[0 5 42 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 5 173 0 3 5 177 0 5 16 65 0 6 3 177 0 112 9 213 0 113 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 14 45 0 212 14 45 0 213 14 49 0 214 8 125 1 196] 
#[0 6 10 0 7 0 90 0 113] 
#[0 6 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 5 181 0 132 16 69 0 203 5 193 0 204 5 193 0 205 5 193 0 206 5 197 1 196] 
#[0 6 18 0 7 0 90 0 113] 
#[1 13 173 0 114 16 73 1 110] 
#[1 13 173 0 114 16 77 1 110] 
#[0 6 22 0 7 0 90 0 113] 
#[0 6 26 0 7 0 90 0 113] 
#[1 16 81 0 2 6 205 0 113] 
#[1 16 85 0 2 6 205 0 113] 
#[0 6 30 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 6 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 6 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 1 166 0 3 1 166 0 127 1 166 0 129 16 89 1 72] 
#[1 6 205 0 113 16 93 0 125 16 97 0 126 16 101 0 151 16 105 0 152] 
#[1 16 109 0 6 6 205 0 113] 
#[0 6 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 16 113 0 185 16 113 0 186 16 113 0 188 1 1 0 240 16 113 0 248 1 209 0 249 1 213 0 252 16 113 0 253 1 1 1 3 16 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 6 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 6 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 6 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 6 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 16 117 0 185 16 117 0 186 16 117 0 188 1 1 0 240 16 117 0 248 1 209 0 249 1 213 0 252 16 117 0 253 1 1 1 3 16 117 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 16 121 0 117] 
#[0 6 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 6 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 6 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 16 125 0 6 6 205 0 113] 
#[0 6 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 16 129 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 16 129 1 104 16 129 1 105 3 105 1 106 3 105 1 108] 
#[0 6 78 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 6 82 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 6 86 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[1 6 90 0 2 6 90 0 4 6 90 0 6 6 90 0 7 6 109 0 8 6 90 0 10 6 90 0 11 6 90 0 13 6 90 0 14 6 90 0 17 6 90 0 19 6 90 0 20 6 90 0 23 6 90 0 24 6 109 0 25 6 90 0 34 6 90 0 36 6 90 0 39 6 90 0 40 6 90 0 41 6 90 0 43 6 109 0 44 6 90 0 45 6 90 0 46 6 90 0 47 6 90 0 49 6 90 0 50 6 90 0 78 6 90 0 81 6 90 0 90 6 90 0 113 6 90 0 114 6 90 0 125 6 90 0 126 6 109 0 172 6 90 1 197] 
#[1 6 94 0 2 6 94 0 4 6 94 0 6 6 94 0 7 6 109 0 8 6 94 0 10 6 94 0 11 6 94 0 13 6 94 0 14 6 94 0 17 6 94 0 19 6 94 0 20 6 94 0 23 6 94 0 24 6 109 0 25 6 94 0 34 6 94 0 36 6 94 0 39 6 94 0 40 6 94 0 41 6 94 0 43 6 109 0 44 6 94 0 45 6 94 0 46 6 94 0 47 6 94 0 49 6 94 0 50 6 94 0 78 6 94 0 81 6 94 0 90 6 94 0 113 6 94 0 114 6 94 0 125 6 94 0 126 6 109 0 172 6 94 1 197] 
#[1 6 98 0 2 6 98 0 4 6 98 0 6 6 98 0 7 6 98 0 10 6 98 0 11 6 98 0 13 6 98 0 14 6 98 0 17 6 98 0 19 6 98 0 20 6 98 0 23 6 98 0 24 6 113 0 34 6 117 0 36 6 98 0 39 6 98 0 40 6 98 0 41 6 98 0 43 6 98 0 45 6 98 0 46 6 98 0 47 6 98 0 49 6 98 0 50 6 98 0 78 6 98 0 81 6 98 0 90 6 98 0 113 6 98 0 114 6 98 0 125 6 98 0 126 6 98 1 197] 
#[1 6 102 0 2 6 102 0 4 6 102 0 6 6 102 0 7 6 102 0 10 6 102 0 11 6 102 0 13 6 102 0 14 6 102 0 17 6 102 0 19 6 102 0 20 6 102 0 23 6 102 0 24 6 113 0 34 6 117 0 36 6 102 0 39 6 102 0 40 6 102 0 41 6 102 0 43 6 102 0 45 6 102 0 46 6 102 0 47 6 102 0 49 6 102 0 50 6 102 0 78 6 102 0 81 6 102 0 90 6 102 0 113 6 102 0 114 6 102 0 125 6 102 0 126 6 102 1 197] 
#[1 6 106 0 2 6 106 0 4 6 106 0 6 6 106 0 7 6 106 0 10 6 106 0 11 6 106 0 13 6 106 0 14 6 106 0 17 6 106 0 19 6 106 0 20 6 106 0 23 6 106 0 24 6 113 0 34 6 117 0 36 6 106 0 39 6 106 0 40 6 106 0 41 6 106 0 43 6 106 0 45 6 106 0 46 6 106 0 47 6 106 0 49 6 106 0 50 6 106 0 78 6 106 0 81 6 106 0 90 6 106 0 113 6 106 0 114 6 106 0 125 6 106 0 126 6 106 1 197] 
#[1 6 110 0 2 6 110 0 4 6 110 0 6 6 110 0 7 6 110 0 10 6 121 0 11 6 110 0 13 6 125 0 14 6 129 0 17 6 110 0 19 6 110 0 20 6 110 0 23 6 110 0 24 6 110 0 39 6 110 0 40 6 110 0 41 6 110 0 43 6 110 0 45 6 110 0 46 6 110 0 47 6 110 0 49 6 110 0 50 6 110 0 78 6 110 0 81 6 110 0 90 6 110 0 113 6 110 0 114 6 110 0 125 6 110 0 126 6 110 1 197] 
#[1 6 114 0 2 6 114 0 4 6 114 0 6 6 114 0 7 6 114 0 10 6 121 0 11 6 114 0 13 6 125 0 14 6 129 0 17 6 114 0 19 6 114 0 20 6 114 0 23 6 114 0 24 6 114 0 39 6 114 0 40 6 114 0 41 6 114 0 43 6 114 0 45 6 114 0 46 6 114 0 47 6 114 0 49 6 114 0 50 6 114 0 78 6 114 0 81 6 114 0 90 6 114 0 113 6 114 0 114 6 114 0 125 6 114 0 126 6 114 1 197] 
#[1 6 118 0 2 6 118 0 4 6 118 0 6 6 118 0 7 6 118 0 10 6 121 0 11 6 118 0 13 6 125 0 14 6 129 0 17 6 118 0 19 6 118 0 20 6 118 0 23 6 118 0 24 6 118 0 39 6 118 0 40 6 118 0 41 6 118 0 43 6 118 0 45 6 118 0 46 6 118 0 47 6 118 0 49 6 118 0 50 6 118 0 78 6 118 0 81 6 118 0 90 6 118 0 113 6 118 0 114 6 118 0 125 6 118 0 126 6 118 1 197] 
#[1 6 122 0 2 6 122 0 4 6 122 0 6 6 122 0 7 6 122 0 10 6 121 0 11 6 122 0 13 6 125 0 14 6 129 0 17 6 122 0 19 6 122 0 20 6 122 0 23 6 122 0 24 6 122 0 39 6 122 0 40 6 122 0 41 6 122 0 43 6 122 0 45 6 122 0 46 6 122 0 47 6 122 0 49 6 122 0 50 6 122 0 78 6 122 0 81 6 122 0 90 6 122 0 113 6 122 0 114 6 122 0 125 6 122 0 126 6 122 1 197] 
#[1 6 126 0 2 6 126 0 4 6 126 0 6 6 126 0 7 6 126 0 10 6 121 0 11 6 126 0 13 6 125 0 14 6 129 0 17 6 126 0 19 6 126 0 20 6 126 0 23 6 126 0 24 6 126 0 39 6 126 0 40 6 126 0 41 6 126 0 43 6 126 0 45 6 126 0 46 6 126 0 47 6 126 0 49 6 126 0 50 6 126 0 78 6 126 0 81 6 126 0 90 6 126 0 113 6 126 0 114 6 126 0 125 6 126 0 126 6 126 1 197] 
#[1 6 130 0 2 6 130 0 4 6 130 0 6 6 130 0 7 6 130 0 10 6 121 0 11 6 130 0 13 6 125 0 14 6 129 0 17 6 130 0 19 6 130 0 20 6 130 0 23 6 130 0 24 6 130 0 39 6 130 0 40 6 130 0 41 6 130 0 43 6 130 0 45 6 130 0 46 6 130 0 47 6 130 0 49 6 130 0 50 6 130 0 78 6 130 0 81 6 130 0 90 6 130 0 113 6 130 0 114 6 130 0 125 6 130 0 126 6 130 1 197] 
#[1 6 134 0 2 6 134 0 4 6 134 0 6 6 134 0 7 6 133 0 10 6 137 0 13 6 141 0 19 6 145 0 20 6 134 0 23 6 134 0 24 6 134 0 39 6 134 0 40 6 134 0 41 6 134 0 43 6 134 0 45 6 134 0 46 6 134 0 47 6 134 0 49 6 134 0 50 6 149 0 78 6 153 0 81 6 134 0 90 6 134 0 113 6 134 0 114 6 134 0 125 6 134 0 126 6 134 1 197] 
#[1 6 138 0 2 6 138 0 4 6 138 0 6 6 138 0 7 6 133 0 10 6 137 0 13 6 141 0 19 6 145 0 20 6 138 0 23 6 138 0 24 6 138 0 39 6 138 0 40 6 138 0 41 6 138 0 43 6 138 0 45 6 138 0 46 6 138 0 47 6 138 0 49 6 138 0 50 6 149 0 78 6 153 0 81 6 138 0 90 6 138 0 113 6 138 0 114 6 138 0 125 6 138 0 126 6 138 1 197] 
#[1 6 142 0 2 6 142 0 4 6 142 0 6 6 142 0 7 6 133 0 10 6 137 0 13 6 141 0 19 6 145 0 20 6 142 0 23 6 142 0 24 6 142 0 39 6 142 0 40 6 142 0 41 6 142 0 43 6 142 0 45 6 142 0 46 6 142 0 47 6 142 0 49 6 142 0 50 6 149 0 78 6 153 0 81 6 142 0 90 6 142 0 113 6 142 0 114 6 142 0 125 6 142 0 126 6 142 1 197] 
#[1 6 146 0 2 6 146 0 4 6 146 0 6 6 146 0 7 6 133 0 10 6 137 0 13 6 141 0 19 6 145 0 20 6 146 0 23 6 146 0 24 6 146 0 39 6 146 0 40 6 146 0 41 6 146 0 43 6 146 0 45 6 146 0 46 6 146 0 47 6 146 0 49 6 146 0 50 6 149 0 78 6 153 0 81 6 146 0 90 6 146 0 113 6 146 0 114 6 146 0 125 6 146 0 126 6 146 1 197] 
#[1 6 150 0 2 6 150 0 4 6 150 0 6 6 150 0 7 6 157 0 23 6 161 0 24 6 150 0 39 6 150 0 40 6 150 0 41 6 150 0 43 6 150 0 45 6 150 0 46 6 150 0 47 6 165 0 49 6 169 0 50 6 150 0 90 6 150 0 113 6 150 0 114 6 150 0 125 6 150 0 126 6 150 1 197] 
#[1 6 154 0 2 6 154 0 4 6 154 0 6 6 154 0 7 6 173 0 39 6 154 0 40 6 154 0 41 6 154 0 43 6 154 0 45 6 154 0 46 6 154 0 47 6 154 0 90 6 154 0 113 6 154 0 114 6 154 0 125 6 154 0 126 6 154 1 197] 
#[1 6 158 0 2 6 158 0 4 6 158 0 6 6 158 0 7 6 158 0 40 6 158 0 41 6 158 0 43 6 158 0 45 6 158 0 46 6 177 0 47 6 158 0 90 6 158 0 113 6 158 0 114 6 158 0 125 6 158 0 126 6 158 1 197] 
#[1 6 162 0 2 6 162 0 4 6 162 0 6 6 162 0 7 6 162 0 40 6 162 0 41 6 181 0 45 6 162 0 46 6 162 0 90 6 162 0 113 6 162 0 114 6 162 0 125 6 162 0 126 6 162 1 197] 
#[1 0 214 0 2 0 214 0 4 0 214 0 6 0 214 0 7 0 214 0 40 0 214 0 41 6 181 0 45 0 214 0 46 0 214 0 90 0 214 0 113 0 214 0 114 0 214 0 125 0 214 0 126 0 214 1 197] 
#[1 6 166 0 2 6 166 0 4 6 166 0 6 6 166 0 7 6 185 0 40 6 166 0 41 6 166 0 46 6 166 0 90 6 166 0 113 6 166 0 114 6 166 0 125 6 166 0 126 6 166 1 197] 
#[1 6 170 0 2 6 170 0 4 6 170 0 6 6 170 0 7 6 170 0 41 6 170 0 43 6 181 0 45 6 170 0 90 6 170 0 113 6 170 0 114 6 170 0 125 6 170 0 126 6 170 1 197] 
#[0 16 133 0 114] 
#[0 6 174 0 2 0 6 0 7 0 113 0 114 0 125 0 126 1 197] 
#[0 6 178 0 7 0 113] 
#[0 6 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 6 209 0 132 16 137 0 200 6 221 0 204 6 221 0 205 6 221 0 206 16 137 1 125 16 137 1 126 6 233 1 196] 
#[0 6 186 0 7 0 113] 
#[1 13 173 0 114 16 141 1 110] 
#[1 13 173 0 114 16 145 1 110] 
#[1 0 33 0 1 0 37 0 3 0 159 0 4 3 241 0 5 0 45 0 7 3 245 0 25 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 3 249 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 3 253 0 75 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 4 1 0 95 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 4 5 0 112 0 197 0 116 4 9 0 117 4 65 0 119 4 69 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 4 13 0 132 4 29 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 4 21 0 142 4 25 0 143 4 29 0 144 4 29 0 145 4 29 0 146 4 25 0 147 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 16 153 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 4 25 0 255 4 25 1 1 1 1 1 3 1 113 1 5 4 25 1 6 1 1 1 8 4 25 1 10 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 4 65 1 45 4 69 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 25 1 120 4 25 1 121 4 81 1 196] 
#[0 6 194 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 6 198 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 6 202 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[1 0 10 0 127 16 161 1 51 16 165 1 70] 
#[1 6 206 0 3 0 163 0 127 16 169 0 129 16 177 1 48 16 177 1 49 2 41 1 50 16 177 1 68 2 49 1 70 16 181 1 75] 
#[1 6 214 0 3 6 214 0 8 6 214 0 13 16 185 0 21 16 189 0 114 6 214 0 128] 
#[1 6 206 0 3 16 193 0 8 0 98 0 13 16 197 0 128 16 225 1 54 16 205 1 58 16 209 1 59 16 213 1 60 16 209 1 61 16 209 1 62 16 225 1 63 16 229 1 71 16 233 1 75] 
#[0 6 218 0 3 0 8 0 13 0 128] 
#[0 6 222 0 3 0 8 0 13 0 128] 
#[0 6 226 0 128] 
#[1 16 237 0 128 16 241 1 56] 
#[0 16 245 0 2] 
#[1 2 130 0 5 2 130 0 10 0 167 0 13 2 134 0 21 2 130 0 39 2 130 0 45 13 209 0 69 5 2 0 113 13 213 1 79] 
#[0 16 249 0 13] 
#[1 6 253 0 1 3 45 0 10 7 9 1 76 16 253 1 119] 
#[0 17 1 0 3] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 17 5 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 14 105 0 6] 
#[1 0 171 0 1 6 230 0 3 6 230 0 4 0 171 0 5 0 171 0 7 5 174 0 8 5 174 0 9 5 174 0 10 5 174 0 11 5 174 0 12 5 174 0 13 5 174 0 14 5 174 0 15 5 174 0 16 5 174 0 17 5 174 0 19 5 174 0 20 5 174 0 21 5 174 0 22 5 174 0 23 5 174 0 24 5 174 0 25 5 174 0 26 5 174 0 27 5 174 0 28 5 174 0 29 5 174 0 30 5 174 0 31 5 174 0 32 5 174 0 33 0 171 0 34 0 171 0 35 0 171 0 36 0 171 0 37 6 230 0 38 5 174 0 39 5 174 0 40 5 174 0 41 5 174 0 42 5 174 0 43 5 174 0 44 5 174 0 45 5 174 0 46 5 174 0 47 6 230 0 48 5 174 0 49 5 174 0 50 5 174 0 51 6 230 0 52 6 230 0 53 6 230 0 54 6 230 0 57 6 230 0 58 6 230 0 60 6 230 0 61 6 230 0 62 6 230 0 64 6 230 0 65 6 230 0 67 6 230 0 68 6 230 0 70 6 230 0 72 6 230 0 74 6 230 0 76 6 230 0 77 5 174 0 78 5 174 0 81 6 230 0 82 6 230 0 84 6 230 0 86 6 230 0 87 6 230 0 88 6 230 0 94 6 230 0 98 6 230 0 99 6 230 0 101 6 230 0 102 6 230 0 103 6 230 0 104 6 230 0 105 6 230 0 106 6 230 0 107 6 230 0 108 6 230 0 109 6 230 0 110 6 230 0 111 5 174 0 113 6 230 0 116 6 230 0 119 6 230 0 120 6 230 0 121 0 171 0 123 0 171 0 124 6 230 0 127 5 174 1 195 0 171 1 196 6 230 1 197] 
#[0 17 9 0 3] 
#[1 3 45 0 10 4 189 0 69 17 13 1 18 17 17 1 76 4 205 1 196] 
#[1 6 234 0 7 6 234 0 113 13 173 0 114 17 21 1 110] 
#[1 17 25 0 7 17 29 0 113] 
#[0 6 238 0 7 0 113] 
#[1 8 129 0 1 3 45 0 10 8 149 1 76 17 33 1 111] 
#[1 17 37 0 7 17 29 0 113] 
#[0 17 41 0 3] 
#[1 17 45 0 3 13 57 0 21] 
#[1 17 49 0 7 17 29 0 113] 
#[1 17 53 0 4 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 17 57 0 133 17 57 0 144 17 57 0 145 17 57 0 146 7 33 1 45 7 37 1 46 17 61 1 141 17 65 1 142 17 69 1 143] 
#[0 17 73 0 7] 
#[0 17 77 0 7] 
#[1 4 185 0 3 4 189 0 69 2 65 0 116 17 81 0 132 7 53 1 17 4 201 1 18 4 205 1 196] 
#[1 7 193 0 1 7 197 0 25 2 65 0 116 17 85 0 132] 
#[1 0 102 0 1 0 102 0 5 0 175 0 7 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 47 0 102 0 49 0 102 0 50 0 102 0 51 0 102 0 78 0 102 0 81 0 102 0 123 0 102 0 124 0 102 1 195 0 102 1 196] 
#[0 17 93 0 7] 
#[0 6 242 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 6 246 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 6 250 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 6 254 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 7 2 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[1 17 97 0 22 3 174 0 73 3 174 0 113] 
#[0 7 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 17 101 0 7] 
#[0 17 105 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 17 109 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 17 113 0 1] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 17 117 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 2 65 0 116 17 121 0 132 17 125 1 93 17 129 1 152 17 133 1 194] 
#[1 2 65 0 116 3 73 0 132 17 137 1 91 3 125 1 92 3 129 1 93 17 137 1 130] 
#[1 3 37 0 3 13 37 0 69 17 141 1 94 17 145 1 128] 
#[0 7 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 3 37 0 3 17 149 1 94] 
#[1 0 33 0 1 0 37 0 3 7 14 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 2 97 0 57 2 101 0 58 0 93 0 60 0 97 0 61 7 125 0 62 0 101 0 64 0 105 0 65 2 109 0 67 17 153 0 68 2 17 0 70 0 117 0 72 2 117 0 74 0 125 0 76 7 225 0 77 2 125 0 82 1 141 0 84 2 129 0 86 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 2 133 0 105 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 17 201 0 189 17 201 0 192 17 201 0 193 17 201 0 194 17 201 0 197 1 141 0 198 17 201 0 201 17 201 0 215 17 201 0 216 17 201 0 217 17 201 0 218 17 201 0 221 17 201 0 222 17 201 0 224 17 201 0 225 17 201 0 226 17 201 0 231 17 201 0 233 17 201 0 234 17 201 0 238 17 201 0 239 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 17 201 1 2 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 17 201 1 15 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 17 201 1 118 17 201 1 127 17 201 1 140 17 201 1 145 17 193 1 147 17 197 1 148 17 201 1 149 17 201 1 150 17 201 1 151 17 201 1 177 3 29 1 196] 
#[1 2 65 0 116 17 217 0 132] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 17 221 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 17 221 1 104 17 221 1 105 3 105 1 106 3 105 1 108] 
#[0 17 225 0 22] 
#[0 17 97 0 22] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 2 97 0 57 0 101 0 64 2 17 0 70 2 117 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 12 237 0 185 12 237 0 186 12 241 0 239 1 1 0 240 12 237 0 248 1 209 0 249 1 213 0 252 12 237 0 253 12 245 1 2 1 1 1 3 12 237 1 5 1 1 1 8 1 1 1 12 1 45 1 14 12 249 1 15 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 3 29 1 196] 
#[1 5 69 0 3 5 73 0 25 2 65 0 116 5 97 0 119 5 85 0 132 5 81 1 29 5 85 1 30 5 89 1 31 5 93 1 32 5 97 1 36 5 85 1 37 5 97 1 45] 
#[0 4 158 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 166 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 4 186 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 7 61 0 57 7 69 0 74 2 65 0 116 17 229 0 132 12 253 1 181 13 1 1 182] 
#[0 4 162 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 4 170 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 4 190 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 17 233 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 13 109 0 1 3 45 0 10 13 117 1 76 17 237 1 111 17 241 1 119] 
#[0 17 245 0 1] 
#[0 17 249 0 7] 
#[0 17 253 0 3] 
#[1 4 185 0 3 4 189 0 69 18 1 1 17 4 201 1 18 4 205 1 196] 
#[0 7 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 179 0 2 0 179 0 4 4 214 0 5 0 179 0 6 4 214 0 7 5 30 0 22 4 214 0 39 4 214 0 45 0 179 0 113] 
#[1 8 129 0 1 4 218 0 4 4 218 0 7 3 45 0 10 13 169 0 41 4 218 0 113 18 5 0 114 8 149 1 76 13 177 1 110 13 181 1 111] 
#[0 18 9 0 18] 
#[0 7 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 18 13 0 2] 
#[1 0 102 0 1 0 102 0 5 0 102 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 47 0 102 0 49 0 102 0 50 0 102 0 51 0 102 0 78 0 102 0 81 18 17 0 114 0 102 0 123 0 102 0 124 0 102 1 195 0 102 1 196] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 18 21 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 18 25 0 1] 
#[1 8 129 0 1 7 26 0 4 7 26 0 7 3 45 0 10 7 26 0 113 13 173 0 114 8 149 1 76 18 29 1 110 18 33 1 111] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 18 37 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 18 37 1 104 18 37 1 105 3 105 1 106 3 105 1 108] 
#[0 7 30 0 4 0 7 0 113] 
#[0 7 34 0 4 0 7 0 113] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 18 41 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 7 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 57 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 91 0 92 0 93 0 94 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 196 1 197] 
#[1 8 129 0 1 7 42 0 4 8 137 0 5 3 45 0 10 8 141 0 87 4 9 0 117 7 33 0 119 7 37 0 120 8 145 0 133 8 145 0 144 8 145 0 145 8 145 0 146 7 33 1 45 7 37 1 46 8 149 1 76 18 45 1 97 18 45 1 109 18 45 1 111 18 45 1 115 18 45 1 116 18 45 1 117] 
#[1 8 129 0 1 7 46 0 4 8 137 0 5 3 45 0 10 8 141 0 87 4 9 0 117 7 33 0 119 7 37 0 120 8 145 0 133 8 145 0 144 8 145 0 145 8 145 0 146 7 33 1 45 7 37 1 46 8 149 1 76 18 49 1 97 18 49 1 109 18 49 1 111 18 49 1 115 18 49 1 116 18 49 1 117] 
#[0 7 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 18 53 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 18 53 1 101 3 93 1 102 3 97 1 103 18 53 1 104 18 53 1 105 3 105 1 106 3 105 1 108] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 18 57 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 18 57 1 104 18 57 1 105 3 105 1 106 3 105 1 108] 
#[0 7 54 0 13 0 113] 
#[0 7 58 0 1 0 3 0 22 0 69 1 196] 
#[1 2 65 0 116 8 197 0 132 18 61 1 78] 
#[0 18 65 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 18 69 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 2 65 0 116 18 73 0 132] 
#[0 18 77 0 2] 
#[1 7 62 0 2 7 62 0 3 7 62 0 4 7 62 0 5 7 62 0 6 7 62 0 7 7 62 0 8 7 62 0 10 7 62 0 11 7 62 0 13 7 62 0 14 7 62 0 17 7 62 0 18 7 62 0 19 7 62 0 20 7 62 0 22 7 62 0 23 7 62 0 24 7 62 0 25 7 62 0 26 7 62 0 34 7 62 0 36 0 183 0 39 7 62 0 40 7 62 0 41 7 62 0 43 7 62 0 44 7 62 0 45 7 62 0 46 7 62 0 47 7 62 0 49 7 62 0 50 7 62 0 59 7 62 0 78 7 62 0 81 7 62 0 90 7 62 0 91 7 62 0 92 7 62 0 93 7 62 0 96 7 62 0 113 7 62 0 114 7 62 0 117 7 62 0 119 7 62 0 120 7 62 0 125 7 62 0 126 7 62 1 197] 
#[1 7 66 0 2 7 66 0 3 7 66 0 4 0 187 0 5 7 66 0 6 7 66 0 7 7 66 0 8 7 66 0 10 7 66 0 11 7 66 0 13 7 66 0 14 7 66 0 17 7 66 0 18 7 66 0 19 7 66 0 20 7 66 0 22 7 66 0 23 7 66 0 24 7 66 0 25 7 66 0 26 7 66 0 34 7 66 0 36 7 66 0 39 7 66 0 40 7 66 0 41 7 66 0 43 7 66 0 44 7 66 0 45 7 66 0 46 7 66 0 47 7 66 0 49 7 66 0 50 7 66 0 59 7 66 0 78 7 66 0 81 7 66 0 90 7 66 0 91 7 66 0 92 7 66 0 93 7 66 0 96 7 66 0 113 7 66 0 114 7 66 0 117 7 66 0 119 7 66 0 120 7 66 0 125 7 66 0 126 8 249 0 223 7 66 1 197] 
#[0 18 81 0 6] 
#[0 7 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 80 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[1 7 74 0 2 7 74 0 3 7 74 0 4 7 74 0 5 7 74 0 6 7 74 0 7 7 74 0 8 7 74 0 10 7 74 0 11 7 74 0 13 7 74 0 14 7 74 0 17 7 74 0 18 7 74 0 19 7 74 0 20 7 78 0 21 7 74 0 22 7 74 0 23 7 74 0 24 7 74 0 25 7 74 0 26 7 74 0 34 7 74 0 36 7 74 0 39 7 74 0 40 7 74 0 41 7 74 0 43 7 74 0 44 7 74 0 45 7 74 0 46 7 74 0 47 7 74 0 49 7 74 0 50 7 74 0 59 7 74 0 78 7 74 0 80 7 74 0 81 7 74 0 90 7 74 0 91 7 74 0 92 7 74 0 93 7 74 0 96 7 74 0 113 7 74 0 114 7 74 0 117 7 74 0 119 7 74 0 120 7 74 0 125 7 74 0 126 7 74 1 197] 
#[1 0 102 0 1 0 191 0 4 0 102 0 5 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 47 0 102 0 49 0 102 0 50 0 102 0 51 0 102 0 78 0 102 0 81 0 102 0 113 0 102 0 123 0 102 0 124 0 102 1 195 0 102 1 196] 
#[0 0 195 0 4 0 113] 
#[1 0 33 0 1 3 169 0 3 3 173 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 3 181 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 14 141 0 185 14 141 0 186 3 189 0 204 3 189 0 205 3 189 0 206 18 85 0 212 18 85 0 213 1 1 0 240 14 141 0 248 1 209 0 249 1 213 0 252 14 141 0 253 1 1 1 3 14 141 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 3 233 1 196] 
#[0 7 86 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 7 90 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 18 89 0 4 7 21 0 5 11 77 0 112 2 65 0 116 4 9 0 117 7 33 0 119 7 37 0 120 9 229 0 132 11 81 0 133 11 81 0 144 11 81 0 145 11 81 0 146 18 93 0 207 18 97 0 211 18 97 0 213 7 33 1 45 7 37 1 46 11 85 1 196] 
#[1 14 81 0 41 13 173 0 114 14 85 1 110] 
#[1 2 65 0 116 18 101 0 132] 
#[1 0 102 0 1 0 102 0 5 0 199 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 47 0 102 0 49 0 102 0 50 0 102 0 51 0 102 0 78 0 102 0 81 0 102 0 113 13 173 0 114 0 102 0 123 0 102 0 124 14 65 1 110 0 102 1 195 0 102 1 196] 
#[1 5 130 0 1 0 203 0 2 0 203 0 4 5 130 0 5 0 203 0 6 5 130 0 8 5 130 0 9 5 130 0 10 5 130 0 11 5 130 0 12 5 130 0 13 5 130 0 14 5 130 0 15 5 130 0 16 5 130 0 17 5 130 0 19 5 130 0 20 5 130 0 21 0 203 0 22 5 130 0 23 5 130 0 24 5 130 0 25 5 130 0 26 5 130 0 27 5 130 0 28 5 130 0 29 5 130 0 30 5 130 0 31 5 130 0 32 5 130 0 33 5 130 0 34 5 130 0 35 5 130 0 36 5 130 0 37 5 130 0 39 5 130 0 40 5 130 0 41 5 130 0 42 5 130 0 43 5 130 0 44 5 130 0 45 5 130 0 46 5 130 0 47 5 130 0 49 5 130 0 50 5 130 0 51 5 130 0 78 5 130 0 81 0 203 0 113 5 130 0 123 5 130 0 124 5 130 1 195 5 130 1 196] 
#[0 7 98 0 6 0 113] 
#[0 18 105 0 6] 
#[0 7 102 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 5 173 0 3 5 177 0 5 18 109 0 6 3 177 0 112 4 93 0 113 2 65 0 116 9 229 0 132 18 113 0 139 3 189 0 204 3 189 0 205 3 189 0 206 18 117 0 210 9 61 0 212 9 61 0 213 18 121 0 214 8 125 1 196] 
#[0 7 106 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 7 110 0 2 0 6] 
#[0 7 114 0 2 0 4 0 6 0 7 0 90 0 113] 
#[0 7 118 0 2] 
#[0 7 122 0 2 0 113] 
#[0 7 126 0 2 0 4 0 6 0 113] 
#[1 7 130 0 2 7 130 0 4 7 130 0 6 9 77 0 22 7 130 0 113 18 125 0 148] 
#[1 7 134 0 2 7 134 0 4 7 134 0 6 7 134 0 113 13 173 0 114 18 129 1 110] 
#[1 7 138 0 2 7 138 0 4 7 138 0 6 9 77 0 22 7 138 0 113 18 133 0 148] 
#[1 0 207 0 2 0 207 0 4 0 207 0 6 0 211 0 22 0 215 0 41 0 207 0 113 0 147 0 114 18 141 0 148 18 145 1 110] 
#[1 7 146 0 2 7 146 0 4 7 146 0 6 9 77 0 22 18 149 0 41 7 146 0 113 13 173 0 114 18 153 0 148 18 157 1 110] 
#[0 7 150 0 1 0 4 0 7 0 10 0 22 0 41 0 113 0 114] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 18 161 0 241 3 217 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 18 165 0 1] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 18 169 0 241 3 217 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 18 173 0 2] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 18 181 0 212 18 181 0 213 18 181 0 245 18 181 1 0 8 125 1 196] 
#[0 7 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 7 158 0 4 0 113] 
#[0 18 185 0 2] 
#[0 7 162 0 4 0 113] 
#[0 18 189 0 1] 
#[0 18 193 0 1] 
#[0 18 197 0 3] 
#[0 7 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 7 170 0 6 0 113] 
#[0 7 174 0 6 0 113] 
#[0 18 201 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 18 205 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 18 209 0 1] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 18 213 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 0 33 0 1 0 37 0 3 0 159 0 4 3 241 0 5 0 45 0 7 3 245 0 25 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 3 249 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 3 253 0 75 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 4 1 0 95 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 4 5 0 112 0 197 0 116 4 9 0 117 4 65 0 119 4 69 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 4 13 0 132 4 29 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 4 21 0 142 4 25 0 143 4 29 0 144 4 29 0 145 4 29 0 146 4 25 0 147 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 18 217 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 4 25 0 255 4 25 1 1 1 1 1 3 1 113 1 5 4 25 1 6 1 1 1 8 4 25 1 10 1 1 1 12 18 221 1 13 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 4 65 1 45 4 69 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 25 1 120 4 25 1 121 4 81 1 196] 
#[0 7 178 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 7 182 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 7 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 7 190 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 7 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 195 1 196 1 197] 
#[0 7 198 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 18 225 0 1] 
#[1 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 18 229 0 133 18 229 0 144 18 229 0 145 18 229 0 146 7 33 1 45 7 37 1 46 18 233 1 120 18 237 1 121 15 9 1 196] 
#[1 13 109 0 1 18 241 0 7 3 45 0 10 9 77 0 22 13 173 0 114 18 245 0 148 13 117 1 76 18 249 1 110 18 253 1 111 14 153 1 119] 
#[1 7 21 0 5 19 1 0 59 19 5 0 96 4 9 0 117 7 33 0 119 7 37 0 120 19 9 0 133 19 9 0 144 19 9 0 145 19 9 0 146 7 33 1 45 7 37 1 46 19 13 1 120 19 17 1 121 15 9 1 196] 
#[0 19 21 0 7] 
#[0 7 202 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 7 206 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 7 210 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 7 214 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 7 218 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 7 222 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 7 226 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 7 230 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[1 9 185 0 75 9 189 0 95] 
#[0 7 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 195 1 196 1 197] 
#[0 19 25 0 4] 
#[0 7 238 0 80] 
#[0 7 242 0 80] 
#[0 7 246 0 3 0 113] 
#[1 7 250 0 3 19 29 0 113] 
#[0 7 254 0 3 0 113] 
#[0 8 2 0 3] 
#[0 8 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 19 33 0 185 19 33 0 186 19 33 0 188 1 1 0 240 19 33 0 248 1 209 0 249 1 213 0 252 19 33 0 253 1 1 1 3 19 33 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 19 37 0 117] 
#[0 8 10 0 7 0 73] 
#[1 19 41 0 4 10 81 0 117 19 45 1 42] 
#[0 8 14 0 73] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 19 49 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 19 53 0 1 2 65 0 116 19 57 0 132] 
#[0 19 61 0 1] 
#[0 6 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 8 18 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 19 65 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 19 69 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 19 73 0 1] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 19 77 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 8 22 0 7] 
#[0 8 26 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 13 109 0 1 3 45 0 10 13 117 1 76 17 237 1 111 19 81 1 119] 
#[0 19 85 0 3] 
#[1 0 33 0 1 19 89 0 2 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 19 93 0 185 19 93 0 186 19 93 0 188 1 1 0 240 19 93 0 248 1 209 0 249 1 213 0 252 19 93 0 253 1 1 1 3 19 93 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 19 97 0 7 6 205 0 113] 
#[1 3 210 0 7 9 77 0 22 8 30 0 78 3 210 0 90 3 210 0 113 11 97 0 148] 
#[1 19 101 0 7 11 105 0 113] 
#[1 3 214 0 7 19 105 0 90 3 214 0 113] 
#[1 9 77 0 22 8 34 0 78 11 109 0 148] 
#[0 19 109 0 78] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 19 113 0 185 19 113 0 186 19 113 0 188 1 1 0 240 19 113 0 248 1 209 0 249 1 213 0 252 19 113 0 253 1 1 1 3 19 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 19 117 0 185 19 117 0 186 1 1 0 240 19 117 0 248 1 209 0 249 1 213 0 252 19 117 0 253 1 1 1 3 19 117 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 19 121 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 19 125 0 185 19 125 0 186 19 125 0 188 1 1 0 240 19 125 0 248 1 209 0 249 1 213 0 252 19 125 0 253 1 1 1 3 19 125 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 19 129 0 2 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 19 133 0 185 19 133 0 186 19 133 0 188 1 1 0 240 19 133 0 248 1 209 0 249 1 213 0 252 19 133 0 253 1 1 1 3 19 133 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 19 137 0 7 6 205 0 113] 
#[1 4 74 0 7 9 77 0 22 8 30 0 78 8 30 0 90 4 74 0 113 12 69 0 148] 
#[1 9 77 0 22 8 34 0 78 8 34 0 90 12 81 0 148] 
#[0 8 38 0 78 0 90] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 19 141 0 185 19 141 0 186 19 141 0 188 1 1 0 240 19 141 0 248 1 209 0 249 1 213 0 252 19 141 0 253 1 1 1 3 19 141 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 19 145 0 185 19 145 0 186 1 1 0 240 19 145 0 248 1 209 0 249 1 213 0 252 19 145 0 253 1 1 1 3 19 145 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 5 181 0 132 19 149 0 203 5 193 0 204 5 193 0 205 5 193 0 206 5 197 1 196] 
#[0 19 153 0 90] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 15 177 0 132 15 177 0 204 15 177 0 205 15 177 0 206 15 177 0 220] 
#[0 19 165 0 90] 
#[0 19 169 0 3] 
#[0 19 173 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 19 177 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 19 181 0 2] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 19 185 0 189 19 185 0 192 19 185 0 193 19 185 0 194 19 185 0 201 19 185 0 215 19 185 0 216 19 185 0 217 19 185 0 218 19 185 0 221 19 185 0 222 19 185 0 224 19 185 0 225 19 185 0 226 19 185 0 231 19 185 0 233 19 185 0 234 19 185 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 8 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 2 65 0 116 19 189 0 132 19 189 1 37] 
#[0 8 46 0 73] 
#[1 19 193 0 4 2 65 0 116 10 221 0 117 10 233 0 132 19 197 1 35 10 233 1 37] 
#[0 8 50 0 73] 
#[0 8 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 8 58 0 73] 
#[0 8 62 0 73] 
#[0 8 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 8 70 0 2 0 113] 
#[0 8 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 33 0 1 19 201 0 2 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 19 205 0 112 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 19 209 0 185 19 209 0 186 1 1 0 240 19 209 0 248 1 209 0 249 1 213 0 252 19 209 0 253 1 1 1 3 19 209 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 8 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 19 213 0 13 19 217 0 113] 
#[0 8 82 0 13 0 113] 
#[0 8 86 0 13 0 113] 
#[1 0 33 0 1 19 221 0 2 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 11 17 0 112 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 19 225 0 162 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 11 25 0 185 11 25 0 186 1 1 0 240 11 25 0 248 1 209 0 249 1 213 0 252 11 25 0 253 1 1 1 3 11 25 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 19 229 0 3 19 233 0 227] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 19 245 0 132 19 245 0 204 19 245 0 205 19 245 0 206 19 245 0 237] 
#[0 8 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 8 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 8 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 7 82 0 4] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 18 85 0 212 18 85 0 213 8 125 1 196] 
#[0 7 94 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 8 102 0 7 0 113] 
#[1 8 106 0 7 9 77 0 22 8 106 0 90 8 106 0 113 19 249 0 148] 
#[1 9 77 0 22 19 253 0 148] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 20 1 0 189 20 1 0 192 20 1 0 193 20 1 0 194 20 1 0 201 20 1 0 215 20 1 0 216 20 1 0 217 20 1 0 218 20 1 0 221 20 1 0 222 20 1 0 224 20 1 0 225 20 1 0 226 20 1 0 231 20 1 0 233 20 1 0 234 20 1 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 20 5 0 189 20 5 0 192 20 5 0 193 20 5 0 194 20 5 0 201 20 5 0 215 20 5 0 216 20 5 0 217 20 5 0 218 20 5 0 221 20 5 0 222 20 5 0 224 20 5 0 225 20 5 0 226 20 5 0 231 20 5 0 233 20 5 0 234 20 5 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 4 94 0 3 4 94 0 127 4 94 0 129 20 9 1 66 12 113 1 67] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 20 13 0 185 20 13 0 186 20 13 0 188 1 1 0 240 20 13 0 248 1 209 0 249 1 213 0 252 20 13 0 253 1 1 1 3 20 13 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 8 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 8 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 20 17 0 125 20 21 0 126] 
#[0 8 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 20 25 0 6 6 205 0 113] 
#[1 20 29 0 6 6 205 0 113] 
#[0 8 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 8 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 8 130 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 20 33 0 185 20 33 0 186 1 1 0 240 20 33 0 248 1 209 0 249 1 213 0 252 20 33 0 253 1 1 1 3 20 33 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 8 134 0 7 0 113] 
#[1 8 138 0 7 9 77 0 22 8 138 0 113 20 37 0 148] 
#[1 8 142 0 7 9 77 0 22 8 142 0 113 20 41 0 148] 
#[1 0 33 0 1 0 37 0 3 8 146 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 7 45 0 189 7 45 0 192 7 45 0 193 7 45 0 194 7 45 0 196 7 45 0 197 1 141 0 198 7 45 0 201 7 45 0 215 7 45 0 216 7 45 0 217 7 45 0 218 7 45 0 221 7 45 0 222 7 45 0 224 7 45 0 225 7 45 0 226 7 45 0 231 7 45 0 233 7 45 0 234 7 45 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 20 45 0 4] 
#[0 8 150 0 4] 
#[0 8 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 195 1 196 1 197] 
#[0 20 49 0 127] 
#[0 8 158 0 3 0 127 0 129] 
#[0 8 162 0 3 0 127 0 129] 
#[0 8 166 0 3 0 127 0 129] 
#[0 20 53 0 3] 
#[0 8 170 0 128] 
#[0 20 57 0 128] 
#[1 8 174 0 13 20 61 1 73] 
#[1 8 178 0 3 8 178 0 8 8 178 0 13 8 178 0 22 16 189 0 114 8 178 0 128] 
#[0 8 182 0 3 0 8 0 13 0 22 0 128] 
#[1 20 65 0 8 0 98 0 13 20 69 1 71] 
#[0 8 186 0 3 0 8 0 13 0 128] 
#[1 6 206 0 3 8 190 0 8 8 190 0 13 16 197 0 128 16 225 1 54 20 73 1 59 20 73 1 61 20 73 1 62 16 225 1 63 16 233 1 75] 
#[0 8 194 0 3 0 8 0 13 0 128] 
#[0 8 198 0 3 0 8 0 13 0 128] 
#[1 8 202 0 3 8 202 0 8 8 202 0 13 20 77 0 22 8 202 0 128 20 81 1 64] 
#[0 20 85 0 13] 
#[0 20 89 0 3] 
#[1 8 206 0 3 8 206 0 8 8 206 0 13 16 185 0 21 8 206 0 128] 
#[0 8 210 0 128] 
#[1 13 173 0 114 20 93 1 110] 
#[1 4 113 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 4 117 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 1 1 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 4 125 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 4 125 0 167 20 97 0 168 20 97 0 169 1 1 0 240 1 1 1 3 1 1 1 8 1 1 1 12 20 97 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 4 133 1 196] 
#[0 20 101 0 3] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 20 105 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 20 109 0 2] 
#[1 20 113 0 4 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 17 57 0 133 17 57 0 144 17 57 0 145 17 57 0 146 7 33 1 45 7 37 1 46 20 117 1 141 17 65 1 142 17 69 1 143] 
#[0 20 121 0 3] 
#[1 4 189 0 69 20 125 1 18 4 205 1 196] 
#[0 8 214 0 7 0 113] 
#[0 8 218 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 2 65 0 116 12 181 0 132 20 129 1 180] 
#[0 20 133 0 7] 
#[0 8 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 26 0 4 7 125 0 62 8 69 0 68 7 133 0 77 2 125 0 82 2 129 0 86 2 133 0 105 2 245 1 28 2 245 1 118 2 245 1 127 2 245 1 145 2 245 1 151 2 245 1 163 20 137 1 167 2 241 1 168 2 245 1 169 2 245 1 172 2 245 1 174 2 245 1 175 2 245 1 176 2 245 1 177] 
#[1 8 226 0 4 7 61 0 57 20 141 0 58 2 109 0 67 20 145 0 68 7 69 0 74 8 5 0 77 2 125 0 82 20 149 0 84 7 81 0 86 7 85 0 107 20 153 0 197 1 141 0 198 20 157 1 127 20 177 1 140 20 161 1 151 20 165 1 178 20 169 1 181 20 173 1 182 20 177 1 188 20 181 1 189 20 185 1 190 20 189 1 191 20 193 1 192] 
#[0 8 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 8 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 8 238 0 4 20 197 0 22 8 238 0 113] 
#[0 20 201 0 4] 
#[1 8 242 0 4 20 205 0 113] 
#[0 8 246 0 4 0 113] 
#[0 8 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 8 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 4 185 0 3 3 45 0 10 4 189 0 69 12 169 1 17 20 209 1 18 17 17 1 76 4 205 1 196] 
#[1 20 213 0 1 3 45 0 10 8 149 1 76 17 33 1 111] 
#[0 9 2 0 4 0 62 0 68 0 77 0 82 0 86 0 105 1 197] 
#[0 9 6 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 2 65 0 116 17 121 0 132 17 125 1 93 17 129 1 152] 
#[0 9 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 20 217 0 3] 
#[0 20 221 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 20 225 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 20 229 0 2] 
#[0 2 134 0 7 0 21] 
#[1 9 14 0 7 20 233 0 21] 
#[0 20 237 0 7] 
#[0 20 241 0 1] 
#[0 9 18 0 3] 
#[0 9 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 3 37 0 3 20 245 1 94] 
#[0 9 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 4 237 0 57 2 101 0 58 7 125 0 62 2 109 0 67 4 245 0 74 8 5 0 77 2 125 0 82 1 141 0 84 2 129 0 86 2 133 0 105 0 177 0 107 20 249 0 197 1 141 0 198 20 253 0 201 21 1 0 239 21 5 1 2 21 9 1 15 21 13 1 118 21 17 1 127 21 21 1 140 21 25 1 145 21 29 1 151 21 33 1 177 7 189 1 196] 
#[0 9 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 9 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 9 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 9 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 9 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 9 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 9 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 9 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 9 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 21 37 0 4] 
#[1 0 33 0 1 0 37 0 3 9 66 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 2 97 0 57 2 101 0 58 0 93 0 60 0 97 0 61 7 125 0 62 0 101 0 64 0 105 0 65 2 109 0 67 17 153 0 68 2 17 0 70 0 117 0 72 2 117 0 74 0 125 0 76 7 225 0 77 2 125 0 82 1 141 0 84 2 129 0 86 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 2 133 0 105 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 21 41 0 189 21 41 0 192 21 41 0 193 21 41 0 194 21 41 0 197 1 141 0 198 21 41 0 201 21 41 0 215 21 41 0 216 21 41 0 217 21 41 0 218 21 41 0 221 21 41 0 222 21 41 0 224 21 41 0 225 21 41 0 226 21 41 0 231 21 41 0 233 21 41 0 234 21 41 0 238 21 41 0 239 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 21 41 1 2 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 21 41 1 15 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 21 41 1 118 21 41 1 127 21 41 1 140 21 41 1 145 21 41 1 149 21 41 1 150 21 41 1 151 21 41 1 177 3 29 1 196] 
#[0 9 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 9 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 9 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 9 82 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 9 86 0 3 0 21] 
#[0 21 45 0 7] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 21 49 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 21 49 1 104 21 49 1 105 3 105 1 106 3 105 1 108] 
#[0 17 89 0 7] 
#[0 21 53 0 2] 
#[0 21 57 0 7] 
#[0 21 61 0 3] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 21 65 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 9 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 21 69 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 9 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 3 33 0 1 8 105 0 3 8 109 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 8 113 0 132 3 189 0 204 3 189 0 205 3 189 0 206 18 85 0 212 18 85 0 213 3 77 1 45 3 81 1 46 3 85 1 76 18 37 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 18 37 1 104 18 37 1 105 3 105 1 106 3 105 1 108 8 125 1 196] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 21 73 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 21 73 1 104 21 73 1 105 3 105 1 106 3 105 1 108] 
#[1 9 98 0 3 9 98 0 4 9 98 0 7 9 98 0 113 13 173 0 114 21 77 1 110] 
#[1 21 81 0 89 21 85 0 97] 
#[0 21 89 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 21 93 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 9 102 0 4 0 7 0 113] 
#[0 9 106 0 4 0 7 0 113] 
#[0 9 110 0 2 0 3 0 4 0 5 0 6 0 7 0 18 0 22 0 59 0 90 0 91 0 92 0 93 0 96 0 113 0 117 0 119 0 120] 
#[0 21 97 0 2] 
#[0 9 114 0 4 0 7 0 113] 
#[0 9 118 0 4 0 7 0 113] 
#[0 9 122 0 6 0 113] 
#[0 9 126 0 13 0 113] 
#[0 9 130 0 13 0 113] 
#[0 21 101 0 18] 
#[0 21 105 0 2] 
#[0 9 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 21 109 0 18] 
#[0 9 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 9 142 0 4 0 113] 
#[0 9 146 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 21 113 0 4] 
#[0 9 150 0 4 0 113] 
#[1 7 142 0 4 9 77 0 22 18 137 0 41 7 142 0 113 13 173 0 114 18 141 0 148 18 145 1 110] 
#[0 9 154 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 9 158 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 5 173 0 3 5 177 0 5 21 117 0 6 3 177 0 112 9 213 0 113 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 14 45 0 212 14 45 0 213 21 121 0 214 8 125 1 196] 
#[0 9 162 0 6 0 113] 
#[0 21 125 0 6] 
#[0 9 166 0 2 0 4 0 6 0 113] 
#[0 9 170 0 2 0 4 0 6 0 113] 
#[0 9 174 0 2 0 4 0 6 0 113] 
#[0 9 178 0 2 0 4 0 6 0 113] 
#[0 9 182 0 2 0 4 0 6 0 113] 
#[1 9 186 0 2 9 186 0 4 9 186 0 6 9 77 0 22 9 186 0 113 21 129 0 148] 
#[1 9 190 0 2 9 190 0 4 9 190 0 6 9 190 0 113 13 173 0 114 21 133 1 110] 
#[0 9 194 0 2 0 4 0 6 0 113] 
#[1 9 198 0 2 9 198 0 4 9 198 0 6 9 77 0 22 9 198 0 113 21 137 0 148] 
#[0 21 141 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 21 145 0 241 3 217 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 21 149 0 2] 
#[0 21 153 0 3] 
#[0 9 202 0 2] 
#[0 21 157 0 2] 
#[0 21 161 0 3] 
#[0 21 165 0 2] 
#[1 5 173 0 3 5 177 0 5 2 65 0 116 21 169 0 132 21 173 0 204 21 173 0 205 21 173 0 206 21 177 0 212 21 177 0 213 21 177 0 245 21 177 1 0 21 181 1 114 21 185 1 122 8 125 1 196] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 21 189 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 21 193 0 3] 
#[0 21 197 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 21 201 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 21 205 0 2] 
#[0 9 206 0 4] 
#[0 21 209 0 4] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 21 213 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 8 129 0 1 21 217 0 7 3 45 0 10 9 77 0 22 13 173 0 114 21 221 0 148 8 149 1 76 21 225 1 110 21 229 1 111] 
#[0 9 210 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 9 214 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 9 218 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 21 233 0 7] 
#[1 21 237 0 7 9 77 0 22 21 241 0 148] 
#[1 21 245 0 3 21 249 0 7] 
#[0 21 253 0 1] 
#[1 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 22 1 0 133 22 1 0 144 22 1 0 145 22 1 0 146 7 33 1 45 7 37 1 46 22 5 1 120 22 9 1 121 15 9 1 196] 
#[1 8 129 0 1 22 13 0 7 3 45 0 10 9 77 0 22 13 173 0 114 22 17 0 148 8 149 1 76 22 21 1 110 22 25 1 111] 
#[0 9 222 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 9 226 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 9 230 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 9 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 78 0 81 0 82 0 84 0 86 0 87 0 88 0 90 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 1 195 1 196 1 197] 
#[1 2 65 0 116 3 73 0 132 22 29 1 91 3 125 1 92 3 129 1 93 22 29 1 130] 
#[1 22 33 0 2 6 205 0 113] 
#[0 9 238 0 4 0 113] 
#[0 9 242 0 7 0 73] 
#[0 9 246 0 4 0 113] 
#[0 22 37 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 22 41 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 22 45 0 1] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 22 49 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 22 53 0 3] 
#[0 22 57 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 22 61 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 22 65 0 2] 
#[0 22 69 0 3] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 22 73 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 22 77 0 189 22 77 0 192 22 77 0 193 22 77 0 194 22 77 0 201 22 77 0 215 22 77 0 216 22 77 0 217 22 77 0 218 22 77 0 221 22 77 0 222 22 77 0 224 22 77 0 225 22 77 0 226 22 77 0 231 22 77 0 233 22 77 0 234 22 77 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 22 81 0 2 6 205 0 113] 
#[1 0 33 0 1 22 85 0 2 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 22 89 0 185 22 89 0 186 22 89 0 188 1 1 0 240 22 89 0 248 1 209 0 249 1 213 0 252 22 89 0 253 1 1 1 3 22 89 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 22 93 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 22 97 0 185 22 97 0 186 22 97 0 188 1 1 0 240 22 97 0 248 1 209 0 249 1 213 0 252 22 97 0 253 1 1 1 3 22 97 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 22 101 0 185 22 101 0 186 1 1 0 240 22 101 0 248 1 209 0 249 1 213 0 252 22 101 0 253 1 1 1 3 22 101 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 22 105 0 185 22 105 0 186 22 105 0 188 1 1 0 240 22 105 0 248 1 209 0 249 1 213 0 252 22 105 0 253 1 1 1 3 22 105 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 22 109 0 2 6 205 0 113] 
#[0 22 113 0 2] 
#[1 0 33 0 1 22 117 0 2 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 22 121 0 185 22 121 0 186 22 121 0 188 1 1 0 240 22 121 0 248 1 209 0 249 1 213 0 252 22 121 0 253 1 1 1 3 22 121 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 22 125 0 7 6 205 0 113] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 22 129 0 189 22 129 0 192 22 129 0 193 22 129 0 194 22 129 0 201 22 129 0 215 22 129 0 216 22 129 0 217 22 129 0 218 22 129 0 221 22 129 0 222 22 129 0 224 22 129 0 225 22 129 0 226 22 129 0 231 22 129 0 233 22 129 0 234 22 129 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 22 133 0 2 6 205 0 113] 
#[1 0 33 0 1 22 137 0 2 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 22 141 0 185 22 141 0 186 22 141 0 188 1 1 0 240 22 141 0 248 1 209 0 249 1 213 0 252 22 141 0 253 1 1 1 3 22 141 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 22 145 0 2 6 205 0 113] 
#[0 22 149 0 2] 
#[0 22 153 0 90] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 22 157 0 185 22 157 0 186 1 1 0 240 22 157 0 248 1 209 0 249 1 213 0 252 22 157 0 253 1 1 1 3 22 157 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 8 30 0 90] 
#[0 8 34 0 90] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 22 161 0 185 22 161 0 186 1 1 0 240 22 161 0 248 1 209 0 249 1 213 0 252 22 161 0 253 1 1 1 3 22 161 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 22 165 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 22 169 0 3] 
#[0 22 173 0 2] 
#[0 22 177 0 3] 
#[1 9 250 0 1 9 250 0 3 9 250 0 4 9 250 0 5 9 250 0 7 9 250 0 34 9 250 0 35 9 250 0 36 9 250 0 37 9 250 0 38 9 250 0 48 9 250 0 52 9 250 0 53 9 250 0 54 9 250 0 55 9 250 0 57 9 250 0 58 9 250 0 60 9 250 0 61 9 250 0 62 9 250 0 63 9 250 0 64 9 250 0 65 22 181 0 66 9 250 0 67 9 250 0 68 9 250 0 70 9 250 0 72 9 250 0 74 9 250 0 76 9 250 0 77 9 250 0 82 9 250 0 84 9 250 0 86 9 250 0 87 9 250 0 88 9 250 0 94 9 250 0 98 9 250 0 99 9 250 0 101 9 250 0 102 9 250 0 103 9 250 0 104 9 250 0 105 9 250 0 106 9 250 0 107 9 250 0 108 9 250 0 109 9 250 0 110 9 250 0 111 9 250 0 116 9 250 0 119 9 250 0 120 9 250 0 121 9 250 0 123 9 250 0 124 9 250 0 127 9 250 1 196 9 250 1 197] 
#[0 9 254 0 4 0 113] 
#[0 10 2 0 73] 
#[0 10 6 0 4 0 113] 
#[0 10 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 22 185 0 185 22 185 0 186 1 1 0 240 22 185 0 248 1 209 0 249 1 213 0 252 22 185 0 253 1 1 1 3 22 185 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 10 14 0 2 0 113] 
#[0 10 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 80 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 22 189 1 82 22 189 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 22 189 1 104 22 189 1 105 3 105 1 106 3 105 1 108] 
#[0 10 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 22 193 0 2 22 197 0 113] 
#[1 22 201 0 4 22 205 0 55 22 209 0 63 22 213 0 228 22 217 0 229 22 221 0 230] 
#[0 10 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 10 30 0 2] 
#[0 10 34 0 2] 
#[0 22 225 0 2] 
#[0 10 38 0 7 0 90 0 113] 
#[0 10 42 0 7 0 90 0 113] 
#[0 10 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 10 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 22 229 0 127] 
#[1 6 205 0 113 10 54 0 125 10 54 0 126] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 22 233 0 185 22 233 0 186 22 233 0 188 1 1 0 240 22 233 0 248 1 209 0 249 1 213 0 252 22 233 0 253 1 1 1 3 22 233 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 10 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 10 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 10 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 10 70 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 10 74 0 7 0 113] 
#[0 10 78 0 7 0 113] 
#[0 10 82 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 22 237 0 8] 
#[1 0 33 0 1 2 57 0 3 0 98 0 4 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 4 89 0 112 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 22 249 0 140 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 22 249 0 185 22 249 0 186 1 1 0 240 22 249 0 248 1 209 0 249 1 213 0 252 22 249 0 253 1 1 1 3 22 249 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 22 249 1 69 2 49 1 70 22 253 1 71 2 53 1 196] 
#[0 10 86 0 3 0 8 0 13 0 22 0 128] 
#[0 23 1 0 13] 
#[1 8 174 0 13 23 5 1 73] 
#[0 23 9 0 13] 
#[0 10 90 0 3 0 8 0 13 0 128] 
#[1 6 206 0 3 23 13 0 119 0 7 0 127 23 13 1 45 23 25 1 48 23 25 1 49 2 41 1 50 23 25 1 52 23 25 1 65 2 49 1 70 23 29 1 75] 
#[0 10 94 0 3 0 8 0 13 0 128] 
#[0 10 98 0 3 0 127 0 129] 
#[1 4 89 0 112 23 33 0 140] 
#[0 10 102 0 3 0 18] 
#[0 10 106 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 78 0 81 0 90 0 113 0 114 0 125 0 126 1 197] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 23 37 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 23 41 0 4] 
#[1 10 110 0 3 10 110 0 18 13 173 0 114 23 45 1 110] 
#[0 10 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 23 49 0 4] 
#[1 10 118 0 4 8 137 0 5 23 53 0 59 23 65 0 91 23 65 0 92 23 65 0 93 23 57 0 96 4 9 0 117 7 33 0 119 7 37 0 120 23 61 0 133 23 61 0 144 23 61 0 145 23 61 0 146 7 33 1 45 7 37 1 46 23 65 1 113 23 81 1 116 23 73 1 183 23 77 1 184 23 81 1 185 23 81 1 186 23 81 1 187] 
#[0 23 93 0 3] 
#[0 10 122 0 7 0 113] 
#[0 10 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 23 97 0 4] 
#[1 0 50 0 3 0 50 0 5 7 57 0 67 0 219 0 116 12 181 0 132 12 185 1 179 12 189 1 180 0 50 1 196] 
#[1 7 61 0 57 20 141 0 58 2 109 0 67 7 69 0 74 8 5 0 77 2 125 0 82 20 149 0 84 7 81 0 86 7 85 0 107 23 101 0 197 1 141 0 198 23 105 1 127 23 125 1 140 23 109 1 151 23 113 1 178 23 117 1 181 23 121 1 182 23 125 1 188 23 129 1 189] 
#[1 0 58 0 3 0 58 0 5 0 223 0 116 12 181 0 132 12 197 1 179 12 189 1 180 0 58 1 196] 
#[0 10 130 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 134 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 138 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 142 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 146 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 150 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 154 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 10 158 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 23 133 0 4] 
#[1 10 162 0 4 7 61 0 57 20 141 0 58 2 109 0 67 20 145 0 68 7 69 0 74 8 5 0 77 2 125 0 82 20 149 0 84 7 81 0 86 7 85 0 107 20 153 0 197 1 141 0 198 20 157 1 127 20 177 1 140 20 161 1 151 20 165 1 178 20 169 1 181 20 173 1 182 20 177 1 188 20 181 1 189 23 137 1 192] 
#[0 10 166 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 23 145 0 185 23 145 0 186 1 1 0 240 23 145 0 248 1 209 0 249 1 213 0 252 23 145 0 253 1 1 1 3 23 145 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 23 145 1 144 2 53 1 196] 
#[0 10 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 10 174 0 4 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 17 57 0 133 17 57 0 144 17 57 0 145 17 57 0 146 7 33 1 45 7 37 1 46 23 149 1 143] 
#[0 23 153 0 3] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 23 157 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 23 161 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 23 165 0 3] 
#[0 23 169 0 2] 
#[0 23 173 0 3] 
#[1 2 65 0 116 23 177 0 132] 
#[0 10 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 23 181 0 119 1 45] 
#[0 10 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 10 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 10 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 10 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 10 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 10 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 10 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 10 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 10 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 10 218 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 10 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 10 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 10 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 10 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196] 
#[0 10 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 23 185 0 7] 
#[1 9 98 0 3 9 98 0 7 13 173 0 114 23 189 1 110] 
#[0 10 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 23 193 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 23 197 0 2] 
#[0 23 201 0 4] 
#[0 10 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 10 250 0 3 0 4 0 7 0 113] 
#[0 23 205 0 6] 
#[0 23 209 0 6] 
#[1 10 254 0 4 10 254 0 7 10 254 0 113 13 173 0 114 23 213 1 110] 
#[0 23 217 0 2] 
#[1 11 2 0 3 11 2 0 4 11 2 0 7 11 2 0 113 13 173 0 114 23 221 1 110] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 23 225 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 23 225 1 104 23 225 1 105 3 105 1 106 3 105 1 108] 
#[0 23 229 0 18] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 23 233 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 23 233 1 104 23 233 1 105 3 105 1 106 3 105 1 108] 
#[0 11 6 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 11 10 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 23 237 0 6] 
#[0 11 14 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[0 11 18 0 2 0 4 0 6 0 113] 
#[0 11 22 0 2 0 4 0 6 0 113] 
#[0 11 26 0 2 0 4 0 6 0 113] 
#[0 23 241 0 3] 
#[0 23 245 0 2] 
#[0 23 249 0 3] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 23 253 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 24 1 0 3] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 24 5 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 13 173 0 114 24 9 1 110] 
#[1 2 214 0 2 9 77 0 22 11 30 0 114 9 81 0 148] 
#[1 2 218 0 2 9 77 0 22 11 34 0 114 9 89 0 148] 
#[0 24 13 0 2] 
#[1 13 173 0 114 24 17 1 110] 
#[0 24 21 0 2] 
#[0 24 25 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 18 217 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 24 29 1 13 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 24 33 0 3] 
#[0 24 37 0 2] 
#[0 24 41 0 3] 
#[0 11 38 0 2 0 4 0 6 0 7 0 90 0 113 0 114 0 125 0 126 1 197] 
#[0 24 45 0 2] 
#[0 11 42 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 24 49 0 7] 
#[1 24 53 0 7 9 77 0 22 24 57 0 148] 
#[1 24 61 0 3 24 65 0 7] 
#[0 11 46 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 11 50 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 24 69 0 7] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 24 73 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 11 54 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 24 77 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 8 129 0 1 24 81 0 7 3 45 0 10 9 77 0 22 13 173 0 114 24 85 0 148 8 149 1 76 24 89 1 110 24 93 1 111] 
#[0 11 58 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 11 62 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 11 66 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 24 97 0 7] 
#[1 24 101 0 7 9 77 0 22 24 105 0 148] 
#[1 24 109 0 3 24 113 0 7] 
#[0 11 70 0 3 0 113] 
#[0 24 117 0 7] 
#[0 24 121 0 3] 
#[0 24 125 0 2] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 24 129 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[0 24 133 0 2] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 24 137 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 24 141 0 3] 
#[0 24 145 0 2] 
#[0 24 149 0 3] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 24 153 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 24 157 0 4] 
#[0 11 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 24 161 0 189 24 161 0 192 24 161 0 193 24 161 0 194 24 161 0 201 24 161 0 215 24 161 0 216 24 161 0 217 24 161 0 218 24 161 0 221 24 161 0 222 24 161 0 224 24 161 0 225 24 161 0 226 24 161 0 231 24 161 0 233 24 161 0 234 24 161 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 24 165 0 189 24 165 0 192 24 165 0 193 24 165 0 194 24 165 0 201 24 165 0 215 24 165 0 216 24 165 0 217 24 165 0 218 24 165 0 221 24 165 0 222 24 165 0 224 24 165 0 225 24 165 0 226 24 165 0 231 24 165 0 233 24 165 0 234 24 165 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 24 169 0 2 6 205 0 113] 
#[1 0 33 0 1 24 173 0 2 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 24 177 0 185 24 177 0 186 24 177 0 188 1 1 0 240 24 177 0 248 1 209 0 249 1 213 0 252 24 177 0 253 1 1 1 3 24 177 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 24 181 0 7 6 205 0 113] 
#[0 24 185 0 2] 
#[1 24 189 0 2 6 205 0 113] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 24 193 0 189 24 193 0 192 24 193 0 193 24 193 0 194 24 193 0 201 24 193 0 215 24 193 0 216 24 193 0 217 24 193 0 218 24 193 0 221 24 193 0 222 24 193 0 224 24 193 0 225 24 193 0 226 24 193 0 231 24 193 0 233 24 193 0 234 24 193 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 24 197 0 189 24 197 0 192 24 197 0 193 24 197 0 194 24 197 0 201 24 197 0 215 24 197 0 216 24 197 0 217 24 197 0 218 24 197 0 221 24 197 0 222 24 197 0 224 24 197 0 225 24 197 0 226 24 197 0 231 24 197 0 233 24 197 0 234 24 197 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 24 201 0 189 24 201 0 192 24 201 0 193 24 201 0 194 24 201 0 201 24 201 0 215 24 201 0 216 24 201 0 217 24 201 0 218 24 201 0 221 24 201 0 222 24 201 0 224 24 201 0 225 24 201 0 226 24 201 0 231 24 201 0 233 24 201 0 234 24 201 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 24 205 0 2 6 205 0 113] 
#[1 0 33 0 1 24 209 0 2 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 24 213 0 185 24 213 0 186 24 213 0 188 1 1 0 240 24 213 0 248 1 209 0 249 1 213 0 252 24 213 0 253 1 1 1 3 24 213 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 11 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 24 217 0 189 24 217 0 192 24 217 0 193 24 217 0 194 24 217 0 201 24 217 0 215 24 217 0 216 24 217 0 217 24 217 0 218 24 217 0 221 24 217 0 222 24 217 0 224 24 217 0 225 24 217 0 226 24 217 0 231 24 217 0 233 24 217 0 234 24 217 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 24 221 0 189 24 221 0 192 24 221 0 193 24 221 0 194 24 221 0 201 24 221 0 215 24 221 0 216 24 221 0 217 24 221 0 218 24 221 0 221 24 221 0 222 24 221 0 224 24 221 0 225 24 221 0 226 24 221 0 231 24 221 0 233 24 221 0 234 24 221 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 24 225 0 2 6 205 0 113] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 24 229 0 189 24 229 0 192 24 229 0 193 24 229 0 194 24 229 0 201 24 229 0 215 24 229 0 216 24 229 0 217 24 229 0 218 24 229 0 221 24 229 0 222 24 229 0 224 24 229 0 225 24 229 0 226 24 229 0 231 24 229 0 233 24 229 0 234 24 229 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 24 233 0 189 24 233 0 192 24 233 0 193 24 233 0 194 24 233 0 201 24 233 0 215 24 233 0 216 24 233 0 217 24 233 0 218 24 233 0 221 24 233 0 222 24 233 0 224 24 233 0 225 24 233 0 226 24 233 0 231 24 233 0 233 24 233 0 234 24 233 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 24 237 0 185 24 237 0 186 1 1 0 240 24 237 0 248 1 209 0 249 1 213 0 252 24 237 0 253 1 1 1 3 24 237 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 24 241 0 2] 
#[0 24 245 0 2] 
#[0 24 249 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 24 253 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 25 1 1 4 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 25 5 0 3] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 25 9 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 25 13 0 189 25 13 0 192 25 13 0 193 25 13 0 194 25 13 0 201 25 13 0 215 25 13 0 216 25 13 0 217 25 13 0 218 25 13 0 221 25 13 0 222 25 13 0 224 25 13 0 225 25 13 0 226 25 13 0 231 25 13 0 233 25 13 0 234 25 13 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 11 82 0 2 0 113] 
#[0 11 86 0 13 0 113] 
#[0 11 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 19 205 0 112 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 19 209 0 185 19 209 0 186 1 1 0 240 19 209 0 248 1 209 0 249 1 213 0 252 19 209 0 253 1 1 1 3 19 209 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 11 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 25 17 0 185 25 17 0 186 25 17 0 188 1 1 0 240 25 17 0 248 1 209 0 249 1 213 0 252 25 17 0 253 1 1 1 3 25 17 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 25 21 0 114] 
#[1 25 25 0 4 22 205 0 55 22 209 0 63 25 29 0 229 25 33 0 230] 
#[0 11 98 0 4 0 55 0 63] 
#[1 25 37 0 4 22 205 0 55 25 41 0 228 22 217 0 229] 
#[1 5 161 0 3 25 45 0 194] 
#[0 25 49 0 8] 
#[1 6 205 0 113 11 102 0 125 11 102 0 126] 
#[1 12 117 0 128 25 53 1 53 25 53 1 54 25 53 1 55 12 133 1 56 12 137 1 57] 
#[0 11 106 0 4] 
#[0 11 110 0 4] 
#[1 0 98 0 4 25 57 1 71] 
#[0 25 61 0 4] 
#[0 11 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 195 1 196 1 197] 
#[0 25 65 0 13] 
#[0 11 118 0 3 0 127 0 129] 
#[0 11 122 0 3 0 8 0 13 0 128] 
#[0 11 126 0 3 0 8 0 13 0 128] 
#[0 11 130 0 3 0 8 0 13 0 128] 
#[0 11 134 0 3 0 8 0 13 0 128] 
#[0 25 69 0 3] 
#[1 0 10 0 4 25 73 1 70] 
#[0 25 77 0 4] 
#[0 11 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 11 142 0 3 0 18] 
#[0 11 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 25 81 0 1] 
#[1 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 25 85 0 133 25 85 0 144 25 85 0 145 25 85 0 146 7 33 1 45 7 37 1 46] 
#[1 8 129 0 1 25 89 0 7 3 45 0 10 13 173 0 114 8 149 1 76 25 93 1 110 25 97 1 111] 
#[1 7 21 0 5 25 101 0 96 4 9 0 117 7 33 0 119 7 37 0 120 25 105 0 133 25 105 0 144 25 105 0 145 25 105 0 146 7 33 1 45 7 37 1 46] 
#[0 11 150 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 25 109 0 4] 
#[1 11 154 0 4 8 137 0 5 23 53 0 59 23 65 0 91 23 65 0 92 23 65 0 93 23 57 0 96 4 9 0 117 7 33 0 119 7 37 0 120 23 61 0 133 23 61 0 144 23 61 0 145 23 61 0 146 7 33 1 45 7 37 1 46 23 65 1 113 25 113 1 116 25 113 1 185 25 113 1 186 25 113 1 187] 
#[0 11 158 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 11 162 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 11 166 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[1 10 118 0 4 8 137 0 5 23 53 0 59 23 65 0 91 23 65 0 92 23 65 0 93 23 57 0 96 4 9 0 117 7 33 0 119 7 37 0 120 23 61 0 133 23 61 0 144 23 61 0 145 23 61 0 146 7 33 1 45 7 37 1 46 23 65 1 113 23 81 1 116 25 117 1 183 23 77 1 184 23 81 1 185 23 81 1 186 23 81 1 187] 
#[0 11 170 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 11 174 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 178 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 182 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 186 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 190 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 194 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 198 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 202 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 11 210 0 4 0 57 0 58 0 67 0 68 0 74 0 77 0 82 0 84 0 86 0 107] 
#[0 11 214 0 4 0 113] 
#[0 11 218 0 4 0 113] 
#[0 11 222 0 4 0 113] 
#[1 0 227 0 4 8 137 0 5 10 5 0 7 3 245 0 25 7 25 0 52 23 53 0 59 3 253 0 75 23 65 0 91 23 65 0 92 23 65 0 93 4 1 0 95 25 121 0 96 4 9 0 117 7 33 0 119 7 37 0 120 25 125 0 133 25 125 0 144 25 125 0 145 25 125 0 146 10 29 0 255 10 29 1 1 10 29 1 6 10 29 1 10 15 17 1 19 10 25 1 20 10 29 1 21 7 33 1 45 7 37 1 46 23 65 1 113 23 81 1 116 10 29 1 120 10 29 1 121 23 73 1 183 23 77 1 184 23 81 1 185 23 81 1 186 23 81 1 187 10 33 1 196] 
#[0 25 129 0 2] 
#[0 25 133 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 24 253 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 25 137 1 4 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 25 141 0 3] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 25 145 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 7 78 0 7 0 21] 
#[0 25 149 0 2] 
#[0 11 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 231 0 3 10 250 0 7] 
#[0 25 153 0 4] 
#[1 0 235 0 3 11 2 0 7 13 173 0 114 25 157 1 110] 
#[1 0 239 0 1 11 230 0 3 11 230 0 4 0 239 0 5 0 239 0 7 11 138 0 8 11 138 0 9 11 138 0 10 11 138 0 11 11 138 0 12 11 138 0 13 11 138 0 14 11 138 0 15 11 138 0 16 11 138 0 17 11 138 0 19 11 138 0 20 11 138 0 21 11 138 0 22 11 138 0 23 11 138 0 24 11 138 0 25 11 138 0 26 11 138 0 27 11 138 0 28 11 138 0 29 11 138 0 30 11 138 0 31 11 138 0 32 11 138 0 33 0 239 0 34 0 239 0 35 0 239 0 36 0 239 0 37 11 230 0 38 11 138 0 39 11 138 0 40 11 138 0 41 11 138 0 42 11 138 0 43 11 138 0 44 11 138 0 45 11 138 0 46 11 138 0 47 11 230 0 48 11 138 0 49 11 138 0 50 11 138 0 51 11 230 0 52 11 230 0 53 11 230 0 54 11 230 0 57 11 230 0 58 11 230 0 60 11 230 0 61 11 230 0 62 11 230 0 64 11 230 0 65 11 230 0 67 11 230 0 68 11 230 0 70 11 230 0 72 11 230 0 74 11 230 0 76 11 230 0 77 11 138 0 78 11 138 0 81 11 230 0 82 11 230 0 84 11 230 0 86 11 230 0 87 11 230 0 88 11 230 0 94 11 230 0 98 11 230 0 99 11 230 0 101 11 230 0 102 11 230 0 103 11 230 0 104 11 230 0 105 11 230 0 106 11 230 0 107 11 230 0 108 11 230 0 109 11 230 0 110 11 230 0 111 11 138 0 113 11 230 0 116 11 230 0 119 11 230 0 120 11 230 0 121 0 239 0 123 0 239 0 124 11 230 0 127 11 138 1 195 0 239 1 196 11 230 1 197] 
#[1 13 173 0 114 25 161 1 110] 
#[1 13 173 0 114 25 165 1 110] 
#[0 11 234 0 4 0 7 0 113] 
#[1 11 238 0 4 11 238 0 7 11 238 0 113 13 173 0 114 25 169 1 110] 
#[0 11 242 0 3 0 4 0 7 0 113] 
#[0 11 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[1 3 33 0 1 3 37 0 3 3 41 0 5 3 45 0 10 3 49 0 79 3 53 0 83 3 57 0 87 3 61 0 101 3 65 0 106 3 69 0 108 2 65 0 116 3 77 0 119 3 81 0 120 3 73 0 132 3 77 1 45 3 81 1 46 3 85 1 76 25 173 1 83 3 93 1 84 3 97 1 85 3 97 1 86 3 105 1 87 3 105 1 88 3 105 1 89 3 105 1 90 3 105 1 91 3 125 1 92 3 129 1 93 3 105 1 94 3 105 1 98 3 105 1 99 3 93 1 102 3 97 1 103 25 173 1 104 25 173 1 105 3 105 1 106 3 105 1 108] 
#[0 11 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 11 254 0 2 0 4 0 6 0 22 0 41 0 78 0 90 0 113 0 114] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 24 253 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 25 177 1 4 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 25 181 0 3] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 18 217 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 25 185 1 13 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 25 189 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 25 193 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 25 197 0 4] 
#[0 25 201 0 3] 
#[1 13 173 0 114 25 205 1 110] 
#[0 12 2 0 2] 
#[1 25 209 0 3 13 173 0 114 25 213 1 110] 
#[0 12 6 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 25 217 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 25 221 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 25 225 1 9 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 25 229 0 3] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 18 217 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 25 233 1 13 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 25 237 0 3 25 241 0 7] 
#[0 12 10 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 12 14 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 25 245 0 7] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 25 249 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 12 18 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 12 22 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 25 253 0 4] 
#[0 26 1 0 2] 
#[0 12 26 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 26 5 0 7] 
#[1 26 9 0 7 9 77 0 22 26 13 0 148] 
#[1 26 17 0 3 26 21 0 7] 
#[0 12 30 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 12 34 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 26 25 0 7] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 26 29 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 12 38 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 12 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 18 217 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 26 33 1 13 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 26 37 0 3] 
#[0 26 41 0 2] 
#[0 26 45 0 3] 
#[0 26 49 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 24 253 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 26 53 1 4 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 26 57 0 3] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 26 61 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 26 65 0 4] 
#[0 11 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 26 69 0 189 26 69 0 192 26 69 0 193 26 69 0 194 26 69 0 201 26 69 0 215 26 69 0 216 26 69 0 217 26 69 0 218 26 69 0 221 26 69 0 222 26 69 0 224 26 69 0 225 26 69 0 226 26 69 0 231 26 69 0 233 26 69 0 234 26 69 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 26 73 0 189 26 73 0 192 26 73 0 193 26 73 0 194 26 73 0 201 26 73 0 215 26 73 0 216 26 73 0 217 26 73 0 218 26 73 0 221 26 73 0 222 26 73 0 224 26 73 0 225 26 73 0 226 26 73 0 231 26 73 0 233 26 73 0 234 26 73 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 26 77 0 2 6 205 0 113] 
#[1 0 33 0 1 26 81 0 2 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 26 85 0 185 26 85 0 186 26 85 0 188 1 1 0 240 26 85 0 248 1 209 0 249 1 213 0 252 26 85 0 253 1 1 1 3 26 85 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 26 89 0 189 26 89 0 192 26 89 0 193 26 89 0 194 26 89 0 201 26 89 0 215 26 89 0 216 26 89 0 217 26 89 0 218 26 89 0 221 26 89 0 222 26 89 0 224 26 89 0 225 26 89 0 226 26 89 0 231 26 89 0 233 26 89 0 234 26 89 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 26 93 0 189 26 93 0 192 26 93 0 193 26 93 0 194 26 93 0 201 26 93 0 215 26 93 0 216 26 93 0 217 26 93 0 218 26 93 0 221 26 93 0 222 26 93 0 224 26 93 0 225 26 93 0 226 26 93 0 231 26 93 0 233 26 93 0 234 26 93 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 12 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 26 97 0 189 26 97 0 192 26 97 0 193 26 97 0 194 26 97 0 201 26 97 0 215 26 97 0 216 26 97 0 217 26 97 0 218 26 97 0 221 26 97 0 222 26 97 0 224 26 97 0 225 26 97 0 226 26 97 0 231 26 97 0 233 26 97 0 234 26 97 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 26 101 0 189 26 101 0 192 26 101 0 193 26 101 0 194 26 101 0 201 26 101 0 215 26 101 0 216 26 101 0 217 26 101 0 218 26 101 0 221 26 101 0 222 26 101 0 224 26 101 0 225 26 101 0 226 26 101 0 231 26 101 0 233 26 101 0 234 26 101 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 26 105 0 2 6 205 0 113] 
#[0 12 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 26 109 0 189 26 109 0 192 26 109 0 193 26 109 0 194 26 109 0 201 26 109 0 215 26 109 0 216 26 109 0 217 26 109 0 218 26 109 0 221 26 109 0 222 26 109 0 224 26 109 0 225 26 109 0 226 26 109 0 231 26 109 0 233 26 109 0 234 26 109 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 12 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 26 113 0 2] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 26 117 0 189 26 117 0 192 26 117 0 193 26 117 0 194 26 117 0 201 26 117 0 215 26 117 0 216 26 117 0 217 26 117 0 218 26 117 0 221 26 117 0 222 26 117 0 224 26 117 0 225 26 117 0 226 26 117 0 231 26 117 0 233 26 117 0 234 26 117 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 26 121 0 189 26 121 0 192 26 121 0 193 26 121 0 194 26 121 0 201 26 121 0 215 26 121 0 216 26 121 0 217 26 121 0 218 26 121 0 221 26 121 0 222 26 121 0 224 26 121 0 225 26 121 0 226 26 121 0 231 26 121 0 233 26 121 0 234 26 121 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 12 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 12 86 0 4] 
#[0 26 125 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 24 253 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 26 129 1 4 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 26 133 0 4] 
#[0 12 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 6 205 0 113 26 137 0 114] 
#[1 0 33 0 1 0 37 0 3 12 94 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 12 94 0 55 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 26 141 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 12 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 102 0 4 0 55 0 63] 
#[1 26 145 0 4 22 205 0 55 26 149 0 228 22 217 0 229] 
#[0 12 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 26 153 0 4 22 205 0 55 25 29 0 229] 
#[0 12 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 12 114 0 13 26 157 1 74] 
#[1 12 114 0 13 26 161 1 74] 
#[0 26 165 0 4] 
#[0 12 118 0 3 0 127 0 129] 
#[0 12 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 195 1 196 1 197] 
#[1 0 33 0 1 2 57 0 3 0 41 0 5 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 85 0 57 0 101 0 64 2 17 0 70 0 121 0 74 2 61 0 77 0 137 0 87 2 13 0 88 0 149 0 98 0 157 0 101 2 17 0 103 0 173 0 106 0 181 0 108 0 193 0 111 2 65 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 26 169 0 185 26 169 0 186 1 1 0 240 26 169 0 248 1 209 0 249 1 213 0 252 26 169 0 253 1 1 1 3 26 169 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 26 173 0 4] 
#[0 12 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 26 177 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 8 129 0 1 26 181 0 7 3 45 0 10 13 173 0 114 8 149 1 76 26 185 1 110 26 189 1 111] 
#[0 12 130 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 26 193 0 7] 
#[0 26 197 0 7] 
#[1 7 21 0 5 4 9 0 117 7 33 0 119 7 37 0 120 26 201 0 133 26 201 0 144 26 201 0 145 26 201 0 146 7 33 1 45 7 37 1 46] 
#[1 8 129 0 1 26 205 0 7 3 45 0 10 13 173 0 114 8 149 1 76 26 209 1 110 26 213 1 111] 
#[0 12 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 138 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 26 217 0 4] 
#[1 7 21 0 5 3 245 0 25 7 25 0 52 3 253 0 75 4 1 0 95 4 9 0 117 7 33 0 119 7 37 0 120 26 221 0 133 26 221 0 144 26 221 0 145 26 221 0 146 14 201 0 255 14 201 1 1 14 201 1 6 14 201 1 10 7 33 1 45 7 37 1 46 14 201 1 120 14 201 1 121 7 41 1 196] 
#[1 26 225 0 1 25 89 0 7 3 45 0 10 13 173 0 114 8 149 1 76 25 93 1 110 25 97 1 111] 
#[1 23 173 0 3 9 98 0 7 13 173 0 114 21 77 1 110] 
#[1 0 243 0 1 12 142 0 3 12 142 0 4 0 243 0 5 0 243 0 7 12 82 0 8 12 82 0 9 12 82 0 10 12 82 0 11 12 82 0 12 12 82 0 13 12 82 0 14 12 82 0 15 12 82 0 16 12 82 0 17 12 82 0 19 12 82 0 20 12 82 0 21 12 82 0 22 12 82 0 23 12 82 0 24 12 82 0 25 12 82 0 26 12 82 0 27 12 82 0 28 12 82 0 29 12 82 0 30 12 82 0 31 12 82 0 32 12 82 0 33 0 243 0 34 0 243 0 35 0 243 0 36 0 243 0 37 12 142 0 38 12 82 0 39 12 82 0 40 12 82 0 41 12 82 0 42 12 82 0 43 12 82 0 44 12 82 0 45 12 82 0 46 12 82 0 47 12 142 0 48 12 82 0 49 12 82 0 50 12 82 0 51 12 142 0 52 12 142 0 53 12 142 0 54 12 142 0 57 12 142 0 58 12 142 0 60 12 142 0 61 12 142 0 62 12 142 0 64 12 142 0 65 12 142 0 67 12 142 0 68 12 142 0 70 12 142 0 72 12 142 0 74 12 142 0 76 12 142 0 77 12 82 0 78 12 82 0 81 12 142 0 82 12 142 0 84 12 142 0 86 12 142 0 87 12 142 0 88 12 142 0 94 12 142 0 98 12 142 0 99 12 142 0 101 12 142 0 102 12 142 0 103 12 142 0 104 12 142 0 105 12 142 0 106 12 142 0 107 12 142 0 108 12 142 0 109 12 142 0 110 12 142 0 111 12 82 0 113 12 142 0 116 12 142 0 119 12 142 0 120 12 142 0 121 0 243 0 123 0 243 0 124 12 142 0 127 12 82 1 195 0 243 1 196 12 142 1 197] 
#[0 26 229 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 24 253 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 26 233 1 4 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 26 237 0 4] 
#[0 26 241 0 7] 
#[1 0 247 0 1 12 146 0 3 12 146 0 4 0 247 0 5 0 247 0 7 12 126 0 8 12 126 0 9 12 126 0 10 12 126 0 11 12 126 0 12 12 126 0 13 12 126 0 14 12 126 0 15 12 126 0 16 12 126 0 17 12 126 0 19 12 126 0 20 12 126 0 21 12 126 0 22 12 126 0 23 12 126 0 24 12 126 0 25 12 126 0 26 12 126 0 27 12 126 0 28 12 126 0 29 12 126 0 30 12 126 0 31 12 126 0 32 12 126 0 33 0 247 0 34 0 247 0 35 0 247 0 36 0 247 0 37 12 146 0 38 12 126 0 39 12 126 0 40 12 126 0 41 12 126 0 42 12 126 0 43 12 126 0 44 12 126 0 45 12 126 0 46 12 126 0 47 12 146 0 48 12 126 0 49 12 126 0 50 12 126 0 51 12 146 0 52 12 146 0 53 12 146 0 54 12 146 0 57 12 146 0 58 12 146 0 60 12 146 0 61 12 146 0 62 12 146 0 64 12 146 0 65 12 146 0 67 12 146 0 68 12 146 0 70 12 146 0 72 12 146 0 74 12 146 0 76 12 146 0 77 12 126 0 78 12 126 0 81 12 146 0 82 12 146 0 84 12 146 0 86 12 146 0 87 12 146 0 88 12 146 0 94 12 146 0 98 12 146 0 99 12 146 0 101 12 146 0 102 12 146 0 103 12 146 0 104 12 146 0 105 12 146 0 106 12 146 0 107 12 146 0 108 12 146 0 109 12 146 0 110 12 146 0 111 12 126 0 113 12 146 0 116 12 146 0 119 12 146 0 120 12 146 0 121 0 247 0 123 0 247 0 124 12 146 0 127 12 126 1 195 0 247 1 196 12 146 1 197] 
#[1 0 251 0 3 11 242 0 7] 
#[0 12 150 0 4 0 5 0 7 0 59 0 91 0 92 0 93 0 96 0 113 0 117 0 119 0 120] 
#[0 12 154 0 4 0 5 0 7 0 59 0 91 0 92 0 93 0 96 0 113 0 117 0 119 0 120] 
#[0 12 158 0 4 0 7 0 113] 
#[0 12 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 59 0 78 0 81 0 90 0 91 0 92 0 93 0 96 0 113 0 114 0 117 0 119 0 120 0 125 0 126 1 197] 
#[0 26 245 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 25 221 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 26 249 1 9 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 26 253 0 4] 
#[0 12 166 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 27 1 0 4] 
#[0 12 170 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 27 5 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 27 9 0 3] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 27 13 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 27 17 0 3] 
#[0 12 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 12 178 0 4] 
#[0 27 21 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 25 221 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 27 25 1 9 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 27 29 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 27 33 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 12 182 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 12 186 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 27 37 0 4] 
#[0 12 190 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[1 27 41 0 3 27 45 0 7] 
#[0 12 194 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 12 198 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 27 49 0 7] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 27 53 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 12 202 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 12 206 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 27 57 0 4] 
#[0 27 61 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 25 221 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 27 65 1 9 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 27 69 0 3] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 18 217 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 27 73 1 13 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 12 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 27 77 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 24 253 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 27 81 1 4 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 27 85 0 4] 
#[0 12 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 27 89 0 189 27 89 0 192 27 89 0 193 27 89 0 194 27 89 0 201 27 89 0 215 27 89 0 216 27 89 0 217 27 89 0 218 27 89 0 221 27 89 0 222 27 89 0 224 27 89 0 225 27 89 0 226 27 89 0 231 27 89 0 233 27 89 0 234 27 89 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 27 93 0 189 27 93 0 192 27 93 0 193 27 93 0 194 27 93 0 201 27 93 0 215 27 93 0 216 27 93 0 217 27 93 0 218 27 93 0 221 27 93 0 222 27 93 0 224 27 93 0 225 27 93 0 226 27 93 0 231 27 93 0 233 27 93 0 234 27 93 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 27 97 0 2 6 205 0 113] 
#[0 12 218 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 27 101 0 189 27 101 0 192 27 101 0 193 27 101 0 194 27 101 0 201 27 101 0 215 27 101 0 216 27 101 0 217 27 101 0 218 27 101 0 221 27 101 0 222 27 101 0 224 27 101 0 225 27 101 0 226 27 101 0 231 27 101 0 233 27 101 0 234 27 101 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 12 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 27 105 0 189 27 105 0 192 27 105 0 193 27 105 0 194 27 105 0 201 27 105 0 215 27 105 0 216 27 105 0 217 27 105 0 218 27 105 0 221 27 105 0 222 27 105 0 224 27 105 0 225 27 105 0 226 27 105 0 231 27 105 0 233 27 105 0 234 27 105 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 12 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 12 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 27 109 0 4] 
#[0 12 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 12 254 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 12 254 0 55 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 12 254 0 63 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 27 113 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[1 0 33 0 1 0 37 0 3 13 2 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 13 2 0 55 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 7 45 0 189 7 45 0 192 7 45 0 193 7 45 0 194 7 45 0 196 7 45 0 197 1 141 0 198 7 45 0 201 7 45 0 215 7 45 0 216 7 45 0 217 7 45 0 218 7 45 0 221 7 45 0 222 7 45 0 224 7 45 0 225 7 45 0 226 7 45 0 231 7 45 0 233 7 45 0 234 7 45 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 13 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 27 117 0 4 22 205 0 55 25 29 0 229] 
#[0 13 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 27 121 0 13] 
#[0 27 125 0 13] 
#[0 13 14 0 3 0 127 0 129] 
#[1 0 10 0 4 27 129 1 70] 
#[0 13 18 0 3 0 8 0 13 0 128] 
#[0 27 133 0 2] 
#[0 13 22 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 27 137 0 7] 
#[0 27 141 0 7] 
#[0 13 26 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 30 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[1 8 129 0 1 27 145 0 7 3 45 0 10 13 173 0 114 8 149 1 76 27 149 1 110 27 153 1 111] 
#[0 13 34 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 27 157 0 7] 
#[0 27 161 0 7] 
#[0 13 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 26 225 0 1 26 181 0 7 3 45 0 10 13 173 0 114 8 149 1 76 26 185 1 110 26 189 1 111] 
#[1 0 38 0 2 5 173 0 3 5 177 0 5 3 177 0 112 2 65 0 116 9 229 0 132 3 189 0 204 3 189 0 205 3 189 0 206 3 229 0 212 3 229 0 213 3 225 0 214 14 137 0 241 27 165 0 242 3 221 0 243 3 225 0 244 3 229 0 245 8 125 1 196] 
#[1 0 255 0 1 13 42 0 3 13 42 0 4 0 255 0 5 0 255 0 7 12 246 0 8 12 246 0 9 12 246 0 10 12 246 0 11 12 246 0 12 12 246 0 13 12 246 0 14 12 246 0 15 12 246 0 16 12 246 0 17 12 246 0 19 12 246 0 20 12 246 0 21 12 246 0 22 12 246 0 23 12 246 0 24 12 246 0 25 12 246 0 26 12 246 0 27 12 246 0 28 12 246 0 29 12 246 0 30 12 246 0 31 12 246 0 32 12 246 0 33 0 255 0 34 0 255 0 35 0 255 0 36 0 255 0 37 13 42 0 38 12 246 0 39 12 246 0 40 12 246 0 41 12 246 0 42 12 246 0 43 12 246 0 44 12 246 0 45 12 246 0 46 12 246 0 47 13 42 0 48 12 246 0 49 12 246 0 50 12 246 0 51 13 42 0 52 13 42 0 53 13 42 0 54 13 42 0 57 13 42 0 58 13 42 0 60 13 42 0 61 13 42 0 62 13 42 0 64 13 42 0 65 13 42 0 67 13 42 0 68 13 42 0 70 13 42 0 72 13 42 0 74 13 42 0 76 13 42 0 77 12 246 0 78 12 246 0 81 13 42 0 82 13 42 0 84 13 42 0 86 13 42 0 87 13 42 0 88 13 42 0 94 13 42 0 98 13 42 0 99 13 42 0 101 13 42 0 102 13 42 0 103 13 42 0 104 13 42 0 105 13 42 0 106 13 42 0 107 13 42 0 108 13 42 0 109 13 42 0 110 13 42 0 111 12 246 0 113 13 42 0 116 13 42 0 119 13 42 0 120 13 42 0 121 0 255 0 123 0 255 0 124 13 42 0 127 12 246 1 195 0 255 1 196 13 42 1 197] 
#[0 27 169 0 4] 
#[1 1 3 0 1 13 46 0 3 13 46 0 4 1 3 0 5 1 3 0 7 12 250 0 8 12 250 0 9 12 250 0 10 12 250 0 11 12 250 0 12 12 250 0 13 12 250 0 14 12 250 0 15 12 250 0 16 12 250 0 17 12 250 0 19 12 250 0 20 12 250 0 21 12 250 0 22 12 250 0 23 12 250 0 24 12 250 0 25 12 250 0 26 12 250 0 27 12 250 0 28 12 250 0 29 12 250 0 30 12 250 0 31 12 250 0 32 12 250 0 33 1 3 0 34 1 3 0 35 1 3 0 36 1 3 0 37 13 46 0 38 12 250 0 39 12 250 0 40 12 250 0 41 12 250 0 42 12 250 0 43 12 250 0 44 12 250 0 45 12 250 0 46 12 250 0 47 13 46 0 48 12 250 0 49 12 250 0 50 12 250 0 51 13 46 0 52 13 46 0 53 13 46 0 54 13 46 0 57 13 46 0 58 13 46 0 60 13 46 0 61 13 46 0 62 13 46 0 64 13 46 0 65 13 46 0 67 13 46 0 68 13 46 0 70 13 46 0 72 13 46 0 74 13 46 0 76 13 46 0 77 12 250 0 78 12 250 0 81 13 46 0 82 13 46 0 84 13 46 0 86 13 46 0 87 13 46 0 88 13 46 0 94 13 46 0 98 13 46 0 99 13 46 0 101 13 46 0 102 13 46 0 103 13 46 0 104 13 46 0 105 13 46 0 106 13 46 0 107 13 46 0 108 13 46 0 109 13 46 0 110 13 46 0 111 12 250 0 113 13 46 0 116 13 46 0 119 13 46 0 120 13 46 0 121 1 3 0 123 1 3 0 124 13 46 0 127 12 250 1 195 1 3 1 196 13 46 1 197] 
#[0 13 50 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 13 54 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 27 173 0 4] 
#[0 13 58 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 13 62 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 27 177 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 27 181 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 27 185 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 27 189 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 13 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 27 193 0 4] 
#[0 13 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 27 197 0 4] 
#[0 13 74 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 27 201 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 13 78 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 13 82 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 27 205 0 4] 
#[0 13 86 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 13 90 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 27 209 0 4] 
#[1 0 33 0 1 0 37 0 3 6 190 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 2 81 0 189 2 81 0 192 2 81 0 193 2 81 0 194 16 149 0 195 2 81 0 196 2 81 0 197 1 141 0 198 2 81 0 201 2 81 0 215 2 81 0 216 2 81 0 217 2 81 0 218 2 81 0 221 2 81 0 222 2 81 0 224 2 81 0 225 2 81 0 226 2 81 0 231 2 81 0 233 2 81 0 234 2 81 0 238 1 1 0 240 25 221 0 246 16 157 0 247 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 27 213 1 9 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 27 217 0 4] 
#[0 13 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 27 221 0 4] 
#[0 13 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 13 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 13 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 93 0 60 0 97 0 61 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 27 225 0 189 27 225 0 192 27 225 0 193 27 225 0 194 27 225 0 201 27 225 0 215 27 225 0 216 27 225 0 217 27 225 0 218 27 225 0 221 27 225 0 222 27 225 0 224 27 225 0 225 27 225 0 226 27 225 0 231 27 225 0 233 27 225 0 234 27 225 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 13 102 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 13 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 13 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[1 0 33 0 1 0 37 0 3 13 114 0 4 0 41 0 5 0 45 0 7 0 49 0 34 0 53 0 35 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 48 0 73 0 52 0 77 0 53 0 81 0 54 13 114 0 55 0 85 0 57 1 141 0 58 0 93 0 60 0 97 0 61 13 114 0 63 0 101 0 64 0 105 0 65 2 17 0 70 0 117 0 72 0 121 0 74 0 125 0 76 2 61 0 77 1 141 0 84 0 137 0 87 2 13 0 88 0 145 0 94 0 149 0 98 0 153 0 99 0 157 0 101 0 161 0 102 2 17 0 103 0 169 0 104 0 173 0 106 0 177 0 107 0 181 0 108 0 185 0 109 0 189 0 110 0 193 0 111 0 197 0 116 2 21 0 119 2 25 0 120 0 209 0 121 0 213 0 123 0 6 0 124 0 7 0 127 0 225 0 132 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 141 1 1 0 149 0 253 0 150 1 1 0 153 1 1 0 154 1 1 0 155 1 1 0 156 1 37 0 157 1 21 0 158 1 21 0 159 1 21 0 160 1 33 0 163 1 37 0 167 1 45 0 168 1 45 0 169 1 53 0 170 1 53 0 171 1 57 0 173 1 61 0 174 1 65 0 175 1 69 0 176 1 73 0 177 1 77 0 178 1 81 0 179 1 85 0 180 1 89 0 181 1 93 0 182 1 97 0 183 1 101 0 184 1 113 0 185 1 113 0 186 1 113 0 188 7 45 0 189 7 45 0 192 7 45 0 193 7 45 0 194 7 45 0 196 7 45 0 197 1 141 0 198 7 45 0 201 7 45 0 215 7 45 0 216 7 45 0 217 7 45 0 218 7 45 0 221 7 45 0 222 7 45 0 224 7 45 0 225 7 45 0 226 7 45 0 231 7 45 0 233 7 45 0 234 7 45 0 238 1 1 0 240 1 113 0 248 1 209 0 249 1 213 0 252 1 113 0 253 1 1 1 3 1 113 1 5 1 1 1 8 1 1 1 12 1 45 1 14 1 1 1 16 2 13 1 43 2 17 1 44 2 21 1 45 2 25 1 46 1 1 1 47 1 1 1 48 1 1 1 49 2 41 1 50 1 1 1 52 2 49 1 70 2 53 1 196] 
#[0 13 118 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 13 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 128 1 195 1 196 1 197] 
#[0 13 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 195 1 196 1 197] 
#[0 27 229 0 4] 
#[0 27 233 0 7] 
#[0 13 130 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 134 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 138 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 27 237 0 7] 
#[0 27 241 0 7] 
#[0 13 142 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 146 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 1 7 0 2] 
#[1 1 11 0 1 13 150 0 3 13 150 0 4 1 11 0 5 1 11 0 7 13 110 0 8 13 110 0 9 13 110 0 10 13 110 0 11 13 110 0 12 13 110 0 13 13 110 0 14 13 110 0 15 13 110 0 16 13 110 0 17 13 110 0 19 13 110 0 20 13 110 0 21 13 110 0 22 13 110 0 23 13 110 0 24 13 110 0 25 13 110 0 26 13 110 0 27 13 110 0 28 13 110 0 29 13 110 0 30 13 110 0 31 13 110 0 32 13 110 0 33 1 11 0 34 1 11 0 35 1 11 0 36 1 11 0 37 13 150 0 38 13 110 0 39 13 110 0 40 13 110 0 41 13 110 0 42 13 110 0 43 13 110 0 44 13 110 0 45 13 110 0 46 13 110 0 47 13 150 0 48 13 110 0 49 13 110 0 50 13 110 0 51 13 150 0 52 13 150 0 53 13 150 0 54 13 150 0 57 13 150 0 58 13 150 0 60 13 150 0 61 13 150 0 62 13 150 0 64 13 150 0 65 13 150 0 67 13 150 0 68 13 150 0 70 13 150 0 72 13 150 0 74 13 150 0 76 13 150 0 77 13 110 0 78 13 110 0 81 13 150 0 82 13 150 0 84 13 150 0 86 13 150 0 87 13 150 0 88 13 150 0 94 13 150 0 98 13 150 0 99 13 150 0 101 13 150 0 102 13 150 0 103 13 150 0 104 13 150 0 105 13 150 0 106 13 150 0 107 13 150 0 108 13 150 0 109 13 150 0 110 13 150 0 111 13 110 0 113 13 150 0 116 13 150 0 119 13 150 0 120 13 150 0 121 1 11 0 123 1 11 0 124 13 150 0 127 13 110 1 195 1 11 1 196 13 150 1 197] 
#[0 13 154 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 13 158 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 27 245 0 4] 
#[0 13 162 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 27 249 0 4] 
#[0 13 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 78 0 81 0 90 0 113 0 114 0 123 0 124 0 125 0 126 1 195 1 196 1 197] 
#[0 13 170 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 27 253 0 4] 
#[0 13 174 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 13 178 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 28 1 0 4] 
#[0 13 182 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 13 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 13 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 55 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 72 0 74 0 76 0 77 0 82 0 84 0 86 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197] 
#[0 13 190 0 3 0 8 0 13 0 128] 
#[0 13 194 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 198 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 202 0 4 0 5 0 59 0 91 0 92 0 93 0 96 0 117 0 119 0 120] 
#[0 13 206 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 13 210 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 113 0 117 0 119 0 120 1 196] 
#[0 13 214 0 4 0 5 0 7 0 25 0 52 0 75 0 95 0 96 0 117 0 119 0 120 1 196] 
#[0 13 218 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 48 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 64 0 65 0 68 0 70 0 72 0 74 0 76 0 77 0 84 0 87 0 88 0 94 0 98 0 99 0 101 0 102 0 103 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 116 0 119 0 120 0 121 0 123 0 124 0 127 1 196 1 197]
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
JSParser >> reduceActionForDeclarationScript1: nodes [
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
