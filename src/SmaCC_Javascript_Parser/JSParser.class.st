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
#[ 1 242 1 246 1 250] 
#[ 2 18 2 22] 
#[ 2 38 2 42] 
#[ 2 90 2 94] 
#[ 2 98 2 102] 
#[ 2 106 2 110] 
#[ 2 114 2 118] 
#[ 0 102 2 122] 
#[ 0 102 8 33] 
#[ 2 170 2 174] 
#[ 0 102 2 182] 
#[ 1 146 2 222] 
#[ 1 150 2 226] 
#[ 3 26 4 14] 
#[ 4 66 4 70] 
#[ 4 74 4 78] 
#[ 4 94 4 98] 
#[ 2 174 4 122] 
#[ 2 122 2 182] 
#[ 2 238 4 134] 
#[ 4 190 13 41] 
#[ 4 190 13 21] 
#[ 2 250 13 65] 
#[ 0 170 14 121] 
#[ 6 26 6 129] 
#[ 0 10 6 46] 
#[ 6 74 6 78] 
#[ 0 46 6 102] 
#[ 5 10 6 154] 
#[ 0 102 16 209] 
#[ 0 102 6 202] 
#[ 4 154 4 202] 
#[ 0 102 4 146] 
#[ 4 222 6 214] 
#[ 4 190 7 6] 
#[ 4 190 8 33] 
#[ 4 190 17 181] 
#[ 2 122 6 74] 
#[ 0 46 8 118] 
#[ 0 46 8 122] 
#[ 4 122 8 74] 
#[ 0 46 10 46] 
#[ 0 50 2 61] 
#[ 0 58 2 61] 
#[ 10 70 13 241] 
#[ 9 250 11 198] 
#[ 10 62 11 202] 
#[ 11 106 11 206] 
#[ 12 38 12 106] 
#[ 12 90 12 110] 
#[ 11 110 12 114] 
#[ 12 198 13 10] 
#[ 12 202 13 14] 
#[ 2 150 22 165] 
#[ 13 86 13 134]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2020-03-11T15:28:56.35943-05:00'
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
    InferType
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
	#(147 0 #reduceActionForStartTemplateLiteral1: 12035073 true ) 
	#(323 0 #reduceActionForSwitchToJSX1: 40949761 true ) 
	#(277 0 #reduceActionForModule1: 35699713 false ) 
	#(275 0 #reduceActionForScript1: 35641345 false ) 
	#(416 0 #reduceActionForImplementationModule1: 56523777 false ) 
	#(412 0 #reduceActionForImplementationModule1: 56126465 false ) 
	#(408 0 #reduceActionForImplementationModule1: 55583745 false ) 
	#(419 0 #reduceActionForImplementationModule1: 56965121 false ) 
	#(239 0 #reduceActionForFormalParameters1: 30740481 false ) 
	#(212 1 #reduceActionForEmptyStatement1: 25099265 false ) 
	#(220 0 #reduceActionForCheckEOL1: 28588033 true ) 
	#(195 1 #liftFirstValue: 22758402 false ) 
	#(297 1 #liftFirstValue: 38304770 false ) 
	#(195 1 #liftFirstValue: 22758401 false ) 
	#(296 1 #liftFirstValue: 38281217 false ) 
	#(131 1 #reduceActionForPrimaryExpression1: 8864769 false ) 
	#(297 1 #liftFirstValue: 38304769 false ) 
	#(258 1 #reduceActionForYieldExpression1: 33218561 false ) 
	#(129 1 #reduceActionForIdentifier1: 8569857 false ) 
	#(298 1 #liftFirstValue: 38341633 false ) 
	#(299 1 #liftFirstValue: 38369281 false ) 
	#(300 1 #reduceActionForRegularExpressionLiteral1: 38398977 false ) 
	#(146 1 #reduceActionForTemplateLiteral1: 11879425 false ) 
	#(324 0 #reduceActionForSwitchToJSXText1: 40990721 true ) 
	#(131 1 #liftFirstValue: 8864770 false ) 
	#(246 1 #reduceActionForArrowParameters1: 31296513 false ) 
	#(150 1 #liftFirstValue: 12305409 false ) 
	#(131 1 #liftFirstValue: 8864781 false ) 
	#(131 1 #liftFirstValue: 8864771 false ) 
	#(131 1 #liftFirstValue: 8864772 false ) 
	#(131 1 #liftFirstValue: 8864773 false ) 
	#(131 1 #liftFirstValue: 8864780 false ) 
	#(154 1 #liftFirstValue: 13203457 false ) 
	#(150 1 #liftFirstValue: 12305413 false ) 
	#(150 1 #liftFirstValue: 12305414 false ) 
	#(152 1 #liftFirstValue: 13072385 false ) 
	#(164 1 #liftFirstValue: 15295489 false ) 
	#(164 1 #liftFirstValue: 15295490 false ) 
	#(155 1 #liftFirstValue: 13293570 false ) 
	#(155 1 #liftFirstValue: 13293571 false ) 
	#(164 1 #liftFirstValue: 15295491 false ) 
	#(165 1 #liftFirstValue: 15377409 false ) 
	#(166 1 #liftFirstValue: 15746049 false ) 
	#(167 1 #liftFirstValue: 16198657 false ) 
	#(168 1 #liftFirstValue: 16368641 false ) 
	#(170 1 #liftFirstValue: 16628737 false ) 
	#(171 1 #liftFirstValue: 16926721 false ) 
	#(172 1 #liftFirstValue: 17311745 false ) 
	#(173 1 #liftFirstValue: 18050049 false ) 
	#(174 1 #liftFirstValue: 18580481 false ) 
	#(175 1 #liftFirstValue: 18744321 false ) 
	#(176 1 #liftFirstValue: 18912257 false ) 
	#(177 1 #liftFirstValue: 19079169 false ) 
	#(180 1 #liftFirstValue: 19576834 false ) 
	#(178 1 #liftFirstValue: 19249153 false ) 
	#(181 1 #liftFirstValue: 19650561 false ) 
	#(181 1 #liftFirstValue: 19650562 false ) 
	#(180 1 #liftFirstValue: 19576833 false ) 
	#(182 1 #liftFirstValue: 19724289 false ) 
	#(183 1 #liftFirstValue: 19951617 false ) 
	#(185 1 #liftFirstValue: 21679105 false ) 
	#(193 1 #liftFirstValue: 22601729 false ) 
	#(186 1 #liftFirstValue: 21830662 false ) 
	#(186 1 #liftFirstValue: 21830657 false ) 
	#(190 1 #liftFirstValue: 22381569 false ) 
	#(280 1 #liftFirstValue: 35832835 false ) 
	#(193 1 #liftFirstValue: 22601730 false ) 
	#(186 1 #liftFirstValue: 21830658 false ) 
	#(186 1 #liftFirstValue: 21830659 false ) 
	#(186 1 #liftFirstValue: 21830660 false ) 
	#(186 1 #liftFirstValue: 21830661 false ) 
	#(189 1 #liftFirstValue: 22319105 false ) 
	#(186 1 #liftFirstValue: 21830663 false ) 
	#(186 1 #liftFirstValue: 21830664 false ) 
	#(186 1 #liftFirstValue: 21830665 false ) 
	#(186 1 #liftFirstValue: 21830666 false ) 
	#(189 1 #liftFirstValue: 22319106 false ) 
	#(186 1 #liftFirstValue: 21830667 false ) 
	#(186 1 #liftFirstValue: 21830668 false ) 
	#(186 1 #liftFirstValue: 21830669 false ) 
	#(186 1 #liftFirstValue: 21830670 false ) 
	#(131 1 #liftFirstValue: 8864774 false ) 
	#(183 1 #liftFirstValue: 19951619 false ) 
	#(246 1 #reduceActionForArrowParameters2: 31296514 false ) 
	#(183 1 #liftFirstValue: 19951620 false ) 
	#(131 1 #liftFirstValue: 8864776 false ) 
	#(183 1 #liftFirstValue: 19951618 false ) 
	#(131 1 #liftFirstValue: 8864778 false ) 
	#(131 1 #liftFirstValue: 8864777 false ) 
	#(166 1 #liftFirstValue: 15746057 false ) 
	#(131 1 #liftFirstValue: 8864775 false ) 
	#(128 1 #liftFirstValue: 8457217 false ) 
	#(277 1 #reduceActionForModule2: 35699714 false ) 
	#(278 1 #reduceActionForModuleBody1: 35728385 false ) 
	#(279 1 #reduceActionForModuleItemList1: 35759105 false ) 
	#(280 1 #liftFirstValue: 35832833 false ) 
	#(280 1 #liftFirstValue: 35832834 false ) 
	#(133 1 #reduceActionForLiteral1: 9965569 false ) 
	#(133 1 #reduceActionForLiteral2: 9965570 false ) 
	#(133 1 #reduceActionForLiteral4: 9965572 false ) 
	#(133 1 #reduceActionForLiteral3: 9965571 false ) 
	#(131 1 #liftFirstValue: 8864779 false ) 
	#(131 1 #liftFirstValue: 8864782 false ) 
	#(301 1 #liftFirstValue: 38650881 false ) 
	#(325 0 #reduceActionForStartJSXText1: 41039873 true ) 
	#(131 1 #liftFirstValue: 8864783 false ) 
	#(276 1 #reduceActionForModuleBody1: 35670017 false ) 
	#(192 1 #reduceActionForModuleItemList1: 22504449 false ) 
	#(275 1 #reduceActionForScript2: 35641346 false ) 
	#(411 1 #liftFirstValue: 55866369 false ) 
	#(411 1 #liftFirstValue: 55866370 false ) 
	#(411 1 #liftFirstValue: 55866371 false ) 
	#(411 1 #liftFirstValue: 55866372 false ) 
	#(411 1 #liftFirstValue: 55866373 false ) 
	#(418 1 #liftFirstValue: 56723458 false ) 
	#(421 1 #liftFirstValue: 57146370 false ) 
	#(411 1 #liftFirstValue: 55866375 false ) 
	#(415 1 #liftFirstValue: 56384514 false ) 
	#(411 1 #liftFirstValue: 55866374 false ) 
	#(415 1 #liftFirstValue: 56384513 false ) 
	#(411 1 #liftFirstValue: 55866376 false ) 
	#(411 1 #liftFirstValue: 55866377 false ) 
	#(415 1 #liftFirstValue: 56384515 false ) 
	#(418 1 #liftFirstValue: 56723459 false ) 
	#(411 1 #liftFirstValue: 55866379 false ) 
	#(415 1 #liftFirstValue: 56384517 false ) 
	#(405 1 #reduceActionForSourceFile1: 55343105 false ) 
	#(405 1 #reduceActionForSourceFile1: 55343106 false ) 
	#(406 1 #reduceActionForModuleBody1: 55443457 false ) 
	#(408 1 #reduceActionForModuleBody1: 55583746 false ) 
	#(409 1 #reduceActionForModuleItemList1: 55640065 false ) 
	#(418 1 #liftFirstValue: 56723457 false ) 
	#(410 1 #liftFirstValue: 55783425 false ) 
	#(407 1 #reduceActionForModuleBody1: 55518209 false ) 
	#(412 1 #reduceActionForModuleBody1: 56126466 false ) 
	#(413 1 #reduceActionForModuleItemList1: 56176641 false ) 
	#(414 1 #liftFirstValue: 56307713 false ) 
	#(421 1 #liftFirstValue: 57146369 false ) 
	#(406 1 #reduceActionForModuleBody1: 55443458 false ) 
	#(416 1 #reduceActionForModuleBody1: 56523778 false ) 
	#(417 1 #reduceActionForModuleItemList1: 56580097 false ) 
	#(407 1 #reduceActionForModuleBody1: 55518210 false ) 
	#(419 1 #reduceActionForModuleBody1: 56965122 false ) 
	#(420 1 #reduceActionForModuleItemList1: 57015297 false ) 
	#(418 1 #liftFirstValue: 56723460 false ) 
	#(418 1 #liftFirstValue: 56723461 false ) 
	#(421 1 #liftFirstValue: 57146371 false ) 
	#(418 1 #liftFirstValue: 56723462 false ) 
	#(421 1 #liftFirstValue: 57146372 false ) 
	#(418 1 #liftFirstValue: 56723463 false ) 
	#(421 1 #liftFirstValue: 57146373 false ) 
	#(418 1 #liftFirstValue: 56723464 false ) 
	#(421 1 #liftFirstValue: 57146374 false ) 
	#(411 1 #liftFirstValue: 55866378 false ) 
	#(415 1 #liftFirstValue: 56384516 false ) 
	#(410 1 #liftFirstValue: 55783426 false ) 
	#(414 1 #liftFirstValue: 56307714 false ) 
	#(210 1 #reduceActionForSingleNameBinding1: 24830977 false ) 
	#(209 1 #reduceActionForSingleNameBinding1: 24726530 false ) 
	#(201 1 #liftFirstValue: 23435265 false ) 
	#(201 1 #liftFirstValue: 23435266 false ) 
	#(242 1 #liftFirstValue: 31110145 false ) 
	#(209 1 #liftFirstValue: 24726529 false ) 
	#(241 1 #liftFirstValue: 31064065 false ) 
	#(238 1 #reduceActionForModuleBody1: 30695425 false ) 
	#(239 1 #reduceActionForFormalParameters3: 30740483 false ) 
	#(239 1 #reduceActionForFormalParameters2: 30740482 false ) 
	#(240 1 #reduceActionForFormalParameterList1: 30942209 false ) 
	#(364 0 #nil 45296644 false ) 
	#(191 2 #reduceActionForBlock1: 22407169 false ) 
	#(138 2 #reduceActionForObjectLiteral1: 10780673 false ) 
	#(130 1 #reduceActionForIdentifier1: 8763393 false ) 
	#(140 1 #liftFirstValue: 11172865 false ) 
	#(142 1 #liftFirstValue: 11484161 false ) 
	#(139 1 #reduceActionForFormalParameterList1: 11037697 false ) 
	#(141 1 #liftFirstValue: 11421697 false ) 
	#(141 1 #liftFirstValue: 11421698 false ) 
	#(140 1 #liftFirstValue: 11172866 false ) 
	#(140 1 #liftFirstValue: 11172868 false ) 
	#(252 1 #liftFirstValue: 31842306 false ) 
	#(252 1 #liftFirstValue: 31842308 false ) 
	#(252 1 #liftFirstValue: 31842307 false ) 
	#(142 1 #reduceActionForIdentifier1: 11484162 false ) 
	#(142 1 #reduceActionForIdentifier1: 11484163 false ) 
	#(252 1 #liftFirstValue: 31842312 false ) 
	#(252 1 #liftFirstValue: 31842313 false ) 
	#(134 2 #reduceActionForArrayLiteral1: 10147841 false ) 
	#(136 1 #reduceActionForModuleItemList1: 10627073 false ) 
	#(135 1 #reduceActionForFormalParameterList1: 10408963 false ) 
	#(135 1 #reduceActionForFormalParameterList1: 10408961 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15746053 false ) 
	#(165 2 #reduceActionForUpdateExpression4: 15377412 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15746054 false ) 
	#(165 2 #reduceActionForUpdateExpression4: 15377413 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15746055 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15746056 false ) 
	#(267 2 #reduceActionForAwaitExpression1: 34945025 false ) 
	#(269 2 #reduceActionForClassExpression1: 35118081 false ) 
	#(235 2 #reduceActionForDebuggerStatement1: 30186497 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15746050 false ) 
	#(292 1 #reduceActionForExportFromClause1: 37731329 false ) 
	#(291 2 #reduceActionForExportDeclaration4: 37047300 false ) 
	#(187 1 #liftFirstValue: 22114305 false ) 
	#(187 1 #liftFirstValue: 22114307 false ) 
	#(291 2 #reduceActionForExportDeclaration3: 37047299 false ) 
	#(188 1 #liftFirstValue: 22193153 false ) 
	#(188 1 #liftFirstValue: 22193154 false ) 
	#(188 1 #liftFirstValue: 22193156 false ) 
	#(188 1 #liftFirstValue: 22193155 false ) 
	#(187 1 #liftFirstValue: 22114306 false ) 
	#(292 1 #reduceActionForExportFromClause3: 37731331 false ) 
	#(290 1 #liftFirstValue: 37012481 false ) 
	#(282 1 #reduceActionForImportClause1: 36079617 false ) 
	#(282 1 #reduceActionForImportClause1: 36079618 false ) 
	#(282 1 #reduceActionForImportClause1: 36079619 false ) 
	#(283 1 #liftFirstValue: 36332545 false ) 
	#(289 1 #liftFirstValue: 36970497 false ) 
	#(154 2 #reduceActionForNewExpression2: 13203458 false ) 
	#(156 2 #reduceActionForSuperCall1: 13776897 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15746052 false ) 
	#(200 1 #reduceActionForSingleNameBinding1: 23274497 false ) 
	#(199 1 #reduceActionForFormalParameterList1: 23138305 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15746051 false ) 
	#(258 2 #reduceActionForYieldExpression2: 33218562 false ) 
	#(150 2 #reduceActionForMemberExpression4: 12305412 false ) 
	#(155 2 #reduceActionForCallExpression1: 13293569 false ) 
	#(160 2 #reduceActionForOptionalExpression1: 14441473 false ) 
	#(155 2 #reduceActionForMemberExpression4: 13293575 false ) 
	#(155 2 #reduceActionForCallExpression1: 13293572 false ) 
	#(160 2 #reduceActionForOptionalExpression1: 14441474 false ) 
	#(160 2 #reduceActionForOptionalExpression1: 14441475 false ) 
	#(184 1 #liftFirstValue: 20156419 false ) 
	#(184 1 #liftFirstValue: 20156423 false ) 
	#(184 1 #liftFirstValue: 20156424 false ) 
	#(184 1 #liftFirstValue: 20156425 false ) 
	#(184 1 #liftFirstValue: 20156417 false ) 
	#(184 1 #liftFirstValue: 20156418 false ) 
	#(184 1 #liftFirstValue: 20156420 false ) 
	#(184 1 #liftFirstValue: 20156426 false ) 
	#(184 1 #liftFirstValue: 20156427 false ) 
	#(184 1 #liftFirstValue: 20156428 false ) 
	#(184 1 #liftFirstValue: 20156422 false ) 
	#(184 1 #liftFirstValue: 20156421 false ) 
	#(165 2 #reduceActionForUpdateExpression2: 15377410 false ) 
	#(165 2 #reduceActionForUpdateExpression2: 15377411 false ) 
	#(184 1 #liftFirstValue: 20156429 false ) 
	#(169 1 #liftFirstValue: 16571394 false ) 
	#(169 1 #liftFirstValue: 16571393 false ) 
	#(169 1 #liftFirstValue: 16571395 false ) 
	#(213 2 #reduceActionForExpressionStatement1: 25149441 false ) 
	#(197 1 #reduceActionForSingleNameBinding1: 22888449 false ) 
	#(196 1 #reduceActionForFormalParameterList1: 22790145 false ) 
	#(197 1 #liftFirstValue: 22888452 false ) 
	#(197 1 #liftFirstValue: 22888453 false ) 
	#(279 2 #reduceActionForModuleItemList2: 35759106 false ) 
	#(320 0 #reduceActionForImplementationModule1: 40635393 false ) 
	#(249 2 #reduceActionForArrowFormalParameters2: 31526914 false ) 
	#(192 2 #reduceActionForModuleItemList2: 22504450 false ) 
	#(268 2 #reduceActionForClassExpression1: 35021825 false ) 
	#(440 1 #liftFirstValue: 61855745 false ) 
	#(429 2 #reduceActionForAmbientDeclaration1: 59784193 false ) 
	#(429 2 #reduceActionForAmbientDeclaration1: 59784194 false ) 
	#(429 2 #reduceActionForAmbientDeclaration1: 59784195 false ) 
	#(429 2 #reduceActionForAmbientDeclaration1: 59784196 false ) 
	#(429 2 #reduceActionForAmbientDeclaration1: 59784197 false ) 
	#(423 2 #reduceActionForExportImplementationElement2: 57601026 false ) 
	#(423 2 #reduceActionForExportImplementationElement2: 57601025 false ) 
	#(423 2 #reduceActionForExportImplementationElement2: 57601027 false ) 
	#(423 2 #reduceActionForExportImplementationElement2: 57601028 false ) 
	#(423 2 #reduceActionForExportImplementationElement2: 57601029 false ) 
	#(423 2 #reduceActionForExportImplementationElement2: 57601035 false ) 
	#(423 2 #reduceActionForExportImplementationElement2: 57601031 false ) 
	#(424 2 #reduceActionForExportDeclarationElement2: 58343426 false ) 
	#(423 2 #reduceActionForExportImplementationElement2: 57601030 false ) 
	#(424 2 #reduceActionForExportDeclarationElement2: 58343425 false ) 
	#(423 2 #reduceActionForExportImplementationElement2: 57601032 false ) 
	#(423 2 #reduceActionForExportImplementationElement2: 57601033 false ) 
	#(424 2 #reduceActionForExportDeclarationElement2: 58343428 false ) 
	#(423 2 #reduceActionForExportImplementationElement2: 57601034 false ) 
	#(424 2 #reduceActionForExportDeclarationElement2: 58343427 false ) 
	#(398 1 #reduceActionForFormalParameterList1: 53829633 false ) 
	#(409 2 #reduceActionForModuleItemList2: 55640066 false ) 
	#(413 2 #reduceActionForModuleItemList2: 56176642 false ) 
	#(417 2 #reduceActionForModuleItemList2: 56580098 false ) 
	#(420 2 #reduceActionForModuleItemList2: 57015298 false ) 
	#(202 2 #reduceActionForObjectBindingPattern1: 23498753 false ) 
	#(205 1 #reduceActionForFormalParameterList1: 24324097 false ) 
	#(208 1 #liftFirstValue: 24612865 false ) 
	#(203 2 #reduceActionForArrayBindingPattern1: 23886849 false ) 
	#(206 1 #reduceActionForBindingElementList1: 24442881 false ) 
	#(207 1 #reduceActionForBindingElisionElement1: 24551425 false ) 
	#(211 2 #reduceActionForBindingRestElement1: 24916993 false ) 
	#(211 2 #reduceActionForBindingRestElement1: 24916994 false ) 
	#(210 2 #reduceActionForSingleNameBinding2: 24830978 false ) 
	#(132 3 #reduceActionForParenthesizedExpression1: 9230337 false ) 
	#(209 2 #reduceActionForSingleNameBinding2: 24726531 false ) 
	#(249 3 #reduceActionForArrowFormalParameters1: 31526913 false ) 
	#(239 2 #reduceActionForFormalParameters4: 30740484 false ) 
	#(365 1 #liftFirstValue: 46640130 false ) 
	#(365 1 #liftFirstValue: 46640131 false ) 
	#(365 1 #liftFirstValue: 46640129 false ) 
	#(364 1 #reduceActionForIdentifier1: 45296642 false ) 
	#(364 1 #liftFirstValue: 45296641 false ) 
	#(364 1 #liftFirstValue: 45296643 false ) 
	#(140 2 #reduceActionForPropertyDefinition5: 11172869 false ) 
	#(144 2 #reduceActionForCoverInitializedName1: 11731969 false ) 
	#(138 3 #reduceActionForObjectLiteral2: 10780674 false ) 
	#(191 3 #reduceActionForBlock2: 22407170 false ) 
	#(137 2 #reduceActionForSpreadElement1: 10682369 false ) 
	#(134 3 #reduceActionForArrayLiteral3: 10147843 false ) 
	#(134 3 #reduceActionForArrayLiteral2: 10147842 false ) 
	#(136 2 #reduceActionForModuleItemList2: 10627074 false ) 
	#(135 2 #reduceActionForElementList4: 10408964 false ) 
	#(135 2 #reduceActionForElementList4: 10408962 false ) 
	#(219 3 #reduceActionForBreakStatement1: 28480513 false ) 
	#(270 2 #reduceActionForClassTail1: 35197953 false ) 
	#(274 1 #reduceActionForEmptyStatement1: 35490819 false ) 
	#(274 1 #liftFirstValue: 35490817 false ) 
	#(272 1 #reduceActionForModuleBody1: 35371009 false ) 
	#(273 1 #reduceActionForModuleItemList1: 35402753 false ) 
	#(271 2 #reduceActionForClassHeritage1: 35290113 false ) 
	#(269 3 #reduceActionForClassExpression2: 35118082 false ) 
	#(271 2 #reduceActionForClassHeritage2: 35290114 false ) 
	#(218 3 #reduceActionForContinueStatement1: 28365825 false ) 
	#(293 2 #reduceActionForNamedExports1: 37838849 false ) 
	#(295 1 #reduceActionForExportSpecifier1: 38159361 false ) 
	#(294 1 #reduceActionForFormalParameterList1: 38054913 false ) 
	#(291 3 #reduceActionForExportDeclaration2: 37047298 false ) 
	#(187 2 #liftSecondValue: 22114309 false ) 
	#(187 2 #liftSecondValue: 22114308 false ) 
	#(187 2 #liftSecondValue: 22114310 false ) 
	#(285 2 #reduceActionForNamedImports1: 36457473 false ) 
	#(287 1 #reduceActionForFormalParameterList1: 36740097 false ) 
	#(288 1 #reduceActionForImportSpecifier1: 36844545 false ) 
	#(281 3 #reduceActionForImportDeclaration2: 35907586 false ) 
	#(153 3 #reduceActionForNewTarget1: 13100033 false ) 
	#(150 3 #reduceActionForMemberExpression7: 12305415 false ) 
	#(221 3 #reduceActionForReturnStatement1: 28622849 false ) 
	#(158 2 #reduceActionForArguments1: 13987841 false ) 
	#(159 1 #reduceActionForArgumentList1: 14173185 false ) 
	#(151 3 #reduceActionForSuperProperty2: 12807170 false ) 
	#(230 3 #reduceActionForThrowStatement1: 29639681 false ) 
	#(231 3 #reduceActionForTryStatement1: 29735937 false ) 
	#(231 3 #reduceActionForTryStatement2: 29735938 false ) 
	#(200 2 #reduceActionForSingleNameBinding2: 23274498 false ) 
	#(198 3 #reduceActionForVariableStatement1: 23043073 false ) 
	#(200 2 #reduceActionForVariableDeclaration3: 23274499 false ) 
	#(200 2 #liftSecondValue: 23274500 false ) 
	#(200 2 #liftSecondValue: 23274501 false ) 
	#(258 3 #reduceActionForYieldExpression3: 33218563 false ) 
	#(229 1 #liftFirstValue: 29545473 false ) 
	#(228 3 #reduceActionForLabelledStatement1: 29446145 false ) 
	#(150 3 #reduceActionForMemberExpression3: 12305411 false ) 
	#(163 1 #reduceActionForOptionalFirst3: 15030275 false ) 
	#(163 1 #reduceActionForOptionalFirst4: 15030276 false ) 
	#(163 1 #reduceActionForOptionalFirst1: 15030273 false ) 
	#(161 2 #reduceActionForOptionalChain1: 14619649 false ) 
	#(162 1 #reduceActionForOptionalFirst4: 14742532 false ) 
	#(162 1 #reduceActionForOptionalFirst1: 14742529 false ) 
	#(161 2 #reduceActionForOptionalChain2: 14619650 false ) 
	#(155 3 #reduceActionForMemberExpression3: 13293574 false ) 
	#(183 3 #reduceActionForAssignmentExpression5: 19951621 false ) 
	#(167 3 #reduceActionForExponentiationExpression2: 16198658 false ) 
	#(168 3 #reduceActionForExponentiationExpression2: 16368642 false ) 
	#(170 3 #reduceActionForExponentiationExpression2: 16628738 false ) 
	#(170 3 #reduceActionForExponentiationExpression2: 16628739 false ) 
	#(171 3 #reduceActionForExponentiationExpression2: 16926722 false ) 
	#(171 3 #reduceActionForExponentiationExpression2: 16926723 false ) 
	#(171 3 #reduceActionForExponentiationExpression2: 16926724 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 17311746 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 17311747 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 17311748 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 17311749 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 17311751 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 17311750 false ) 
	#(173 3 #reduceActionForExponentiationExpression2: 18050050 false ) 
	#(173 3 #reduceActionForExponentiationExpression2: 18050052 false ) 
	#(173 3 #reduceActionForExponentiationExpression2: 18050051 false ) 
	#(173 3 #reduceActionForExponentiationExpression2: 18050053 false ) 
	#(174 3 #reduceActionForExponentiationExpression2: 18580482 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 18744322 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 18912258 false ) 
	#(177 3 #reduceActionForExponentiationExpression2: 19079170 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 19249154 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 19419137 false ) 
	#(185 3 #reduceActionForExpression2: 21679106 false ) 
	#(197 2 #reduceActionForSingleNameBinding2: 22888450 false ) 
	#(194 3 #reduceActionForLexicalDeclaration1: 22669313 false ) 
	#(197 2 #reduceActionForVariableDeclaration3: 22888451 false ) 
	#(244 0 #reduceActionForImplementationModule1: 31186945 false ) 
	#(248 1 #liftFirstValue: 31485953 false ) 
	#(245 3 #reduceActionForArrowFunction1: 31228929 false ) 
	#(247 1 #reduceActionForConciseBody1: 31371265 false ) 
	#(328 0 #reduceActionForSwitchToDefault1: 41201665 true ) 
	#(319 1 #reduceActionForModuleBody1: 40621057 false ) 
	#(306 1 #reduceActionForJSXElementName1: 39477249 false ) 
	#(306 1 #liftFirstValue: 39477250 false ) 
	#(306 1 #liftFirstValue: 39477251 false ) 
	#(310 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 39803905 false ) 
	#(360 1 #reduceActionForThisType1: 44413953 false ) 
	#(342 1 #reduceActionForPredefinedType1: 42471425 false ) 
	#(344 1 #reduceActionForTypeName1: 42617857 false ) 
	#(331 1 #reduceActionForTypeParameter1: 41547777 false ) 
	#(345 1 #reduceActionForFormalParameterList1: 42724353 false ) 
	#(330 1 #reduceActionForFormalParameterList1: 41435137 false ) 
	#(336 1 #liftFirstValue: 41862145 false ) 
	#(337 1 #liftFirstValue: 41938946 false ) 
	#(338 1 #liftFirstValue: 42015746 false ) 
	#(339 1 #liftFirstValue: 42077185 false ) 
	#(340 1 #liftFirstValue: 42220545 false ) 
	#(340 1 #liftFirstValue: 42220546 false ) 
	#(340 1 #liftFirstValue: 42220547 false ) 
	#(340 1 #liftFirstValue: 42220548 false ) 
	#(340 1 #liftFirstValue: 42220549 false ) 
	#(340 1 #liftFirstValue: 42220550 false ) 
	#(337 1 #liftFirstValue: 41938945 false ) 
	#(338 1 #liftFirstValue: 42015745 false ) 
	#(336 1 #liftFirstValue: 41862146 false ) 
	#(336 1 #liftFirstValue: 41862147 false ) 
	#(340 1 #liftFirstValue: 42220551 false ) 
	#(340 1 #liftFirstValue: 42220552 false ) 
	#(268 3 #reduceActionForClassExpression2: 35021826 false ) 
	#(432 1 #reduceActionForSingleNameBinding1: 60581889 false ) 
	#(431 1 #reduceActionForFormalParameterList1: 60469249 false ) 
	#(425 3 #reduceActionForExportDefaultImplementationElement1: 58637313 false ) 
	#(425 3 #reduceActionForExportDefaultImplementationElement1: 58637314 false ) 
	#(425 3 #reduceActionForExportDefaultImplementationElement1: 58637315 false ) 
	#(426 3 #reduceActionForExportDefaultDeclarationElement1: 59063297 false ) 
	#(426 3 #reduceActionForExportDefaultDeclarationElement1: 59063298 false ) 
	#(427 3 #reduceActionForExportListDeclaration3: 59398147 false ) 
	#(379 3 #reduceActionForInterfaceDeclaration1: 50960385 false ) 
	#(399 0 #reduceActionForImplementationModule1: 53935105 false ) 
	#(268 3 #reduceActionForClassDeclaration3: 35021827 false ) 
	#(204 2 #reduceActionForBindingRestProperty1: 24252417 false ) 
	#(202 3 #reduceActionForObjectBindingPattern2: 23498754 false ) 
	#(202 3 #reduceActionForObjectBindingPattern3: 23498755 false ) 
	#(203 3 #reduceActionForArrayBindingPattern3: 23886851 false ) 
	#(207 2 #reduceActionForBindingElisionElement2: 24551426 false ) 
	#(203 3 #reduceActionForArrayBindingPattern5: 23886853 false ) 
	#(203 3 #reduceActionForArrayBindingPattern2: 23886850 false ) 
	#(211 3 #reduceActionForBindingRestElement3: 24916995 false ) 
	#(145 2 #reduceActionForInitializer1: 11814913 false ) 
	#(239 3 #reduceActionForFormalParameters5: 30740485 false ) 
	#(240 3 #reduceActionForFormalParameterList2: 30942210 false ) 
	#(210 3 #reduceActionForSingleNameBinding9: 24830985 false ) 
	#(210 3 #reduceActionForSingleNameBinding3: 24830979 false ) 
	#(209 3 #reduceActionForSingleNameBinding9: 24726538 false ) 
	#(209 3 #reduceActionForSingleNameBinding3: 24726532 false ) 
	#(210 3 #reduceActionForSingleNameBinding7: 24830983 false ) 
	#(209 3 #reduceActionForSingleNameBinding7: 24726536 false ) 
	#(143 3 #reduceActionForComputedPropertyName1: 11611137 false ) 
	#(138 4 #reduceActionForObjectLiteral3: 10780675 false ) 
	#(139 3 #reduceActionForFormalParameterList2: 11037698 false ) 
	#(140 3 #reduceActionForPropertyDefinition3: 11172867 false ) 
	#(134 4 #reduceActionForArrayLiteral4: 10147844 false ) 
	#(135 3 #reduceActionForElementList6: 10408966 false ) 
	#(135 3 #reduceActionForElementList6: 10408965 false ) 
	#(251 1 #reduceActionForConciseBody1: 31721473 false ) 
	#(250 4 #reduceActionForAsyncArrowFunction1: 31619073 false ) 
	#(219 4 #reduceActionForBreakStatement2: 28480514 false ) 
	#(274 2 #reduceActionForClassElement2: 35490818 false ) 
	#(270 3 #reduceActionForClassTail2: 35197954 false ) 
	#(273 2 #reduceActionForModuleItemList2: 35402754 false ) 
	#(390 1 #reduceActionForMemberAccessorDeclaration1: 52955137 false ) 
	#(390 1 #reduceActionForMemberAccessorDeclaration1: 52955141 false ) 
	#(274 2 #liftSecondValue: 35490820 false ) 
	#(274 2 #liftSecondValue: 35490821 false ) 
	#(387 1 #liftFirstValue: 52325377 false ) 
	#(387 1 #liftFirstValue: 52325378 false ) 
	#(387 1 #liftFirstValue: 52325379 false ) 
	#(274 2 #liftSecondValue: 35490822 false ) 
	#(270 3 #reduceActionForClassTail3: 35197955 false ) 
	#(384 1 #liftFirstValue: 51616769 false ) 
	#(383 2 #reduceActionForInitializer1: 51557377 false ) 
	#(382 1 #liftFirstValue: 51332097 false ) 
	#(385 2 #reduceActionForImplementsClause1: 51658753 false ) 
	#(381 1 #reduceActionForFormalParameterList1: 51201025 false ) 
	#(271 3 #reduceActionForClassHeritage3: 35290115 false ) 
	#(218 4 #reduceActionForContinueStatement2: 28365826 false ) 
	#(293 3 #reduceActionForNamedExports2: 37838850 false ) 
	#(292 3 #reduceActionForExportFromClause2: 37731330 false ) 
	#(291 4 #reduceActionForExportDeclaration5: 37047301 false ) 
	#(286 2 #reduceActionForInitializer1: 36688897 false ) 
	#(291 4 #reduceActionForExportDeclaration1: 37047297 false ) 
	#(217 1 #liftFirstValue: 28318721 false ) 
	#(217 1 #liftFirstValue: 28318722 false ) 
	#(216 2 #reduceActionForInitializer1: 28254209 false ) 
	#(157 4 #reduceActionForImportCall1: 13847553 false ) 
	#(285 3 #reduceActionForNamedImports2: 36457474 false ) 
	#(284 3 #reduceActionForNameSpaceImport1: 36376577 false ) 
	#(281 4 #reduceActionForImportDeclaration1: 35907585 false ) 
	#(282 3 #reduceActionForImportClause4: 36079620 false ) 
	#(282 3 #reduceActionForImportClause4: 36079621 false ) 
	#(221 4 #reduceActionForReturnStatement2: 28622850 false ) 
	#(159 2 #reduceActionForArgumentList2: 14173186 false ) 
	#(158 3 #reduceActionForArguments2: 13987842 false ) 
	#(151 4 #reduceActionForSuperProperty1: 12807169 false ) 
	#(334 1 #reduceActionForFormalParameterList1: 41733121 false ) 
	#(335 1 #liftFirstValue: 41839617 false ) 
	#(232 2 #reduceActionForCatch2: 29906946 false ) 
	#(233 2 #reduceActionForInitializer1: 30074881 false ) 
	#(231 4 #reduceActionForTryStatement3: 29735939 false ) 
	#(199 3 #reduceActionForFormalParameterList2: 23138306 false ) 
	#(375 2 #reduceActionForSimpleVariableDeclaration1: 50123777 false ) 
	#(148 1 #reduceActionForFormalParameterList1: 12072961 false ) 
	#(146 4 #reduceActionForTemplateLiteral2: 11879426 false ) 
	#(150 4 #reduceActionForMemberExpression2: 12305410 false ) 
	#(162 2 #reduceActionForOptionalRest3: 14742531 false ) 
	#(155 4 #reduceActionForCallExpression5: 13293573 false ) 
	#(196 3 #reduceActionForFormalParameterList2: 22790146 false ) 
	#(377 3 #reduceActionForSingleNameBinding3: 50423809 false ) 
	#(378 3 #reduceActionForSingleNameBinding3: 50533377 false ) 
	#(244 1 #reduceActionForModuleBody1: 31186946 false ) 
	#(243 1 #reduceActionForModuleBody1: 31145985 false ) 
	#(301 4 #reduceActionForJSXElement2: 38650882 false ) 
	#(321 1 #reduceActionForJSXChild1: 40655873 false ) 
	#(321 1 #liftFirstValue: 40655874 false ) 
	#(320 2 #reduceActionForModuleItemList2: 40635394 false ) 
	#(309 2 #reduceActionForInitializer1: 39803905 false ) 
	#(326 0 #reduceActionForSwitchToJSXTextOrDefault11: 41068545 true ) 
	#(316 1 #reduceActionForJSXElementName1: 40227841 false ) 
	#(316 1 #liftFirstValue: 40227842 false ) 
	#(313 1 #reduceActionForModuleItemList1: 39930881 false ) 
	#(311 1 #reduceActionForModuleBody1: 39914497 false ) 
	#(312 1 #liftFirstValue: 39930881 false ) 
	#(312 1 #liftFirstValue: 39930882 false ) 
	#(315 1 #reduceActionForJSXAttribute1: 40144897 false ) 
	#(308 2 #reduceActionForJSXMemberExpression1: 39781377 false ) 
	#(310 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 39803906 false ) 
	#(346 2 #reduceActionForObjectType1: 42828801 false ) 
	#(361 1 #reduceActionForPropertySignature1: 44451841 false ) 
	#(347 1 #reduceActionForModuleBody1: 42910721 false ) 
	#(348 1 #reduceActionForFormalParameterList1: 43005953 false ) 
	#(349 1 #liftFirstValue: 43160577 false ) 
	#(349 1 #liftFirstValue: 43160578 false ) 
	#(349 1 #liftFirstValue: 43160579 false ) 
	#(349 1 #liftFirstValue: 43160580 false ) 
	#(349 1 #liftFirstValue: 43160581 false ) 
	#(353 1 #liftFirstValue: 43581441 false ) 
	#(352 1 #reduceActionForFormalParameterList1: 43472897 false ) 
	#(339 2 #reduceActionForPrefixType3: 42077187 false ) 
	#(339 2 #reduceActionForPrefixType2: 42077186 false ) 
	#(359 1 #reduceActionForTypeQueryExpression1: 44290049 false ) 
	#(358 2 #reduceActionForTypeQuery1: 44216321 false ) 
	#(331 2 #reduceActionForTypeParameter2: 41547778 false ) 
	#(329 3 #reduceActionForTypeParameters1: 41356289 false ) 
	#(343 2 #reduceActionForTypeReference1: 42523649 false ) 
	#(432 2 #reduceActionForAmbientBinding2: 60581890 false ) 
	#(430 3 #reduceActionForLexicalDeclaration1: 60173315 false ) 
	#(430 3 #reduceActionForLexicalDeclaration1: 60173314 false ) 
	#(442 0 #reduceActionForImplementationModule1: 62075905 false ) 
	#(430 3 #reduceActionForLexicalDeclaration1: 60173313 false ) 
	#(392 4 #reduceActionForEnumDeclaration1: 53255169 false ) 
	#(395 1 #reduceActionForEnumMember1: 53540865 false ) 
	#(393 1 #reduceActionForModuleBody1: 53402625 false ) 
	#(394 1 #reduceActionForFormalParameterList1: 53448705 false ) 
	#(428 4 #reduceActionForExportAssignment1: 59652097 false ) 
	#(427 4 #reduceActionForExportListDeclaration1: 59398145 false ) 
	#(426 4 #reduceActionForExportDefaultDeclarationElement3: 59063299 false ) 
	#(425 4 #reduceActionForExportDefaultImplementationElement4: 58637316 false ) 
	#(427 4 #reduceActionForExportListDeclaration2: 59398146 false ) 
	#(404 1 #liftFirstValue: 55231489 false ) 
	#(380 2 #reduceActionForInitializer1: 51116033 false ) 
	#(379 4 #reduceActionForInterfaceDeclaration3: 50960387 false ) 
	#(379 4 #reduceActionForInterfaceDeclaration2: 50960386 false ) 
	#(401 1 #liftFirstValue: 54071297 false ) 
	#(401 1 #liftFirstValue: 54071298 false ) 
	#(401 1 #liftFirstValue: 54071299 false ) 
	#(401 1 #liftFirstValue: 54071300 false ) 
	#(401 1 #liftFirstValue: 54071301 false ) 
	#(401 1 #liftFirstValue: 54071303 false ) 
	#(401 1 #liftFirstValue: 54071302 false ) 
	#(401 1 #liftFirstValue: 54071304 false ) 
	#(401 1 #liftFirstValue: 54071305 false ) 
	#(399 1 #reduceActionForModuleBody1: 53935106 false ) 
	#(400 1 #reduceActionForModuleItemList1: 53972993 false ) 
	#(401 1 #liftFirstValue: 54071308 false ) 
	#(401 1 #liftFirstValue: 54071307 false ) 
	#(401 1 #liftFirstValue: 54071306 false ) 
	#(398 3 #reduceActionForFormalParameterList2: 53829634 false ) 
	#(236 4 #reduceActionForFunctionDeclaration5: 30272517 false ) 
	#(268 4 #reduceActionForClassDeclaration4: 35021828 false ) 
	#(208 3 #reduceActionForBindingProperty2: 24612866 false ) 
	#(202 4 #reduceActionForObjectBindingPattern4: 23498756 false ) 
	#(205 3 #reduceActionForFormalParameterList2: 24324098 false ) 
	#(203 4 #reduceActionForArrayBindingPattern4: 23886852 false ) 
	#(203 4 #reduceActionForArrayBindingPattern6: 23886854 false ) 
	#(206 3 #reduceActionForBindingElementList2: 24442882 false ) 
	#(362 2 #reduceActionForInitializer1: 44620801 false ) 
	#(210 4 #reduceActionForSingleNameBinding4: 24830980 false ) 
	#(209 4 #reduceActionForBindingElement11: 24726539 false ) 
	#(209 4 #reduceActionForSingleNameBinding4: 24726533 false ) 
	#(210 4 #reduceActionForSingleNameBinding10: 24830986 false ) 
	#(210 4 #reduceActionForSingleNameBinding8: 24830984 false ) 
	#(210 4 #reduceActionForSingleNameBinding5: 24830981 false ) 
	#(209 4 #reduceActionForSingleNameBinding10: 24726540 false ) 
	#(209 4 #reduceActionForSingleNameBinding8: 24726537 false ) 
	#(209 4 #reduceActionForSingleNameBinding5: 24726534 false ) 
	#(253 1 #liftFirstValue: 32440321 false ) 
	#(266 1 #reduceActionForModuleBody1: 34909185 false ) 
	#(390 2 #reduceActionForMemberAccessorDeclaration2: 52955138 false ) 
	#(390 2 #reduceActionForMemberAccessorDeclaration2: 52955142 false ) 
	#(388 2 #reduceActionForMemberVariableDeclaration1: 52440065 false ) 
	#(390 2 #reduceActionForMemberAccessorDeclaration3: 52955139 false ) 
	#(390 2 #reduceActionForMemberAccessorDeclaration3: 52955143 false ) 
	#(391 2 #reduceActionForIndexMemberDeclaration1: 53164033 false ) 
	#(270 4 #reduceActionForClassTail4: 35197956 false ) 
	#(295 3 #reduceActionForExportSpecifier2: 38159362 false ) 
	#(293 4 #reduceActionForNamedExports3: 37838851 false ) 
	#(294 3 #reduceActionForFormalParameterList2: 38054914 false ) 
	#(214 5 #reduceActionForIfStatement2: 25229314 false ) 
	#(288 3 #reduceActionForImportSpecifier2: 36844546 false ) 
	#(285 4 #reduceActionForNamedImports3: 36457475 false ) 
	#(287 3 #reduceActionForFormalParameterList2: 36740098 false ) 
	#(158 4 #reduceActionForArguments3: 13987843 false ) 
	#(159 3 #reduceActionForArgumentList3: 14173187 false ) 
	#(333 3 #reduceActionForTypeArguments1: 41655297 false ) 
	#(158 4 #reduceActionForArguments4: 13987844 false ) 
	#(223 5 #reduceActionForSwitchStatement1: 28868609 false ) 
	#(234 1 #liftFirstValue: 30135297 false ) 
	#(234 1 #liftFirstValue: 30135298 false ) 
	#(375 3 #reduceActionForSimpleVariableDeclaration2: 50123778 false ) 
	#(376 3 #reduceActionForDestructuringVariableDeclaration1: 50229249 false ) 
	#(215 5 #reduceActionForIterationStatement2: 25520130 false ) 
	#(222 5 #reduceActionForWithStatement1: 28736513 false ) 
	#(149 2 #reduceActionForTemplateMiddleList1: 12160001 false ) 
	#(148 2 #reduceActionForTemplateSpans2: 12072962 false ) 
	#(163 3 #reduceActionForOptionalFirst2: 15030274 false ) 
	#(162 3 #reduceActionForOptionalFirst2: 14742530 false ) 
	#(182 5 #reduceActionForConditionalExpression2: 19724290 false ) 
	#(377 4 #reduceActionForSingleNameBinding4: 50423810 false ) 
	#(378 4 #reduceActionForSingleNameBinding4: 50533378 false ) 
	#(247 3 #reduceActionForConciseBody2: 31371266 false ) 
	#(307 3 #reduceActionForJSXNamespacedName1: 39657473 false ) 
	#(313 2 #reduceActionForModuleItemList2: 39930882 false ) 
	#(315 2 #reduceActionForJSXAttribute2: 40144898 false ) 
	#(303 5 #reduceActionForJSXOpeningElement1: 38984705 false ) 
	#(371 4 #reduceActionForTypeCallSignature1: 48302081 false ) 
	#(341 3 #reduceActionForParenthesizedExpression1: 42383361 false ) 
	#(361 2 #reduceActionForPropertySignature3: 44451843 false ) 
	#(361 2 #reduceActionForPropertySignature2: 44451842 false ) 
	#(369 2 #reduceActionForMethodSignature1: 47858689 false ) 
	#(346 3 #reduceActionForObjectType2: 42828802 false ) 
	#(347 2 #reduceActionForOptionalChain2: 42910722 false ) 
	#(347 2 #reduceActionForOptionalChain2: 42910723 false ) 
	#(351 3 #reduceActionForTupleType1: 43375617 false ) 
	#(332 2 #reduceActionForInitializer1: 41602049 false ) 
	#(330 3 #reduceActionForFormalParameterList2: 41435138 false ) 
	#(166 5 #reduceActionForUnaryExpression10: 15746058 false ) 
	#(354 3 #reduceActionForUnionType1: 43608065 false ) 
	#(355 3 #reduceActionForIntersectionType1: 43728897 false ) 
	#(343 3 #reduceActionForTypeReference2: 42523650 false ) 
	#(344 3 #reduceActionForTypeName2: 42617858 false ) 
	#(345 3 #reduceActionForFormalParameterList2: 42724354 false ) 
	#(371 4 #reduceActionForTypeCallSignature3: 48302083 false ) 
	#(392 5 #reduceActionForEnumDeclaration3: 53255171 false ) 
	#(435 0 #reduceActionForImplementationModule1: 61018113 false ) 
	#(431 3 #reduceActionForFormalParameterList2: 60469250 false ) 
	#(433 4 #reduceActionForAmbientFunctionDeclaration1: 60664833 false ) 
	#(444 1 #reduceActionForAmbientNamespaceElement3: 62255107 false ) 
	#(444 1 #reduceActionForAmbientNamespaceElement3: 62255113 false ) 
	#(444 1 #reduceActionForAmbientNamespaceElement3: 62255119 false ) 
	#(444 1 #reduceActionForAmbientNamespaceElement3: 62255105 false ) 
	#(444 1 #reduceActionForAmbientNamespaceElement3: 62255109 false ) 
	#(444 1 #reduceActionForAmbientNamespaceElement3: 62255111 false ) 
	#(444 1 #reduceActionForAmbientNamespaceElement3: 62255115 false ) 
	#(444 1 #reduceActionForAmbientNamespaceElement3: 62255117 false ) 
	#(442 1 #reduceActionForModuleBody1: 62075906 false ) 
	#(443 1 #reduceActionForModuleItemList1: 62128129 false ) 
	#(392 5 #reduceActionForEnumDeclaration2: 53255170 false ) 
	#(393 2 #reduceActionForOptionalChain2: 53402626 false ) 
	#(403 5 #reduceActionForImportAliasDeclaration1: 55094273 false ) 
	#(379 5 #reduceActionForInterfaceDeclaration4: 50960388 false ) 
	#(402 2 #reduceActionForExportNamespaceElement2: 54351874 false ) 
	#(402 2 #reduceActionForExportNamespaceElement2: 54351873 false ) 
	#(402 2 #reduceActionForExportNamespaceElement2: 54351875 false ) 
	#(402 2 #reduceActionForExportNamespaceElement2: 54351876 false ) 
	#(402 2 #reduceActionForExportNamespaceElement2: 54351877 false ) 
	#(402 2 #reduceActionForExportNamespaceElement2: 54351879 false ) 
	#(402 2 #reduceActionForExportNamespaceElement2: 54351878 false ) 
	#(402 2 #reduceActionForExportNamespaceElement2: 54351880 false ) 
	#(402 2 #reduceActionForExportNamespaceElement2: 54351881 false ) 
	#(402 2 #reduceActionForExportNamespaceElement2: 54351883 false ) 
	#(402 2 #reduceActionForExportNamespaceElement2: 54351882 false ) 
	#(397 5 #reduceActionForNamespaceDeclaration1: 53688321 false ) 
	#(400 2 #reduceActionForModuleItemList2: 53972994 false ) 
	#(370 5 #reduceActionForTypeAliasDeclaration1: 47964161 false ) 
	#(363 3 #reduceActionForCallSignature1: 44674049 false ) 
	#(236 5 #reduceActionForFunctionDeclaration6: 30272518 false ) 
	#(202 5 #reduceActionForObjectBindingPattern5: 23498757 false ) 
	#(203 5 #reduceActionForArrayBindingPattern8: 23886856 false ) 
	#(203 5 #reduceActionForArrayBindingPattern7: 23886855 false ) 
	#(210 5 #reduceActionForSingleNameBinding6: 24830982 false ) 
	#(209 5 #reduceActionForBindingElement13: 24726541 false ) 
	#(209 5 #reduceActionForSingleNameBinding6: 24726535 false ) 
	#(366 1 #liftFirstValue: 46702593 false ) 
	#(366 1 #liftFirstValue: 46702594 false ) 
	#(251 3 #reduceActionForConciseBody2: 31721474 false ) 
	#(388 3 #reduceActionForMemberVariableDeclaration5: 52440069 false ) 
	#(388 3 #reduceActionForMemberVariableDeclaration2: 52440066 false ) 
	#(388 3 #reduceActionForMemberVariableDeclaration3: 52440067 false ) 
	#(389 3 #reduceActionForMemberFunctionDeclaration5: 52610053 false ) 
	#(390 3 #reduceActionForMemberAccessorDeclaration4: 52955140 false ) 
	#(390 3 #reduceActionForMemberAccessorDeclaration4: 52955144 false ) 
	#(388 3 #reduceActionForMemberVariableDeclaration9: 52440073 false ) 
	#(381 3 #reduceActionForFormalParameterList2: 51201026 false ) 
	#(215 6 #reduceActionForIterationStatement3: 25520131 false ) 
	#(215 6 #reduceActionForIterationStatement15: 25520143 false ) 
	#(159 4 #reduceActionForArgumentList4: 14173188 false ) 
	#(334 3 #reduceActionForFormalParameterList2: 41733122 false ) 
	#(158 5 #reduceActionForArguments5: 13987845 false ) 
	#(224 2 #reduceActionForCaseBlock1: 28994561 false ) 
	#(225 1 #reduceActionForModuleItemList1: 29178881 false ) 
	#(149 3 #reduceActionForTemplateMiddleList2: 12160002 false ) 
	#(322 1 #liftFirstValue: 40888322 false ) 
	#(322 1 #liftFirstValue: 40888321 false ) 
	#(302 6 #reduceActionForJSXSelfClosingElement1: 38801409 false ) 
	#(303 6 #reduceActionForJSXOpeningElement2: 38984706 false ) 
	#(318 1 #reduceActionForLiteral4: 40392705 false ) 
	#(318 1 #liftFirstValue: 40392707 false ) 
	#(318 1 #liftFirstValue: 40392708 false ) 
	#(317 2 #reduceActionForInitializer1: 40318977 false ) 
	#(361 3 #reduceActionForPropertySignature4: 44451844 false ) 
	#(369 3 #reduceActionForMethodSignature2: 47858690 false ) 
	#(348 3 #reduceActionForFormalParameterList2: 43005954 false ) 
	#(348 3 #reduceActionForFormalParameterList2: 43005955 false ) 
	#(352 3 #reduceActionForFormalParameterList2: 43472898 false ) 
	#(359 3 #reduceActionForTypeQueryExpression2: 44290050 false ) 
	#(350 4 #reduceActionForArrayType1: 43268097 false ) 
	#(237 6 #reduceActionForFunctionExpression3: 30484483 false ) 
	#(371 5 #reduceActionForTypeCallSignature2: 48302082 false ) 
	#(392 6 #reduceActionForEnumDeclaration4: 53255172 false ) 
	#(437 1 #liftFirstValue: 61193219 false ) 
	#(435 1 #reduceActionForModuleBody1: 61018114 false ) 
	#(436 1 #reduceActionForModuleItemList1: 61066241 false ) 
	#(437 1 #liftFirstValue: 61193217 false ) 
	#(437 1 #liftFirstValue: 61193218 false ) 
	#(445 6 #reduceActionForAmbientModuleDeclaration1: 63027201 false ) 
	#(444 2 #reduceActionForExportNamespaceElement2: 62255108 false ) 
	#(444 2 #reduceActionForExportNamespaceElement2: 62255114 false ) 
	#(444 2 #reduceActionForExportNamespaceElement2: 62255120 false ) 
	#(444 2 #reduceActionForExportNamespaceElement2: 62255106 false ) 
	#(444 2 #reduceActionForExportNamespaceElement2: 62255110 false ) 
	#(444 2 #reduceActionForExportNamespaceElement2: 62255112 false ) 
	#(444 2 #reduceActionForExportNamespaceElement2: 62255116 false ) 
	#(444 2 #reduceActionForExportNamespaceElement2: 62255118 false ) 
	#(441 5 #reduceActionForNamespaceDeclaration1: 61899777 false ) 
	#(443 2 #reduceActionForModuleItemList2: 62128130 false ) 
	#(396 1 #liftFirstValue: 53646337 false ) 
	#(395 3 #reduceActionForEnumMember2: 53540866 false ) 
	#(394 3 #reduceActionForFormalParameterList2: 53448706 false ) 
	#(370 6 #reduceActionForTypeAliasDeclaration2: 47964162 false ) 
	#(363 4 #reduceActionForCallSignature2: 44674050 false ) 
	#(363 4 #reduceActionForCallSignature3: 44674051 false ) 
	#(236 6 #reduceActionForFunctionExpression3: 30272515 false ) 
	#(203 6 #reduceActionForArrayBindingPattern9: 23886857 false ) 
	#(374 2 #reduceActionForTypedPropertySetParameterList1: 49335297 false ) 
	#(252 6 #reduceActionForMethodDefinition7: 31842311 false ) 
	#(388 4 #reduceActionForMemberVariableDeclaration6: 52440070 false ) 
	#(388 4 #reduceActionForMemberVariableDeclaration7: 52440071 false ) 
	#(389 4 #reduceActionForMemberFunctionDeclaration6: 52610054 false ) 
	#(388 4 #reduceActionForMemberVariableDeclaration4: 52440068 false ) 
	#(388 4 #reduceActionForMemberVariableDeclaration13: 52440077 false ) 
	#(388 4 #reduceActionForMemberVariableDeclaration10: 52440074 false ) 
	#(388 4 #reduceActionForMemberVariableDeclaration11: 52440075 false ) 
	#(389 4 #reduceActionForMemberFunctionDeclaration7: 52610055 false ) 
	#(215 7 #reduceActionForIterationStatement1: 25520129 false ) 
	#(215 7 #reduceActionForIterationStatement4: 25520132 false ) 
	#(215 7 #reduceActionForIterationStatement5: 25520133 false ) 
	#(215 7 #reduceActionForIterationStatement19: 25520147 false ) 
	#(215 7 #reduceActionForIterationStatement22: 25520150 false ) 
	#(215 7 #reduceActionForIterationStatement7: 25520135 false ) 
	#(215 7 #reduceActionForIterationStatement16: 25520144 false ) 
	#(215 7 #reduceActionForIterationStatement17: 25520145 false ) 
	#(215 7 #reduceActionForIterationStatement21: 25520149 false ) 
	#(215 7 #reduceActionForIterationStatement24: 25520152 false ) 
	#(237 7 #reduceActionForFunctionExpression1: 30484481 false ) 
	#(257 1 #reduceActionForModuleBody1: 33186817 false ) 
	#(214 7 #reduceActionForIfStatement1: 25229313 false ) 
	#(227 2 #reduceActionForDefaultClause1: 29358081 false ) 
	#(224 3 #reduceActionForCaseBlock2: 28994562 false ) 
	#(225 2 #reduceActionForModuleItemList2: 29178882 false ) 
	#(224 3 #reduceActionForCaseBlock3: 28994563 false ) 
	#(232 5 #reduceActionForCatch1: 29906945 false ) 
	#(327 0 #reduceActionForSwitchToJSXTextOrDefault21: 41135105 true ) 
	#(321 4 #reduceActionForJSXChild3: 40655875 false ) 
	#(302 7 #reduceActionForJSXSelfClosingElement2: 38801410 false ) 
	#(356 5 #reduceActionForFunctionType1: 43835393 false ) 
	#(367 4 #reduceActionForConstructSignature1: 47381505 false ) 
	#(237 7 #reduceActionForFunctionExpression4: 30484484 false ) 
	#(439 2 #reduceActionForMemberVariableDeclaration1: 61512705 false ) 
	#(434 6 #reduceActionForAmbientClassDeclaration1: 60812289 false ) 
	#(436 2 #reduceActionForModuleItemList2: 61066242 false ) 
	#(236 7 #reduceActionForFunctionExpression1: 30272513 false ) 
	#(236 7 #reduceActionForFunctionExpression4: 30272516 false ) 
	#(363 5 #reduceActionForCallSignature4: 44674052 false ) 
	#(252 7 #reduceActionForMethodDefinition5: 31842309 false ) 
	#(252 7 #reduceActionForMethodDefinition1: 31842305 false ) 
	#(265 8 #reduceActionForAsyncFunctionExpression1: 34659329 false ) 
	#(262 1 #reduceActionForModuleBody1: 34153473 false ) 
	#(386 5 #reduceActionForConstructorDeclaration3: 51866627 false ) 
	#(388 5 #reduceActionForMemberVariableDeclaration8: 52440072 false ) 
	#(389 5 #reduceActionForMemberFunctionDeclaration1: 52610049 false ) 
	#(388 5 #reduceActionForMemberVariableDeclaration14: 52440078 false ) 
	#(388 5 #reduceActionForMemberVariableDeclaration15: 52440079 false ) 
	#(389 5 #reduceActionForMemberFunctionDeclaration8: 52610056 false ) 
	#(388 5 #reduceActionForMemberVariableDeclaration12: 52440076 false ) 
	#(215 8 #reduceActionForIterationStatement6: 25520134 false ) 
	#(215 8 #reduceActionForIterationStatement11: 25520139 false ) 
	#(215 8 #reduceActionForIterationStatement23: 25520151 false ) 
	#(215 8 #reduceActionForIterationStatement20: 25520148 false ) 
	#(215 8 #reduceActionForIterationStatement8: 25520136 false ) 
	#(215 8 #reduceActionForIterationStatement9: 25520137 false ) 
	#(215 8 #reduceActionForIterationStatement18: 25520146 false ) 
	#(215 8 #reduceActionForIterationStatement25: 25520153 false ) 
	#(215 8 #reduceActionForIterationStatement27: 25520155 false ) 
	#(256 8 #reduceActionForGeneratorExpression1: 32951297 false ) 
	#(237 8 #reduceActionForFunctionExpression2: 30484482 false ) 
	#(226 3 #reduceActionForCaseClause1: 29251585 false ) 
	#(227 3 #reduceActionForDefaultClause2: 29358082 false ) 
	#(224 4 #reduceActionForCaseBlock5: 28994565 false ) 
	#(224 4 #reduceActionForCaseBlock4: 28994564 false ) 
	#(321 5 #reduceActionForJSXChild4: 40655876 false ) 
	#(314 5 #reduceActionForJSXSpreadAttribute1: 39995393 false ) 
	#(367 5 #reduceActionForConstructSignature2: 47381506 false ) 
	#(367 5 #reduceActionForConstructSignature3: 47381507 false ) 
	#(357 6 #reduceActionForConstructorType1: 44015617 false ) 
	#(356 6 #reduceActionForFunctionType2: 43835394 false ) 
	#(439 3 #reduceActionForMemberVariableDeclaration5: 61512707 false ) 
	#(439 3 #reduceActionForMemberVariableDeclaration3: 61512706 false ) 
	#(439 3 #reduceActionForAmbientPropertyMemberDeclaration9: 61512713 false ) 
	#(439 3 #reduceActionForMemberVariableDeclaration9: 61512709 false ) 
	#(434 7 #reduceActionForAmbientClassDeclaration2: 60812290 false ) 
	#(255 8 #reduceActionForGeneratorExpression1: 32714753 false ) 
	#(236 8 #reduceActionForFunctionExpression2: 30272514 false ) 
	#(422 8 #reduceActionForImportRequireDeclaration1: 57381889 false ) 
	#(254 8 #reduceActionForGeneratorMethod1: 32498689 false ) 
	#(263 8 #reduceActionForAsyncMethod1: 34190337 false ) 
	#(252 8 #reduceActionForMethodDefinition6: 31842310 false ) 
	#(261 9 #reduceActionForAsyncGeneratorExpression1: 33879041 false ) 
	#(265 9 #reduceActionForAsyncFunctionExpression2: 34659330 false ) 
	#(368 6 #reduceActionForIndexSignature1: 47574017 false ) 
	#(368 6 #reduceActionForIndexSignature1: 47574018 false ) 
	#(389 6 #reduceActionForMemberFunctionDeclaration2: 52610050 false ) 
	#(386 6 #reduceActionForConstructorDeclaration4: 51866628 false ) 
	#(388 6 #reduceActionForMemberVariableDeclaration16: 52440080 false ) 
	#(389 6 #reduceActionForMemberFunctionDeclaration3: 52610051 false ) 
	#(264 8 #reduceActionForAsyncFunctionExpression1: 34409473 false ) 
	#(215 9 #reduceActionForIterationStatement12: 25520140 false ) 
	#(215 9 #reduceActionForIterationStatement13: 25520141 false ) 
	#(215 9 #reduceActionForIterationStatement10: 25520138 false ) 
	#(215 9 #reduceActionForIterationStatement26: 25520154 false ) 
	#(256 9 #reduceActionForGeneratorExpression2: 32951298 false ) 
	#(226 4 #reduceActionForCaseClause2: 29251586 false ) 
	#(224 5 #reduceActionForCaseBlock6: 28994566 false ) 
	#(305 9 #reduceActionForJSXFragment1: 39288833 false ) 
	#(304 6 #reduceActionForJSXClosingElement1: 39129089 false ) 
	#(367 6 #reduceActionForConstructSignature4: 47381508 false ) 
	#(357 7 #reduceActionForConstructorType2: 44015618 false ) 
	#(439 4 #reduceActionForMemberVariableDeclaration7: 61512708 false ) 
	#(439 4 #reduceActionForAmbientPropertyMemberDeclaration10: 61512714 false ) 
	#(439 4 #reduceActionForMemberVariableDeclaration13: 61512711 false ) 
	#(439 4 #reduceActionForMemberVariableDeclaration11: 61512710 false ) 
	#(439 4 #reduceActionForAmbientPropertyMemberDeclaration11: 61512715 false ) 
	#(255 9 #reduceActionForGeneratorExpression2: 32714754 false ) 
	#(259 9 #reduceActionForAsyncGeneratorMethod1: 33350657 false ) 
	#(372 9 #reduceActionForGetAccessor1: 48664577 false ) 
	#(373 9 #reduceActionForSetAccessor2: 48870402 false ) 
	#(261 10 #reduceActionForAsyncGeneratorExpression2: 33879042 false ) 
	#(386 7 #reduceActionForConstructorDeclaration1: 51866625 false ) 
	#(389 7 #reduceActionForMemberFunctionDeclaration4: 52610052 false ) 
	#(260 9 #reduceActionForAsyncGeneratorExpression1: 33603585 false ) 
	#(264 9 #reduceActionForAsyncFunctionExpression2: 34409474 false ) 
	#(215 10 #reduceActionForIterationStatement14: 25520142 false ) 
	#(318 5 #reduceActionForJSXChild4: 40392706 false ) 
	#(438 5 #reduceActionForAmbientConstructorDeclaration1: 61305857 false ) 
	#(439 5 #reduceActionForMemberVariableDeclaration15: 61512712 false ) 
	#(439 5 #reduceActionForAmbientPropertyMemberDeclaration12: 61512716 false ) 
	#(373 10 #reduceActionForSetAccessor1: 48870401 false ) 
	#(373 10 #reduceActionForSetAccessor1: 48870403 false ) 
	#(386 8 #reduceActionForConstructorDeclaration2: 51866626 false ) 
	#(260 10 #reduceActionForAsyncGeneratorExpression2: 33603586 false )
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
	^ #('<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<question>' '<questionDot>' '<percent>' '<bar>' '<barBar>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<module>' '<namespace>' '<new>' '<null>' '<of>' '<private>' '<protected>' '<public>' '<return>' '<set>' '<static>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<whitespace>' '<string>' '<numeric>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'FunctionDeclaration' 'FunctionExpression' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorMethod' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorBody' 'AsyncMethod' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' '<questionQuestion>' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSNewTargetExpressionNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSVariableDeclarationNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSVariableDeclarationNode #JSGeneratorMethodDefinitionNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorMethodDefinitionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #OrderedCollection #JSAsyncMethodDefinitionNode #JSAsyncFunctionNode #JSAsyncFunctionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSProgramNode #JSMemberVariableDeclarationNode #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 0 105 0 67 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 0 125 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 217 0 128 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 1 253 0 186 1 253 0 189 1 253 0 190 1 253 0 191 1 253 0 193 1 253 0 194 1 137 0 195 1 253 0 198 1 253 0 212 1 253 0 213 1 253 0 214 1 253 0 215 1 253 0 218 1 253 0 219 1 253 0 221 1 253 0 222 1 253 0 223 1 253 0 228 1 253 0 230 1 253 0 231 1 253 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 0 217 1 21 1 245 1 22 1 249 1 23 1 253 1 24 1 253 1 25 1 253 1 35 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193 0 14 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 2 65 0 182 2 65 0 183 2 65 0 185 0 253 0 237 2 65 0 245 1 205 0 246 1 209 0 249 2 65 0 250 0 253 1 0 2 65 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 69 0 186 2 69 0 189 2 69 0 190 2 69 0 191 2 69 0 198 2 69 0 212 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 218 2 69 0 219 2 69 0 221 2 69 0 222 2 69 0 223 2 69 0 228 2 69 0 230 2 69 0 231 2 69 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 2 73 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 81 1 19 2 85 1 20 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193 0 18 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 0 105 0 67 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 0 125 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 1 253 0 186 1 253 0 189 1 253 0 190 1 253 0 191 1 253 0 193 1 253 0 194 1 137 0 195 1 253 0 198 1 253 0 212 1 253 0 213 1 253 0 214 1 253 0 215 1 253 0 218 1 253 0 219 1 253 0 221 1 253 0 222 1 253 0 223 1 253 0 228 1 253 0 230 1 253 0 231 1 253 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 89 1 21 1 245 1 22 1 249 1 23 1 253 1 24 1 253 1 25 1 253 1 35 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193 0 14 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 2 101 0 61 0 97 0 63 0 101 0 64 2 105 0 66 2 109 0 67 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 2 117 0 76 2 121 0 81 1 137 0 83 2 125 0 85 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 2 129 0 102 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 201 0 186 2 201 0 189 2 201 0 190 2 201 0 191 2 201 0 194 1 137 0 195 2 201 0 198 2 201 0 212 2 201 0 213 2 201 0 214 2 201 0 215 2 201 0 218 2 201 0 219 2 201 0 221 2 201 0 222 2 201 0 223 2 201 0 228 2 201 0 230 2 201 0 231 2 201 0 235 2 201 0 236 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 2 201 0 255 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 2 201 1 12 0 253 1 13 2 153 1 25 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 157 1 114 2 161 1 123 2 201 1 136 2 169 1 141 2 173 1 147 2 177 1 149 2 181 1 150 2 185 1 151 2 189 1 152 2 193 1 153 2 197 1 154 2 201 1 155 2 205 1 156 2 209 1 157 2 213 1 158 2 217 1 159 2 221 1 160 2 225 1 161 2 229 1 162 2 233 1 163 2 237 1 164 2 241 1 165 2 229 1 166 2 229 1 167 2 241 1 168 2 229 1 169 2 241 1 170 3 9 1 171 3 13 1 172 3 17 1 173 3 21 1 189 3 25 1 193 0 11 1 194] 
#[1 0 29 0 1 0 38 0 2 3 29 0 3 3 33 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 3 37 0 109 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 41 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 3 45 0 182 3 45 0 183 3 45 0 185 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 0 253 0 237 3 73 0 238 3 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 3 45 0 245 1 205 0 246 1 209 0 249 3 45 0 250 0 253 1 0 3 45 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 93 1 193] 
#[1 0 29 0 1 0 33 0 3 3 97 0 4 3 101 0 5 0 41 0 7 3 105 0 25 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 109 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 3 113 0 74 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 3 117 0 93 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 3 121 0 109 0 193 0 113 3 125 0 114 3 181 0 116 3 185 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 129 0 129 3 145 0 130 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 3 137 0 139 3 141 0 140 3 145 0 141 3 145 0 142 3 145 0 143 3 141 0 144 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 3 161 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 3 141 0 252 3 141 0 254 0 253 1 0 1 109 1 2 3 141 1 3 0 253 1 5 3 141 1 7 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 3 181 1 42 3 185 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 141 1 116 3 141 1 117 3 197 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 3 201 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 3 205 0 109 3 209 0 110 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 3 213 0 135 3 217 0 136 3 221 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 3 225 0 182 3 225 0 183 0 253 0 237 3 225 0 245 1 205 0 246 1 209 0 249 3 225 0 250 0 253 1 0 3 225 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 0 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 3 245 0 165 3 245 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 3 245 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 3 253 0 165 3 253 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 3 253 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 4 1 0 165 4 1 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 4 1 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 4 5 0 165 4 5 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 4 5 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 4 9 0 165 4 9 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 4 9 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 4 13 0 165 4 13 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 4 13 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 4 17 0 1 4 21 0 73 2 61 0 113 4 25 0 129 4 29 0 246 1 209 0 249 4 33 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 4 37 0 165 4 37 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 4 37 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 0 46 0 7 0 46 0 113 4 41 0 220] 
#[1 4 45 0 3 4 49 0 68 2 61 0 113 4 53 0 129 4 57 1 14 4 61 1 15 4 65 1 193] 
#[0 0 50 0 3 0 5 0 113 1 193] 
#[1 0 46 0 7 0 46 0 113 4 69 0 220] 
#[0 4 73 0 7] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 4 77 0 165 4 77 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 4 77 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 4 81 0 186 4 81 0 189 4 81 0 190 4 81 0 191 4 81 0 198 4 81 0 212 4 81 0 213 4 81 0 214 4 81 0 215 4 81 0 218 4 81 0 219 4 81 0 221 4 81 0 222 4 81 0 223 4 81 0 228 4 81 0 230 4 81 0 231 4 81 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 4 85 0 3 4 89 0 25 4 93 0 51 4 97 0 56 1 137 0 57 4 101 0 62 4 105 0 73 1 137 0 83 0 173 0 104 4 109 0 187 4 109 0 188 4 109 0 194 1 137 0 195 4 121 0 198 4 109 0 236 4 109 0 255 4 109 1 4 4 109 1 8 4 109 1 12 4 145 1 36 4 149 1 37 4 153 1 193] 
#[0 0 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 4 157 0 1 4 161 0 52] 
#[1 4 165 0 1 4 169 0 25 2 61 0 113 4 173 0 129] 
#[0 4 177 0 1] 
#[1 4 181 0 1 4 185 0 3 4 189 0 25 2 61 0 113 4 213 0 116 4 201 0 129 4 197 1 26 4 201 1 27 4 205 1 28 4 209 1 29 4 213 1 33 4 201 1 34 4 213 1 42] 
#[0 0 58 0 3 0 5 0 113 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 4 225 0 21 3 233 0 51 0 81 0 56 2 13 0 69 0 117 0 73 0 133 0 86 2 9 0 87 4 229 0 95 0 153 0 98 2 13 0 100 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 4 233 0 129 4 233 0 131 4 233 0 132 4 233 0 133 4 233 0 134 4 233 0 138 4 233 0 146 0 249 0 147 4 233 0 150 4 233 0 151 4 233 0 152 4 233 0 153 4 237 0 154 4 233 0 237 4 233 1 0 4 233 1 5 4 233 1 9 4 233 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 4 233 1 44 4 233 1 45 4 233 1 46 2 37 1 47 4 233 1 49 2 45 1 67 4 241 1 193] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 46 0 1 0 46 0 3 0 46 0 5 0 46 0 7 0 46 0 34 0 46 0 35 0 46 0 36 0 46 0 37 0 46 0 38 0 46 0 47 0 46 0 51 0 46 0 52 0 46 0 56 0 46 0 63 0 46 0 69 0 46 0 73 0 46 0 76 0 46 0 86 0 46 0 87 0 46 0 95 0 46 0 98 0 46 0 100 0 46 0 103 0 46 0 105 0 46 0 108 0 46 0 113 0 46 0 116 0 46 0 117 0 46 0 118 0 46 0 120 0 46 0 121 0 46 0 124 4 245 0 220 0 46 1 193] 
#[1 4 249 0 1 4 253 0 5 5 1 0 21 5 5 0 158 5 9 1 193] 
#[0 5 13 0 1] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 5 17 0 182 5 17 0 183 5 17 0 185 0 253 0 237 5 17 0 245 1 205 0 246 1 209 0 249 5 17 0 250 0 253 1 0 5 17 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 0 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 5 21 0 3 5 25 0 191] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 5 29 0 165 5 29 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 5 29 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 5 41 0 129 5 45 0 199 5 49 0 200 5 53 0 201 5 53 0 202 5 53 0 203 5 57 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 5 61 0 165 5 61 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 5 61 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[0 5 65 0 1] 
#[0 5 69 0 1] 
#[1 0 29 0 1 0 74 0 2 2 53 0 3 0 74 0 4 0 37 0 5 0 74 0 6 0 74 0 7 5 73 0 25 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 74 0 88 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 0 74 0 110 0 74 0 111 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 74 0 122 0 74 0 123 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 5 77 0 182 5 77 0 183 0 253 0 237 5 77 0 245 1 205 0 246 1 209 0 249 5 77 0 250 0 253 1 0 5 77 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193 0 74 1 194] 
#[1 0 78 0 1 0 78 0 4 0 78 0 5 0 78 0 7 0 78 0 8 0 78 0 9 0 78 0 10 0 78 0 11 0 78 0 12 0 78 0 13 0 78 0 14 0 78 0 15 0 78 0 16 0 78 0 17 0 78 0 18 0 78 0 19 0 78 0 20 0 78 0 21 0 78 0 22 0 78 0 23 0 78 0 24 0 78 0 25 0 78 0 26 0 78 0 27 0 78 0 28 0 78 0 29 0 78 0 30 0 78 0 31 0 78 0 32 0 78 0 33 0 78 0 34 0 78 0 35 0 78 0 36 0 78 0 37 0 78 0 39 0 78 0 40 0 78 0 41 0 78 0 42 0 78 0 43 0 78 0 44 0 78 0 45 0 78 0 46 0 78 0 48 0 78 0 49 0 78 0 77 0 78 0 80 0 78 0 110 5 81 0 111 0 78 0 120 0 78 0 121 0 78 1 190 0 78 1 192 0 78 1 193] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 125 1 190 1 192 1 193 1 194] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 98 0 13 5 85 1 68] 
#[0 0 0 1 194] 
#[1 0 102 0 1 0 102 0 2 0 102 0 4 0 102 0 5 0 102 0 6 0 102 0 7 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 77 0 102 0 80 0 102 0 88 0 102 0 110 0 102 0 111 0 102 0 120 0 102 0 121 0 102 0 122 0 102 0 123 0 102 1 190 0 102 1 192 0 102 1 193 0 102 1 194] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 0 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 5 89 0 121] 
#[1 4 249 0 1 0 134 0 2 0 134 0 3 0 134 0 4 5 93 0 5 0 134 0 6 0 134 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 19 0 134 0 20 5 97 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 5 101 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 48 0 134 0 49 0 134 0 77 0 134 0 80 0 134 0 88 0 134 0 110 0 134 0 111 0 209 0 120 0 6 0 121 0 134 0 122 0 134 0 123 5 105 0 146 0 249 0 147 5 109 0 158 5 113 0 161 0 134 1 190 0 134 1 192 5 9 1 193 0 134 1 194] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 0 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 0 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 192 1 194] 
#[1 4 249 0 1 0 154 0 2 0 154 0 3 0 154 0 4 5 117 0 5 0 154 0 6 0 154 0 7 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 154 0 15 0 154 0 16 0 154 0 17 0 154 0 19 0 154 0 20 5 121 0 21 0 154 0 22 0 154 0 23 0 154 0 24 0 154 0 25 0 154 0 26 0 154 0 27 0 154 0 28 0 154 0 29 0 154 0 30 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 39 0 154 0 40 0 154 0 41 5 101 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 48 0 154 0 49 0 154 0 77 0 154 0 80 0 154 0 88 0 154 0 110 0 154 0 111 0 209 0 120 0 6 0 121 0 154 0 122 0 154 0 123 5 125 0 146 0 249 0 147 5 129 0 158 5 133 0 161 0 154 1 190 0 154 1 192 5 9 1 193 0 154 1 194] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 0 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 19 0 166 0 20 0 166 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 39 0 166 0 40 0 166 0 41 5 101 0 42 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 48 0 166 0 49 0 166 0 77 0 166 0 80 0 166 0 88 0 166 0 110 0 166 0 111 0 166 0 122 0 166 0 123 5 137 0 161 0 166 1 190 0 166 1 192 0 166 1 194] 
#[1 0 170 0 2 0 170 0 4 0 170 0 6 0 170 0 7 0 170 0 8 5 197 0 9 0 170 0 10 0 170 0 11 5 197 0 12 0 170 0 13 0 170 0 14 5 197 0 15 5 197 0 16 0 170 0 17 0 170 0 19 0 170 0 20 5 197 0 22 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 5 197 0 27 5 197 0 28 5 197 0 29 5 197 0 30 5 197 0 31 5 197 0 32 5 197 0 33 0 170 0 34 5 189 0 35 0 170 0 36 5 193 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 48 0 170 0 49 0 170 0 77 0 170 0 80 0 170 0 88 0 170 0 110 0 170 0 111 0 170 0 122 0 170 0 123 5 197 0 184 0 170 1 190 5 197 1 192 0 170 1 194] 
#[0 0 174 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[1 0 178 0 2 0 178 0 4 0 178 0 6 0 178 0 7 0 178 0 8 0 178 0 10 0 178 0 11 0 178 0 13 0 178 0 14 0 178 0 17 0 178 0 19 0 178 0 20 0 178 0 23 0 178 0 24 0 178 0 25 5 205 0 26 0 178 0 34 0 178 0 36 0 178 0 39 0 178 0 40 0 178 0 41 0 178 0 43 0 178 0 44 0 178 0 45 0 178 0 46 0 178 0 48 0 178 0 49 0 178 0 77 0 178 0 80 0 178 0 88 0 178 0 110 0 178 0 111 0 178 0 122 0 178 0 123 0 178 1 190 0 178 1 194] 
#[0 0 182 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[1 0 186 0 2 0 186 0 4 0 186 0 6 0 186 0 7 5 221 0 8 0 186 0 10 0 186 0 11 0 186 0 13 0 186 0 14 0 186 0 17 0 186 0 19 0 186 0 20 0 186 0 23 0 186 0 24 5 221 0 25 0 186 0 34 0 186 0 36 0 186 0 39 0 186 0 40 0 186 0 41 5 221 0 43 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 48 0 186 0 49 0 186 0 77 0 186 0 80 0 186 0 88 0 186 0 110 0 186 0 111 0 186 0 122 0 186 0 123 5 221 0 169 0 186 1 190 0 186 1 194] 
#[1 0 190 0 2 0 190 0 4 0 190 0 6 0 190 0 7 0 190 0 10 0 190 0 11 0 190 0 13 0 190 0 14 0 190 0 17 0 190 0 19 0 190 0 20 0 190 0 23 0 190 0 24 5 225 0 34 5 229 0 36 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 44 0 190 0 45 0 190 0 46 0 190 0 48 0 190 0 49 0 190 0 77 0 190 0 80 0 190 0 88 0 190 0 110 0 190 0 111 0 190 0 122 0 190 0 123 0 190 1 190 0 190 1 194] 
#[1 0 194 0 2 0 194 0 4 0 194 0 6 0 194 0 7 0 194 0 10 5 233 0 11 0 194 0 13 5 237 0 14 5 241 0 17 0 194 0 19 0 194 0 20 0 194 0 23 0 194 0 24 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 48 0 194 0 49 0 194 0 77 0 194 0 80 0 194 0 88 0 194 0 110 0 194 0 111 0 194 0 122 0 194 0 123 0 194 1 190 0 194 1 194] 
#[1 0 198 0 2 0 198 0 4 0 198 0 6 0 198 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 0 198 0 23 0 198 0 24 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 48 0 198 0 49 6 5 0 77 6 9 0 80 0 198 0 88 0 198 0 110 0 198 0 111 0 198 0 122 0 198 0 123 0 198 1 190 0 198 1 194] 
#[1 0 202 0 2 0 202 0 4 0 202 0 6 0 202 0 7 6 13 0 23 6 17 0 24 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 44 0 202 0 45 0 202 0 46 6 21 0 48 6 25 0 49 0 202 0 88 0 202 0 110 0 202 0 111 0 202 0 122 0 202 0 123 0 202 1 190 0 202 1 194] 
#[1 0 206 0 2 0 206 0 4 0 206 0 6 0 206 0 7 6 29 0 39 0 206 0 40 0 206 0 41 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 88 0 206 0 110 0 206 0 111 0 206 0 122 0 206 0 123 0 206 1 190 0 206 1 194] 
#[1 0 210 0 2 0 210 0 4 0 210 0 6 0 210 0 7 0 210 0 40 0 210 0 41 0 210 0 44 0 210 0 45 6 33 0 46 0 210 0 88 0 210 0 110 0 210 0 111 0 210 0 122 0 210 0 123 0 210 1 190 0 210 1 194] 
#[1 0 214 0 2 0 214 0 4 0 214 0 6 0 214 0 7 0 214 0 40 0 214 0 41 6 37 0 44 0 214 0 45 0 214 0 88 0 214 0 110 0 214 0 111 0 214 0 122 0 214 0 123 0 218 1 190 0 214 1 194] 
#[1 0 222 0 2 0 222 0 4 0 222 0 6 0 222 0 7 6 41 0 40 0 222 0 41 0 222 0 45 0 222 0 88 0 222 0 110 0 222 0 111 0 222 0 122 0 222 0 123 0 222 1 194] 
#[1 0 226 0 2 0 226 0 4 0 226 0 6 0 226 0 7 0 226 0 41 6 45 0 45 0 226 0 88 0 226 0 110 0 226 0 111 0 226 0 122 0 226 0 123 0 226 1 194] 
#[1 0 230 0 2 0 230 0 4 0 230 0 6 0 230 0 7 0 230 0 41 0 230 0 88 0 230 0 110 0 230 0 111 0 230 0 122 0 230 0 123 0 234 1 190 0 230 1 194] 
#[0 6 49 1 190] 
#[1 0 238 0 2 0 238 0 4 0 238 0 6 0 238 0 7 6 53 0 41 0 238 0 88 0 238 0 110 0 238 0 111 0 238 0 122 0 238 0 123 0 238 1 194] 
#[0 0 242 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[0 0 246 0 2 0 6 0 7 0 110 0 111 0 122 0 123 1 194] 
#[1 6 57 0 7 6 61 0 110] 
#[0 0 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 62 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 0 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 10 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 62 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 6 65 0 129 6 69 0 196 6 73 0 197 6 77 0 201 6 77 0 202 6 77 0 203 6 73 1 121 6 73 1 122 6 89 1 193] 
#[0 1 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 1 78 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[0 6 93 0 18] 
#[0 1 82 0 18] 
#[0 1 86 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[0 1 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 1 94 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[0 1 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 1 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 1 106 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[0 1 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 1 114 1 194] 
#[0 1 118 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 0 105 0 67 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 0 125 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 6 97 0 186 6 97 0 189 6 97 0 190 6 97 0 191 6 97 0 193 6 97 0 194 1 137 0 195 6 97 0 198 6 97 0 212 6 97 0 213 6 97 0 214 6 97 0 215 6 97 0 218 6 97 0 219 6 97 0 221 6 97 0 222 6 97 0 223 6 97 0 228 6 97 0 230 6 97 0 231 6 97 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 6 97 1 24 6 97 1 25 6 97 1 35 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193 1 122 1 194] 
#[0 1 126 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 130 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 134 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 190 1 192 1 193 1 194] 
#[1 1 166 0 3 1 166 0 124 1 166 0 126 6 101 1 69] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 6 105 0 124] 
#[1 6 109 0 1 6 113 0 10 6 117 0 73 6 121 1 73 6 125 1 115] 
#[1 6 129 0 4 6 133 0 5 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 93 3 121 0 109 2 61 0 113 3 125 0 114 6 145 0 116 6 149 0 117 6 141 0 129 3 145 0 130 3 137 0 139 3 141 0 140 3 145 0 141 3 145 0 142 3 145 0 143 3 141 0 144 3 141 0 252 3 141 0 254 3 141 1 3 3 141 1 7 6 145 1 42 6 149 1 43 3 141 1 116 3 141 1 117 6 153 1 193] 
#[0 4 181 0 1] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 68 0 72 0 77 0 79 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 6 61 0 110 0 0 1 194] 
#[0 0 0 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 6 157 0 186 6 157 0 189 6 157 0 190 6 157 0 191 6 157 0 193 6 157 0 194 1 137 0 195 6 157 0 198 6 157 0 212 6 157 0 213 6 157 0 214 6 157 0 215 6 157 0 218 6 157 0 219 6 157 0 221 6 157 0 222 6 157 0 223 6 157 0 228 6 157 0 230 6 157 0 231 6 157 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193 1 174 1 194] 
#[0 1 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 62 0 63 0 64 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 0 0 1 194] 
#[0 1 182 1 194] 
#[0 0 0 1 194] 
#[1 4 45 0 3 4 49 0 68 2 61 0 113 6 161 0 129 6 165 1 14 4 61 1 15 4 65 1 193] 
#[1 0 50 0 3 0 50 0 5 6 169 0 66 0 50 0 113 0 50 1 193] 
#[1 6 173 0 56 6 177 0 57 2 105 0 66 6 181 0 73 6 185 0 83 6 189 0 84 6 193 0 85 6 197 0 104 6 217 1 136 6 205 1 174 6 209 1 177 6 213 1 178 6 217 1 184 6 221 1 185] 
#[1 2 61 0 113 6 225 0 129] 
#[1 4 85 0 3 6 229 0 22 6 233 0 25 4 97 0 56 2 97 0 57 6 237 0 61 6 241 0 62 2 105 0 66 4 105 0 73 6 245 0 76 2 121 0 81 1 137 0 83 2 125 0 85 2 129 0 102 0 173 0 104 6 249 0 194 1 137 0 195 6 253 0 198 7 1 0 236 7 5 0 255 7 9 1 12 7 13 1 25 7 17 1 37 7 21 1 114 7 25 1 123 7 29 1 136 7 33 1 141 7 37 1 147 7 41 1 173 7 45 1 193] 
#[1 7 49 0 1 7 53 0 25 2 61 0 113 7 57 0 129] 
#[1 4 181 0 1 4 185 0 3 4 189 0 25 2 61 0 113 4 213 0 116 7 61 0 129 4 197 1 26 4 201 1 27 4 205 1 28 4 209 1 29 4 213 1 33 4 201 1 34 4 213 1 42] 
#[1 2 61 0 113 7 65 0 129] 
#[1 2 61 0 113 7 69 0 129 7 73 1 142] 
#[1 2 61 0 113 7 77 0 129] 
#[0 1 186 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 190 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 194 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 198 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 202 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 1 206 0 1 1 206 0 3 1 206 0 5 1 206 0 7 1 206 0 34 1 206 0 35 1 206 0 36 1 206 0 37 1 206 0 38 1 206 0 47 1 206 0 51 1 206 0 52 1 206 0 53 1 206 0 56 1 206 0 57 1 206 0 59 1 206 0 60 0 15 0 61 1 206 0 63 1 206 0 64 1 206 0 66 0 15 0 67 1 206 0 69 1 206 0 71 1 206 0 73 1 206 0 75 0 15 0 76 0 15 0 81 1 206 0 83 0 15 0 85 1 206 0 86 1 206 0 87 1 206 0 92 1 206 0 95 1 206 0 96 1 206 0 98 1 206 0 99 1 206 0 100 1 206 0 101 0 15 0 102 1 206 0 103 1 206 0 104 1 206 0 105 1 206 0 106 1 206 0 107 1 206 0 108 1 206 0 113 1 206 0 116 1 206 0 117 1 206 0 118 1 206 0 120 1 206 0 121 1 206 0 124 1 206 1 193 0 15 1 194] 
#[1 1 214 0 1 1 214 0 3 1 214 0 5 1 214 0 7 1 214 0 34 1 214 0 35 1 214 0 36 1 214 0 37 1 214 0 38 1 214 0 47 1 214 0 51 1 214 0 52 1 214 0 53 1 214 0 56 1 214 0 57 1 214 0 59 1 214 0 60 0 19 0 61 1 214 0 63 1 214 0 64 1 214 0 66 0 19 0 67 1 214 0 69 1 214 0 71 1 214 0 73 1 214 0 75 0 19 0 76 0 19 0 81 1 214 0 83 0 19 0 85 1 214 0 86 1 214 0 87 1 214 0 92 1 214 0 95 1 214 0 96 1 214 0 98 1 214 0 99 1 214 0 100 1 214 0 101 0 19 0 102 1 214 0 103 1 214 0 104 1 214 0 105 1 214 0 106 1 214 0 107 1 214 0 108 1 214 0 113 1 214 0 116 1 214 0 117 1 214 0 118 1 214 0 120 1 214 0 121 1 214 0 124 1 214 1 193 0 19 1 194] 
#[1 1 222 0 1 1 222 0 3 1 222 0 5 1 222 0 7 1 222 0 34 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 38 1 222 0 47 1 222 0 51 1 222 0 52 1 222 0 53 1 222 0 56 1 222 0 57 1 222 0 59 1 222 0 60 0 23 0 61 1 222 0 63 1 222 0 64 1 222 0 66 0 23 0 67 1 222 0 69 1 222 0 71 1 222 0 73 1 222 0 75 0 23 0 76 0 23 0 81 1 222 0 83 0 23 0 85 1 222 0 86 1 222 0 87 1 222 0 92 1 222 0 95 1 222 0 96 1 222 0 98 1 222 0 99 1 222 0 100 1 222 0 101 0 23 0 102 1 222 0 103 1 222 0 104 1 222 0 105 1 222 0 106 1 222 0 107 1 222 0 108 1 222 0 113 1 222 0 116 1 222 0 117 1 222 0 118 1 222 0 120 1 222 0 121 1 222 0 124 1 222 1 193 0 23 1 194] 
#[0 1 230 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 7 1 234 0 34 1 234 0 35 1 234 0 36 1 234 0 37 1 234 0 38 1 234 0 47 1 234 0 51 1 234 0 52 1 234 0 53 1 234 0 56 1 234 0 57 1 234 0 59 1 234 0 60 0 27 0 61 1 234 0 63 1 234 0 64 1 234 0 66 0 27 0 67 1 234 0 69 1 234 0 71 1 234 0 73 1 234 0 75 0 27 0 76 0 27 0 81 1 234 0 83 0 27 0 85 1 234 0 86 1 234 0 87 1 234 0 92 1 234 0 95 1 234 0 96 1 234 0 98 1 234 0 99 1 234 0 100 1 234 0 101 0 27 0 102 1 234 0 103 1 234 0 104 1 234 0 105 1 234 0 106 1 234 0 107 1 234 0 108 1 234 0 113 1 234 0 116 1 234 0 117 1 234 0 118 1 234 0 120 1 234 0 121 1 234 0 124 1 234 1 193 0 27 1 194] 
#[1 0 31 0 1 0 31 0 3 0 31 0 5 0 31 0 7 0 31 0 34 0 31 0 35 0 31 0 36 0 31 0 37 0 31 0 38 0 31 0 47 0 31 0 51 0 31 0 52 0 31 0 53 0 31 0 56 0 31 0 57 0 31 0 59 0 31 0 60 0 35 0 61 0 31 0 63 0 31 0 64 0 31 0 66 0 35 0 67 0 31 0 69 0 31 0 71 0 31 0 73 0 31 0 75 0 35 0 76 0 35 0 81 0 31 0 83 0 35 0 85 0 31 0 86 0 31 0 87 0 31 0 92 0 31 0 95 0 31 0 96 0 31 0 98 0 31 0 99 0 31 0 100 0 31 0 101 0 35 0 102 0 31 0 103 0 31 0 104 0 31 0 105 0 31 0 106 0 31 0 107 0 31 0 108 0 31 0 113 0 31 0 116 0 31 0 117 0 31 0 118 0 31 0 120 0 31 0 121 0 31 0 124 0 31 1 193 0 35 1 194] 
#[0 0 0 1 194] 
#[0 1 254 1 194] 
#[0 2 2 1 194] 
#[0 2 6 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 2 101 0 61 0 97 0 63 0 101 0 64 2 105 0 66 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 7 81 0 76 2 121 0 81 1 137 0 83 2 125 0 85 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 2 129 0 102 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 7 101 0 186 7 101 0 189 7 101 0 190 7 101 0 191 7 101 0 194 1 137 0 195 7 101 0 198 7 101 0 212 7 101 0 213 7 101 0 214 7 101 0 215 7 101 0 218 7 101 0 219 7 101 0 221 7 101 0 222 7 101 0 223 7 101 0 228 7 101 0 230 7 101 0 231 7 101 0 235 7 101 0 236 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 7 101 0 255 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 7 101 1 12 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 7 101 1 114 7 101 1 123 7 101 1 136 7 101 1 141 7 101 1 147 7 101 1 154 7 101 1 155 7 101 1 173 7 101 1 189 3 25 1 193 2 10 1 194] 
#[0 2 14 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 39 0 1 0 39 0 3 0 39 0 5 0 39 0 7 0 39 0 34 0 39 0 35 0 39 0 36 0 39 0 37 0 39 0 38 0 39 0 47 0 39 0 51 0 39 0 52 0 39 0 53 0 39 0 56 0 39 0 57 0 39 0 59 0 39 0 60 0 39 0 61 0 39 0 63 0 39 0 64 0 39 0 66 2 18 0 67 0 39 0 69 0 39 0 71 0 39 0 73 0 39 0 75 0 39 0 76 0 39 0 81 0 39 0 83 0 39 0 85 0 39 0 86 0 39 0 87 0 39 0 92 0 39 0 95 0 39 0 96 0 39 0 98 0 39 0 99 0 39 0 100 0 39 0 101 0 39 0 102 0 39 0 103 0 39 0 104 0 39 0 105 0 39 0 106 0 39 0 107 0 39 0 108 0 39 0 113 0 39 0 116 0 39 0 117 0 39 0 118 0 39 0 120 0 39 0 121 0 39 0 124 0 39 1 193 0 39 1 194] 
#[0 2 26 1 194] 
#[1 2 101 0 61 7 117 0 76 2 121 0 81 2 125 0 85 2 129 0 102 7 137 1 114 7 137 1 123 7 137 1 141 7 137 1 147 7 137 1 158 7 137 1 159 7 137 1 173 7 137 1 189 2 30 1 194] 
#[0 2 34 0 61 0 76 0 81 0 85 0 102 1 194] 
#[1 0 43 0 61 2 42 0 67 0 43 0 76 0 43 0 81 0 43 0 85 0 43 0 102 0 43 1 194] 
#[0 2 46 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 6 237 0 61 0 97 0 63 0 101 0 64 2 105 0 66 7 153 0 67 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 2 117 0 76 2 121 0 81 1 137 0 83 2 125 0 85 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 2 129 0 102 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 7 169 0 186 7 169 0 189 7 169 0 190 7 169 0 191 7 169 0 194 1 137 0 195 7 169 0 198 7 169 0 212 7 169 0 213 7 169 0 214 7 169 0 215 7 169 0 218 7 169 0 219 7 169 0 221 7 169 0 222 7 169 0 223 7 169 0 228 7 169 0 230 7 169 0 231 7 169 0 235 7 169 0 236 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 7 169 0 255 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 7 169 1 12 0 253 1 13 7 169 1 25 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 7 169 1 114 7 169 1 123 7 169 1 136 7 169 1 141 7 161 1 147 7 169 1 155 7 169 1 162 7 169 1 166 7 169 1 167 7 169 1 169 7 169 1 171 7 169 1 172 7 169 1 173 3 25 1 193 2 50 1 194] 
#[0 2 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 2 58 1 194] 
#[1 2 62 0 4 6 237 0 61 7 181 0 67 6 245 0 76 2 121 0 81 2 125 0 85 2 129 0 102 7 193 1 25 7 193 1 114 7 193 1 123 7 193 1 141 7 193 1 147 7 193 1 159 7 193 1 165 7 193 1 168 7 193 1 170 7 193 1 171 7 193 1 172 7 193 1 173 2 62 1 194] 
#[0 2 66 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 2 70 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 2 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 2 78 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 2 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 2 86 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[1 2 90 0 1 2 90 0 3 2 90 0 5 2 90 0 7 2 90 0 34 2 90 0 35 2 90 0 36 2 90 0 37 2 90 0 38 2 90 0 47 2 90 0 51 2 90 0 52 2 90 0 53 2 90 0 56 2 90 0 57 2 90 0 59 2 90 0 60 0 47 0 61 2 90 0 63 2 90 0 64 2 90 0 66 0 47 0 67 2 90 0 69 2 90 0 71 2 90 0 73 2 90 0 75 0 47 0 76 0 47 0 81 2 90 0 83 0 47 0 85 2 90 0 86 2 90 0 87 2 90 0 92 2 90 0 95 2 90 0 96 2 90 0 98 2 90 0 99 2 90 0 100 2 90 0 101 0 47 0 102 2 90 0 103 2 90 0 104 2 90 0 105 2 90 0 106 2 90 0 107 2 90 0 108 2 90 0 113 2 90 0 116 2 90 0 117 2 90 0 118 2 90 0 120 2 90 0 121 2 90 0 124 2 90 1 193 0 47 1 194] 
#[1 2 98 0 1 2 98 0 3 2 98 0 5 2 98 0 7 2 98 0 34 2 98 0 35 2 98 0 36 2 98 0 37 2 98 0 38 2 98 0 47 2 98 0 51 2 98 0 52 2 98 0 53 2 98 0 56 2 98 0 57 2 98 0 59 2 98 0 60 0 51 0 61 2 98 0 63 2 98 0 64 2 98 0 66 0 51 0 67 2 98 0 69 2 98 0 71 2 98 0 73 2 98 0 75 0 51 0 76 0 51 0 81 2 98 0 83 0 51 0 85 2 98 0 86 2 98 0 87 2 98 0 92 2 98 0 95 2 98 0 96 2 98 0 98 2 98 0 99 2 98 0 100 2 98 0 101 0 51 0 102 2 98 0 103 2 98 0 104 2 98 0 105 2 98 0 106 2 98 0 107 2 98 0 108 2 98 0 113 2 98 0 116 2 98 0 117 2 98 0 118 2 98 0 120 2 98 0 121 2 98 0 124 2 98 1 193 0 51 1 194] 
#[1 2 106 0 1 2 106 0 3 2 106 0 5 2 106 0 7 2 106 0 34 2 106 0 35 2 106 0 36 2 106 0 37 2 106 0 38 2 106 0 47 2 106 0 51 2 106 0 52 2 106 0 53 2 106 0 56 2 106 0 57 2 106 0 59 2 106 0 60 0 55 0 61 2 106 0 63 2 106 0 64 2 106 0 66 0 55 0 67 2 106 0 69 2 106 0 71 2 106 0 73 2 106 0 75 0 55 0 76 0 55 0 81 2 106 0 83 0 55 0 85 2 106 0 86 2 106 0 87 2 106 0 92 2 106 0 95 2 106 0 96 2 106 0 98 2 106 0 99 2 106 0 100 2 106 0 101 0 55 0 102 2 106 0 103 2 106 0 104 2 106 0 105 2 106 0 106 2 106 0 107 2 106 0 108 2 106 0 113 2 106 0 116 2 106 0 117 2 106 0 118 2 106 0 120 2 106 0 121 2 106 0 124 2 106 1 193 0 55 1 194] 
#[1 2 114 0 1 2 114 0 3 2 114 0 5 2 114 0 7 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 38 2 114 0 47 2 114 0 51 2 114 0 52 2 114 0 53 2 114 0 56 2 114 0 57 2 114 0 59 2 114 0 60 0 59 0 61 2 114 0 63 2 114 0 64 2 114 0 66 2 114 0 69 2 114 0 71 2 114 0 73 2 114 0 75 0 59 0 76 0 59 0 81 2 114 0 83 0 59 0 85 2 114 0 86 2 114 0 87 2 114 0 92 2 114 0 95 2 114 0 96 2 114 0 98 2 114 0 99 2 114 0 100 2 114 0 101 0 59 0 102 2 114 0 103 2 114 0 104 2 114 0 105 2 114 0 106 2 114 0 107 2 114 0 108 2 114 0 113 2 114 0 116 2 114 0 117 2 114 0 118 2 114 0 120 2 114 0 121 2 114 0 124 2 114 1 193 0 59 1 194] 
#[1 6 109 0 1 6 113 0 10 7 205 0 73 2 61 0 113 7 209 0 129 7 213 1 73 6 125 1 115] 
#[1 7 217 0 4 6 133 0 5 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 93 7 221 0 109 2 61 0 113 3 125 0 114 6 145 0 116 6 149 0 117 7 225 0 129 7 229 0 130 3 137 0 139 3 141 0 140 7 229 0 141 7 229 0 142 7 229 0 143 3 141 0 144 7 233 0 204 7 237 0 205 7 241 0 208 7 241 0 210 3 141 0 252 3 141 0 254 3 141 1 3 3 141 1 7 6 145 1 42 6 149 1 43 3 141 1 116 3 141 1 117 7 249 1 193] 
#[1 0 29 0 1 3 29 0 3 3 33 0 5 7 253 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 8 1 0 109 3 209 0 110 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 41 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 3 213 0 135 8 5 0 136 3 221 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 3 225 0 182 3 225 0 183 3 49 0 201 3 49 0 202 3 49 0 203 8 9 0 206 8 13 0 207 8 17 0 209 8 17 0 210 8 21 0 211 0 253 0 237 3 225 0 245 1 205 0 246 1 209 0 249 3 225 0 250 0 253 1 0 3 225 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 93 1 193] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 8 25 0 129 8 29 0 201 8 29 0 202 8 29 0 203] 
#[1 0 102 0 1 0 63 0 2 0 63 0 4 0 102 0 5 0 63 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 67 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 77 0 102 0 80 0 63 0 110 0 102 0 120 0 102 0 121 8 37 0 145 0 102 1 190 0 102 1 192 0 102 1 193] 
#[1 8 41 0 2 6 61 0 110] 
#[1 2 126 0 2 2 126 0 4 2 126 0 6 8 33 0 22 2 126 0 110 8 45 0 145] 
#[0 2 130 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 2 134 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 2 138 0 2 0 110] 
#[0 2 142 0 2 0 4 0 6 0 110] 
#[0 2 146 0 2] 
#[0 8 49 0 2] 
#[0 2 150 0 2] 
#[1 2 154 0 2 8 53 0 110] 
#[0 2 158 0 2] 
#[0 2 162 0 2 0 110] 
#[1 6 109 0 1 5 33 0 3 5 37 0 5 6 113 0 10 2 166 0 41 6 117 0 73 8 85 0 89 8 85 0 90 8 85 0 91 8 69 0 98 2 166 0 111 2 61 0 113 8 73 0 129 8 81 0 201 8 81 0 202 8 81 0 203 6 121 1 73 8 81 1 108 8 85 1 109 6 125 1 115] 
#[1 0 71 0 1 2 170 0 3 2 170 0 4 0 71 0 5 0 71 0 7 2 174 0 8 2 174 0 9 2 174 0 10 2 174 0 11 2 174 0 12 2 174 0 13 2 174 0 14 2 174 0 15 2 174 0 16 2 174 0 17 2 174 0 19 2 174 0 20 2 174 0 21 2 174 0 22 2 174 0 23 2 174 0 24 2 174 0 25 2 174 0 26 2 174 0 27 2 174 0 28 2 174 0 29 2 174 0 30 2 174 0 31 2 174 0 32 2 174 0 33 0 71 0 34 0 71 0 35 0 71 0 36 0 71 0 37 2 170 0 38 2 174 0 39 2 174 0 40 2 174 0 41 2 174 0 42 2 174 0 43 2 174 0 44 2 174 0 45 2 174 0 46 2 170 0 47 2 174 0 48 2 174 0 49 2 170 0 51 2 170 0 52 2 170 0 53 2 170 0 54 2 170 0 56 2 170 0 57 2 170 0 59 2 170 0 60 2 170 0 61 2 170 0 62 2 170 0 63 2 170 0 64 2 170 0 65 2 170 0 66 2 170 0 67 2 170 0 69 2 170 0 71 2 170 0 73 2 170 0 75 2 170 0 76 2 174 0 77 2 174 0 80 2 170 0 81 2 170 0 83 2 170 0 85 2 170 0 86 2 170 0 87 2 170 0 92 2 170 0 95 2 170 0 96 2 170 0 98 2 170 0 99 2 170 0 100 2 170 0 101 2 170 0 102 2 170 0 103 2 170 0 104 2 170 0 105 2 170 0 106 2 170 0 107 2 170 0 108 2 174 0 110 2 170 0 113 2 170 0 116 2 170 0 117 2 170 0 118 0 71 0 120 0 71 0 121 2 170 0 124 2 174 1 190 2 174 1 192 0 71 1 193 2 170 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 3 201 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 3 205 0 109 3 209 0 110 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 3 213 0 135 3 217 0 136 3 221 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 89 0 182 8 89 0 183 0 253 0 237 8 89 0 245 1 205 0 246 1 209 0 249 8 89 0 250 0 253 1 0 8 89 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 8 93 0 130 8 93 0 141 8 93 0 142 8 93 0 143 6 145 1 42 6 149 1 43] 
#[1 4 17 0 1 6 133 0 5 8 97 0 25 4 21 0 73 2 61 0 113 3 125 0 114 6 145 0 116 6 149 0 117 4 25 0 129 8 101 0 130 8 101 0 141 8 101 0 142 8 101 0 143 4 29 0 246 1 209 0 249 6 145 1 42 6 149 1 43 4 33 1 193] 
#[1 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 8 105 0 130 8 105 0 141 8 105 0 142 8 105 0 143 6 145 1 42 6 149 1 43] 
#[1 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 8 109 0 130 8 109 0 141 8 109 0 142 8 109 0 143 6 145 1 42 6 149 1 43] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 113 0 182 8 113 0 183 0 253 0 237 8 113 0 245 1 205 0 246 1 209 0 249 8 113 0 250 0 253 1 0 8 113 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 2 178 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[1 0 102 0 1 2 182 0 4 0 102 0 5 0 102 0 7 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 67 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 77 0 102 0 80 0 75 0 110 0 102 0 120 0 102 0 121 8 117 0 145 0 102 1 190 0 102 1 192 0 102 1 193] 
#[0 2 186 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[1 8 121 0 4 8 125 0 110] 
#[0 2 190 0 4 0 110] 
#[1 8 129 0 1 8 133 0 111] 
#[0 2 194 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[0 2 198 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[0 2 202 0 4 0 110] 
#[1 0 29 0 1 0 33 0 3 8 137 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 6 157 0 186 6 157 0 189 6 157 0 190 6 157 0 191 6 157 0 193 6 157 0 194 1 137 0 195 6 157 0 198 6 157 0 212 6 157 0 213 6 157 0 214 6 157 0 215 6 157 0 218 6 157 0 219 6 157 0 221 6 157 0 222 6 157 0 223 6 157 0 228 6 157 0 230 6 157 0 231 6 157 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 2 206 0 4 0 110] 
#[0 2 210 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 2 214 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 2 218 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[1 0 79 0 1 1 146 0 5 1 146 0 7 1 146 0 8 1 146 0 9 1 146 0 10 1 146 0 11 1 146 0 12 1 146 0 13 1 146 0 14 1 146 0 15 1 146 0 16 1 146 0 17 1 146 0 19 1 146 0 20 1 146 0 21 1 146 0 22 1 146 0 23 1 146 0 24 1 146 0 25 1 146 0 26 1 146 0 27 1 146 0 28 1 146 0 29 1 146 0 30 1 146 0 31 1 146 0 32 1 146 0 33 1 146 0 34 1 146 0 35 1 146 0 36 1 146 0 37 1 146 0 39 1 146 0 40 1 146 0 41 1 146 0 42 1 146 0 43 1 146 0 44 1 146 0 45 1 146 0 46 1 146 0 48 1 146 0 49 1 146 0 77 1 146 0 80 1 146 0 110 2 222 0 111 1 146 0 120 1 146 0 121 1 146 1 190 1 146 1 192 1 146 1 193] 
#[1 0 83 0 1 1 150 0 5 1 150 0 7 1 150 0 8 1 150 0 9 1 150 0 10 1 150 0 11 1 150 0 12 1 150 0 13 1 150 0 14 1 150 0 15 1 150 0 16 1 150 0 17 1 150 0 19 1 150 0 20 1 150 0 21 1 150 0 22 1 150 0 23 1 150 0 24 1 150 0 25 1 150 0 26 1 150 0 27 1 150 0 28 1 150 0 29 1 150 0 30 1 150 0 31 1 150 0 32 1 150 0 33 1 150 0 34 1 150 0 35 1 150 0 36 1 150 0 37 1 150 0 39 1 150 0 40 1 150 0 41 1 150 0 42 1 150 0 43 1 150 0 44 1 150 0 45 1 150 0 46 1 150 0 48 1 150 0 49 1 150 0 77 1 150 0 80 1 150 0 110 2 226 0 111 1 150 0 120 1 150 0 121 1 150 1 190 1 150 1 192 1 150 1 193] 
#[0 2 230 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 2 234 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[1 6 109 0 1 6 133 0 5 6 113 0 10 6 117 0 73 8 141 0 74 8 145 0 93 3 125 0 114 6 145 0 116 6 149 0 117 8 149 0 130 8 149 0 141 8 149 0 142 8 149 0 143 6 145 1 42 6 149 1 43 6 121 1 73 6 125 1 115] 
#[0 2 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 153 0 182 8 153 0 183 0 253 0 237 8 153 0 245 1 205 0 246 1 209 0 249 8 153 0 250 0 253 1 0 8 153 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 2 242 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 109 0 110 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[1 8 157 0 6 3 209 0 110 8 161 0 136] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 8 165 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 3 205 0 109 8 169 0 110 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 8 173 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 177 0 182 8 177 0 183 0 253 0 237 8 177 0 245 1 205 0 246 1 209 0 249 8 177 0 250 0 253 1 0 8 177 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 2 246 0 6 0 110] 
#[0 2 250 0 6 0 110] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 3 45 0 182 3 45 0 183 3 45 0 185 0 253 0 237 3 45 0 245 1 205 0 246 1 209 0 249 3 45 0 250 0 253 1 0 3 45 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 4 21 0 73] 
#[0 0 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 170 0 2 0 170 0 4 0 170 0 6 0 170 0 7 0 170 0 8 0 170 0 10 0 170 0 11 0 170 0 13 0 170 0 14 0 170 0 17 0 170 0 19 0 170 0 20 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 0 170 0 34 5 189 0 35 0 170 0 36 5 193 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 48 0 170 0 49 0 170 0 77 0 170 0 80 0 170 0 88 0 170 0 110 0 170 0 111 0 170 0 122 0 170 0 123 0 170 1 190 0 170 1 194] 
#[0 2 254 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[1 8 181 0 10 6 117 0 73] 
#[0 3 2 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[0 3 6 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[0 3 10 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[0 3 14 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[0 3 18 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 3 73 0 238 3 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 8 193 0 1 8 197 0 25 2 61 0 113 8 201 0 129] 
#[0 0 106 0 18] 
#[0 8 205 0 18] 
#[1 6 109 0 1 8 209 0 10 6 121 1 73 6 125 1 115] 
#[0 3 22 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[1 8 213 0 7 2 61 0 113 8 217 0 129] 
#[1 8 221 0 4 6 133 0 5 8 225 0 7 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 93 8 229 0 94 3 125 0 114 6 145 0 116 6 149 0 117 8 233 0 130 8 233 0 141 8 233 0 142 8 233 0 143 8 249 0 252 8 249 0 254 8 249 1 3 8 249 1 7 8 241 1 16 8 245 1 17 8 249 1 18 6 145 1 42 6 149 1 43 8 249 1 116 8 249 1 117 8 253 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 3 233 0 51 0 81 0 56 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 9 1 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 9 1 0 164 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 4 241 1 193] 
#[1 4 45 0 3 4 49 0 68 9 5 1 14 4 61 1 15 4 65 1 193] 
#[0 3 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 9 9 0 3] 
#[1 9 13 0 68 9 17 0 79 9 21 1 127 9 25 1 129] 
#[1 9 29 0 7 2 61 0 113 9 33 0 129] 
#[0 3 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 3 34 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[0 9 37 0 106] 
#[1 9 41 0 4 9 45 0 114 9 49 1 38 9 53 1 39] 
#[1 9 57 0 50 3 38 0 72] 
#[0 9 61 0 73] 
#[1 4 45 0 3 4 49 0 68 2 61 0 113 9 65 0 129 9 69 1 14 4 61 1 15 4 65 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 73 0 182 9 73 0 183 0 253 0 237 9 73 0 245 1 205 0 246 1 209 0 249 9 73 0 250 0 253 1 0 9 73 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 9 77 0 1 9 81 0 25 2 61 0 113 9 85 0 129] 
#[0 3 42 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 3 46 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 3 50 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 3 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 3 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 3 62 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 3 66 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 3 70 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 3 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 9 89 0 72 9 93 1 30] 
#[1 9 97 0 7 3 78 0 72] 
#[1 8 209 0 10 9 101 0 57 2 105 0 66 9 105 0 73 2 121 0 81 2 129 0 102 2 61 0 113 7 209 0 129 9 109 1 73 9 113 1 114 9 117 1 123 9 121 1 136] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 9 125 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 9 145 0 57 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 9 145 0 83 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 9 129 0 104 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 9 133 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 9 133 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 137 0 182 9 137 0 183 9 137 0 185 9 141 0 194 9 145 0 195 9 149 0 216 0 253 0 237 9 137 0 245 1 205 0 246 1 209 0 249 9 137 0 250 0 253 1 0 9 137 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 9 153 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 9 157 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 9 161 0 1 2 61 0 113 9 165 0 129] 
#[0 9 169 0 1] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 173 0 182 9 173 0 183 9 173 0 185 0 253 0 237 9 173 0 245 1 205 0 246 1 209 0 249 9 173 0 250 0 253 1 0 9 173 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 177 0 182 9 177 0 183 0 253 0 237 9 177 0 245 1 205 0 246 1 209 0 249 9 177 0 250 0 253 1 0 9 177 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 9 181 0 4 2 61 0 113 9 185 0 114 9 197 0 129 9 189 1 31 9 193 1 32 9 197 1 34] 
#[0 9 201 0 50] 
#[0 3 82 0 4 0 72 0 110] 
#[1 9 89 0 72 9 205 1 30] 
#[1 3 86 0 72 9 209 0 110] 
#[0 3 90 0 72] 
#[0 3 94 0 72] 
#[0 9 213 0 7] 
#[0 3 98 0 72 0 110] 
#[0 3 102 0 7] 
#[0 9 217 0 97] 
#[1 4 253 0 5 5 1 0 21] 
#[1 4 249 0 1 0 134 0 2 0 134 0 3 0 134 0 4 5 93 0 5 0 134 0 6 0 134 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 19 0 134 0 20 5 97 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 48 0 134 0 49 0 134 0 77 0 134 0 80 0 134 0 88 0 134 0 110 0 134 0 111 0 209 0 120 0 6 0 121 0 134 0 122 0 134 0 123 5 105 0 146 0 249 0 147 9 221 0 158 0 134 1 190 0 134 1 192 5 9 1 193 0 134 1 194] 
#[0 3 106 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 192 1 194] 
#[0 6 117 0 73] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 9 225 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 229 0 182 9 229 0 183 9 229 0 185 0 253 0 237 9 229 0 245 1 205 0 246 1 209 0 249 9 229 0 250 0 253 1 0 9 229 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 9 233 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 9 237 0 109 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 9 241 0 159 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 245 0 182 9 245 0 183 0 253 0 237 9 245 0 245 1 205 0 246 1 209 0 249 9 245 0 250 0 253 1 0 9 245 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 249 0 182 9 249 0 183 9 249 0 185 0 253 0 237 9 249 0 245 1 205 0 246 1 209 0 249 9 249 0 250 0 253 1 0 9 249 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 9 253 0 114] 
#[0 3 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 10 1 0 10 10 5 1 77] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 9 0 182 10 9 0 183 10 9 0 185 0 253 0 237 10 9 0 245 1 205 0 246 1 209 0 249 10 9 0 250 0 253 1 0 10 9 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 10 13 0 7 6 61 0 110] 
#[1 0 29 0 1 0 33 0 3 10 17 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 3 161 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 10 21 0 55 10 25 0 70 10 29 0 232 10 33 0 233] 
#[0 3 114 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[1 10 37 0 4 6 133 0 5 10 41 0 109 2 61 0 113 3 125 0 114 6 145 0 116 6 149 0 117 8 185 0 129 10 45 0 130 10 45 0 141 10 45 0 142 10 45 0 143 7 233 0 204 7 237 0 205 7 241 0 208 7 241 0 210 6 145 1 42 6 149 1 43 10 49 1 193] 
#[1 5 33 0 3 5 37 0 5 10 53 0 6 3 37 0 109 3 209 0 110 2 61 0 113 8 185 0 129 10 57 0 136 3 49 0 201 3 49 0 202 3 49 0 203 8 9 0 206 8 13 0 207 8 17 0 209 8 17 0 210 8 21 0 211 8 189 1 193] 
#[1 3 118 0 7 8 33 0 22 3 118 0 88 3 118 0 110 10 61 0 145] 
#[1 10 65 0 7 10 69 0 110] 
#[0 3 122 0 7 0 110] 
#[1 8 33 0 22 10 73 0 145] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 10 77 0 129 10 81 0 201 10 81 0 202 10 81 0 203 10 85 1 119 10 89 1 120] 
#[0 3 126 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 93 0 182 10 93 0 183 10 93 0 185 0 253 0 237 10 93 0 245 1 205 0 246 1 209 0 249 10 93 0 250 0 253 1 0 10 93 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 97 0 182 10 97 0 183 10 97 0 185 0 253 0 237 10 97 0 245 1 205 0 246 1 209 0 249 10 97 0 250 0 253 1 0 10 97 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 101 0 182 10 101 0 183 0 253 0 237 10 101 0 245 1 205 0 246 1 209 0 249 10 101 0 250 0 253 1 0 10 101 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 3 130 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 10 109 0 186 10 109 0 189 10 109 0 190 10 109 0 191 10 109 0 198 10 109 0 212 10 109 0 213 10 109 0 214 10 109 0 215 10 109 0 218 10 109 0 219 10 109 0 221 10 109 0 222 10 109 0 223 10 109 0 228 10 109 0 229 10 109 0 230 10 109 0 231 10 109 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 10 113 0 13] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 117 0 182 10 117 0 183 10 117 0 185 0 253 0 237 10 117 0 245 1 205 0 246 1 209 0 249 10 117 0 250 0 253 1 0 10 117 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 121 0 182 10 121 0 183 10 121 0 185 0 253 0 237 10 121 0 245 1 205 0 246 1 209 0 249 10 121 0 250 0 253 1 0 10 121 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 10 125 0 114] 
#[1 4 249 0 1 10 129 0 5 10 133 0 114 0 209 0 120 0 6 0 121 10 137 0 146 0 249 0 147 10 141 0 158 10 145 0 163 5 9 1 193] 
#[0 3 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 3 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 4 249 0 1 3 142 0 2 3 142 0 3 3 142 0 4 10 149 0 5 3 142 0 6 3 142 0 7 3 142 0 8 3 142 0 9 3 142 0 10 3 142 0 11 3 142 0 12 3 142 0 13 3 142 0 14 3 142 0 15 3 142 0 16 3 142 0 17 3 142 0 19 3 142 0 20 10 153 0 21 3 142 0 22 3 142 0 23 3 142 0 24 3 142 0 25 3 142 0 26 3 142 0 27 3 142 0 28 3 142 0 29 3 142 0 30 3 142 0 31 3 142 0 32 3 142 0 33 3 142 0 34 3 142 0 35 3 142 0 36 3 142 0 37 3 142 0 39 3 142 0 40 3 142 0 41 3 142 0 42 3 142 0 43 3 142 0 44 3 142 0 45 3 142 0 46 3 142 0 48 3 142 0 49 3 142 0 77 3 142 0 80 3 142 0 88 3 142 0 110 3 142 0 111 0 209 0 120 0 6 0 121 3 142 0 122 3 142 0 123 10 157 0 146 0 249 0 147 10 161 0 158 10 165 0 162 3 142 1 190 3 142 1 192 5 9 1 193 3 142 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 169 0 182 10 169 0 183 10 169 0 185 0 253 0 237 10 169 0 245 1 205 0 246 1 209 0 249 10 169 0 250 0 253 1 0 10 169 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 10 173 0 114] 
#[0 3 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 3 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 4 249 0 1 3 154 0 2 3 154 0 3 3 154 0 4 10 149 0 5 3 154 0 6 3 154 0 7 3 154 0 8 3 154 0 9 3 154 0 10 3 154 0 11 3 154 0 12 3 154 0 13 3 154 0 14 3 154 0 15 3 154 0 16 3 154 0 17 3 154 0 19 3 154 0 20 10 153 0 21 3 154 0 22 3 154 0 23 3 154 0 24 3 154 0 25 3 154 0 26 3 154 0 27 3 154 0 28 3 154 0 29 3 154 0 30 3 154 0 31 3 154 0 32 3 154 0 33 3 154 0 34 3 154 0 35 3 154 0 36 3 154 0 37 3 154 0 39 3 154 0 40 3 154 0 41 3 154 0 42 3 154 0 43 3 154 0 44 3 154 0 45 3 154 0 46 3 154 0 48 3 154 0 49 3 154 0 77 3 154 0 80 3 154 0 88 3 154 0 110 3 154 0 111 0 209 0 120 0 6 0 121 3 154 0 122 3 154 0 123 10 157 0 146 0 249 0 147 10 161 0 158 10 165 0 162 3 154 1 190 3 154 1 192 5 9 1 193 3 154 1 194] 
#[1 4 249 0 1 3 158 0 2 3 158 0 3 3 158 0 4 10 149 0 5 3 158 0 6 3 158 0 7 3 158 0 8 3 158 0 9 3 158 0 10 3 158 0 11 3 158 0 12 3 158 0 13 3 158 0 14 3 158 0 15 3 158 0 16 3 158 0 17 3 158 0 19 3 158 0 20 10 153 0 21 3 158 0 22 3 158 0 23 3 158 0 24 3 158 0 25 3 158 0 26 3 158 0 27 3 158 0 28 3 158 0 29 3 158 0 30 3 158 0 31 3 158 0 32 3 158 0 33 3 158 0 34 3 158 0 35 3 158 0 36 3 158 0 37 3 158 0 39 3 158 0 40 3 158 0 41 3 158 0 42 3 158 0 43 3 158 0 44 3 158 0 45 3 158 0 46 3 158 0 48 3 158 0 49 3 158 0 77 3 158 0 80 3 158 0 88 3 158 0 110 3 158 0 111 0 209 0 120 0 6 0 121 3 158 0 122 3 158 0 123 10 157 0 146 0 249 0 147 10 161 0 158 10 165 0 162 3 158 1 190 3 158 1 192 5 9 1 193 3 158 1 194] 
#[0 3 162 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 166 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 170 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 174 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 178 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 182 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 186 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 190 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 194 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 198 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 202 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 206 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 210 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[0 3 214 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 177 0 182 10 177 0 183 0 253 0 237 10 177 0 245 1 205 0 246 1 209 0 249 10 177 0 250 0 253 1 0 10 177 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 3 218 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 10 181 0 167 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[0 3 222 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 226 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 3 230 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 10 185 0 167 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 10 189 0 167 10 189 0 168 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 10 193 0 167 10 193 0 168 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 10 197 0 170 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 10 201 0 170 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 10 205 0 170 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 10 209 0 171 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 10 213 0 171 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 10 217 0 171 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 10 221 0 171 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 10 225 0 171 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 10 229 0 171 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 10 233 0 172 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 10 237 0 172 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 10 241 0 172 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 10 245 0 172 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 10 249 0 173 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 10 253 0 174 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 11 1 0 175 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 11 5 0 176 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 11 9 0 176 11 13 0 177 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 11 17 0 176 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 11 21 0 182 11 21 0 183 0 253 0 237 11 21 0 245 1 205 0 246 1 209 0 249 11 21 0 250 0 253 1 0 11 21 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 3 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 11 25 0 182 11 25 0 183 0 253 0 237 11 25 0 245 1 205 0 246 1 209 0 249 11 25 0 250 0 253 1 0 11 25 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 3 238 0 7 8 33 0 22 3 238 0 110 11 29 0 145] 
#[1 11 33 0 7 11 37 0 110] 
#[0 3 242 0 7 0 110] 
#[1 8 33 0 22 11 41 0 145] 
#[0 3 246 0 7 0 110] 
#[0 3 250 0 7 0 110] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 11 45 0 129 11 49 0 201 11 49 0 202 11 49 0 203] 
#[1 0 29 0 1 11 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 11 65 0 182 11 65 0 183 0 253 0 237 11 65 0 245 1 205 0 246 11 61 0 247 11 65 0 248 1 209 0 249 11 65 0 250 0 253 1 0 11 65 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 3 254 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 4 2 0 3 4 2 0 124 4 2 0 126 11 69 1 63 11 73 1 64] 
#[1 11 77 0 125 11 81 1 50 11 81 1 51 11 81 1 52 11 93 1 53 11 97 1 54] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 11 101 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 11 141 0 129 11 145 1 73 11 149 1 74 11 153 1 75 11 157 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 11 157 1 100 11 157 1 101 11 173 1 102 11 173 1 104] 
#[1 6 109 0 1 8 209 0 10 2 61 0 113 11 233 0 129 6 121 1 73 11 237 1 115] 
#[0 11 241 0 1] 
#[0 4 6 0 18] 
#[0 2 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 11 245 0 182 11 245 0 183 0 253 0 237 11 245 0 245 1 205 0 246 1 209 0 249 11 245 0 250 0 253 1 0 11 245 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 6 133 0 5 8 97 0 25 3 125 0 114 6 145 0 116 6 149 0 117 8 101 0 130 8 101 0 141 8 101 0 142 8 101 0 143 6 145 1 42 6 149 1 43] 
#[1 2 182 0 4 8 33 0 22 2 182 0 110 8 117 0 145] 
#[0 2 222 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[0 2 226 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[1 6 133 0 5 8 141 0 74 8 145 0 93 3 125 0 114 6 145 0 116 6 149 0 117 8 149 0 130 8 149 0 141 8 149 0 142 8 149 0 143 6 145 1 42 6 149 1 43] 
#[0 4 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 62 0 63 0 64 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 4 45 0 3 4 49 0 68 11 249 1 14 4 61 1 15 4 65 1 193] 
#[1 0 87 0 1 4 14 0 3 4 14 0 4 0 87 0 5 0 87 0 7 3 26 0 8 3 26 0 9 3 26 0 10 3 26 0 11 3 26 0 12 3 26 0 13 3 26 0 14 3 26 0 15 3 26 0 16 3 26 0 17 3 26 0 19 3 26 0 20 3 26 0 21 3 26 0 22 3 26 0 23 3 26 0 24 3 26 0 25 3 26 0 26 3 26 0 27 3 26 0 28 3 26 0 29 3 26 0 30 3 26 0 31 3 26 0 32 3 26 0 33 0 87 0 34 0 87 0 35 0 87 0 36 0 87 0 37 4 14 0 38 3 26 0 39 3 26 0 40 3 26 0 41 3 26 0 42 3 26 0 43 3 26 0 44 3 26 0 45 3 26 0 46 4 14 0 47 3 26 0 48 3 26 0 49 4 14 0 51 4 14 0 52 4 14 0 53 4 14 0 56 4 14 0 57 4 14 0 59 4 14 0 60 4 14 0 61 4 14 0 63 4 14 0 64 4 14 0 66 4 14 0 67 4 14 0 69 4 14 0 71 4 14 0 73 4 14 0 75 4 14 0 76 3 26 0 77 3 26 0 80 4 14 0 81 4 14 0 83 4 14 0 85 4 14 0 86 4 14 0 87 4 14 0 92 4 14 0 95 4 14 0 96 4 14 0 98 4 14 0 99 4 14 0 100 4 14 0 101 4 14 0 102 4 14 0 103 4 14 0 104 4 14 0 105 4 14 0 106 4 14 0 107 4 14 0 108 3 26 0 110 4 14 0 113 4 14 0 116 4 14 0 117 4 14 0 118 0 87 0 120 0 87 0 121 4 14 0 124 3 26 1 190 3 26 1 192 0 87 1 193 4 14 1 194] 
#[1 2 61 0 113 11 253 0 129] 
#[1 2 61 0 113 12 1 0 129] 
#[1 6 169 0 66 2 61 0 113 12 5 0 129 12 9 1 175 12 13 1 176] 
#[1 2 61 0 113 12 17 0 129] 
#[1 2 61 0 113 12 5 0 129 12 21 1 175 12 13 1 176] 
#[0 12 25 0 116 1 42] 
#[1 2 61 0 113 7 69 0 129 12 29 1 142] 
#[1 2 61 0 113 12 5 0 129 12 33 1 175 12 13 1 176] 
#[0 4 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 37 0 3] 
#[1 2 61 0 113 12 41 0 129] 
#[1 9 89 0 72 12 45 1 30] 
#[1 6 173 0 56 6 177 0 57 2 105 0 66 6 181 0 73 6 185 0 83 6 193 0 85 6 197 0 104 6 217 1 136 6 205 1 174 6 209 1 177 6 213 1 178 6 217 1 184 6 221 1 185] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 12 49 0 56 0 97 0 63 2 13 0 69 12 53 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 12 57 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 12 61 0 182 12 61 0 183 12 65 0 236 0 253 0 237 12 61 0 245 1 205 0 246 1 209 0 249 12 61 0 250 12 69 0 255 0 253 1 0 12 61 1 2 0 253 1 5 0 253 1 9 1 41 1 11 12 73 1 12 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 12 77 1 177 12 81 1 178 3 25 1 193] 
#[1 4 185 0 3 4 189 0 25 2 61 0 113 4 213 0 116 12 85 0 129 4 197 1 26 4 201 1 27 4 205 1 28 4 209 1 29 4 213 1 33 4 201 1 34 4 213 1 42] 
#[0 4 42 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 46 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 50 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 62 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 12 89 0 7 9 89 0 72 12 93 1 30] 
#[1 4 66 0 1 4 66 0 3 4 66 0 5 4 66 0 7 4 66 0 34 4 66 0 35 4 66 0 36 4 66 0 37 4 66 0 38 4 66 0 47 4 66 0 51 4 66 0 52 4 66 0 53 4 66 0 56 4 66 0 57 4 66 0 59 4 66 0 60 0 91 0 61 4 66 0 63 4 66 0 64 4 66 0 66 0 91 0 67 4 66 0 69 4 66 0 71 4 66 0 73 4 66 0 75 0 91 0 76 0 91 0 81 4 66 0 83 0 91 0 85 4 66 0 86 4 66 0 87 4 66 0 92 4 66 0 95 4 66 0 96 4 66 0 98 4 66 0 99 4 66 0 100 4 66 0 101 0 91 0 102 4 66 0 103 4 66 0 104 4 66 0 105 4 66 0 106 4 66 0 107 4 66 0 108 4 66 0 113 4 66 0 116 4 66 0 117 4 66 0 118 4 66 0 120 4 66 0 121 4 66 0 124 4 66 1 193 0 91 1 194] 
#[1 4 74 0 1 4 74 0 3 4 74 0 5 4 74 0 7 4 74 0 34 4 74 0 35 4 74 0 36 4 74 0 37 4 74 0 38 4 74 0 47 4 74 0 51 4 74 0 52 4 74 0 53 4 74 0 56 4 74 0 57 4 74 0 59 4 74 0 60 0 95 0 61 4 74 0 63 4 74 0 64 4 74 0 66 0 95 0 67 4 74 0 69 4 74 0 71 4 74 0 73 4 74 0 75 0 95 0 76 0 95 0 81 4 74 0 83 0 95 0 85 4 74 0 86 4 74 0 87 4 74 0 92 4 74 0 95 4 74 0 96 4 74 0 98 4 74 0 99 4 74 0 100 4 74 0 101 0 95 0 102 4 74 0 103 4 74 0 104 4 74 0 105 4 74 0 106 4 74 0 107 4 74 0 108 4 74 0 113 4 74 0 116 4 74 0 117 4 74 0 118 4 74 0 120 4 74 0 121 4 74 0 124 4 74 1 193 0 95 1 194] 
#[0 4 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 86 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 90 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[1 4 94 0 1 4 94 0 3 4 94 0 5 4 94 0 7 4 94 0 34 4 94 0 35 4 94 0 36 4 94 0 37 4 94 0 38 4 94 0 47 4 94 0 51 4 94 0 52 4 94 0 53 4 94 0 56 4 94 0 57 4 94 0 59 4 94 0 60 0 99 0 61 4 94 0 63 4 94 0 64 4 94 0 66 0 99 0 67 4 94 0 69 4 94 0 71 4 94 0 73 4 94 0 75 0 99 0 76 0 99 0 81 4 94 0 83 0 99 0 85 4 94 0 86 4 94 0 87 4 94 0 92 4 94 0 95 4 94 0 96 4 94 0 98 4 94 0 99 4 94 0 100 4 94 0 101 0 99 0 102 4 94 0 103 4 94 0 104 4 94 0 105 4 94 0 106 4 94 0 107 4 94 0 108 4 94 0 113 4 94 0 116 4 94 0 117 4 94 0 118 4 94 0 120 4 94 0 121 4 94 0 124 4 94 1 193 0 99 1 194] 
#[1 8 209 0 10 9 105 0 73 2 61 0 113 7 209 0 129 9 109 1 73] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 12 97 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 12 101 0 1 2 61 0 113 12 105 0 129] 
#[0 12 109 0 1] 
#[1 12 113 0 22 3 82 0 72 3 82 0 110] 
#[1 11 109 0 3 8 209 0 10 12 117 0 68 12 121 1 73 12 125 1 90 12 129 1 124] 
#[0 4 102 0 3 0 21] 
#[1 12 133 0 3 12 137 0 21] 
#[1 8 209 0 10 12 141 0 22 12 145 1 73] 
#[1 4 181 0 1 2 61 0 113 12 149 0 129] 
#[0 1 214 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 222 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 234 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 1 246 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 2 22 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 2 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 2 114 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 2 61 0 113 12 149 0 129] 
#[0 1 218 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 1 226 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 1 238 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 1 250 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 4 110 0 61 0 76 0 81 0 85 0 102 1 194] 
#[0 2 38 0 61 0 76 0 81 0 85 0 102 1 194] 
#[0 2 110 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 2 118 0 61 0 76 0 81 0 85 0 102 1 194] 
#[1 4 85 0 3 6 229 0 22 6 233 0 25 4 97 0 56 2 97 0 57 6 237 0 61 12 153 0 62 2 105 0 66 4 105 0 73 12 157 0 76 2 121 0 81 1 137 0 83 2 125 0 85 2 129 0 102 0 173 0 104 6 249 0 194 1 137 0 195 6 253 0 198 7 1 0 236 7 5 0 255 7 9 1 12 7 13 1 25 7 17 1 37 12 161 1 114 12 165 1 123 7 29 1 136 7 33 1 141 12 169 1 173 7 45 1 193] 
#[0 1 206 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 0 31 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 2 18 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 114 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 2 90 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 2 98 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 4 85 0 3 6 229 0 22 6 233 0 25 6 237 0 61 12 173 0 62 7 117 0 76 2 121 0 81 2 129 0 102 7 17 1 37 12 177 1 114 12 181 1 123 7 37 1 147 12 185 1 173] 
#[0 1 210 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 2 42 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 4 118 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 2 94 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 2 102 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[1 12 189 0 1 8 209 0 10 2 61 0 113 12 193 0 129 12 197 1 73 12 201 1 107 12 205 1 115] 
#[1 8 209 0 10 12 209 1 73] 
#[1 11 241 0 1 4 45 0 3 4 49 0 68 12 213 1 14 4 61 1 15 4 65 1 193] 
#[1 2 174 0 1 0 103 0 2 0 103 0 4 2 174 0 5 0 103 0 6 2 174 0 8 2 174 0 9 2 174 0 10 2 174 0 11 2 174 0 12 2 174 0 13 2 174 0 14 2 174 0 15 2 174 0 16 2 174 0 17 2 174 0 19 2 174 0 20 2 174 0 21 0 103 0 22 2 174 0 23 2 174 0 24 2 174 0 25 2 174 0 26 2 174 0 27 2 174 0 28 2 174 0 29 2 174 0 30 2 174 0 31 2 174 0 32 2 174 0 33 2 174 0 34 2 174 0 35 2 174 0 36 2 174 0 37 2 174 0 39 2 174 0 40 2 174 0 41 2 174 0 42 2 174 0 43 2 174 0 44 2 174 0 45 2 174 0 46 2 174 0 48 2 174 0 49 2 174 0 77 2 174 0 80 0 103 0 110 2 174 0 120 2 174 0 121 2 174 1 190 2 174 1 192 2 174 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 12 217 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 113 0 182 8 113 0 183 0 253 0 237 8 113 0 245 1 205 0 246 1 209 0 249 8 113 0 250 0 253 1 0 8 113 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 107 0 4 8 33 0 22 0 107 0 110 12 221 0 145] 
#[1 8 129 0 1 12 225 0 111] 
#[0 12 229 0 4] 
#[1 12 233 0 4 12 237 0 110] 
#[0 4 126 0 4 0 110] 
#[0 4 130 0 4 0 110] 
#[1 6 133 0 5 8 141 0 74 12 245 0 89 12 245 0 90 12 245 0 91 8 145 0 93 2 61 0 113 3 125 0 114 6 145 0 116 6 149 0 117 12 241 0 129 8 149 0 130 8 149 0 141 8 149 0 142 8 149 0 143 6 145 1 42 6 149 1 43 12 245 1 109] 
#[1 2 238 0 1 0 111 0 2 0 111 0 4 2 238 0 5 0 111 0 6 2 238 0 8 2 238 0 9 2 238 0 10 2 238 0 11 2 238 0 12 2 238 0 13 2 238 0 14 2 238 0 15 2 238 0 16 2 238 0 17 2 238 0 19 2 238 0 20 2 238 0 21 0 111 0 22 2 238 0 23 2 238 0 24 2 238 0 25 2 238 0 26 2 238 0 27 2 238 0 28 2 238 0 29 2 238 0 30 2 238 0 31 2 238 0 32 2 238 0 33 2 238 0 34 2 238 0 35 2 238 0 36 2 238 0 37 2 238 0 39 2 238 0 40 2 238 0 41 2 238 0 42 2 238 0 43 2 238 0 44 2 238 0 45 2 238 0 46 2 238 0 48 2 238 0 49 2 238 0 77 2 238 0 80 0 111 0 110 2 238 0 120 2 238 0 121 2 238 1 190 2 238 1 192 2 238 1 193] 
#[1 0 29 0 1 3 29 0 3 3 33 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 12 249 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 153 0 182 8 153 0 183 8 29 0 201 8 29 0 202 8 29 0 203 0 253 0 237 8 153 0 245 1 205 0 246 1 209 0 249 8 153 0 250 0 253 1 0 8 153 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 3 29 0 3 3 33 0 5 12 253 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 8 1 0 109 8 169 0 110 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 41 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 8 173 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 177 0 182 8 177 0 183 3 49 0 201 3 49 0 202 3 49 0 203 13 1 0 209 13 1 0 210 13 5 0 211 0 253 0 237 8 177 0 245 1 205 0 246 1 209 0 249 8 177 0 250 0 253 1 0 8 177 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 93 1 193] 
#[1 13 9 0 6 13 13 0 110] 
#[0 4 138 0 6 0 110] 
#[0 4 142 0 6 0 110] 
#[0 13 17 0 6] 
#[1 4 146 0 2 4 146 0 6 13 21 0 111 13 25 1 106] 
#[0 4 150 0 2 0 6] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 13 29 0 182 13 29 0 183 0 253 0 237 13 29 0 245 1 205 0 246 1 209 0 249 13 29 0 250 0 253 1 0 13 29 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 4 154 0 2 0 4 0 6 0 110] 
#[0 4 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 4 162 0 2 0 4 0 6 0 110] 
#[0 4 166 0 18] 
#[1 4 170 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 13 37 0 209 13 37 0 210 13 33 0 211 13 33 0 241 13 37 0 242 8 189 1 193] 
#[0 4 174 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 58 0 94 0 98 0 110 0 111 0 113 0 114 0 116 0 117 1 193] 
#[0 4 178 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 58 0 94 0 98 0 110 0 111 0 113 0 114 0 116 0 117 1 193] 
#[0 4 182 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 58 0 94 0 98 0 110 0 111 0 113 0 114 0 116 0 117 1 193] 
#[0 4 186 0 2 0 4 0 6 0 22 0 41 0 110 0 111] 
#[1 0 115 0 41 0 119 0 111 13 45 1 106] 
#[0 4 194 0 2 0 4 0 6 0 22 0 41 0 110 0 111] 
#[1 13 49 0 41 13 21 0 111 13 53 1 106] 
#[1 2 166 0 2 5 33 0 3 2 166 0 4 5 37 0 5 2 166 0 6 2 166 0 22 2 166 0 41 8 69 0 98 2 166 0 110 2 166 0 111 2 61 0 113 13 57 0 129 13 61 0 201 13 61 0 202 13 61 0 203 13 61 1 108] 
#[1 0 123 0 6 2 250 0 110] 
#[0 13 69 0 1] 
#[1 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 13 73 0 130 13 73 0 141 13 73 0 142 13 73 0 143 6 145 1 42 6 149 1 43] 
#[0 13 77 0 1] 
#[0 13 81 0 1] 
#[0 13 85 0 1] 
#[0 4 198 0 4 0 110] 
#[0 4 202 0 4 0 110] 
#[0 4 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 13 89 0 4 6 133 0 5 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 93 3 121 0 109 2 61 0 113 3 125 0 114 6 145 0 116 6 149 0 117 6 141 0 129 3 145 0 130 13 93 0 140 3 145 0 141 3 145 0 142 3 145 0 143 13 93 0 144 13 93 0 252 13 93 0 254 13 93 1 3 13 93 1 7 6 145 1 42 6 149 1 43 13 93 1 116 13 93 1 117 6 153 1 193] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 13 97 0 238 3 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 13 101 0 182 13 101 0 183 0 253 0 237 13 101 0 245 1 205 0 246 1 209 0 249 13 101 0 250 0 253 1 0 13 101 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 4 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 13 105 0 130 13 105 0 141 13 105 0 142 13 105 0 143 6 145 1 42 6 149 1 43] 
#[1 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 13 109 0 130 13 109 0 141 13 109 0 142 13 109 0 143 6 145 1 42 6 149 1 43] 
#[1 6 109 0 1 8 209 0 10 6 121 1 73 13 113 1 115] 
#[0 4 214 0 4 0 6 0 110] 
#[0 4 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 13 117 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 3 205 0 109 8 169 0 110 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 13 121 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 13 125 0 182 13 125 0 183 0 253 0 237 13 125 0 245 1 205 0 246 1 209 0 249 13 125 0 250 0 253 1 0 13 125 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 4 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 4 226 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 109 0 110 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 4 230 0 6 0 110] 
#[0 4 234 0 6 0 110] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 11 157 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 11 157 1 100 11 157 1 101 11 173 1 102 11 173 1 104] 
#[1 2 122 0 2 2 122 0 4 2 122 0 6 8 33 0 22 2 122 0 110 8 37 0 145] 
#[1 5 33 0 3 5 37 0 5 2 166 0 41 8 85 0 89 8 85 0 90 8 85 0 91 8 69 0 98 2 166 0 111 2 61 0 113 8 73 0 129 8 81 0 201 8 81 0 202 8 81 0 203 8 81 1 108 8 85 1 109] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 13 133 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 13 137 0 1 2 61 0 113 13 141 0 129] 
#[0 13 145 0 1] 
#[1 0 29 0 1 13 149 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 13 153 0 182 13 153 0 183 0 253 0 237 13 153 0 245 1 205 0 246 13 153 0 248 1 209 0 249 13 153 0 250 13 157 0 251 0 253 1 0 13 153 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 2 61 0 113 13 161 0 129 11 149 1 74 11 153 1 75] 
#[0 4 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 13 165 0 7] 
#[0 4 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 80 0 81 0 83 0 85 0 86 0 87 0 88 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 110 0 111 0 113 0 116 0 117 0 118 0 120 0 121 0 122 0 123 0 124 1 190 1 192 1 193 1 194] 
#[0 4 246 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[1 6 133 0 5 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 93 3 125 0 114 6 145 0 116 6 149 0 117 8 233 0 130 8 233 0 141 8 233 0 142 8 233 0 143 13 169 0 252 13 169 0 254 13 169 1 3 13 169 1 7 6 145 1 42 6 149 1 43 13 169 1 116 13 169 1 117 6 153 1 193] 
#[0 8 129 0 1] 
#[0 4 250 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 13 173 0 4] 
#[1 4 254 0 4 6 133 0 5 8 225 0 7 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 93 8 229 0 94 3 125 0 114 6 145 0 116 6 149 0 117 8 233 0 130 8 233 0 141 8 233 0 142 8 233 0 143 13 177 0 252 13 177 0 254 13 177 1 3 13 177 1 7 13 177 1 18 6 145 1 42 6 149 1 43 13 177 1 116 13 177 1 117 8 253 1 193] 
#[0 5 2 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[1 13 181 0 3 6 133 0 5 13 185 0 58 8 141 0 74 13 197 0 89 13 197 0 90 13 197 0 91 8 145 0 93 13 189 0 94 3 125 0 114 6 145 0 116 6 149 0 117 13 193 0 130 13 193 0 141 13 193 0 142 13 193 0 143 6 145 1 42 6 149 1 43 13 197 1 109 13 201 1 112 13 205 1 116 13 209 1 117 13 213 1 130 13 217 1 131 13 217 1 132 13 217 1 133 13 217 1 134 13 233 1 135 13 237 1 193] 
#[0 5 6 0 3] 
#[0 5 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 13 241 0 4 6 133 0 5 8 225 0 7 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 93 8 229 0 94 3 125 0 114 6 145 0 116 6 149 0 117 8 233 0 130 8 233 0 141 8 233 0 142 8 233 0 143 8 249 0 252 8 249 0 254 8 249 1 3 8 249 1 7 13 245 1 16 8 245 1 17 8 249 1 18 6 145 1 42 6 149 1 43 8 249 1 116 8 249 1 117 8 253 1 193] 
#[1 2 61 0 113 13 129 0 129 13 253 1 87 11 189 1 88 11 193 1 89 13 253 1 128] 
#[1 2 61 0 113 13 129 0 129 14 9 1 87 11 189 1 88 11 193 1 89 14 5 1 125 14 9 1 126] 
#[1 9 17 0 79 14 13 1 129] 
#[0 5 14 0 3] 
#[0 5 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 14 17 0 7] 
#[0 14 21 0 1] 
#[0 5 22 0 7 0 72] 
#[1 5 26 0 4 14 25 0 50 5 26 0 110] 
#[1 14 29 0 4 14 33 0 110] 
#[0 5 30 0 4 0 110] 
#[0 14 37 0 114] 
#[1 14 41 0 1 14 45 0 25 2 61 0 113 14 49 0 129] 
#[1 4 45 0 3 4 49 0 68 14 53 1 14 4 61 1 15 4 65 1 193] 
#[0 4 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 14 57 0 7] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 14 61 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 14 65 0 1 2 61 0 113 14 69 0 129] 
#[0 14 73 0 1] 
#[0 14 77 0 116 1 33 1 42] 
#[0 14 81 0 7] 
#[0 5 34 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 6 169 0 66] 
#[1 12 189 0 1 8 209 0 10 2 61 0 113 14 85 0 129 12 197 1 73 12 201 1 107 14 89 1 115] 
#[1 4 45 0 3 4 49 0 68 12 213 1 14 4 61 1 15 4 65 1 193] 
#[0 5 38 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 5 42 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 5 46 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 14 93 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 14 97 0 182 14 97 0 183 14 97 0 185 0 253 0 237 14 97 0 245 1 205 0 246 1 209 0 249 14 97 0 250 0 253 1 0 14 97 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 14 101 0 129 14 105 0 199 14 109 0 200 14 113 0 201 14 113 0 202 14 113 0 203 14 117 0 217 5 57 1 193] 
#[1 0 170 0 7 0 170 0 8 5 197 0 9 0 170 0 10 0 170 0 11 5 197 0 12 0 170 0 13 0 170 0 14 5 197 0 15 5 197 0 16 0 170 0 17 0 170 0 19 0 170 0 20 5 197 0 22 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 5 197 0 27 5 197 0 28 5 197 0 29 5 197 0 30 5 197 0 31 5 197 0 32 5 197 0 33 0 170 0 34 5 189 0 35 0 170 0 36 5 193 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 48 0 170 0 49 0 127 0 77 0 170 0 80 14 125 0 88 0 170 0 110 5 197 0 184 0 170 1 190 5 197 1 192] 
#[1 14 129 0 7 6 61 0 110] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 14 133 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 14 137 0 182 14 137 0 183 14 137 0 185 0 253 0 237 14 137 0 245 1 205 0 246 1 209 0 249 14 137 0 250 0 253 1 0 14 137 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 14 141 0 129 6 69 0 196 6 73 0 197 14 145 0 201 14 145 0 202 14 145 0 203 14 149 0 217 6 73 1 121 6 73 1 122 6 89 1 193] 
#[1 14 153 0 77 14 157 0 88] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 3 233 0 51 0 81 0 56 14 169 0 57 2 13 0 69 0 117 0 73 2 57 0 76 14 169 0 83 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 14 161 0 104 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 14 165 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 14 165 0 164 14 169 0 195 14 173 0 216 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 4 241 1 193] 
#[0 14 177 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 14 181 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 14 185 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 14 189 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 14 193 0 2 6 61 0 110] 
#[0 14 197 0 2] 
#[0 5 50 0 72] 
#[0 14 201 0 50] 
#[1 14 205 0 4 14 209 0 110] 
#[0 5 54 0 4 0 110] 
#[0 5 58 0 4 0 110] 
#[1 2 61 0 113 14 213 0 129 14 213 1 34] 
#[0 14 217 0 7] 
#[1 4 185 0 3 4 189 0 25 14 221 1 28 14 225 1 29] 
#[0 5 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 5 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 5 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 5 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 14 229 0 7 6 61 0 110] 
#[0 5 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 14 233 0 182 14 233 0 183 0 253 0 237 14 233 0 245 1 205 0 246 1 209 0 249 14 233 0 250 0 253 1 0 14 233 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 14 237 0 2 14 241 0 110] 
#[0 5 82 0 2 0 110] 
#[1 14 245 0 6 6 61 0 110] 
#[0 5 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 14 249 1 78 14 253 1 79 14 253 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 14 253 1 100 14 253 1 101 11 173 1 102 11 173 1 104] 
#[0 15 5 0 1] 
#[1 15 9 0 2 6 61 0 110] 
#[0 5 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 2 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 15 13 0 1 5 21 0 3 15 17 0 191] 
#[1 5 21 0 3 15 21 0 191] 
#[1 5 94 0 1 5 94 0 3 5 94 0 4 5 94 0 5 5 94 0 7 5 94 0 34 5 94 0 35 5 94 0 36 5 94 0 37 5 94 0 38 5 94 0 47 5 94 0 51 5 94 0 52 5 94 0 53 5 94 0 54 5 94 0 56 5 94 0 57 5 94 0 59 5 94 0 60 5 94 0 61 5 94 0 62 5 94 0 63 5 94 0 64 5 94 0 65 5 94 0 66 5 94 0 67 5 94 0 69 10 25 0 70 5 94 0 71 5 94 0 73 5 94 0 75 5 94 0 76 5 94 0 81 5 94 0 83 5 94 0 85 5 94 0 86 5 94 0 87 5 94 0 92 5 94 0 95 5 94 0 96 5 94 0 98 5 94 0 99 5 94 0 100 5 94 0 101 5 94 0 102 5 94 0 103 5 94 0 104 5 94 0 105 5 94 0 106 5 94 0 107 5 94 0 108 5 94 0 113 5 94 0 116 5 94 0 117 5 94 0 118 5 94 0 120 5 94 0 121 5 94 0 124 15 25 0 233 5 94 1 193 5 94 1 194] 
#[0 5 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 122 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 2 61 0 113 15 29 0 129] 
#[0 15 33 0 111] 
#[1 12 245 0 89 12 245 0 90 12 245 0 91 2 61 0 113 12 241 0 129 12 245 1 109] 
#[0 4 134 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 5 33 0 3 5 37 0 5 15 37 0 6 3 37 0 109 8 169 0 110 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 13 1 0 209 13 1 0 210 13 5 0 211 8 189 1 193] 
#[0 5 102 0 7 0 88 0 110] 
#[0 5 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 5 41 0 129 15 41 0 200 5 53 0 201 5 53 0 202 5 53 0 203 5 57 1 193] 
#[0 5 110 0 7 0 88 0 110] 
#[1 13 21 0 111 15 45 1 106] 
#[1 13 21 0 111 15 49 1 106] 
#[0 5 114 0 7 0 88 0 110] 
#[0 5 118 0 7 0 88 0 110] 
#[1 15 53 0 2 6 61 0 110] 
#[1 15 57 0 2 6 61 0 110] 
#[0 5 122 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[0 5 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 5 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 1 166 0 3 1 166 0 124 1 166 0 126 15 61 1 69] 
#[1 6 61 0 110 15 65 0 122 15 69 0 123 15 73 0 148 15 77 0 149] 
#[1 15 81 0 6 6 61 0 110] 
#[0 5 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 15 85 0 182 15 85 0 183 15 85 0 185 0 253 0 237 15 85 0 245 1 205 0 246 1 209 0 249 15 85 0 250 0 253 1 0 15 85 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 5 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 5 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 5 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 5 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 15 89 0 182 15 89 0 183 15 89 0 185 0 253 0 237 15 89 0 245 1 205 0 246 1 209 0 249 15 89 0 250 0 253 1 0 15 89 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 15 93 0 114] 
#[0 5 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 5 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 5 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 15 97 0 6 6 61 0 110] 
#[0 5 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 5 170 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[0 5 174 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[0 5 178 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[1 5 182 0 2 5 182 0 4 5 182 0 6 5 182 0 7 5 221 0 8 5 182 0 10 5 182 0 11 5 182 0 13 5 182 0 14 5 182 0 17 5 182 0 19 5 182 0 20 5 182 0 23 5 182 0 24 5 221 0 25 5 182 0 34 5 182 0 36 5 182 0 39 5 182 0 40 5 182 0 41 5 221 0 43 5 182 0 44 5 182 0 45 5 182 0 46 5 182 0 48 5 182 0 49 5 182 0 77 5 182 0 80 5 182 0 88 5 182 0 110 5 182 0 111 5 182 0 122 5 182 0 123 5 221 0 169 5 182 1 190 5 182 1 194] 
#[1 5 186 0 2 5 186 0 4 5 186 0 6 5 186 0 7 5 221 0 8 5 186 0 10 5 186 0 11 5 186 0 13 5 186 0 14 5 186 0 17 5 186 0 19 5 186 0 20 5 186 0 23 5 186 0 24 5 221 0 25 5 186 0 34 5 186 0 36 5 186 0 39 5 186 0 40 5 186 0 41 5 221 0 43 5 186 0 44 5 186 0 45 5 186 0 46 5 186 0 48 5 186 0 49 5 186 0 77 5 186 0 80 5 186 0 88 5 186 0 110 5 186 0 111 5 186 0 122 5 186 0 123 5 221 0 169 5 186 1 190 5 186 1 194] 
#[1 5 190 0 2 5 190 0 4 5 190 0 6 5 190 0 7 5 190 0 10 5 190 0 11 5 190 0 13 5 190 0 14 5 190 0 17 5 190 0 19 5 190 0 20 5 190 0 23 5 190 0 24 5 225 0 34 5 229 0 36 5 190 0 39 5 190 0 40 5 190 0 41 5 190 0 44 5 190 0 45 5 190 0 46 5 190 0 48 5 190 0 49 5 190 0 77 5 190 0 80 5 190 0 88 5 190 0 110 5 190 0 111 5 190 0 122 5 190 0 123 5 190 1 190 5 190 1 194] 
#[1 5 194 0 2 5 194 0 4 5 194 0 6 5 194 0 7 5 194 0 10 5 194 0 11 5 194 0 13 5 194 0 14 5 194 0 17 5 194 0 19 5 194 0 20 5 194 0 23 5 194 0 24 5 225 0 34 5 229 0 36 5 194 0 39 5 194 0 40 5 194 0 41 5 194 0 44 5 194 0 45 5 194 0 46 5 194 0 48 5 194 0 49 5 194 0 77 5 194 0 80 5 194 0 88 5 194 0 110 5 194 0 111 5 194 0 122 5 194 0 123 5 194 1 190 5 194 1 194] 
#[1 5 198 0 2 5 198 0 4 5 198 0 6 5 198 0 7 5 198 0 10 5 198 0 11 5 198 0 13 5 198 0 14 5 198 0 17 5 198 0 19 5 198 0 20 5 198 0 23 5 198 0 24 5 225 0 34 5 229 0 36 5 198 0 39 5 198 0 40 5 198 0 41 5 198 0 44 5 198 0 45 5 198 0 46 5 198 0 48 5 198 0 49 5 198 0 77 5 198 0 80 5 198 0 88 5 198 0 110 5 198 0 111 5 198 0 122 5 198 0 123 5 198 1 190 5 198 1 194] 
#[1 5 202 0 2 5 202 0 4 5 202 0 6 5 202 0 7 5 202 0 10 5 233 0 11 5 202 0 13 5 237 0 14 5 241 0 17 5 202 0 19 5 202 0 20 5 202 0 23 5 202 0 24 5 202 0 39 5 202 0 40 5 202 0 41 5 202 0 44 5 202 0 45 5 202 0 46 5 202 0 48 5 202 0 49 5 202 0 77 5 202 0 80 5 202 0 88 5 202 0 110 5 202 0 111 5 202 0 122 5 202 0 123 5 202 1 190 5 202 1 194] 
#[1 5 206 0 2 5 206 0 4 5 206 0 6 5 206 0 7 5 206 0 10 5 233 0 11 5 206 0 13 5 237 0 14 5 241 0 17 5 206 0 19 5 206 0 20 5 206 0 23 5 206 0 24 5 206 0 39 5 206 0 40 5 206 0 41 5 206 0 44 5 206 0 45 5 206 0 46 5 206 0 48 5 206 0 49 5 206 0 77 5 206 0 80 5 206 0 88 5 206 0 110 5 206 0 111 5 206 0 122 5 206 0 123 5 206 1 190 5 206 1 194] 
#[1 5 210 0 2 5 210 0 4 5 210 0 6 5 210 0 7 5 210 0 10 5 233 0 11 5 210 0 13 5 237 0 14 5 241 0 17 5 210 0 19 5 210 0 20 5 210 0 23 5 210 0 24 5 210 0 39 5 210 0 40 5 210 0 41 5 210 0 44 5 210 0 45 5 210 0 46 5 210 0 48 5 210 0 49 5 210 0 77 5 210 0 80 5 210 0 88 5 210 0 110 5 210 0 111 5 210 0 122 5 210 0 123 5 210 1 190 5 210 1 194] 
#[1 5 214 0 2 5 214 0 4 5 214 0 6 5 214 0 7 5 214 0 10 5 233 0 11 5 214 0 13 5 237 0 14 5 241 0 17 5 214 0 19 5 214 0 20 5 214 0 23 5 214 0 24 5 214 0 39 5 214 0 40 5 214 0 41 5 214 0 44 5 214 0 45 5 214 0 46 5 214 0 48 5 214 0 49 5 214 0 77 5 214 0 80 5 214 0 88 5 214 0 110 5 214 0 111 5 214 0 122 5 214 0 123 5 214 1 190 5 214 1 194] 
#[1 5 218 0 2 5 218 0 4 5 218 0 6 5 218 0 7 5 218 0 10 5 233 0 11 5 218 0 13 5 237 0 14 5 241 0 17 5 218 0 19 5 218 0 20 5 218 0 23 5 218 0 24 5 218 0 39 5 218 0 40 5 218 0 41 5 218 0 44 5 218 0 45 5 218 0 46 5 218 0 48 5 218 0 49 5 218 0 77 5 218 0 80 5 218 0 88 5 218 0 110 5 218 0 111 5 218 0 122 5 218 0 123 5 218 1 190 5 218 1 194] 
#[1 5 222 0 2 5 222 0 4 5 222 0 6 5 222 0 7 5 222 0 10 5 233 0 11 5 222 0 13 5 237 0 14 5 241 0 17 5 222 0 19 5 222 0 20 5 222 0 23 5 222 0 24 5 222 0 39 5 222 0 40 5 222 0 41 5 222 0 44 5 222 0 45 5 222 0 46 5 222 0 48 5 222 0 49 5 222 0 77 5 222 0 80 5 222 0 88 5 222 0 110 5 222 0 111 5 222 0 122 5 222 0 123 5 222 1 190 5 222 1 194] 
#[1 5 226 0 2 5 226 0 4 5 226 0 6 5 226 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 5 226 0 23 5 226 0 24 5 226 0 39 5 226 0 40 5 226 0 41 5 226 0 44 5 226 0 45 5 226 0 46 5 226 0 48 5 226 0 49 6 5 0 77 6 9 0 80 5 226 0 88 5 226 0 110 5 226 0 111 5 226 0 122 5 226 0 123 5 226 1 190 5 226 1 194] 
#[1 5 230 0 2 5 230 0 4 5 230 0 6 5 230 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 5 230 0 23 5 230 0 24 5 230 0 39 5 230 0 40 5 230 0 41 5 230 0 44 5 230 0 45 5 230 0 46 5 230 0 48 5 230 0 49 6 5 0 77 6 9 0 80 5 230 0 88 5 230 0 110 5 230 0 111 5 230 0 122 5 230 0 123 5 230 1 190 5 230 1 194] 
#[1 5 234 0 2 5 234 0 4 5 234 0 6 5 234 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 5 234 0 23 5 234 0 24 5 234 0 39 5 234 0 40 5 234 0 41 5 234 0 44 5 234 0 45 5 234 0 46 5 234 0 48 5 234 0 49 6 5 0 77 6 9 0 80 5 234 0 88 5 234 0 110 5 234 0 111 5 234 0 122 5 234 0 123 5 234 1 190 5 234 1 194] 
#[1 5 238 0 2 5 238 0 4 5 238 0 6 5 238 0 7 5 245 0 10 5 249 0 13 5 253 0 19 6 1 0 20 5 238 0 23 5 238 0 24 5 238 0 39 5 238 0 40 5 238 0 41 5 238 0 44 5 238 0 45 5 238 0 46 5 238 0 48 5 238 0 49 6 5 0 77 6 9 0 80 5 238 0 88 5 238 0 110 5 238 0 111 5 238 0 122 5 238 0 123 5 238 1 190 5 238 1 194] 
#[1 5 242 0 2 5 242 0 4 5 242 0 6 5 242 0 7 6 13 0 23 6 17 0 24 5 242 0 39 5 242 0 40 5 242 0 41 5 242 0 44 5 242 0 45 5 242 0 46 6 21 0 48 6 25 0 49 5 242 0 88 5 242 0 110 5 242 0 111 5 242 0 122 5 242 0 123 5 242 1 190 5 242 1 194] 
#[1 5 246 0 2 5 246 0 4 5 246 0 6 5 246 0 7 6 29 0 39 5 246 0 40 5 246 0 41 5 246 0 44 5 246 0 45 5 246 0 46 5 246 0 88 5 246 0 110 5 246 0 111 5 246 0 122 5 246 0 123 5 246 1 190 5 246 1 194] 
#[1 5 250 0 2 5 250 0 4 5 250 0 6 5 250 0 7 5 250 0 40 5 250 0 41 5 250 0 44 5 250 0 45 6 33 0 46 5 250 0 88 5 250 0 110 5 250 0 111 5 250 0 122 5 250 0 123 5 250 1 190 5 250 1 194] 
#[1 5 254 0 2 5 254 0 4 5 254 0 6 5 254 0 7 5 254 0 40 5 254 0 41 6 37 0 44 5 254 0 45 5 254 0 88 5 254 0 110 5 254 0 111 5 254 0 122 5 254 0 123 5 254 1 194] 
#[1 0 214 0 2 0 214 0 4 0 214 0 6 0 214 0 7 0 214 0 40 0 214 0 41 6 37 0 44 0 214 0 45 0 214 0 88 0 214 0 110 0 214 0 111 0 214 0 122 0 214 0 123 0 214 1 194] 
#[1 6 2 0 2 6 2 0 4 6 2 0 6 6 2 0 7 6 41 0 40 6 2 0 41 6 2 0 45 6 2 0 88 6 2 0 110 6 2 0 111 6 2 0 122 6 2 0 123 6 2 1 194] 
#[1 6 6 0 2 6 6 0 4 6 6 0 6 6 6 0 7 6 6 0 41 6 37 0 44 6 6 0 88 6 6 0 110 6 6 0 111 6 6 0 122 6 6 0 123 6 6 1 190 6 6 1 194] 
#[0 15 101 0 111] 
#[0 6 10 0 2 0 6 0 7 0 110 0 111 0 122 0 123 1 194] 
#[0 6 14 0 7 0 110] 
#[0 6 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 6 65 0 129 15 105 0 197 6 77 0 201 6 77 0 202 6 77 0 203 15 105 1 121 15 105 1 122 6 89 1 193] 
#[0 6 22 0 7 0 110] 
#[1 13 21 0 111 15 109 1 106] 
#[1 13 21 0 111 15 113 1 106] 
#[1 0 29 0 1 0 33 0 3 0 131 0 4 3 101 0 5 0 41 0 7 3 105 0 25 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 109 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 3 113 0 74 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 3 117 0 93 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 3 121 0 109 0 193 0 113 3 125 0 114 3 181 0 116 3 185 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 129 0 129 3 145 0 130 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 3 137 0 139 3 141 0 140 3 145 0 141 3 145 0 142 3 145 0 143 3 141 0 144 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 15 121 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 3 141 0 252 3 141 0 254 0 253 1 0 1 109 1 2 3 141 1 3 0 253 1 5 3 141 1 7 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 3 181 1 42 3 185 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 141 1 116 3 141 1 117 3 197 1 193] 
#[0 6 30 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[0 6 34 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[0 6 38 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[1 0 10 0 124 15 129 1 48 15 133 1 67] 
#[1 6 42 0 3 0 135 0 124 15 137 0 126 15 145 1 45 15 145 1 46 2 37 1 47 15 145 1 65 2 45 1 67 15 149 1 72] 
#[1 6 50 0 3 6 50 0 8 6 50 0 13 15 153 0 21 15 157 0 111 6 50 0 125] 
#[1 6 42 0 3 15 161 0 8 0 98 0 13 15 165 0 125 15 193 1 51 15 173 1 55 15 177 1 56 15 181 1 57 15 177 1 58 15 177 1 59 15 193 1 60 15 197 1 68 15 201 1 72] 
#[0 6 54 0 3 0 8 0 13 0 125] 
#[0 6 58 0 3 0 8 0 13 0 125] 
#[0 6 62 0 125] 
#[1 15 205 0 125 15 209 1 53] 
#[0 15 213 0 2] 
#[1 11 105 0 1 0 38 0 2 15 217 0 3 15 221 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 3 37 0 109 2 61 0 113 15 225 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 15 229 0 239 3 81 0 240 3 85 0 241 3 89 0 242 11 145 1 73 15 233 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 15 233 1 100 15 233 1 101 11 173 1 102 11 173 1 104 8 189 1 193] 
#[1 15 237 0 1 13 181 0 3 15 241 0 4 6 133 0 5 8 209 0 10 15 245 0 86 3 125 0 114 6 145 0 116 6 149 0 117 15 249 0 130 15 249 0 141 15 249 0 142 15 249 0 143 6 145 1 42 6 149 1 43 15 253 1 73 16 1 1 91 16 5 1 92 16 9 1 93 16 9 1 105 16 9 1 107 16 9 1 111 16 9 1 112 16 9 1 113] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 16 41 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 16 37 1 96 16 41 1 97 11 161 1 98 11 165 1 99 16 41 1 100 16 41 1 101 11 173 1 102 11 173 1 104] 
#[1 16 45 0 1 11 109 0 3 11 113 0 5 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 16 49 1 84 16 49 1 85 16 49 1 86 16 49 1 87 11 189 1 88 11 193 1 89 16 49 1 90 16 49 1 94 16 49 1 95 16 49 1 102 16 49 1 104] 
#[1 16 45 0 1 11 109 0 3 11 113 0 5 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 16 53 1 84 16 53 1 85 16 53 1 86 16 53 1 87 11 189 1 88 11 193 1 89 16 53 1 90 16 53 1 94 16 53 1 95 16 53 1 102 16 53 1 104] 
#[1 16 57 0 1 8 209 0 10 16 61 1 73] 
#[0 6 66 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[1 2 61 0 113 16 65 0 129 16 69 1 103] 
#[0 6 70 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[1 6 74 0 5 6 74 0 10 0 139 0 13 6 82 0 21 6 74 0 39 6 74 0 44 16 73 0 68 6 78 0 110 16 77 1 76] 
#[0 16 81 0 1] 
#[1 16 85 0 13 16 89 0 110] 
#[0 6 86 0 13 0 110] 
#[0 16 93 0 13] 
#[1 6 90 0 2 6 90 0 3 6 90 0 4 6 90 0 5 6 90 0 6 6 90 0 7 6 90 0 13 6 90 0 18 6 90 0 22 16 97 0 44 6 90 0 58 6 90 0 88 6 90 0 89 6 90 0 90 6 90 0 91 6 90 0 94 6 90 0 110 6 90 0 114 6 90 0 116 6 90 0 117] 
#[1 6 94 0 2 6 94 0 3 6 94 0 4 6 94 0 5 6 94 0 6 6 94 0 7 6 94 0 13 6 94 0 18 6 94 0 22 16 101 0 39 6 94 0 44 6 94 0 58 6 94 0 88 6 94 0 89 6 94 0 90 6 94 0 91 6 94 0 94 6 94 0 110 6 94 0 114 6 94 0 116 6 94 0 117] 
#[0 6 98 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[1 6 102 0 2 6 102 0 3 6 102 0 4 0 143 0 5 6 102 0 6 6 102 0 7 6 102 0 13 6 102 0 18 6 102 0 22 6 102 0 39 6 102 0 44 6 102 0 58 6 102 0 88 6 102 0 89 6 102 0 90 6 102 0 91 6 102 0 94 6 102 0 110 6 102 0 114 6 102 0 116 6 102 0 117 16 105 0 220] 
#[0 6 106 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 6 110 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 6 114 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[1 0 46 0 2 0 46 0 3 0 46 0 4 0 46 0 5 0 46 0 6 0 46 0 7 0 46 0 10 0 46 0 13 0 46 0 18 0 46 0 22 0 46 0 39 0 46 0 44 0 46 0 58 0 46 0 79 0 46 0 88 0 46 0 89 0 46 0 90 0 46 0 91 0 46 0 94 0 46 0 110 0 46 0 114 0 46 0 116 0 46 0 117 16 109 0 220] 
#[0 16 113 0 21] 
#[0 6 118 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 6 122 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 6 126 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 6 130 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 6 134 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 6 138 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 6 142 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 6 146 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 6 150 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[1 6 109 0 1 8 209 0 10 6 121 1 73 16 117 1 115] 
#[0 16 121 0 3] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 16 125 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 13 65 0 6] 
#[1 0 147 0 1 6 154 0 3 6 154 0 4 0 147 0 5 0 147 0 7 5 10 0 8 5 10 0 9 5 10 0 10 5 10 0 11 5 10 0 12 5 10 0 13 5 10 0 14 5 10 0 15 5 10 0 16 5 10 0 17 5 10 0 19 5 10 0 20 5 10 0 21 5 10 0 22 5 10 0 23 5 10 0 24 5 10 0 25 5 10 0 26 5 10 0 27 5 10 0 28 5 10 0 29 5 10 0 30 5 10 0 31 5 10 0 32 5 10 0 33 0 147 0 34 0 147 0 35 0 147 0 36 0 147 0 37 6 154 0 38 5 10 0 39 5 10 0 40 5 10 0 41 5 10 0 42 5 10 0 43 5 10 0 44 5 10 0 45 5 10 0 46 6 154 0 47 5 10 0 48 5 10 0 49 6 154 0 51 6 154 0 52 6 154 0 53 6 154 0 56 6 154 0 57 6 154 0 59 6 154 0 60 6 154 0 61 6 154 0 63 6 154 0 64 6 154 0 66 6 154 0 67 6 154 0 69 6 154 0 71 6 154 0 73 6 154 0 75 6 154 0 76 5 10 0 77 5 10 0 80 6 154 0 81 6 154 0 83 6 154 0 85 6 154 0 86 6 154 0 87 6 154 0 92 6 154 0 95 6 154 0 96 6 154 0 98 6 154 0 99 6 154 0 100 6 154 0 101 6 154 0 102 6 154 0 103 6 154 0 104 6 154 0 105 6 154 0 106 6 154 0 107 6 154 0 108 5 10 0 110 6 154 0 113 6 154 0 116 6 154 0 117 6 154 0 118 0 147 0 120 0 147 0 121 6 154 0 124 5 10 1 190 5 10 1 192 0 147 1 193 6 154 1 194] 
#[0 16 129 0 3] 
#[1 8 209 0 10 4 49 0 68 16 133 1 15 16 137 1 73 4 65 1 193] 
#[1 6 158 0 7 6 158 0 110 13 21 0 111 16 141 1 106] 
#[1 16 145 0 7 16 149 0 110] 
#[0 6 162 0 7 0 110] 
#[1 15 237 0 1 8 209 0 10 15 253 1 73 16 153 1 107] 
#[1 16 157 0 7 16 149 0 110] 
#[0 16 161 0 3] 
#[1 16 165 0 3 12 137 0 21] 
#[1 16 169 0 7 16 149 0 110] 
#[1 16 173 0 4 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 16 177 0 130 16 177 0 141 16 177 0 142 16 177 0 143 6 145 1 42 6 149 1 43 16 181 1 137 16 185 1 138 16 189 1 139] 
#[0 16 193 0 7] 
#[0 16 197 0 7] 
#[1 4 45 0 3 4 49 0 68 2 61 0 113 16 201 0 129 6 165 1 14 4 61 1 15 4 65 1 193] 
#[1 7 49 0 1 7 53 0 25 2 61 0 113 16 205 0 129] 
#[1 0 102 0 1 0 102 0 5 0 151 0 7 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 77 0 102 0 80 0 102 0 120 0 102 0 121 0 102 1 190 0 102 1 192 0 102 1 193] 
#[0 16 213 0 7] 
#[0 6 166 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 6 170 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 6 174 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 6 178 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 6 182 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[1 16 217 0 22 3 82 0 72 3 82 0 110] 
#[0 6 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 16 221 0 7] 
#[0 16 225 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 16 229 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 16 233 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 16 237 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 2 61 0 113 16 241 0 129 16 245 1 89 16 249 1 148 16 253 1 191] 
#[1 2 61 0 113 13 129 0 129 17 1 1 87 11 189 1 88 11 193 1 89 17 1 1 126] 
#[1 11 109 0 3 12 117 0 68 17 5 1 90 17 9 1 124] 
#[0 6 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 11 109 0 3 17 13 1 90] 
#[1 0 29 0 1 0 33 0 3 6 194 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 6 237 0 61 0 97 0 63 0 101 0 64 2 105 0 66 17 17 0 67 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 7 81 0 76 2 121 0 81 1 137 0 83 2 125 0 85 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 2 129 0 102 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 17 65 0 186 17 65 0 189 17 65 0 190 17 65 0 191 17 65 0 194 1 137 0 195 17 65 0 198 17 65 0 212 17 65 0 213 17 65 0 214 17 65 0 215 17 65 0 218 17 65 0 219 17 65 0 221 17 65 0 222 17 65 0 223 17 65 0 228 17 65 0 230 17 65 0 231 17 65 0 235 17 65 0 236 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 17 65 0 255 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 17 65 1 12 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 17 65 1 114 17 65 1 123 17 65 1 136 17 65 1 141 17 57 1 143 17 61 1 144 17 65 1 145 17 65 1 146 17 65 1 147 17 65 1 173 3 25 1 193] 
#[1 2 61 0 113 17 81 0 129] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 17 85 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 17 85 1 100 17 85 1 101 11 173 1 102 11 173 1 104] 
#[0 17 89 0 22] 
#[0 16 217 0 22] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 2 93 0 56 0 97 0 63 2 13 0 69 2 113 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 12 61 0 182 12 61 0 183 12 65 0 236 0 253 0 237 12 61 0 245 1 205 0 246 1 209 0 249 12 61 0 250 12 69 0 255 0 253 1 0 12 61 1 2 0 253 1 5 0 253 1 9 1 41 1 11 12 73 1 12 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 25 1 193] 
#[1 4 185 0 3 4 189 0 25 2 61 0 113 4 213 0 116 4 201 0 129 4 197 1 26 4 201 1 27 4 205 1 28 4 209 1 29 4 213 1 33 4 201 1 34 4 213 1 42] 
#[0 4 66 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 4 94 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 6 173 0 56 6 181 0 73 2 61 0 113 17 93 0 129 12 77 1 177 12 81 1 178] 
#[0 4 70 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 4 78 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 4 98 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 17 97 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 12 189 0 1 8 209 0 10 12 197 1 73 17 101 1 107 17 105 1 115] 
#[0 17 109 0 1] 
#[0 17 113 0 7] 
#[0 17 117 0 3] 
#[1 4 45 0 3 4 49 0 68 17 121 1 14 4 61 1 15 4 65 1 193] 
#[0 6 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 102 0 1 0 155 0 4 0 102 0 5 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 77 0 102 0 80 0 102 0 110 0 102 0 120 0 102 0 121 0 102 1 190 0 102 1 192 0 102 1 193] 
#[0 0 159 0 4 0 110] 
#[1 0 29 0 1 3 29 0 3 3 33 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 41 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 13 101 0 182 13 101 0 183 3 49 0 201 3 49 0 202 3 49 0 203 17 125 0 209 17 125 0 210 0 253 0 237 13 101 0 245 1 205 0 246 1 209 0 249 13 101 0 250 0 253 1 0 13 101 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 93 1 193] 
#[0 6 206 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 6 210 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 17 129 0 4 6 133 0 5 10 41 0 109 2 61 0 113 3 125 0 114 6 145 0 116 6 149 0 117 8 185 0 129 10 45 0 130 10 45 0 141 10 45 0 142 10 45 0 143 17 133 0 204 17 137 0 208 17 137 0 210 6 145 1 42 6 149 1 43 10 49 1 193] 
#[1 13 41 0 41 13 21 0 111 13 45 1 106] 
#[1 2 61 0 113 17 141 0 129] 
#[1 0 102 0 1 0 102 0 5 0 163 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 77 0 102 0 80 0 102 0 110 13 21 0 111 0 102 0 120 0 102 0 121 13 25 1 106 0 102 1 190 0 102 1 192 0 102 1 193] 
#[1 4 222 0 1 0 167 0 2 0 167 0 4 4 222 0 5 0 167 0 6 4 222 0 8 4 222 0 9 4 222 0 10 4 222 0 11 4 222 0 12 4 222 0 13 4 222 0 14 4 222 0 15 4 222 0 16 4 222 0 17 4 222 0 19 4 222 0 20 4 222 0 21 0 167 0 22 4 222 0 23 4 222 0 24 4 222 0 25 4 222 0 26 4 222 0 27 4 222 0 28 4 222 0 29 4 222 0 30 4 222 0 31 4 222 0 32 4 222 0 33 4 222 0 34 4 222 0 35 4 222 0 36 4 222 0 37 4 222 0 39 4 222 0 40 4 222 0 41 4 222 0 42 4 222 0 43 4 222 0 44 4 222 0 45 4 222 0 46 4 222 0 48 4 222 0 49 4 222 0 77 4 222 0 80 0 167 0 110 4 222 0 120 4 222 0 121 4 222 1 190 4 222 1 192 4 222 1 193] 
#[0 6 218 0 6 0 110] 
#[0 17 145 0 6] 
#[0 6 222 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 5 33 0 3 5 37 0 5 17 149 0 6 3 37 0 109 3 209 0 110 2 61 0 113 8 185 0 129 17 153 0 136 3 49 0 201 3 49 0 202 3 49 0 203 17 157 0 207 8 17 0 209 8 17 0 210 17 161 0 211 8 189 1 193] 
#[0 6 226 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 17 165 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 17 165 1 100 17 165 1 101 11 173 1 102 11 173 1 104] 
#[0 6 230 0 2 0 6] 
#[0 6 234 0 2 0 4 0 6 0 7 0 88 0 110] 
#[0 6 238 0 2] 
#[0 6 242 0 2 0 110] 
#[0 6 246 0 2 0 4 0 6 0 110] 
#[1 6 250 0 2 6 250 0 4 6 250 0 6 8 33 0 22 6 250 0 110 17 169 0 145] 
#[1 6 254 0 2 6 254 0 4 6 254 0 6 6 254 0 110 13 21 0 111 17 173 1 106] 
#[1 7 2 0 2 7 2 0 4 7 2 0 6 8 33 0 22 7 2 0 110 17 177 0 145] 
#[1 0 171 0 2 0 171 0 4 0 171 0 6 0 175 0 22 0 179 0 41 0 171 0 110 0 119 0 111 17 185 0 145 17 189 1 106] 
#[1 7 10 0 2 7 10 0 4 7 10 0 6 8 33 0 22 17 193 0 41 7 10 0 110 13 21 0 111 17 197 0 145 17 201 1 106] 
#[0 7 14 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 17 205 0 238 3 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 17 209 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 17 213 0 238 3 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 17 217 0 2] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 17 225 0 209 17 225 0 210 17 225 0 242 17 225 0 253 8 189 1 193] 
#[0 7 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 7 22 0 4 0 110] 
#[0 17 229 0 2] 
#[0 7 26 0 4 0 110] 
#[0 17 233 0 1] 
#[0 17 237 0 1] 
#[0 17 241 0 3] 
#[0 7 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 7 34 0 6 0 110] 
#[0 7 38 0 6 0 110] 
#[1 6 74 0 2 6 74 0 3 6 74 0 4 6 74 0 5 6 74 0 6 6 74 0 7 6 74 0 10 6 74 0 13 6 74 0 18 6 82 0 21 6 74 0 22 6 74 0 39 6 74 0 44 6 74 0 58 6 74 0 79 6 74 0 88 6 74 0 89 6 74 0 90 6 74 0 91 6 74 0 94 6 74 0 110 6 74 0 114 6 74 0 116 6 74 0 117] 
#[0 17 245 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 17 249 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 17 253 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 18 1 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 0 29 0 1 0 33 0 3 0 131 0 4 3 101 0 5 0 41 0 7 3 105 0 25 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 109 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 3 113 0 74 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 3 117 0 93 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 3 121 0 109 0 193 0 113 3 125 0 114 3 181 0 116 3 185 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 129 0 129 3 145 0 130 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 3 137 0 139 3 141 0 140 3 145 0 141 3 145 0 142 3 145 0 143 3 141 0 144 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 18 5 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 3 141 0 252 3 141 0 254 0 253 1 0 1 109 1 2 3 141 1 3 0 253 1 5 3 141 1 7 0 253 1 9 18 9 1 10 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 3 181 1 42 3 185 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 141 1 116 3 141 1 117 3 197 1 193] 
#[0 7 42 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[0 7 46 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[1 6 78 0 13 16 73 0 68 6 78 0 110 16 77 1 76] 
#[0 7 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 7 54 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 7 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 80 0 81 0 83 0 85 0 86 0 87 0 88 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 110 0 111 0 113 0 116 0 117 0 118 0 120 0 121 0 122 0 123 0 124 1 190 1 192 1 193 1 194] 
#[0 7 62 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[1 2 61 0 113 18 13 0 129] 
#[0 18 17 0 1] 
#[1 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 18 21 0 130 18 21 0 141 18 21 0 142 18 21 0 143 6 145 1 42 6 149 1 43 18 25 1 116 18 29 1 117 13 237 1 193] 
#[1 12 189 0 1 18 33 0 7 8 209 0 10 8 33 0 22 13 21 0 111 18 37 0 145 12 197 1 73 18 41 1 106 18 45 1 107 13 113 1 115] 
#[1 6 133 0 5 18 49 0 58 18 53 0 94 3 125 0 114 6 145 0 116 6 149 0 117 18 57 0 130 18 57 0 141 18 57 0 142 18 57 0 143 6 145 1 42 6 149 1 43 18 61 1 116 18 65 1 117 13 237 1 193] 
#[0 18 69 0 7] 
#[0 7 66 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 7 70 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 7 74 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 7 78 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 7 82 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 7 86 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 7 90 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 7 94 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[1 8 141 0 74 8 145 0 93] 
#[0 7 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 80 0 81 0 83 0 85 0 86 0 87 0 88 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 110 0 111 0 113 0 116 0 117 0 118 0 120 0 121 0 122 0 123 0 124 1 190 1 192 1 193 1 194] 
#[0 18 73 0 4] 
#[0 7 102 0 79] 
#[0 7 106 0 79] 
#[0 7 110 0 3 0 110] 
#[1 7 114 0 3 18 77 0 110] 
#[0 7 118 0 3 0 110] 
#[0 7 122 0 3] 
#[0 7 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 81 0 182 18 81 0 183 18 81 0 185 0 253 0 237 18 81 0 245 1 205 0 246 1 209 0 249 18 81 0 250 0 253 1 0 18 81 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 18 85 0 114] 
#[0 7 130 0 7 0 72] 
#[1 18 89 0 4 9 45 0 114 18 93 1 39] 
#[0 7 134 0 72] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 18 97 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 18 101 0 1 2 61 0 113 18 105 0 129] 
#[0 18 109 0 1] 
#[0 6 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 7 138 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 18 113 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 18 117 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 18 121 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 18 125 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 7 142 0 7] 
#[0 7 146 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 12 189 0 1 8 209 0 10 12 197 1 73 17 101 1 107 18 129 1 115] 
#[0 18 133 0 3] 
#[1 0 29 0 1 18 137 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 141 0 182 18 141 0 183 18 141 0 185 0 253 0 237 18 141 0 245 1 205 0 246 1 209 0 249 18 141 0 250 0 253 1 0 18 141 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 18 145 0 7 6 61 0 110] 
#[1 3 118 0 7 8 33 0 22 7 150 0 77 3 118 0 88 3 118 0 110 10 61 0 145] 
#[1 18 149 0 7 10 69 0 110] 
#[1 3 122 0 7 18 153 0 88 3 122 0 110] 
#[1 8 33 0 22 7 154 0 77 10 73 0 145] 
#[0 18 157 0 77] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 161 0 182 18 161 0 183 18 161 0 185 0 253 0 237 18 161 0 245 1 205 0 246 1 209 0 249 18 161 0 250 0 253 1 0 18 161 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 165 0 182 18 165 0 183 0 253 0 237 18 165 0 245 1 205 0 246 1 209 0 249 18 165 0 250 0 253 1 0 18 165 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 18 169 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 173 0 182 18 173 0 183 18 173 0 185 0 253 0 237 18 173 0 245 1 205 0 246 1 209 0 249 18 173 0 250 0 253 1 0 18 173 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 18 177 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 181 0 182 18 181 0 183 18 181 0 185 0 253 0 237 18 181 0 245 1 205 0 246 1 209 0 249 18 181 0 250 0 253 1 0 18 181 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 18 185 0 7 6 61 0 110] 
#[1 3 238 0 7 8 33 0 22 7 150 0 77 7 150 0 88 3 238 0 110 11 29 0 145] 
#[1 8 33 0 22 7 154 0 77 7 154 0 88 11 41 0 145] 
#[0 7 158 0 77 0 88] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 189 0 182 18 189 0 183 18 189 0 185 0 253 0 237 18 189 0 245 1 205 0 246 1 209 0 249 18 189 0 250 0 253 1 0 18 189 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 193 0 182 18 193 0 183 0 253 0 237 18 193 0 245 1 205 0 246 1 209 0 249 18 193 0 250 0 253 1 0 18 193 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 5 41 0 129 18 197 0 200 5 53 0 201 5 53 0 202 5 53 0 203 5 57 1 193] 
#[0 18 201 0 88] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 14 149 0 129 14 149 0 201 14 149 0 202 14 149 0 203 14 149 0 217] 
#[0 18 213 0 88] 
#[0 18 217 0 3] 
#[0 18 221 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 18 225 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 18 229 0 2] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 18 233 0 186 18 233 0 189 18 233 0 190 18 233 0 191 18 233 0 198 18 233 0 212 18 233 0 213 18 233 0 214 18 233 0 215 18 233 0 218 18 233 0 219 18 233 0 221 18 233 0 222 18 233 0 223 18 233 0 228 18 233 0 230 18 233 0 231 18 233 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 7 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 2 61 0 113 18 237 0 129 18 237 1 34] 
#[0 7 166 0 72] 
#[1 18 241 0 4 2 61 0 113 9 185 0 114 9 197 0 129 18 245 1 32 9 197 1 34] 
#[0 7 170 0 72] 
#[0 7 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 7 178 0 72] 
#[0 7 182 0 72] 
#[0 7 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 7 190 0 2 0 110] 
#[0 7 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 18 249 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 18 253 0 109 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 19 1 0 182 19 1 0 183 0 253 0 237 19 1 0 245 1 205 0 246 1 209 0 249 19 1 0 250 0 253 1 0 19 1 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 7 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 19 5 0 13 19 9 0 110] 
#[0 7 202 0 13 0 110] 
#[0 7 206 0 13 0 110] 
#[1 0 29 0 1 19 13 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 9 237 0 109 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 19 17 0 159 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 245 0 182 9 245 0 183 0 253 0 237 9 245 0 245 1 205 0 246 1 209 0 249 9 245 0 250 0 253 1 0 9 245 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 19 21 0 3 19 25 0 224] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 19 37 0 129 19 37 0 201 19 37 0 202 19 37 0 203 19 37 0 234] 
#[0 7 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 7 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 7 218 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 6 202 0 4] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 17 125 0 209 17 125 0 210 8 189 1 193] 
#[0 6 214 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 7 222 0 7 0 110] 
#[1 7 226 0 7 8 33 0 22 7 226 0 88 7 226 0 110 19 41 0 145] 
#[1 8 33 0 22 19 45 0 145] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 19 49 0 186 19 49 0 189 19 49 0 190 19 49 0 191 19 49 0 198 19 49 0 212 19 49 0 213 19 49 0 214 19 49 0 215 19 49 0 218 19 49 0 219 19 49 0 221 19 49 0 222 19 49 0 223 19 49 0 228 19 49 0 230 19 49 0 231 19 49 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 19 53 0 186 19 53 0 189 19 53 0 190 19 53 0 191 19 53 0 198 19 53 0 212 19 53 0 213 19 53 0 214 19 53 0 215 19 53 0 218 19 53 0 219 19 53 0 221 19 53 0 222 19 53 0 223 19 53 0 228 19 53 0 230 19 53 0 231 19 53 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 4 2 0 3 4 2 0 124 4 2 0 126 19 57 1 63 11 73 1 64] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 19 61 0 182 19 61 0 183 19 61 0 185 0 253 0 237 19 61 0 245 1 205 0 246 1 209 0 249 19 61 0 250 0 253 1 0 19 61 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 7 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 7 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 19 65 0 122 19 69 0 123] 
#[0 7 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 19 73 0 6 6 61 0 110] 
#[1 19 77 0 6 6 61 0 110] 
#[0 7 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 7 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 19 81 0 182 19 81 0 183 0 253 0 237 19 81 0 245 1 205 0 246 1 209 0 249 19 81 0 250 0 253 1 0 19 81 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 7 250 0 7 0 110] 
#[1 7 254 0 7 8 33 0 22 7 254 0 110 19 85 0 145] 
#[1 8 2 0 7 8 33 0 22 8 2 0 110 19 89 0 145] 
#[1 0 29 0 1 0 33 0 3 8 6 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 6 157 0 186 6 157 0 189 6 157 0 190 6 157 0 191 6 157 0 193 6 157 0 194 1 137 0 195 6 157 0 198 6 157 0 212 6 157 0 213 6 157 0 214 6 157 0 215 6 157 0 218 6 157 0 219 6 157 0 221 6 157 0 222 6 157 0 223 6 157 0 228 6 157 0 230 6 157 0 231 6 157 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 19 93 0 4] 
#[0 8 10 0 4] 
#[0 8 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 190 1 192 1 193 1 194] 
#[0 19 97 0 124] 
#[0 8 18 0 3 0 124 0 126] 
#[0 8 22 0 3 0 124 0 126] 
#[0 8 26 0 3 0 124 0 126] 
#[0 19 101 0 3] 
#[0 8 30 0 125] 
#[0 19 105 0 125] 
#[1 8 34 0 13 19 109 1 70] 
#[1 8 38 0 3 8 38 0 8 8 38 0 13 8 38 0 22 15 157 0 111 8 38 0 125] 
#[0 8 42 0 3 0 8 0 13 0 22 0 125] 
#[1 19 113 0 8 0 98 0 13 19 117 1 68] 
#[0 8 46 0 3 0 8 0 13 0 125] 
#[1 6 42 0 3 8 50 0 8 8 50 0 13 15 165 0 125 15 193 1 51 19 121 1 56 19 121 1 58 19 121 1 59 15 193 1 60 15 201 1 72] 
#[0 8 54 0 3 0 8 0 13 0 125] 
#[0 8 58 0 3 0 8 0 13 0 125] 
#[1 8 62 0 3 8 62 0 8 8 62 0 13 19 125 0 22 8 62 0 125 19 129 1 61] 
#[0 19 133 0 13] 
#[0 19 137 0 3] 
#[1 8 66 0 3 8 66 0 8 8 66 0 13 15 153 0 21 8 66 0 125] 
#[0 8 70 0 125] 
#[1 13 21 0 111 19 141 1 106] 
#[1 15 237 0 1 13 181 0 3 19 145 0 4 6 133 0 5 8 209 0 10 15 245 0 86 10 41 0 109 2 61 0 113 3 125 0 114 6 145 0 116 6 149 0 117 8 185 0 129 19 149 0 130 19 149 0 141 19 149 0 142 19 149 0 143 7 233 0 204 7 237 0 205 7 241 0 208 7 241 0 210 6 145 1 42 6 149 1 43 15 253 1 73 16 1 1 91 16 5 1 92 16 9 1 93 16 9 1 105 16 9 1 107 16 9 1 111 16 9 1 112 16 9 1 113 10 49 1 193] 
#[1 11 105 0 1 15 217 0 3 15 221 0 5 10 53 0 6 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 3 37 0 109 3 209 0 110 2 61 0 113 15 225 0 129 10 57 0 136 3 49 0 201 3 49 0 202 3 49 0 203 8 9 0 206 8 13 0 207 8 17 0 209 8 17 0 210 8 21 0 211 11 145 1 73 16 41 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 16 37 1 96 16 41 1 97 11 161 1 98 11 165 1 99 16 41 1 100 16 41 1 101 11 173 1 102 11 173 1 104 8 189 1 193] 
#[1 0 183 0 2 0 183 0 4 6 74 0 5 0 183 0 6 6 74 0 7 6 74 0 10 6 82 0 21 8 33 0 22 6 74 0 39 6 74 0 44 0 183 0 110 8 37 0 145] 
#[0 19 153 0 2] 
#[0 19 157 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 19 161 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 8 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 34 0 35 0 36 0 37 0 38 0 39 0 44 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 19 165 0 1 8 209 0 10 19 169 1 73] 
#[1 15 237 0 1 8 78 0 4 8 78 0 7 8 209 0 10 19 173 0 41 8 78 0 110 13 21 0 111 15 253 1 73 19 177 1 106 19 181 1 107] 
#[0 19 185 0 1] 
#[0 19 189 0 4] 
#[1 8 82 0 4 19 193 0 7 19 197 0 110] 
#[0 8 86 0 4 0 7 0 110] 
#[0 8 90 0 4 0 7 0 110] 
#[0 8 94 0 4 0 7 0 110] 
#[0 8 98 0 4 0 7 0 110] 
#[0 8 102 0 4 0 7 0 110] 
#[0 8 106 0 4 0 7 0 110] 
#[0 8 110 0 6 0 110] 
#[1 19 201 0 6 19 205 0 110] 
#[0 8 114 0 6 0 110] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 15 233 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 15 233 1 100 15 233 1 101 11 173 1 102 11 173 1 104] 
#[1 8 118 0 2 8 118 0 3 8 118 0 4 0 187 0 5 8 118 0 6 8 118 0 7 8 118 0 13 8 118 0 18 8 118 0 22 8 118 0 39 8 118 0 44 8 118 0 58 8 118 0 88 8 118 0 89 8 118 0 90 8 118 0 91 8 118 0 94 8 118 0 110 8 118 0 114 8 118 0 116 8 118 0 117 16 105 0 220] 
#[1 8 122 0 2 8 122 0 3 8 122 0 4 0 191 0 5 8 122 0 6 8 122 0 7 8 122 0 13 8 122 0 18 8 122 0 22 8 122 0 39 8 122 0 44 8 122 0 58 8 122 0 88 8 122 0 89 8 122 0 90 8 122 0 91 8 122 0 94 8 122 0 110 8 122 0 114 8 122 0 116 8 122 0 117 16 105 0 220] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 19 209 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 19 213 0 1] 
#[0 8 126 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 21 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[1 8 130 0 2 8 130 0 3 8 130 0 4 8 130 0 5 8 130 0 6 8 130 0 7 8 130 0 13 8 130 0 18 19 217 0 21 8 130 0 22 8 130 0 39 8 130 0 44 8 130 0 58 8 130 0 88 8 130 0 89 8 130 0 90 8 130 0 91 8 130 0 94 8 130 0 110 8 130 0 114 8 130 0 116 8 130 0 117] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 19 221 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 19 221 1 100 19 221 1 101 11 173 1 102 11 173 1 104] 
#[0 8 134 0 13 0 110] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 19 225 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 8 138 0 1 0 3 0 22 0 68 1 193] 
#[1 2 61 0 113 13 161 0 129 19 229 1 75] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 19 233 0 165 19 233 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 19 233 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 193] 
#[1 16 45 0 1 11 109 0 3 11 113 0 5 11 117 0 78 11 121 0 82 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 19 237 1 82 19 237 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 19 237 1 99 11 173 1 102 11 173 1 104] 
#[1 16 45 0 1 11 109 0 3 11 113 0 5 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 19 241 1 84 19 241 1 85 19 241 1 86 19 241 1 87 11 189 1 88 11 193 1 89 19 241 1 90 19 241 1 94 19 241 1 95 19 241 1 102 19 241 1 104] 
#[0 19 245 0 5] 
#[1 8 142 0 2 8 142 0 3 8 142 0 4 8 142 0 5 8 142 0 6 8 142 0 7 10 1 0 10 8 142 0 13 8 142 0 18 8 142 0 22 8 142 0 39 8 142 0 44 8 142 0 58 8 142 0 79 8 142 0 88 8 142 0 89 8 142 0 90 8 142 0 91 8 142 0 94 8 142 0 110 8 142 0 114 8 142 0 116 8 142 0 117 19 249 1 77] 
#[1 2 61 0 113 19 253 0 129] 
#[0 20 1 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 20 5 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 20 9 0 2] 
#[1 20 13 0 4 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 16 177 0 130 16 177 0 141 16 177 0 142 16 177 0 143 6 145 1 42 6 149 1 43 20 17 1 137 16 185 1 138 16 189 1 139] 
#[0 20 21 0 3] 
#[1 4 49 0 68 20 25 1 15 4 65 1 193] 
#[0 8 146 0 7 0 110] 
#[0 8 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 2 61 0 113 12 5 0 129 20 29 1 176] 
#[0 20 33 0 7] 
#[0 8 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 34 0 4 6 237 0 61 7 181 0 67 6 245 0 76 2 121 0 81 2 125 0 85 2 129 0 102 2 241 1 25 2 241 1 114 2 241 1 123 2 241 1 141 2 241 1 147 2 241 1 159 20 37 1 163 2 237 1 164 2 241 1 165 2 241 1 168 2 241 1 170 2 241 1 171 2 241 1 172 2 241 1 173] 
#[1 8 158 0 4 6 173 0 56 20 41 0 57 2 105 0 66 20 45 0 67 6 181 0 73 7 117 0 76 2 121 0 81 20 49 0 83 6 193 0 85 6 197 0 104 20 53 0 194 1 137 0 195 20 57 1 123 20 77 1 136 20 61 1 147 20 65 1 174 20 69 1 177 20 73 1 178 20 77 1 184 20 81 1 185 20 85 1 186 20 89 1 187 20 93 1 188] 
#[0 8 162 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 8 166 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 8 170 0 4 20 97 0 22 8 170 0 110] 
#[0 20 101 0 4] 
#[1 8 174 0 4 20 105 0 110] 
#[0 8 178 0 4 0 110] 
#[0 8 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 8 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 4 45 0 3 8 209 0 10 4 49 0 68 11 249 1 14 20 109 1 15 16 137 1 73 4 65 1 193] 
#[1 20 113 0 1 8 209 0 10 15 253 1 73 16 153 1 107] 
#[0 8 190 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 194] 
#[0 8 194 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 2 61 0 113 16 241 0 129 16 245 1 89 16 249 1 148] 
#[0 8 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 20 117 0 3] 
#[0 20 121 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 20 125 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 20 129 0 2] 
#[0 6 82 0 7 0 21] 
#[1 8 202 0 7 20 133 0 21] 
#[0 20 137 0 7] 
#[0 20 141 0 1] 
#[0 8 206 0 3] 
#[0 8 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 11 109 0 3 20 145 1 90] 
#[0 8 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 4 97 0 56 2 97 0 57 6 237 0 61 2 105 0 66 4 105 0 73 7 117 0 76 2 121 0 81 1 137 0 83 2 125 0 85 2 129 0 102 0 173 0 104 20 149 0 194 1 137 0 195 20 153 0 198 20 157 0 236 20 161 0 255 20 165 1 12 20 169 1 114 20 173 1 123 20 177 1 136 20 181 1 141 20 185 1 147 20 189 1 173 7 45 1 193] 
#[0 8 218 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 8 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 8 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 8 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 8 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 8 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 8 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 8 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 8 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 20 193 0 4] 
#[1 0 29 0 1 0 33 0 3 8 254 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 6 237 0 61 0 97 0 63 0 101 0 64 2 105 0 66 17 17 0 67 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 7 81 0 76 2 121 0 81 1 137 0 83 2 125 0 85 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 2 129 0 102 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 20 197 0 186 20 197 0 189 20 197 0 190 20 197 0 191 20 197 0 194 1 137 0 195 20 197 0 198 20 197 0 212 20 197 0 213 20 197 0 214 20 197 0 215 20 197 0 218 20 197 0 219 20 197 0 221 20 197 0 222 20 197 0 223 20 197 0 228 20 197 0 230 20 197 0 231 20 197 0 235 20 197 0 236 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 20 197 0 255 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 20 197 1 12 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 20 197 1 114 20 197 1 123 20 197 1 136 20 197 1 141 20 197 1 145 20 197 1 146 20 197 1 147 20 197 1 173 3 25 1 193] 
#[0 9 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 9 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 9 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 9 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 9 18 0 3 0 21] 
#[0 20 201 0 7] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 20 205 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 20 205 1 100 20 205 1 101 11 173 1 102 11 173 1 104] 
#[0 16 209 0 7] 
#[0 20 209 0 2] 
#[0 20 213 0 7] 
#[0 20 217 0 3] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 20 221 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 9 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 20 225 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 9 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 9 30 0 4 0 110] 
#[0 9 34 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 20 229 0 4] 
#[0 9 38 0 4 0 110] 
#[1 7 6 0 4 8 33 0 22 17 181 0 41 7 6 0 110 13 21 0 111 17 185 0 145 17 189 1 106] 
#[0 9 42 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 9 46 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 5 33 0 3 5 37 0 5 20 233 0 6 3 37 0 109 8 169 0 110 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 13 1 0 209 13 1 0 210 20 237 0 211 8 189 1 193] 
#[0 9 50 0 6 0 110] 
#[0 20 241 0 6] 
#[0 9 54 0 2 0 3 0 4 0 5 0 6 0 7 0 18 0 22 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 9 58 0 2 0 4 0 6 0 110] 
#[0 9 62 0 2 0 4 0 6 0 110] 
#[0 9 66 0 2 0 4 0 6 0 110] 
#[0 9 70 0 2 0 4 0 6 0 110] 
#[0 9 74 0 2 0 4 0 6 0 110] 
#[1 9 78 0 2 9 78 0 4 9 78 0 6 8 33 0 22 9 78 0 110 20 245 0 145] 
#[1 9 82 0 2 9 82 0 4 9 82 0 6 9 82 0 110 13 21 0 111 20 249 1 106] 
#[0 9 86 0 2 0 4 0 6 0 110] 
#[1 9 90 0 2 9 90 0 4 9 90 0 6 8 33 0 22 9 90 0 110 20 253 0 145] 
#[0 21 1 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 21 5 0 238 3 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 21 9 0 2] 
#[0 21 13 0 3] 
#[0 9 94 0 2] 
#[0 21 17 0 2] 
#[0 21 21 0 3] 
#[0 21 25 0 2] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 21 29 0 129 21 33 0 201 21 33 0 202 21 33 0 203 21 37 0 209 21 37 0 210 21 37 0 242 21 37 0 253 21 41 1 110 21 45 1 118 8 189 1 193] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 21 49 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 21 53 0 3] 
#[0 21 57 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 21 61 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 21 65 0 2] 
#[0 9 98 0 4] 
#[0 21 69 0 4] 
#[0 21 73 0 111] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 21 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 15 237 0 1 21 81 0 7 8 209 0 10 8 33 0 22 13 21 0 111 21 85 0 145 15 253 1 73 21 89 1 106 21 93 1 107] 
#[0 9 102 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 9 106 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 9 110 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 21 97 0 7] 
#[1 21 101 0 7 8 33 0 22 21 105 0 145] 
#[1 21 109 0 3 21 113 0 7] 
#[0 21 117 0 1] 
#[1 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 21 121 0 130 21 121 0 141 21 121 0 142 21 121 0 143 6 145 1 42 6 149 1 43 21 125 1 116 21 129 1 117 13 237 1 193] 
#[1 15 237 0 1 21 133 0 7 8 209 0 10 8 33 0 22 13 21 0 111 21 137 0 145 15 253 1 73 21 141 1 106 21 145 1 107] 
#[0 9 114 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 9 118 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 9 122 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 9 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 80 0 81 0 83 0 85 0 86 0 87 0 88 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 110 0 111 0 113 0 116 0 117 0 118 0 120 0 121 0 122 0 123 0 124 1 190 1 192 1 193 1 194] 
#[1 2 61 0 113 13 129 0 129 21 149 1 87 11 189 1 88 11 193 1 89 21 149 1 126] 
#[1 21 153 0 2 6 61 0 110] 
#[0 9 130 0 4 0 110] 
#[0 9 134 0 7 0 72] 
#[0 9 138 0 4 0 110] 
#[0 21 157 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 21 161 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 21 165 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 21 169 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 21 173 0 3] 
#[0 21 177 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 21 181 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 21 185 0 2] 
#[0 21 189 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 21 193 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 21 197 0 186 21 197 0 189 21 197 0 190 21 197 0 191 21 197 0 198 21 197 0 212 21 197 0 213 21 197 0 214 21 197 0 215 21 197 0 218 21 197 0 219 21 197 0 221 21 197 0 222 21 197 0 223 21 197 0 228 21 197 0 230 21 197 0 231 21 197 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 21 201 0 2 6 61 0 110] 
#[1 0 29 0 1 21 205 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 21 209 0 182 21 209 0 183 21 209 0 185 0 253 0 237 21 209 0 245 1 205 0 246 1 209 0 249 21 209 0 250 0 253 1 0 21 209 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 21 213 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 21 217 0 182 21 217 0 183 21 217 0 185 0 253 0 237 21 217 0 245 1 205 0 246 1 209 0 249 21 217 0 250 0 253 1 0 21 217 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 21 221 0 182 21 221 0 183 0 253 0 237 21 221 0 245 1 205 0 246 1 209 0 249 21 221 0 250 0 253 1 0 21 221 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 21 225 0 182 21 225 0 183 21 225 0 185 0 253 0 237 21 225 0 245 1 205 0 246 1 209 0 249 21 225 0 250 0 253 1 0 21 225 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 21 229 0 2 6 61 0 110] 
#[0 21 233 0 2] 
#[1 0 29 0 1 21 237 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 21 241 0 182 21 241 0 183 21 241 0 185 0 253 0 237 21 241 0 245 1 205 0 246 1 209 0 249 21 241 0 250 0 253 1 0 21 241 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 21 245 0 7 6 61 0 110] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 21 249 0 186 21 249 0 189 21 249 0 190 21 249 0 191 21 249 0 198 21 249 0 212 21 249 0 213 21 249 0 214 21 249 0 215 21 249 0 218 21 249 0 219 21 249 0 221 21 249 0 222 21 249 0 223 21 249 0 228 21 249 0 230 21 249 0 231 21 249 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 21 253 0 2 6 61 0 110] 
#[1 0 29 0 1 22 1 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 5 0 182 22 5 0 183 22 5 0 185 0 253 0 237 22 5 0 245 1 205 0 246 1 209 0 249 22 5 0 250 0 253 1 0 22 5 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 22 9 0 2 6 61 0 110] 
#[0 22 13 0 2] 
#[0 22 17 0 88] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 21 0 182 22 21 0 183 0 253 0 237 22 21 0 245 1 205 0 246 1 209 0 249 22 21 0 250 0 253 1 0 22 21 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 7 150 0 88] 
#[0 7 154 0 88] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 25 0 182 22 25 0 183 0 253 0 237 22 25 0 245 1 205 0 246 1 209 0 249 22 25 0 250 0 253 1 0 22 25 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 22 29 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 22 33 0 3] 
#[0 22 37 0 2] 
#[0 22 41 0 3] 
#[1 9 142 0 1 9 142 0 3 9 142 0 4 9 142 0 5 9 142 0 7 9 142 0 34 9 142 0 35 9 142 0 36 9 142 0 37 9 142 0 38 9 142 0 47 9 142 0 51 9 142 0 52 9 142 0 53 9 142 0 54 9 142 0 56 9 142 0 57 9 142 0 59 9 142 0 60 9 142 0 61 9 142 0 62 9 142 0 63 9 142 0 64 22 45 0 65 9 142 0 66 9 142 0 67 9 142 0 69 9 142 0 71 9 142 0 73 9 142 0 75 9 142 0 76 9 142 0 81 9 142 0 83 9 142 0 85 9 142 0 86 9 142 0 87 9 142 0 92 9 142 0 95 9 142 0 96 9 142 0 98 9 142 0 99 9 142 0 100 9 142 0 101 9 142 0 102 9 142 0 103 9 142 0 104 9 142 0 105 9 142 0 106 9 142 0 107 9 142 0 108 9 142 0 113 9 142 0 116 9 142 0 117 9 142 0 118 9 142 0 120 9 142 0 121 9 142 0 124 9 142 1 193 9 142 1 194] 
#[0 9 146 0 4 0 110] 
#[0 9 150 0 72] 
#[0 9 154 0 4 0 110] 
#[0 9 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 49 0 182 22 49 0 183 0 253 0 237 22 49 0 245 1 205 0 246 1 209 0 249 22 49 0 250 0 253 1 0 22 49 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 9 162 0 2 0 110] 
#[0 9 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 79 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 22 53 1 79 22 53 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 22 53 1 100 22 53 1 101 11 173 1 102 11 173 1 104] 
#[0 9 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 22 57 0 2 22 61 0 110] 
#[1 22 65 0 4 22 69 0 54 22 73 0 62 22 77 0 225 22 81 0 226 22 85 0 227] 
#[0 9 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 9 178 0 2] 
#[0 9 182 0 2] 
#[0 22 89 0 2] 
#[0 9 186 0 7 0 88 0 110] 
#[0 9 190 0 7 0 88 0 110] 
#[0 9 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 9 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 22 93 0 124] 
#[1 6 61 0 110 9 202 0 122 9 202 0 123] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 97 0 182 22 97 0 183 22 97 0 185 0 253 0 237 22 97 0 245 1 205 0 246 1 209 0 249 22 97 0 250 0 253 1 0 22 97 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 9 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 9 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 9 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 9 218 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[0 9 222 0 7 0 110] 
#[0 9 226 0 7 0 110] 
#[0 9 230 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[0 22 101 0 8] 
#[1 0 29 0 1 2 53 0 3 0 98 0 4 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 3 205 0 109 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 22 113 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 113 0 182 22 113 0 183 0 253 0 237 22 113 0 245 1 205 0 246 1 209 0 249 22 113 0 250 0 253 1 0 22 113 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 22 113 1 66 2 45 1 67 22 117 1 68 2 49 1 193] 
#[0 9 234 0 3 0 8 0 13 0 22 0 125] 
#[0 22 121 0 13] 
#[1 8 34 0 13 22 125 1 70] 
#[0 22 129 0 13] 
#[0 9 238 0 3 0 8 0 13 0 125] 
#[1 6 42 0 3 22 133 0 116 0 7 0 124 22 133 1 42 22 145 1 45 22 145 1 46 2 37 1 47 22 145 1 49 22 145 1 62 2 45 1 67 22 149 1 72] 
#[0 9 242 0 3 0 8 0 13 0 125] 
#[0 9 246 0 3 0 124 0 126] 
#[1 3 205 0 109 22 153 0 137] 
#[0 9 250 0 3 0 18] 
#[1 0 195 0 2 0 195 0 4 8 74 0 5 0 195 0 6 8 74 0 7 4 122 0 22 8 74 0 39 8 74 0 44 0 195 0 110] 
#[1 15 237 0 1 8 78 0 4 8 78 0 7 8 209 0 10 19 173 0 41 8 78 0 110 22 157 0 111 15 253 1 73 19 177 1 106 19 181 1 107] 
#[0 22 161 0 18] 
#[0 9 254 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 22 165 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 22 169 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 22 173 0 1] 
#[1 15 237 0 1 10 2 0 4 10 2 0 7 8 209 0 10 10 2 0 110 13 21 0 111 15 253 1 73 22 177 1 106 22 181 1 107] 
#[0 10 6 0 4 0 7 0 110] 
#[0 10 10 0 4 0 7 0 110] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 22 185 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 10 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 34 0 35 0 36 0 37 0 38 0 39 0 44 0 47 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 15 237 0 1 13 181 0 3 10 18 0 4 6 133 0 5 8 209 0 10 15 245 0 86 3 125 0 114 6 145 0 116 6 149 0 117 15 249 0 130 15 249 0 141 15 249 0 142 15 249 0 143 6 145 1 42 6 149 1 43 15 253 1 73 22 189 1 93 22 189 1 105 22 189 1 107 22 189 1 111 22 189 1 112 22 189 1 113] 
#[1 15 237 0 1 13 181 0 3 10 22 0 4 6 133 0 5 8 209 0 10 15 245 0 86 3 125 0 114 6 145 0 116 6 149 0 117 15 249 0 130 15 249 0 141 15 249 0 142 15 249 0 143 6 145 1 42 6 149 1 43 15 253 1 73 22 193 1 93 22 193 1 105 22 193 1 107 22 193 1 111 22 193 1 112 22 193 1 113] 
#[0 10 26 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 22 197 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 22 197 1 97 11 161 1 98 11 165 1 99 22 197 1 100 22 197 1 101 11 173 1 102 11 173 1 104] 
#[0 22 201 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 22 205 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 2 61 0 113 22 209 0 129] 
#[0 10 30 0 13 0 110] 
#[0 22 213 0 2] 
#[0 10 34 0 13 0 110] 
#[0 10 38 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 190 1 194] 
#[1 10 42 0 2 10 42 0 3 10 42 0 4 10 42 0 5 10 42 0 6 10 42 0 7 10 42 0 13 10 42 0 18 10 42 0 22 16 101 0 39 10 42 0 44 10 42 0 58 10 42 0 88 10 42 0 89 10 42 0 90 10 42 0 91 10 42 0 94 10 42 0 110 10 42 0 114 10 42 0 116 10 42 0 117] 
#[1 10 46 0 2 10 46 0 3 10 46 0 4 0 199 0 5 10 46 0 6 10 46 0 7 10 46 0 13 10 46 0 18 10 46 0 22 10 46 0 39 10 46 0 44 10 46 0 58 10 46 0 88 10 46 0 89 10 46 0 90 10 46 0 91 10 46 0 94 10 46 0 110 10 46 0 114 10 46 0 116 10 46 0 117 16 105 0 220] 
#[0 22 217 0 6] 
#[0 10 50 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 79 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[1 10 54 0 2 10 54 0 3 10 54 0 4 10 54 0 5 10 54 0 6 10 54 0 7 10 54 0 10 10 54 0 13 10 54 0 18 10 58 0 21 10 54 0 22 10 54 0 39 10 54 0 44 10 54 0 58 10 54 0 79 10 54 0 88 10 54 0 89 10 54 0 90 10 54 0 91 10 54 0 94 10 54 0 110 10 54 0 114 10 54 0 116 10 54 0 117] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 22 221 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 22 225 0 4] 
#[1 10 62 0 3 10 62 0 18 13 21 0 111 22 229 1 106] 
#[0 10 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 22 233 0 4] 
#[1 13 181 0 3 10 70 0 4 6 133 0 5 22 237 0 58 22 249 0 89 22 249 0 90 22 249 0 91 22 241 0 94 3 125 0 114 6 145 0 116 6 149 0 117 22 245 0 130 22 245 0 141 22 245 0 142 22 245 0 143 6 145 1 42 6 149 1 43 22 249 1 109 23 9 1 112 23 1 1 179 23 5 1 180 23 9 1 181 23 9 1 182 23 9 1 183] 
#[0 23 21 0 3] 
#[0 10 74 0 7 0 110] 
#[0 10 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 23 25 0 4] 
#[1 0 50 0 3 0 50 0 5 6 169 0 66 0 203 0 113 12 5 0 129 12 9 1 175 12 13 1 176 0 50 1 193] 
#[1 6 173 0 56 20 41 0 57 2 105 0 66 6 181 0 73 7 117 0 76 2 121 0 81 20 49 0 83 6 193 0 85 6 197 0 104 23 29 0 194 1 137 0 195 23 33 1 123 23 53 1 136 23 37 1 147 23 41 1 174 23 45 1 177 23 49 1 178 23 53 1 184 23 57 1 185] 
#[1 0 58 0 3 0 58 0 5 0 207 0 113 12 5 0 129 12 21 1 175 12 13 1 176 0 58 1 193] 
#[0 10 82 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 86 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 90 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 94 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 98 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 102 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 106 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 110 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 23 61 0 4] 
#[1 10 114 0 4 6 173 0 56 20 41 0 57 2 105 0 66 20 45 0 67 6 181 0 73 7 117 0 76 2 121 0 81 20 49 0 83 6 193 0 85 6 197 0 104 20 53 0 194 1 137 0 195 20 57 1 123 20 77 1 136 20 61 1 147 20 65 1 174 20 69 1 177 20 73 1 178 20 77 1 184 20 81 1 185 23 65 1 188] 
#[0 10 118 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 23 73 0 182 23 73 0 183 0 253 0 237 23 73 0 245 1 205 0 246 1 209 0 249 23 73 0 250 0 253 1 0 23 73 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 23 73 1 140 2 49 1 193] 
#[0 10 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 10 126 0 4 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 16 177 0 130 16 177 0 141 16 177 0 142 16 177 0 143 6 145 1 42 6 149 1 43 23 77 1 139] 
#[0 23 81 0 3] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 23 85 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 23 89 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 23 93 0 3] 
#[0 23 97 0 2] 
#[0 23 101 0 3] 
#[1 2 61 0 113 23 105 0 129] 
#[0 10 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 23 109 0 116 1 42] 
#[0 10 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 10 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 10 142 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 10 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 10 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 10 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 10 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 10 162 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 10 166 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 10 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 10 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 10 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 10 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 10 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193] 
#[0 10 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 23 113 0 7] 
#[1 10 194 0 3 10 194 0 7 13 21 0 111 23 117 1 106] 
#[0 10 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 23 121 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 23 125 0 2] 
#[0 23 129 0 4] 
#[0 10 202 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 10 206 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 23 133 0 6] 
#[0 10 210 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 10 214 0 2 0 4 0 6 0 110] 
#[0 10 218 0 2 0 4 0 6 0 110] 
#[0 10 222 0 2 0 4 0 6 0 110] 
#[0 23 137 0 3] 
#[0 23 141 0 2] 
#[0 23 145 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 23 149 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 23 153 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 23 157 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 13 21 0 111 23 161 1 106] 
#[1 2 122 0 2 8 33 0 22 10 226 0 111 8 37 0 145] 
#[1 2 126 0 2 8 33 0 22 10 230 0 111 8 45 0 145] 
#[0 23 165 0 2] 
#[1 13 21 0 111 23 169 1 106] 
#[0 23 173 0 2] 
#[0 23 177 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 18 5 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 23 181 1 10 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 23 185 0 3] 
#[0 23 189 0 2] 
#[0 23 193 0 3] 
#[0 10 234 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 194] 
#[1 23 197 0 116 23 201 0 117] 
#[0 23 205 0 2] 
#[0 10 238 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 23 209 0 7] 
#[1 23 213 0 7 8 33 0 22 23 217 0 145] 
#[1 23 221 0 3 23 225 0 7] 
#[0 10 242 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 10 246 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 23 229 0 7] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 23 233 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 10 250 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 23 237 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 15 237 0 1 23 241 0 7 8 209 0 10 8 33 0 22 13 21 0 111 23 245 0 145 15 253 1 73 23 249 1 106 23 253 1 107] 
#[0 10 254 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 11 2 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 11 6 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 24 1 0 7] 
#[1 24 5 0 7 8 33 0 22 24 9 0 145] 
#[1 24 13 0 3 24 17 0 7] 
#[0 11 10 0 3 0 110] 
#[0 24 21 0 7] 
#[0 24 25 0 3] 
#[0 24 29 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 24 33 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 24 37 0 2] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 41 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 24 45 0 3] 
#[0 24 49 0 2] 
#[0 24 53 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 57 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 24 61 0 4] 
#[0 11 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 65 0 186 24 65 0 189 24 65 0 190 24 65 0 191 24 65 0 198 24 65 0 212 24 65 0 213 24 65 0 214 24 65 0 215 24 65 0 218 24 65 0 219 24 65 0 221 24 65 0 222 24 65 0 223 24 65 0 228 24 65 0 230 24 65 0 231 24 65 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 69 0 186 24 69 0 189 24 69 0 190 24 69 0 191 24 69 0 198 24 69 0 212 24 69 0 213 24 69 0 214 24 69 0 215 24 69 0 218 24 69 0 219 24 69 0 221 24 69 0 222 24 69 0 223 24 69 0 228 24 69 0 230 24 69 0 231 24 69 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 24 73 0 2 6 61 0 110] 
#[1 0 29 0 1 24 77 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 24 81 0 182 24 81 0 183 24 81 0 185 0 253 0 237 24 81 0 245 1 205 0 246 1 209 0 249 24 81 0 250 0 253 1 0 24 81 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 24 85 0 7 6 61 0 110] 
#[0 24 89 0 2] 
#[1 24 93 0 2 6 61 0 110] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 97 0 186 24 97 0 189 24 97 0 190 24 97 0 191 24 97 0 198 24 97 0 212 24 97 0 213 24 97 0 214 24 97 0 215 24 97 0 218 24 97 0 219 24 97 0 221 24 97 0 222 24 97 0 223 24 97 0 228 24 97 0 230 24 97 0 231 24 97 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 101 0 186 24 101 0 189 24 101 0 190 24 101 0 191 24 101 0 198 24 101 0 212 24 101 0 213 24 101 0 214 24 101 0 215 24 101 0 218 24 101 0 219 24 101 0 221 24 101 0 222 24 101 0 223 24 101 0 228 24 101 0 230 24 101 0 231 24 101 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 105 0 186 24 105 0 189 24 105 0 190 24 105 0 191 24 105 0 198 24 105 0 212 24 105 0 213 24 105 0 214 24 105 0 215 24 105 0 218 24 105 0 219 24 105 0 221 24 105 0 222 24 105 0 223 24 105 0 228 24 105 0 230 24 105 0 231 24 105 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 24 109 0 2 6 61 0 110] 
#[1 0 29 0 1 24 113 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 24 117 0 182 24 117 0 183 24 117 0 185 0 253 0 237 24 117 0 245 1 205 0 246 1 209 0 249 24 117 0 250 0 253 1 0 24 117 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 11 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 121 0 186 24 121 0 189 24 121 0 190 24 121 0 191 24 121 0 198 24 121 0 212 24 121 0 213 24 121 0 214 24 121 0 215 24 121 0 218 24 121 0 219 24 121 0 221 24 121 0 222 24 121 0 223 24 121 0 228 24 121 0 230 24 121 0 231 24 121 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 125 0 186 24 125 0 189 24 125 0 190 24 125 0 191 24 125 0 198 24 125 0 212 24 125 0 213 24 125 0 214 24 125 0 215 24 125 0 218 24 125 0 219 24 125 0 221 24 125 0 222 24 125 0 223 24 125 0 228 24 125 0 230 24 125 0 231 24 125 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 24 129 0 2 6 61 0 110] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 133 0 186 24 133 0 189 24 133 0 190 24 133 0 191 24 133 0 198 24 133 0 212 24 133 0 213 24 133 0 214 24 133 0 215 24 133 0 218 24 133 0 219 24 133 0 221 24 133 0 222 24 133 0 223 24 133 0 228 24 133 0 230 24 133 0 231 24 133 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 137 0 186 24 137 0 189 24 137 0 190 24 137 0 191 24 137 0 198 24 137 0 212 24 137 0 213 24 137 0 214 24 137 0 215 24 137 0 218 24 137 0 219 24 137 0 221 24 137 0 222 24 137 0 223 24 137 0 228 24 137 0 230 24 137 0 231 24 137 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 24 141 0 182 24 141 0 183 0 253 0 237 24 141 0 245 1 205 0 246 1 209 0 249 24 141 0 250 0 253 1 0 24 141 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 24 145 0 2] 
#[0 24 149 0 2] 
#[0 24 153 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 157 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 24 161 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 24 165 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 169 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 173 0 186 24 173 0 189 24 173 0 190 24 173 0 191 24 173 0 198 24 173 0 212 24 173 0 213 24 173 0 214 24 173 0 215 24 173 0 218 24 173 0 219 24 173 0 221 24 173 0 222 24 173 0 223 24 173 0 228 24 173 0 230 24 173 0 231 24 173 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 11 22 0 2 0 110] 
#[0 11 26 0 13 0 110] 
#[0 11 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 18 253 0 109 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 19 1 0 182 19 1 0 183 0 253 0 237 19 1 0 245 1 205 0 246 1 209 0 249 19 1 0 250 0 253 1 0 19 1 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 11 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 24 177 0 182 24 177 0 183 24 177 0 185 0 253 0 237 24 177 0 245 1 205 0 246 1 209 0 249 24 177 0 250 0 253 1 0 24 177 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 24 181 0 111] 
#[1 24 185 0 4 22 69 0 54 22 73 0 62 24 189 0 226 24 193 0 227] 
#[0 11 38 0 4 0 54 0 62] 
#[1 24 197 0 4 22 69 0 54 24 201 0 225 22 81 0 226] 
#[1 5 21 0 3 24 205 0 191] 
#[0 24 209 0 8] 
#[1 6 61 0 110 11 42 0 122 11 42 0 123] 
#[1 11 77 0 125 24 213 1 50 24 213 1 51 24 213 1 52 11 93 1 53 11 97 1 54] 
#[0 11 46 0 4] 
#[0 11 50 0 4] 
#[1 0 98 0 4 24 217 1 68] 
#[0 24 221 0 4] 
#[0 11 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 190 1 192 1 193 1 194] 
#[0 24 225 0 13] 
#[0 11 58 0 3 0 124 0 126] 
#[0 11 62 0 3 0 8 0 13 0 125] 
#[0 11 66 0 3 0 8 0 13 0 125] 
#[0 11 70 0 3 0 8 0 13 0 125] 
#[0 11 74 0 3 0 8 0 13 0 125] 
#[0 24 229 0 3] 
#[1 0 10 0 4 24 233 1 67] 
#[1 11 105 0 1 15 217 0 3 15 221 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 15 225 0 129 3 49 0 201 3 49 0 202 3 49 0 203 17 125 0 209 17 125 0 210 11 145 1 73 17 165 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 17 165 1 100 17 165 1 101 11 173 1 102 11 173 1 104 8 189 1 193] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 24 237 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 24 237 1 100 24 237 1 101 11 173 1 102 11 173 1 104] 
#[1 10 194 0 3 10 194 0 4 10 194 0 7 10 194 0 110 13 21 0 111 24 241 1 106] 
#[0 24 245 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 24 249 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[0 11 78 0 4 0 7 0 110] 
#[0 11 82 0 4 0 7 0 110] 
#[0 24 253 0 2] 
#[0 11 86 0 4 0 7 0 110] 
#[0 11 90 0 4 0 7 0 110] 
#[0 11 94 0 6 0 110] 
#[0 25 1 0 18] 
#[0 25 5 0 2] 
#[0 11 98 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 21 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 25 9 0 18] 
#[0 11 102 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 39 0 44 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 25 13 0 4] 
#[0 11 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 11 110 0 3 0 18] 
#[0 11 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 25 17 0 1] 
#[1 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 25 21 0 130 25 21 0 141 25 21 0 142 25 21 0 143 6 145 1 42 6 149 1 43] 
#[1 15 237 0 1 25 25 0 7 8 209 0 10 13 21 0 111 15 253 1 73 25 29 1 106 25 33 1 107] 
#[1 6 133 0 5 25 37 0 94 3 125 0 114 6 145 0 116 6 149 0 117 25 41 0 130 25 41 0 141 25 41 0 142 25 41 0 143 6 145 1 42 6 149 1 43] 
#[0 11 118 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 25 45 0 4] 
#[1 13 181 0 3 11 122 0 4 6 133 0 5 22 237 0 58 22 249 0 89 22 249 0 90 22 249 0 91 22 241 0 94 3 125 0 114 6 145 0 116 6 149 0 117 22 245 0 130 22 245 0 141 22 245 0 142 22 245 0 143 6 145 1 42 6 149 1 43 22 249 1 109 25 49 1 112 25 49 1 181 25 49 1 182 25 49 1 183] 
#[0 11 126 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 11 130 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 11 134 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[1 13 181 0 3 10 70 0 4 6 133 0 5 22 237 0 58 22 249 0 89 22 249 0 90 22 249 0 91 22 241 0 94 3 125 0 114 6 145 0 116 6 149 0 117 22 245 0 130 22 245 0 141 22 245 0 142 22 245 0 143 6 145 1 42 6 149 1 43 22 249 1 109 23 9 1 112 25 53 1 179 23 5 1 180 23 9 1 181 23 9 1 182 23 9 1 183] 
#[0 11 138 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 11 142 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 146 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 150 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 154 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 158 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 162 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 166 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 170 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 11 178 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 182 0 4 0 110] 
#[0 11 186 0 4 0 110] 
#[0 11 190 0 4 0 110] 
#[1 13 181 0 3 0 211 0 4 6 133 0 5 8 225 0 7 3 105 0 25 6 137 0 51 22 237 0 58 3 113 0 74 22 249 0 89 22 249 0 90 22 249 0 91 3 117 0 93 25 57 0 94 3 125 0 114 6 145 0 116 6 149 0 117 25 61 0 130 25 61 0 141 25 61 0 142 25 61 0 143 8 249 0 252 8 249 0 254 8 249 1 3 8 249 1 7 13 245 1 16 8 245 1 17 8 249 1 18 6 145 1 42 6 149 1 43 22 249 1 109 23 9 1 112 8 249 1 116 8 249 1 117 23 1 1 179 23 5 1 180 23 9 1 181 23 9 1 182 23 9 1 183 8 253 1 193] 
#[0 25 65 0 2] 
#[0 25 69 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 157 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 25 73 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 25 77 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 81 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 10 58 0 7 0 21] 
#[0 25 85 0 2] 
#[0 11 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 215 0 3 11 198 0 7] 
#[0 25 89 0 4] 
#[1 0 219 0 3 11 202 0 7 13 21 0 111 25 93 1 106] 
#[1 0 223 0 1 11 206 0 3 11 206 0 4 0 223 0 5 0 223 0 7 11 106 0 8 11 106 0 9 11 106 0 10 11 106 0 11 11 106 0 12 11 106 0 13 11 106 0 14 11 106 0 15 11 106 0 16 11 106 0 17 11 106 0 19 11 106 0 20 11 106 0 21 11 106 0 22 11 106 0 23 11 106 0 24 11 106 0 25 11 106 0 26 11 106 0 27 11 106 0 28 11 106 0 29 11 106 0 30 11 106 0 31 11 106 0 32 11 106 0 33 0 223 0 34 0 223 0 35 0 223 0 36 0 223 0 37 11 206 0 38 11 106 0 39 11 106 0 40 11 106 0 41 11 106 0 42 11 106 0 43 11 106 0 44 11 106 0 45 11 106 0 46 11 206 0 47 11 106 0 48 11 106 0 49 11 206 0 51 11 206 0 52 11 206 0 53 11 206 0 56 11 206 0 57 11 206 0 59 11 206 0 60 11 206 0 61 11 206 0 63 11 206 0 64 11 206 0 66 11 206 0 67 11 206 0 69 11 206 0 71 11 206 0 73 11 206 0 75 11 206 0 76 11 106 0 77 11 106 0 80 11 206 0 81 11 206 0 83 11 206 0 85 11 206 0 86 11 206 0 87 11 206 0 92 11 206 0 95 11 206 0 96 11 206 0 98 11 206 0 99 11 206 0 100 11 206 0 101 11 206 0 102 11 206 0 103 11 206 0 104 11 206 0 105 11 206 0 106 11 206 0 107 11 206 0 108 11 106 0 110 11 206 0 113 11 206 0 116 11 206 0 117 11 206 0 118 0 223 0 120 0 223 0 121 11 206 0 124 11 106 1 190 11 106 1 192 0 223 1 193 11 206 1 194] 
#[0 11 210 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 157 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 25 97 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 25 101 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 18 5 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 25 105 1 10 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 25 109 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 113 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 25 117 0 4] 
#[0 25 121 0 3] 
#[1 13 21 0 111 25 125 1 106] 
#[0 11 214 0 2] 
#[1 25 129 0 3 13 21 0 111 25 133 1 106] 
#[0 11 218 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 25 137 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 141 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 25 145 1 6 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 25 149 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 18 5 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 25 153 1 10 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 25 157 0 2] 
#[0 25 161 0 2] 
#[1 25 165 0 3 25 169 0 7] 
#[0 11 222 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 11 226 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 25 173 0 7] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 177 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 11 230 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 11 234 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 25 181 0 4] 
#[0 25 185 0 2] 
#[0 11 238 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 25 189 0 7] 
#[1 25 193 0 7 8 33 0 22 25 197 0 145] 
#[1 25 201 0 3 25 205 0 7] 
#[0 11 242 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 11 246 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 25 209 0 7] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 213 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 11 250 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 11 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 18 5 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 25 217 1 10 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 25 221 0 3] 
#[0 25 225 0 2] 
#[0 25 229 0 3] 
#[0 25 233 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 157 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 25 237 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 25 241 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 245 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 25 249 0 4] 
#[0 11 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 25 253 0 186 25 253 0 189 25 253 0 190 25 253 0 191 25 253 0 198 25 253 0 212 25 253 0 213 25 253 0 214 25 253 0 215 25 253 0 218 25 253 0 219 25 253 0 221 25 253 0 222 25 253 0 223 25 253 0 228 25 253 0 230 25 253 0 231 25 253 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 1 0 186 26 1 0 189 26 1 0 190 26 1 0 191 26 1 0 198 26 1 0 212 26 1 0 213 26 1 0 214 26 1 0 215 26 1 0 218 26 1 0 219 26 1 0 221 26 1 0 222 26 1 0 223 26 1 0 228 26 1 0 230 26 1 0 231 26 1 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 26 5 0 2 6 61 0 110] 
#[1 0 29 0 1 26 9 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 26 13 0 182 26 13 0 183 26 13 0 185 0 253 0 237 26 13 0 245 1 205 0 246 1 209 0 249 26 13 0 250 0 253 1 0 26 13 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 17 0 186 26 17 0 189 26 17 0 190 26 17 0 191 26 17 0 198 26 17 0 212 26 17 0 213 26 17 0 214 26 17 0 215 26 17 0 218 26 17 0 219 26 17 0 221 26 17 0 222 26 17 0 223 26 17 0 228 26 17 0 230 26 17 0 231 26 17 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 21 0 186 26 21 0 189 26 21 0 190 26 21 0 191 26 21 0 198 26 21 0 212 26 21 0 213 26 21 0 214 26 21 0 215 26 21 0 218 26 21 0 219 26 21 0 221 26 21 0 222 26 21 0 223 26 21 0 228 26 21 0 230 26 21 0 231 26 21 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 12 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 25 0 186 26 25 0 189 26 25 0 190 26 25 0 191 26 25 0 198 26 25 0 212 26 25 0 213 26 25 0 214 26 25 0 215 26 25 0 218 26 25 0 219 26 25 0 221 26 25 0 222 26 25 0 223 26 25 0 228 26 25 0 230 26 25 0 231 26 25 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 29 0 186 26 29 0 189 26 29 0 190 26 29 0 191 26 29 0 198 26 29 0 212 26 29 0 213 26 29 0 214 26 29 0 215 26 29 0 218 26 29 0 219 26 29 0 221 26 29 0 222 26 29 0 223 26 29 0 228 26 29 0 230 26 29 0 231 26 29 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 26 33 0 2 6 61 0 110] 
#[0 12 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 37 0 186 26 37 0 189 26 37 0 190 26 37 0 191 26 37 0 198 26 37 0 212 26 37 0 213 26 37 0 214 26 37 0 215 26 37 0 218 26 37 0 219 26 37 0 221 26 37 0 222 26 37 0 223 26 37 0 228 26 37 0 230 26 37 0 231 26 37 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 12 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 26 41 0 2] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 45 0 186 26 45 0 189 26 45 0 190 26 45 0 191 26 45 0 198 26 45 0 212 26 45 0 213 26 45 0 214 26 45 0 215 26 45 0 218 26 45 0 219 26 45 0 221 26 45 0 222 26 45 0 223 26 45 0 228 26 45 0 230 26 45 0 231 26 45 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 49 0 186 26 49 0 189 26 49 0 190 26 49 0 191 26 49 0 198 26 49 0 212 26 49 0 213 26 49 0 214 26 49 0 215 26 49 0 218 26 49 0 219 26 49 0 221 26 49 0 222 26 49 0 223 26 49 0 228 26 49 0 230 26 49 0 231 26 49 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 12 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 12 42 0 4] 
#[0 26 53 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 157 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 26 57 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 26 61 0 4] 
#[0 12 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 6 61 0 110 26 65 0 111] 
#[1 0 29 0 1 0 33 0 3 12 50 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 12 50 0 54 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 26 69 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 12 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 58 0 4 0 54 0 62] 
#[1 26 73 0 4 22 69 0 54 26 77 0 225 22 81 0 226] 
#[0 12 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 26 81 0 4 22 69 0 54 24 189 0 226] 
#[0 12 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 12 70 0 13 26 85 1 71] 
#[1 12 70 0 13 26 89 1 71] 
#[0 26 93 0 4] 
#[0 12 74 0 3 0 124 0 126] 
#[0 12 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 26 97 0 182 26 97 0 183 0 253 0 237 26 97 0 245 1 205 0 246 1 209 0 249 26 97 0 250 0 253 1 0 26 97 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 26 101 0 4] 
#[0 12 82 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 11 198 0 3 0 4 0 7 0 110] 
#[1 12 86 0 4 12 86 0 7 12 86 0 110 13 21 0 111 26 105 1 106] 
#[0 26 109 0 2] 
#[1 11 202 0 3 11 202 0 4 11 202 0 7 11 202 0 110 13 21 0 111 26 113 1 106] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 26 117 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 26 117 1 100 26 117 1 101 11 173 1 102 11 173 1 104] 
#[0 26 121 0 18] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 26 125 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 26 125 1 100 26 125 1 101 11 173 1 102 11 173 1 104] 
#[0 12 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 26 129 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 15 237 0 1 26 133 0 7 8 209 0 10 13 21 0 111 15 253 1 73 26 137 1 106 26 141 1 107] 
#[0 12 94 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 26 145 0 7] 
#[0 26 149 0 7] 
#[1 6 133 0 5 3 125 0 114 6 145 0 116 6 149 0 117 26 153 0 130 26 153 0 141 26 153 0 142 26 153 0 143 6 145 1 42 6 149 1 43] 
#[1 15 237 0 1 26 157 0 7 8 209 0 10 13 21 0 111 15 253 1 73 26 161 1 106 26 165 1 107] 
#[0 12 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 102 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 26 169 0 4] 
#[1 6 133 0 5 3 105 0 25 6 137 0 51 3 113 0 74 3 117 0 93 3 125 0 114 6 145 0 116 6 149 0 117 26 173 0 130 26 173 0 141 26 173 0 142 26 173 0 143 13 169 0 252 13 169 0 254 13 169 1 3 13 169 1 7 6 145 1 42 6 149 1 43 13 169 1 116 13 169 1 117 6 153 1 193] 
#[1 26 177 0 1 25 25 0 7 8 209 0 10 13 21 0 111 15 253 1 73 25 29 1 106 25 33 1 107] 
#[1 23 101 0 3 10 194 0 7 13 21 0 111 24 241 1 106] 
#[1 0 227 0 1 12 106 0 3 12 106 0 4 0 227 0 5 0 227 0 7 12 38 0 8 12 38 0 9 12 38 0 10 12 38 0 11 12 38 0 12 12 38 0 13 12 38 0 14 12 38 0 15 12 38 0 16 12 38 0 17 12 38 0 19 12 38 0 20 12 38 0 21 12 38 0 22 12 38 0 23 12 38 0 24 12 38 0 25 12 38 0 26 12 38 0 27 12 38 0 28 12 38 0 29 12 38 0 30 12 38 0 31 12 38 0 32 12 38 0 33 0 227 0 34 0 227 0 35 0 227 0 36 0 227 0 37 12 106 0 38 12 38 0 39 12 38 0 40 12 38 0 41 12 38 0 42 12 38 0 43 12 38 0 44 12 38 0 45 12 38 0 46 12 106 0 47 12 38 0 48 12 38 0 49 12 106 0 51 12 106 0 52 12 106 0 53 12 106 0 56 12 106 0 57 12 106 0 59 12 106 0 60 12 106 0 61 12 106 0 63 12 106 0 64 12 106 0 66 12 106 0 67 12 106 0 69 12 106 0 71 12 106 0 73 12 106 0 75 12 106 0 76 12 38 0 77 12 38 0 80 12 106 0 81 12 106 0 83 12 106 0 85 12 106 0 86 12 106 0 87 12 106 0 92 12 106 0 95 12 106 0 96 12 106 0 98 12 106 0 99 12 106 0 100 12 106 0 101 12 106 0 102 12 106 0 103 12 106 0 104 12 106 0 105 12 106 0 106 12 106 0 107 12 106 0 108 12 38 0 110 12 106 0 113 12 106 0 116 12 106 0 117 12 106 0 118 0 227 0 120 0 227 0 121 12 106 0 124 12 38 1 190 12 38 1 192 0 227 1 193 12 106 1 194] 
#[0 26 181 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 157 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 26 185 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 26 189 0 4] 
#[0 26 193 0 7] 
#[1 0 231 0 1 12 110 0 3 12 110 0 4 0 231 0 5 0 231 0 7 12 90 0 8 12 90 0 9 12 90 0 10 12 90 0 11 12 90 0 12 12 90 0 13 12 90 0 14 12 90 0 15 12 90 0 16 12 90 0 17 12 90 0 19 12 90 0 20 12 90 0 21 12 90 0 22 12 90 0 23 12 90 0 24 12 90 0 25 12 90 0 26 12 90 0 27 12 90 0 28 12 90 0 29 12 90 0 30 12 90 0 31 12 90 0 32 12 90 0 33 0 231 0 34 0 231 0 35 0 231 0 36 0 231 0 37 12 110 0 38 12 90 0 39 12 90 0 40 12 90 0 41 12 90 0 42 12 90 0 43 12 90 0 44 12 90 0 45 12 90 0 46 12 110 0 47 12 90 0 48 12 90 0 49 12 110 0 51 12 110 0 52 12 110 0 53 12 110 0 56 12 110 0 57 12 110 0 59 12 110 0 60 12 110 0 61 12 110 0 63 12 110 0 64 12 110 0 66 12 110 0 67 12 110 0 69 12 110 0 71 12 110 0 73 12 110 0 75 12 110 0 76 12 90 0 77 12 90 0 80 12 110 0 81 12 110 0 83 12 110 0 85 12 110 0 86 12 110 0 87 12 110 0 92 12 110 0 95 12 110 0 96 12 110 0 98 12 110 0 99 12 110 0 100 12 110 0 101 12 110 0 102 12 110 0 103 12 110 0 104 12 110 0 105 12 110 0 106 12 110 0 107 12 110 0 108 12 90 0 110 12 110 0 113 12 110 0 116 12 110 0 117 12 110 0 118 0 231 0 120 0 231 0 121 12 110 0 124 12 90 1 190 12 90 1 192 0 231 1 193 12 110 1 194] 
#[1 0 235 0 3 12 114 0 7] 
#[0 26 197 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 141 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 26 201 1 6 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 26 205 0 4] 
#[0 12 118 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 26 209 0 4] 
#[0 12 122 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 26 213 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 26 217 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 26 221 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 26 225 0 3] 
#[0 12 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 12 130 0 4] 
#[0 26 229 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 141 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 26 233 1 6 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 26 237 0 4] 
#[1 13 21 0 111 26 241 1 106] 
#[1 13 21 0 111 26 245 1 106] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 26 249 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 12 134 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 12 138 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 26 253 0 4] 
#[0 12 142 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[1 27 1 0 3 27 5 0 7] 
#[0 12 146 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 12 150 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 27 9 0 7] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 27 13 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 12 154 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 12 158 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 27 17 0 4] 
#[0 27 21 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 141 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 27 25 1 6 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 27 29 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 18 5 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 27 33 1 10 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 12 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 27 37 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 157 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 27 41 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 27 45 0 4] 
#[0 12 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 162 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 166 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 27 49 0 186 27 49 0 189 27 49 0 190 27 49 0 191 27 49 0 198 27 49 0 212 27 49 0 213 27 49 0 214 27 49 0 215 27 49 0 218 27 49 0 219 27 49 0 221 27 49 0 222 27 49 0 223 27 49 0 228 27 49 0 230 27 49 0 231 27 49 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 27 53 0 186 27 53 0 189 27 53 0 190 27 53 0 191 27 53 0 198 27 53 0 212 27 53 0 213 27 53 0 214 27 53 0 215 27 53 0 218 27 53 0 219 27 53 0 221 27 53 0 222 27 53 0 223 27 53 0 228 27 53 0 230 27 53 0 231 27 53 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 27 57 0 2 6 61 0 110] 
#[0 12 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 27 61 0 186 27 61 0 189 27 61 0 190 27 61 0 191 27 61 0 198 27 61 0 212 27 61 0 213 27 61 0 214 27 61 0 215 27 61 0 218 27 61 0 219 27 61 0 221 27 61 0 222 27 61 0 223 27 61 0 228 27 61 0 230 27 61 0 231 27 61 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 12 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 27 65 0 186 27 65 0 189 27 65 0 190 27 65 0 191 27 65 0 198 27 65 0 212 27 65 0 213 27 65 0 214 27 65 0 215 27 65 0 218 27 65 0 219 27 65 0 221 27 65 0 222 27 65 0 223 27 65 0 228 27 65 0 230 27 65 0 231 27 65 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 12 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 12 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 27 69 0 4] 
#[0 12 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 12 206 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 12 206 0 54 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 12 206 0 62 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 27 73 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[1 0 29 0 1 0 33 0 3 12 210 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 12 210 0 54 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 6 157 0 186 6 157 0 189 6 157 0 190 6 157 0 191 6 157 0 193 6 157 0 194 1 137 0 195 6 157 0 198 6 157 0 212 6 157 0 213 6 157 0 214 6 157 0 215 6 157 0 218 6 157 0 219 6 157 0 221 6 157 0 222 6 157 0 223 6 157 0 228 6 157 0 230 6 157 0 231 6 157 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 12 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 27 77 0 4 22 69 0 54 24 189 0 226] 
#[0 12 218 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 27 81 0 13] 
#[0 27 85 0 13] 
#[0 12 222 0 3 0 124 0 126] 
#[1 0 10 0 4 27 89 1 67] 
#[0 12 226 0 3 0 8 0 13 0 125] 
#[0 12 230 0 4 0 7 0 110] 
#[1 12 234 0 4 12 234 0 7 12 234 0 110 13 21 0 111 27 93 1 106] 
#[0 12 114 0 3 0 4 0 7 0 110] 
#[0 12 238 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[1 11 105 0 1 11 109 0 3 11 113 0 5 8 209 0 10 11 117 0 78 11 121 0 82 11 125 0 86 11 129 0 98 11 133 0 103 11 137 0 105 2 61 0 113 13 129 0 129 11 145 1 73 27 97 1 80 11 161 1 81 11 165 1 82 11 165 1 83 11 173 1 84 11 173 1 85 11 173 1 86 11 173 1 87 11 189 1 88 11 193 1 89 11 173 1 90 11 173 1 94 11 173 1 95 11 161 1 98 11 165 1 99 27 97 1 100 27 97 1 101 11 173 1 102 11 173 1 104] 
#[0 12 242 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 27 101 0 2] 
#[0 12 246 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 27 105 0 7] 
#[0 27 109 0 7] 
#[0 12 250 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 12 254 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[1 15 237 0 1 27 113 0 7 8 209 0 10 13 21 0 111 15 253 1 73 27 117 1 106 27 121 1 107] 
#[0 13 2 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 27 125 0 7] 
#[0 27 129 0 7] 
#[0 13 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 26 177 0 1 26 133 0 7 8 209 0 10 13 21 0 111 15 253 1 73 26 137 1 106 26 141 1 107] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 185 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 13 97 0 238 27 133 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 189 1 193] 
#[1 0 239 0 1 13 10 0 3 13 10 0 4 0 239 0 5 0 239 0 7 12 198 0 8 12 198 0 9 12 198 0 10 12 198 0 11 12 198 0 12 12 198 0 13 12 198 0 14 12 198 0 15 12 198 0 16 12 198 0 17 12 198 0 19 12 198 0 20 12 198 0 21 12 198 0 22 12 198 0 23 12 198 0 24 12 198 0 25 12 198 0 26 12 198 0 27 12 198 0 28 12 198 0 29 12 198 0 30 12 198 0 31 12 198 0 32 12 198 0 33 0 239 0 34 0 239 0 35 0 239 0 36 0 239 0 37 13 10 0 38 12 198 0 39 12 198 0 40 12 198 0 41 12 198 0 42 12 198 0 43 12 198 0 44 12 198 0 45 12 198 0 46 13 10 0 47 12 198 0 48 12 198 0 49 13 10 0 51 13 10 0 52 13 10 0 53 13 10 0 56 13 10 0 57 13 10 0 59 13 10 0 60 13 10 0 61 13 10 0 63 13 10 0 64 13 10 0 66 13 10 0 67 13 10 0 69 13 10 0 71 13 10 0 73 13 10 0 75 13 10 0 76 12 198 0 77 12 198 0 80 13 10 0 81 13 10 0 83 13 10 0 85 13 10 0 86 13 10 0 87 13 10 0 92 13 10 0 95 13 10 0 96 13 10 0 98 13 10 0 99 13 10 0 100 13 10 0 101 13 10 0 102 13 10 0 103 13 10 0 104 13 10 0 105 13 10 0 106 13 10 0 107 13 10 0 108 12 198 0 110 13 10 0 113 13 10 0 116 13 10 0 117 13 10 0 118 0 239 0 120 0 239 0 121 13 10 0 124 12 198 1 190 12 198 1 192 0 239 1 193 13 10 1 194] 
#[0 27 137 0 4] 
#[1 0 243 0 1 13 14 0 3 13 14 0 4 0 243 0 5 0 243 0 7 12 202 0 8 12 202 0 9 12 202 0 10 12 202 0 11 12 202 0 12 12 202 0 13 12 202 0 14 12 202 0 15 12 202 0 16 12 202 0 17 12 202 0 19 12 202 0 20 12 202 0 21 12 202 0 22 12 202 0 23 12 202 0 24 12 202 0 25 12 202 0 26 12 202 0 27 12 202 0 28 12 202 0 29 12 202 0 30 12 202 0 31 12 202 0 32 12 202 0 33 0 243 0 34 0 243 0 35 0 243 0 36 0 243 0 37 13 14 0 38 12 202 0 39 12 202 0 40 12 202 0 41 12 202 0 42 12 202 0 43 12 202 0 44 12 202 0 45 12 202 0 46 13 14 0 47 12 202 0 48 12 202 0 49 13 14 0 51 13 14 0 52 13 14 0 53 13 14 0 56 13 14 0 57 13 14 0 59 13 14 0 60 13 14 0 61 13 14 0 63 13 14 0 64 13 14 0 66 13 14 0 67 13 14 0 69 13 14 0 71 13 14 0 73 13 14 0 75 13 14 0 76 12 202 0 77 12 202 0 80 13 14 0 81 13 14 0 83 13 14 0 85 13 14 0 86 13 14 0 87 13 14 0 92 13 14 0 95 13 14 0 96 13 14 0 98 13 14 0 99 13 14 0 100 13 14 0 101 13 14 0 102 13 14 0 103 13 14 0 104 13 14 0 105 13 14 0 106 13 14 0 107 13 14 0 108 12 202 0 110 13 14 0 113 13 14 0 116 13 14 0 117 13 14 0 118 0 243 0 120 0 243 0 121 13 14 0 124 12 202 1 190 12 202 1 192 0 243 1 193 13 14 1 194] 
#[0 13 18 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 13 22 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 27 141 0 4] 
#[0 13 26 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 13 30 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 27 145 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 27 149 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 27 153 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 27 157 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 13 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 27 161 0 4] 
#[0 13 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 13 42 0 3 0 4 0 5 0 7 0 58 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 13 46 0 3 0 4 0 5 0 7 0 58 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 27 165 0 4] 
#[0 13 50 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 27 169 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 13 54 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 13 58 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 27 173 0 4] 
#[0 13 62 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 13 66 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 27 177 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 117 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 141 0 243 15 125 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 27 181 1 6 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 27 185 0 4] 
#[0 13 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 27 189 0 4] 
#[0 13 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 13 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 13 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 27 193 0 186 27 193 0 189 27 193 0 190 27 193 0 191 27 193 0 198 27 193 0 212 27 193 0 213 27 193 0 214 27 193 0 215 27 193 0 218 27 193 0 219 27 193 0 221 27 193 0 222 27 193 0 223 27 193 0 228 27 193 0 230 27 193 0 231 27 193 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 13 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 13 82 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 13 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[1 0 29 0 1 0 33 0 3 13 90 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 13 90 0 54 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 13 90 0 62 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 6 157 0 186 6 157 0 189 6 157 0 190 6 157 0 191 6 157 0 193 6 157 0 194 1 137 0 195 6 157 0 198 6 157 0 212 6 157 0 213 6 157 0 214 6 157 0 215 6 157 0 218 6 157 0 219 6 157 0 221 6 157 0 222 6 157 0 223 6 157 0 228 6 157 0 230 6 157 0 231 6 157 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 193] 
#[0 13 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 13 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 125 1 190 1 192 1 193 1 194] 
#[0 13 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 190 1 192 1 193 1 194] 
#[0 27 197 0 4] 
#[0 13 106 0 4 0 7 0 110] 
#[0 13 110 0 2 0 3 0 4 0 5 0 6 0 7 0 13 0 18 0 22 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 27 201 0 7] 
#[0 13 114 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 118 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 122 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 27 205 0 7] 
#[0 27 209 0 7] 
#[0 13 126 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 130 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 0 247 0 2] 
#[1 0 251 0 1 13 134 0 3 13 134 0 4 0 251 0 5 0 251 0 7 13 86 0 8 13 86 0 9 13 86 0 10 13 86 0 11 13 86 0 12 13 86 0 13 13 86 0 14 13 86 0 15 13 86 0 16 13 86 0 17 13 86 0 19 13 86 0 20 13 86 0 21 13 86 0 22 13 86 0 23 13 86 0 24 13 86 0 25 13 86 0 26 13 86 0 27 13 86 0 28 13 86 0 29 13 86 0 30 13 86 0 31 13 86 0 32 13 86 0 33 0 251 0 34 0 251 0 35 0 251 0 36 0 251 0 37 13 134 0 38 13 86 0 39 13 86 0 40 13 86 0 41 13 86 0 42 13 86 0 43 13 86 0 44 13 86 0 45 13 86 0 46 13 134 0 47 13 86 0 48 13 86 0 49 13 134 0 51 13 134 0 52 13 134 0 53 13 134 0 56 13 134 0 57 13 134 0 59 13 134 0 60 13 134 0 61 13 134 0 63 13 134 0 64 13 134 0 66 13 134 0 67 13 134 0 69 13 134 0 71 13 134 0 73 13 134 0 75 13 134 0 76 13 86 0 77 13 86 0 80 13 134 0 81 13 134 0 83 13 134 0 85 13 134 0 86 13 134 0 87 13 134 0 92 13 134 0 95 13 134 0 96 13 134 0 98 13 134 0 99 13 134 0 100 13 134 0 101 13 134 0 102 13 134 0 103 13 134 0 104 13 134 0 105 13 134 0 106 13 134 0 107 13 134 0 108 13 86 0 110 13 134 0 113 13 134 0 116 13 134 0 117 13 134 0 118 0 251 0 120 0 251 0 121 13 134 0 124 13 86 1 190 13 86 1 192 0 251 1 193 13 134 1 194] 
#[0 13 138 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 13 142 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 27 213 0 4] 
#[0 13 146 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 27 217 0 4] 
#[0 13 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 190 1 192 1 193 1 194] 
#[0 13 154 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 27 221 0 4] 
#[0 13 158 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 13 162 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 27 225 0 4] 
#[0 13 166 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 13 134 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 13 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194] 
#[0 13 174 0 3 0 8 0 13 0 125] 
#[0 13 178 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 182 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 186 0 3 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 190 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 13 194 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 193] 
#[0 13 198 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 193] 
#[0 13 202 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 193 1 194]
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
