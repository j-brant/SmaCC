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
#[ 0 102 8 37] 
#[ 2 170 2 174] 
#[ 0 102 2 182] 
#[ 1 146 2 222] 
#[ 1 150 2 226] 
#[ 3 26 4 14] 
#[ 4 66 4 70] 
#[ 4 74 4 78] 
#[ 4 94 4 98] 
#[ 2 170 4 122] 
#[ 2 122 2 182] 
#[ 2 238 4 134] 
#[ 4 190 13 61] 
#[ 4 190 13 41] 
#[ 2 250 13 85] 
#[ 0 170 14 141] 
#[ 6 26 6 133] 
#[ 0 10 6 46] 
#[ 6 74 6 78] 
#[ 6 98 16 121] 
#[ 6 102 16 125] 
#[ 0 46 6 110] 
#[ 5 10 6 166] 
#[ 0 102 16 233] 
#[ 0 102 6 214] 
#[ 4 154 4 202] 
#[ 0 102 4 146] 
#[ 4 222 6 226] 
#[ 4 190 7 18] 
#[ 4 190 8 37] 
#[ 4 190 17 205] 
#[ 2 122 6 74] 
#[ 0 46 8 134] 
#[ 0 46 8 138] 
#[ 8 158 10 5] 
#[ 4 122 8 90] 
#[ 10 58 16 125] 
#[ 0 46 10 62] 
#[ 0 50 2 61] 
#[ 0 58 2 61] 
#[ 10 86 14 5] 
#[ 10 10 11 214] 
#[ 10 78 11 218] 
#[ 11 122 11 222] 
#[ 12 54 12 122] 
#[ 12 106 12 126] 
#[ 11 126 12 130] 
#[ 12 214 13 26] 
#[ 12 218 13 30] 
#[ 2 150 22 189] 
#[ 13 102 13 150]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2020-03-12T14:35:47.130078-05:00'
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
	#(147 0 #reduceActionForStartTemplateLiteral1: 12065793 true ) 
	#(323 0 #reduceActionForSwitchToJSX1: 40980481 true ) 
	#(277 0 #reduceActionForModule1: 35730433 false ) 
	#(275 0 #reduceActionForScript1: 35672065 false ) 
	#(409 0 #reduceActionForImplementationScript1: 55810049 false ) 
	#(413 0 #reduceActionForImplementationScript1: 56352769 false ) 
	#(420 0 #reduceActionForImplementationScript1: 57191425 false ) 
	#(417 0 #reduceActionForImplementationScript1: 56750081 false ) 
	#(239 0 #reduceActionForFormalParameters1: 30771201 false ) 
	#(212 1 #reduceActionForEmptyStatement1: 25129985 false ) 
	#(220 0 #reduceActionForCheckEOL1: 28618753 true ) 
	#(195 1 #liftFirstValue: 22789122 false ) 
	#(297 1 #liftFirstValue: 38335490 false ) 
	#(195 1 #liftFirstValue: 22789121 false ) 
	#(296 1 #liftFirstValue: 38311937 false ) 
	#(131 1 #reduceActionForPrimaryExpression1: 8895489 false ) 
	#(297 1 #liftFirstValue: 38335489 false ) 
	#(258 1 #reduceActionForYieldExpression1: 33249281 false ) 
	#(129 1 #reduceActionForIdentifier1: 8600577 false ) 
	#(298 1 #liftFirstValue: 38372353 false ) 
	#(299 1 #liftFirstValue: 38400001 false ) 
	#(300 1 #reduceActionForRegularExpressionLiteral1: 38429697 false ) 
	#(146 1 #reduceActionForTemplateLiteral1: 11910145 false ) 
	#(324 0 #reduceActionForSwitchToJSXText1: 41021441 true ) 
	#(131 1 #liftFirstValue: 8895490 false ) 
	#(246 1 #reduceActionForArrowParameters1: 31327233 false ) 
	#(150 1 #liftFirstValue: 12336129 false ) 
	#(131 1 #liftFirstValue: 8895501 false ) 
	#(131 1 #liftFirstValue: 8895491 false ) 
	#(131 1 #liftFirstValue: 8895492 false ) 
	#(131 1 #liftFirstValue: 8895493 false ) 
	#(131 1 #liftFirstValue: 8895500 false ) 
	#(154 1 #liftFirstValue: 13234177 false ) 
	#(150 1 #liftFirstValue: 12336133 false ) 
	#(150 1 #liftFirstValue: 12336134 false ) 
	#(152 1 #liftFirstValue: 13103105 false ) 
	#(164 1 #liftFirstValue: 15326209 false ) 
	#(164 1 #liftFirstValue: 15326210 false ) 
	#(155 1 #liftFirstValue: 13324290 false ) 
	#(155 1 #liftFirstValue: 13324291 false ) 
	#(164 1 #liftFirstValue: 15326211 false ) 
	#(165 1 #liftFirstValue: 15408129 false ) 
	#(166 1 #liftFirstValue: 15776769 false ) 
	#(167 1 #liftFirstValue: 16229377 false ) 
	#(168 1 #liftFirstValue: 16399361 false ) 
	#(170 1 #liftFirstValue: 16659457 false ) 
	#(171 1 #liftFirstValue: 16957441 false ) 
	#(172 1 #liftFirstValue: 17342465 false ) 
	#(173 1 #liftFirstValue: 18080769 false ) 
	#(174 1 #liftFirstValue: 18611201 false ) 
	#(175 1 #liftFirstValue: 18775041 false ) 
	#(176 1 #liftFirstValue: 18942977 false ) 
	#(177 1 #liftFirstValue: 19109889 false ) 
	#(180 1 #liftFirstValue: 19607554 false ) 
	#(178 1 #liftFirstValue: 19279873 false ) 
	#(181 1 #liftFirstValue: 19681281 false ) 
	#(181 1 #liftFirstValue: 19681282 false ) 
	#(180 1 #liftFirstValue: 19607553 false ) 
	#(182 1 #liftFirstValue: 19755009 false ) 
	#(183 1 #liftFirstValue: 19982337 false ) 
	#(185 1 #liftFirstValue: 21709825 false ) 
	#(193 1 #liftFirstValue: 22632449 false ) 
	#(186 1 #liftFirstValue: 21861382 false ) 
	#(186 1 #liftFirstValue: 21861377 false ) 
	#(190 1 #liftFirstValue: 22412289 false ) 
	#(280 1 #liftFirstValue: 35863555 false ) 
	#(193 1 #liftFirstValue: 22632450 false ) 
	#(186 1 #liftFirstValue: 21861378 false ) 
	#(186 1 #liftFirstValue: 21861379 false ) 
	#(186 1 #liftFirstValue: 21861380 false ) 
	#(186 1 #liftFirstValue: 21861381 false ) 
	#(189 1 #liftFirstValue: 22349825 false ) 
	#(186 1 #liftFirstValue: 21861383 false ) 
	#(186 1 #liftFirstValue: 21861384 false ) 
	#(186 1 #liftFirstValue: 21861385 false ) 
	#(186 1 #liftFirstValue: 21861386 false ) 
	#(189 1 #liftFirstValue: 22349826 false ) 
	#(186 1 #liftFirstValue: 21861387 false ) 
	#(186 1 #liftFirstValue: 21861388 false ) 
	#(186 1 #liftFirstValue: 21861389 false ) 
	#(186 1 #liftFirstValue: 21861390 false ) 
	#(131 1 #liftFirstValue: 8895494 false ) 
	#(183 1 #liftFirstValue: 19982339 false ) 
	#(246 1 #reduceActionForArrowParameters2: 31327234 false ) 
	#(183 1 #liftFirstValue: 19982340 false ) 
	#(131 1 #liftFirstValue: 8895496 false ) 
	#(183 1 #liftFirstValue: 19982338 false ) 
	#(131 1 #liftFirstValue: 8895498 false ) 
	#(131 1 #liftFirstValue: 8895497 false ) 
	#(166 1 #liftFirstValue: 15776777 false ) 
	#(131 1 #liftFirstValue: 8895495 false ) 
	#(128 1 #liftFirstValue: 8487937 false ) 
	#(277 1 #reduceActionForModule2: 35730434 false ) 
	#(278 1 #reduceActionForModuleBody1: 35759105 false ) 
	#(279 1 #reduceActionForModuleItemList1: 35789825 false ) 
	#(280 1 #liftFirstValue: 35863553 false ) 
	#(280 1 #liftFirstValue: 35863554 false ) 
	#(133 1 #reduceActionForLiteral1: 9996289 false ) 
	#(133 1 #reduceActionForLiteral2: 9996290 false ) 
	#(133 1 #reduceActionForLiteral4: 9996292 false ) 
	#(133 1 #reduceActionForLiteral3: 9996291 false ) 
	#(131 1 #liftFirstValue: 8895499 false ) 
	#(131 1 #liftFirstValue: 8895502 false ) 
	#(301 1 #liftFirstValue: 38681601 false ) 
	#(325 0 #reduceActionForStartJSXText1: 41070593 true ) 
	#(131 1 #liftFirstValue: 8895503 false ) 
	#(276 1 #reduceActionForModuleBody1: 35700737 false ) 
	#(192 1 #reduceActionForModuleItemList1: 22535169 false ) 
	#(275 1 #reduceActionForScript2: 35672066 false ) 
	#(412 1 #liftFirstValue: 56092673 false ) 
	#(412 1 #liftFirstValue: 56092674 false ) 
	#(412 1 #liftFirstValue: 56092675 false ) 
	#(412 1 #liftFirstValue: 56092676 false ) 
	#(412 1 #liftFirstValue: 56092677 false ) 
	#(419 1 #liftFirstValue: 56949762 false ) 
	#(422 1 #liftFirstValue: 57372674 false ) 
	#(412 1 #liftFirstValue: 56092679 false ) 
	#(416 1 #liftFirstValue: 56610818 false ) 
	#(412 1 #liftFirstValue: 56092678 false ) 
	#(416 1 #liftFirstValue: 56610817 false ) 
	#(412 1 #liftFirstValue: 56092680 false ) 
	#(412 1 #liftFirstValue: 56092681 false ) 
	#(416 1 #liftFirstValue: 56610819 false ) 
	#(412 1 #liftFirstValue: 56092683 false ) 
	#(419 1 #liftFirstValue: 56949763 false ) 
	#(416 1 #liftFirstValue: 56610821 false ) 
	#(406 1 #reduceActionForSourceFile1: 55569409 false ) 
	#(406 1 #reduceActionForSourceFile1: 55569410 false ) 
	#(407 1 #reduceActionForModuleBody1: 55669761 false ) 
	#(409 1 #reduceActionForModuleBody1: 55810050 false ) 
	#(410 1 #reduceActionForModuleItemList1: 55866369 false ) 
	#(411 1 #liftFirstValue: 56009729 false ) 
	#(419 1 #liftFirstValue: 56949761 false ) 
	#(408 1 #reduceActionForModuleBody1: 55744513 false ) 
	#(413 1 #reduceActionForModuleBody1: 56352770 false ) 
	#(414 1 #reduceActionForModuleItemList1: 56402945 false ) 
	#(415 1 #liftFirstValue: 56534017 false ) 
	#(422 1 #liftFirstValue: 57372673 false ) 
	#(407 1 #reduceActionForModuleBody1: 55669762 false ) 
	#(417 1 #reduceActionForModuleBody1: 56750082 false ) 
	#(418 1 #reduceActionForModuleItemList1: 56806401 false ) 
	#(408 1 #reduceActionForModuleBody1: 55744514 false ) 
	#(420 1 #reduceActionForModuleBody1: 57191426 false ) 
	#(421 1 #reduceActionForModuleItemList1: 57241601 false ) 
	#(419 1 #liftFirstValue: 56949764 false ) 
	#(419 1 #liftFirstValue: 56949765 false ) 
	#(422 1 #liftFirstValue: 57372675 false ) 
	#(419 1 #liftFirstValue: 56949766 false ) 
	#(422 1 #liftFirstValue: 57372676 false ) 
	#(419 1 #liftFirstValue: 56949767 false ) 
	#(422 1 #liftFirstValue: 57372677 false ) 
	#(419 1 #liftFirstValue: 56949768 false ) 
	#(422 1 #liftFirstValue: 57372678 false ) 
	#(412 1 #liftFirstValue: 56092682 false ) 
	#(416 1 #liftFirstValue: 56610820 false ) 
	#(411 1 #liftFirstValue: 56009730 false ) 
	#(415 1 #liftFirstValue: 56534018 false ) 
	#(210 1 #reduceActionForSingleNameBinding1: 24861697 false ) 
	#(209 1 #reduceActionForSingleNameBinding1: 24757250 false ) 
	#(201 1 #liftFirstValue: 23465985 false ) 
	#(201 1 #liftFirstValue: 23465986 false ) 
	#(242 1 #liftFirstValue: 31140865 false ) 
	#(209 1 #liftFirstValue: 24757249 false ) 
	#(241 1 #liftFirstValue: 31094785 false ) 
	#(238 1 #reduceActionForModuleBody1: 30726145 false ) 
	#(239 1 #reduceActionForFormalParameters3: 30771203 false ) 
	#(239 1 #reduceActionForFormalParameters2: 30771202 false ) 
	#(240 1 #reduceActionForFormalParameterList1: 30972929 false ) 
	#(365 0 #nil 45417476 false ) 
	#(138 2 #reduceActionForObjectLiteral1: 10811393 false ) 
	#(191 2 #reduceActionForBlock1: 22437889 false ) 
	#(130 1 #reduceActionForIdentifier1: 8794113 false ) 
	#(140 1 #liftFirstValue: 11203585 false ) 
	#(142 1 #liftFirstValue: 11514881 false ) 
	#(139 1 #reduceActionForFormalParameterList1: 11068417 false ) 
	#(141 1 #liftFirstValue: 11452417 false ) 
	#(141 1 #liftFirstValue: 11452418 false ) 
	#(140 1 #liftFirstValue: 11203586 false ) 
	#(140 1 #liftFirstValue: 11203588 false ) 
	#(252 1 #liftFirstValue: 31873026 false ) 
	#(252 1 #liftFirstValue: 31873028 false ) 
	#(252 1 #liftFirstValue: 31873027 false ) 
	#(142 1 #reduceActionForIdentifier1: 11514882 false ) 
	#(142 1 #reduceActionForIdentifier1: 11514883 false ) 
	#(252 1 #liftFirstValue: 31873032 false ) 
	#(252 1 #liftFirstValue: 31873033 false ) 
	#(134 2 #reduceActionForArrayLiteral1: 10178561 false ) 
	#(136 1 #reduceActionForModuleItemList1: 10657793 false ) 
	#(135 1 #reduceActionForFormalParameterList1: 10439683 false ) 
	#(135 1 #reduceActionForFormalParameterList1: 10439681 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15776773 false ) 
	#(165 2 #reduceActionForUpdateExpression4: 15408132 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15776774 false ) 
	#(165 2 #reduceActionForUpdateExpression4: 15408133 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15776775 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15776776 false ) 
	#(267 2 #reduceActionForAwaitExpression1: 34975745 false ) 
	#(269 2 #reduceActionForClassExpression1: 35148801 false ) 
	#(235 2 #reduceActionForDebuggerStatement1: 30217217 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15776770 false ) 
	#(292 1 #reduceActionForExportFromClause1: 37762049 false ) 
	#(291 2 #reduceActionForExportDeclaration4: 37078020 false ) 
	#(187 1 #liftFirstValue: 22145025 false ) 
	#(187 1 #liftFirstValue: 22145027 false ) 
	#(291 2 #reduceActionForExportDeclaration3: 37078019 false ) 
	#(188 1 #liftFirstValue: 22223873 false ) 
	#(188 1 #liftFirstValue: 22223874 false ) 
	#(188 1 #liftFirstValue: 22223876 false ) 
	#(188 1 #liftFirstValue: 22223875 false ) 
	#(187 1 #liftFirstValue: 22145026 false ) 
	#(292 1 #reduceActionForExportFromClause3: 37762051 false ) 
	#(290 1 #liftFirstValue: 37043201 false ) 
	#(282 1 #reduceActionForImportClause1: 36110337 false ) 
	#(282 1 #reduceActionForImportClause1: 36110338 false ) 
	#(282 1 #reduceActionForImportClause1: 36110339 false ) 
	#(283 1 #liftFirstValue: 36363265 false ) 
	#(289 1 #liftFirstValue: 37001217 false ) 
	#(154 2 #reduceActionForNewExpression2: 13234178 false ) 
	#(156 2 #reduceActionForSuperCall1: 13807617 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15776772 false ) 
	#(200 1 #reduceActionForSingleNameBinding1: 23305217 false ) 
	#(199 1 #reduceActionForFormalParameterList1: 23169025 false ) 
	#(166 2 #reduceActionForUnaryExpression5: 15776771 false ) 
	#(258 2 #reduceActionForYieldExpression2: 33249282 false ) 
	#(150 2 #reduceActionForMemberExpression4: 12336132 false ) 
	#(155 2 #reduceActionForCallExpression1: 13324289 false ) 
	#(160 2 #reduceActionForOptionalExpression1: 14472193 false ) 
	#(155 2 #reduceActionForMemberExpression4: 13324295 false ) 
	#(155 2 #reduceActionForCallExpression1: 13324292 false ) 
	#(160 2 #reduceActionForOptionalExpression1: 14472194 false ) 
	#(160 2 #reduceActionForOptionalExpression1: 14472195 false ) 
	#(184 1 #liftFirstValue: 20187139 false ) 
	#(184 1 #liftFirstValue: 20187143 false ) 
	#(184 1 #liftFirstValue: 20187144 false ) 
	#(184 1 #liftFirstValue: 20187145 false ) 
	#(184 1 #liftFirstValue: 20187137 false ) 
	#(184 1 #liftFirstValue: 20187138 false ) 
	#(184 1 #liftFirstValue: 20187140 false ) 
	#(184 1 #liftFirstValue: 20187146 false ) 
	#(184 1 #liftFirstValue: 20187147 false ) 
	#(184 1 #liftFirstValue: 20187148 false ) 
	#(184 1 #liftFirstValue: 20187142 false ) 
	#(184 1 #liftFirstValue: 20187141 false ) 
	#(165 2 #reduceActionForUpdateExpression2: 15408130 false ) 
	#(165 2 #reduceActionForUpdateExpression2: 15408131 false ) 
	#(184 1 #liftFirstValue: 20187149 false ) 
	#(169 1 #liftFirstValue: 16602114 false ) 
	#(169 1 #liftFirstValue: 16602113 false ) 
	#(169 1 #liftFirstValue: 16602115 false ) 
	#(213 2 #reduceActionForExpressionStatement1: 25180161 false ) 
	#(197 1 #reduceActionForSingleNameBinding1: 22919169 false ) 
	#(196 1 #reduceActionForFormalParameterList1: 22820865 false ) 
	#(197 1 #liftFirstValue: 22919172 false ) 
	#(197 1 #liftFirstValue: 22919173 false ) 
	#(279 2 #reduceActionForModuleItemList2: 35789826 false ) 
	#(320 0 #reduceActionForImplementationScript1: 40666113 false ) 
	#(249 2 #reduceActionForArrowFormalParameters2: 31557634 false ) 
	#(192 2 #reduceActionForModuleItemList2: 22535170 false ) 
	#(268 2 #reduceActionForClassExpression1: 35052545 false ) 
	#(441 1 #liftFirstValue: 62082049 false ) 
	#(430 2 #reduceActionForAmbientDeclaration1: 60010497 false ) 
	#(430 2 #reduceActionForAmbientDeclaration1: 60010498 false ) 
	#(430 2 #reduceActionForAmbientDeclaration1: 60010499 false ) 
	#(430 2 #reduceActionForAmbientDeclaration1: 60010500 false ) 
	#(430 2 #reduceActionForAmbientDeclaration1: 60010501 false ) 
	#(424 2 #reduceActionForExportImplementationElement2: 57827330 false ) 
	#(424 2 #reduceActionForExportImplementationElement2: 57827329 false ) 
	#(424 2 #reduceActionForExportImplementationElement2: 57827331 false ) 
	#(424 2 #reduceActionForExportImplementationElement2: 57827332 false ) 
	#(424 2 #reduceActionForExportImplementationElement2: 57827333 false ) 
	#(424 2 #reduceActionForExportImplementationElement2: 57827339 false ) 
	#(424 2 #reduceActionForExportImplementationElement2: 57827335 false ) 
	#(425 2 #reduceActionForExportDeclarationElement2: 58569730 false ) 
	#(424 2 #reduceActionForExportImplementationElement2: 57827334 false ) 
	#(425 2 #reduceActionForExportDeclarationElement2: 58569729 false ) 
	#(424 2 #reduceActionForExportImplementationElement2: 57827336 false ) 
	#(424 2 #reduceActionForExportImplementationElement2: 57827337 false ) 
	#(425 2 #reduceActionForExportDeclarationElement2: 58569732 false ) 
	#(424 2 #reduceActionForExportImplementationElement2: 57827338 false ) 
	#(425 2 #reduceActionForExportDeclarationElement2: 58569731 false ) 
	#(399 1 #reduceActionForFormalParameterList1: 54055937 false ) 
	#(410 2 #reduceActionForModuleItemList2: 55866370 false ) 
	#(414 2 #reduceActionForModuleItemList2: 56402946 false ) 
	#(418 2 #reduceActionForModuleItemList2: 56806402 false ) 
	#(421 2 #reduceActionForModuleItemList2: 57241602 false ) 
	#(202 2 #reduceActionForObjectBindingPattern1: 23529473 false ) 
	#(205 1 #reduceActionForFormalParameterList1: 24354817 false ) 
	#(208 1 #liftFirstValue: 24643585 false ) 
	#(203 2 #reduceActionForArrayBindingPattern1: 23917569 false ) 
	#(206 1 #reduceActionForBindingElementList1: 24473601 false ) 
	#(207 1 #reduceActionForBindingElisionElement1: 24582145 false ) 
	#(211 2 #reduceActionForBindingRestElement1: 24947713 false ) 
	#(211 2 #reduceActionForBindingRestElement1: 24947714 false ) 
	#(210 2 #reduceActionForSingleNameBinding2: 24861698 false ) 
	#(132 3 #reduceActionForParenthesizedExpression1: 9261057 false ) 
	#(209 2 #reduceActionForSingleNameBinding2: 24757251 false ) 
	#(249 3 #reduceActionForArrowFormalParameters1: 31557633 false ) 
	#(239 2 #reduceActionForFormalParameters4: 30771204 false ) 
	#(366 1 #liftFirstValue: 46760962 false ) 
	#(366 1 #liftFirstValue: 46760963 false ) 
	#(366 1 #liftFirstValue: 46760961 false ) 
	#(365 1 #reduceActionForIdentifier1: 45417474 false ) 
	#(365 1 #liftFirstValue: 45417473 false ) 
	#(365 1 #liftFirstValue: 45417475 false ) 
	#(140 2 #reduceActionForPropertyDefinition5: 11203589 false ) 
	#(144 2 #reduceActionForCoverInitializedName1: 11762689 false ) 
	#(138 3 #reduceActionForObjectLiteral2: 10811394 false ) 
	#(191 3 #reduceActionForBlock2: 22437890 false ) 
	#(137 2 #reduceActionForSpreadElement1: 10713089 false ) 
	#(134 3 #reduceActionForArrayLiteral3: 10178563 false ) 
	#(134 3 #reduceActionForArrayLiteral2: 10178562 false ) 
	#(136 2 #reduceActionForModuleItemList2: 10657794 false ) 
	#(135 2 #reduceActionForElementList4: 10439684 false ) 
	#(135 2 #reduceActionForElementList4: 10439682 false ) 
	#(219 3 #reduceActionForBreakStatement1: 28511233 false ) 
	#(270 2 #reduceActionForClassTail1: 35228673 false ) 
	#(274 1 #reduceActionForEmptyStatement1: 35521539 false ) 
	#(274 1 #liftFirstValue: 35521537 false ) 
	#(272 1 #reduceActionForModuleBody1: 35401729 false ) 
	#(273 1 #reduceActionForModuleItemList1: 35433473 false ) 
	#(271 2 #reduceActionForClassHeritage1: 35320833 false ) 
	#(269 3 #reduceActionForClassExpression2: 35148802 false ) 
	#(271 2 #reduceActionForClassHeritage2: 35320834 false ) 
	#(218 3 #reduceActionForContinueStatement1: 28396545 false ) 
	#(293 2 #reduceActionForNamedExports1: 37869569 false ) 
	#(295 1 #reduceActionForExportSpecifier1: 38190081 false ) 
	#(294 1 #reduceActionForFormalParameterList1: 38085633 false ) 
	#(291 3 #reduceActionForExportDeclaration2: 37078018 false ) 
	#(187 2 #liftSecondValue: 22145029 false ) 
	#(187 2 #liftSecondValue: 22145028 false ) 
	#(187 2 #liftSecondValue: 22145030 false ) 
	#(285 2 #reduceActionForNamedImports1: 36488193 false ) 
	#(287 1 #reduceActionForFormalParameterList1: 36770817 false ) 
	#(288 1 #reduceActionForImportSpecifier1: 36875265 false ) 
	#(281 3 #reduceActionForImportDeclaration2: 35938306 false ) 
	#(153 3 #reduceActionForNewTarget1: 13130753 false ) 
	#(150 3 #reduceActionForMemberExpression7: 12336135 false ) 
	#(221 3 #reduceActionForReturnStatement1: 28653569 false ) 
	#(158 2 #reduceActionForArguments1: 14018561 false ) 
	#(159 1 #reduceActionForArgumentList1: 14203905 false ) 
	#(151 3 #reduceActionForSuperProperty2: 12837890 false ) 
	#(230 3 #reduceActionForThrowStatement1: 29670401 false ) 
	#(231 3 #reduceActionForTryStatement1: 29766657 false ) 
	#(231 3 #reduceActionForTryStatement2: 29766658 false ) 
	#(200 2 #reduceActionForSingleNameBinding2: 23305218 false ) 
	#(198 3 #reduceActionForVariableStatement1: 23073793 false ) 
	#(200 2 #reduceActionForVariableDeclaration3: 23305219 false ) 
	#(200 2 #liftSecondValue: 23305220 false ) 
	#(200 2 #liftSecondValue: 23305221 false ) 
	#(258 3 #reduceActionForYieldExpression3: 33249283 false ) 
	#(229 1 #liftFirstValue: 29576193 false ) 
	#(228 3 #reduceActionForLabelledStatement1: 29476865 false ) 
	#(150 3 #reduceActionForMemberExpression3: 12336131 false ) 
	#(163 1 #reduceActionForOptionalFirst3: 15060995 false ) 
	#(163 1 #reduceActionForOptionalFirst4: 15060996 false ) 
	#(163 1 #reduceActionForOptionalFirst1: 15060993 false ) 
	#(161 2 #reduceActionForOptionalChain1: 14650369 false ) 
	#(162 1 #reduceActionForOptionalFirst4: 14773252 false ) 
	#(162 1 #reduceActionForOptionalFirst1: 14773249 false ) 
	#(161 2 #reduceActionForOptionalChain2: 14650370 false ) 
	#(155 3 #reduceActionForMemberExpression3: 13324294 false ) 
	#(183 3 #reduceActionForAssignmentExpression5: 19982341 false ) 
	#(167 3 #reduceActionForExponentiationExpression2: 16229378 false ) 
	#(168 3 #reduceActionForExponentiationExpression2: 16399362 false ) 
	#(170 3 #reduceActionForExponentiationExpression2: 16659458 false ) 
	#(170 3 #reduceActionForExponentiationExpression2: 16659459 false ) 
	#(171 3 #reduceActionForExponentiationExpression2: 16957442 false ) 
	#(171 3 #reduceActionForExponentiationExpression2: 16957443 false ) 
	#(171 3 #reduceActionForExponentiationExpression2: 16957444 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 17342466 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 17342467 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 17342468 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 17342469 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 17342471 false ) 
	#(172 3 #reduceActionForExponentiationExpression2: 17342470 false ) 
	#(173 3 #reduceActionForExponentiationExpression2: 18080770 false ) 
	#(173 3 #reduceActionForExponentiationExpression2: 18080772 false ) 
	#(173 3 #reduceActionForExponentiationExpression2: 18080771 false ) 
	#(173 3 #reduceActionForExponentiationExpression2: 18080773 false ) 
	#(174 3 #reduceActionForExponentiationExpression2: 18611202 false ) 
	#(175 3 #reduceActionForExponentiationExpression2: 18775042 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 18942978 false ) 
	#(177 3 #reduceActionForExponentiationExpression2: 19109890 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 19279874 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 19449857 false ) 
	#(185 3 #reduceActionForExpression2: 21709826 false ) 
	#(197 2 #reduceActionForSingleNameBinding2: 22919170 false ) 
	#(194 3 #reduceActionForLexicalDeclaration1: 22700033 false ) 
	#(197 2 #reduceActionForVariableDeclaration3: 22919171 false ) 
	#(244 0 #reduceActionForImplementationScript1: 31217665 false ) 
	#(248 1 #liftFirstValue: 31516673 false ) 
	#(245 3 #reduceActionForArrowFunction1: 31259649 false ) 
	#(247 1 #reduceActionForConciseBody1: 31401985 false ) 
	#(328 0 #reduceActionForSwitchToDefault1: 41232385 true ) 
	#(319 1 #reduceActionForModuleBody1: 40651777 false ) 
	#(306 1 #reduceActionForJSXElementName1: 39507969 false ) 
	#(306 1 #liftFirstValue: 39507970 false ) 
	#(306 1 #liftFirstValue: 39507971 false ) 
	#(310 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 39834625 false ) 
	#(361 1 #reduceActionForThisType1: 44534785 false ) 
	#(343 1 #reduceActionForPredefinedType1: 42591233 false ) 
	#(345 1 #reduceActionForTypeName1: 42737665 false ) 
	#(331 1 #reduceActionForTypeParameter1: 41578497 false ) 
	#(346 1 #reduceActionForFormalParameterList1: 42844161 false ) 
	#(341 1 #reduceActionForLiteralType1: 42428417 false ) 
	#(341 1 #reduceActionForLiteralType1: 42428418 false ) 
	#(330 1 #reduceActionForFormalParameterList1: 41465857 false ) 
	#(336 1 #liftFirstValue: 41892865 false ) 
	#(337 1 #liftFirstValue: 41969666 false ) 
	#(338 1 #liftFirstValue: 42046466 false ) 
	#(339 1 #liftFirstValue: 42107905 false ) 
	#(340 1 #liftFirstValue: 42251273 false ) 
	#(340 1 #liftFirstValue: 42251265 false ) 
	#(340 1 #liftFirstValue: 42251266 false ) 
	#(340 1 #liftFirstValue: 42251267 false ) 
	#(340 1 #liftFirstValue: 42251268 false ) 
	#(340 1 #liftFirstValue: 42251269 false ) 
	#(340 1 #liftFirstValue: 42251270 false ) 
	#(337 1 #liftFirstValue: 41969665 false ) 
	#(338 1 #liftFirstValue: 42046465 false ) 
	#(336 1 #liftFirstValue: 41892866 false ) 
	#(336 1 #liftFirstValue: 41892867 false ) 
	#(340 1 #liftFirstValue: 42251271 false ) 
	#(340 1 #liftFirstValue: 42251272 false ) 
	#(268 3 #reduceActionForClassExpression2: 35052546 false ) 
	#(433 1 #reduceActionForSingleNameBinding1: 60808193 false ) 
	#(432 1 #reduceActionForFormalParameterList1: 60695553 false ) 
	#(426 3 #reduceActionForExportDefaultImplementationElement1: 58863617 false ) 
	#(426 3 #reduceActionForExportDefaultImplementationElement1: 58863618 false ) 
	#(426 3 #reduceActionForExportDefaultImplementationElement1: 58863619 false ) 
	#(427 3 #reduceActionForExportDefaultDeclarationElement1: 59289601 false ) 
	#(427 3 #reduceActionForExportDefaultDeclarationElement1: 59289602 false ) 
	#(428 3 #reduceActionForExportListDeclaration3: 59624451 false ) 
	#(380 3 #reduceActionForInterfaceDeclaration1: 51186689 false ) 
	#(400 0 #reduceActionForImplementationScript1: 54161409 false ) 
	#(268 3 #reduceActionForClassDeclaration3: 35052547 false ) 
	#(204 2 #reduceActionForBindingRestProperty1: 24283137 false ) 
	#(202 3 #reduceActionForObjectBindingPattern2: 23529474 false ) 
	#(202 3 #reduceActionForObjectBindingPattern3: 23529475 false ) 
	#(203 3 #reduceActionForArrayBindingPattern3: 23917571 false ) 
	#(207 2 #reduceActionForBindingElisionElement2: 24582146 false ) 
	#(203 3 #reduceActionForArrayBindingPattern5: 23917573 false ) 
	#(203 3 #reduceActionForArrayBindingPattern2: 23917570 false ) 
	#(211 3 #reduceActionForBindingRestElement3: 24947715 false ) 
	#(145 2 #reduceActionForInitializer1: 11845633 false ) 
	#(239 3 #reduceActionForFormalParameters5: 30771205 false ) 
	#(240 3 #reduceActionForFormalParameterList2: 30972930 false ) 
	#(210 3 #reduceActionForSingleNameBinding9: 24861705 false ) 
	#(210 3 #reduceActionForSingleNameBinding3: 24861699 false ) 
	#(209 3 #reduceActionForSingleNameBinding9: 24757258 false ) 
	#(209 3 #reduceActionForSingleNameBinding3: 24757252 false ) 
	#(210 3 #reduceActionForSingleNameBinding7: 24861703 false ) 
	#(209 3 #reduceActionForSingleNameBinding7: 24757256 false ) 
	#(143 3 #reduceActionForComputedPropertyName1: 11641857 false ) 
	#(138 4 #reduceActionForObjectLiteral3: 10811395 false ) 
	#(139 3 #reduceActionForFormalParameterList2: 11068418 false ) 
	#(140 3 #reduceActionForPropertyDefinition3: 11203587 false ) 
	#(134 4 #reduceActionForArrayLiteral4: 10178564 false ) 
	#(135 3 #reduceActionForElementList6: 10439686 false ) 
	#(135 3 #reduceActionForElementList6: 10439685 false ) 
	#(251 1 #reduceActionForConciseBody1: 31752193 false ) 
	#(250 4 #reduceActionForAsyncArrowFunction1: 31649793 false ) 
	#(219 4 #reduceActionForBreakStatement2: 28511234 false ) 
	#(274 2 #reduceActionForClassElement2: 35521538 false ) 
	#(270 3 #reduceActionForClassTail2: 35228674 false ) 
	#(273 2 #reduceActionForModuleItemList2: 35433474 false ) 
	#(391 1 #reduceActionForMemberAccessorDeclaration1: 53181441 false ) 
	#(391 1 #reduceActionForMemberAccessorDeclaration1: 53181445 false ) 
	#(274 2 #liftSecondValue: 35521540 false ) 
	#(274 2 #liftSecondValue: 35521541 false ) 
	#(388 1 #liftFirstValue: 52551681 false ) 
	#(388 1 #liftFirstValue: 52551682 false ) 
	#(388 1 #liftFirstValue: 52551683 false ) 
	#(274 2 #liftSecondValue: 35521542 false ) 
	#(270 3 #reduceActionForClassTail3: 35228675 false ) 
	#(385 1 #liftFirstValue: 51843073 false ) 
	#(384 2 #reduceActionForInitializer1: 51783681 false ) 
	#(383 1 #liftFirstValue: 51558401 false ) 
	#(386 2 #reduceActionForImplementsClause1: 51885057 false ) 
	#(382 1 #reduceActionForFormalParameterList1: 51427329 false ) 
	#(271 3 #reduceActionForClassHeritage3: 35320835 false ) 
	#(218 4 #reduceActionForContinueStatement2: 28396546 false ) 
	#(293 3 #reduceActionForNamedExports2: 37869570 false ) 
	#(292 3 #reduceActionForExportFromClause2: 37762050 false ) 
	#(291 4 #reduceActionForExportDeclaration5: 37078021 false ) 
	#(286 2 #reduceActionForInitializer1: 36719617 false ) 
	#(291 4 #reduceActionForExportDeclaration1: 37078017 false ) 
	#(217 1 #liftFirstValue: 28349441 false ) 
	#(217 1 #liftFirstValue: 28349442 false ) 
	#(216 2 #reduceActionForInitializer1: 28284929 false ) 
	#(157 4 #reduceActionForImportCall1: 13878273 false ) 
	#(285 3 #reduceActionForNamedImports2: 36488194 false ) 
	#(284 3 #reduceActionForNameSpaceImport1: 36407297 false ) 
	#(281 4 #reduceActionForImportDeclaration1: 35938305 false ) 
	#(282 3 #reduceActionForImportClause4: 36110340 false ) 
	#(282 3 #reduceActionForImportClause4: 36110341 false ) 
	#(221 4 #reduceActionForReturnStatement2: 28653570 false ) 
	#(159 2 #reduceActionForArgumentList2: 14203906 false ) 
	#(158 3 #reduceActionForArguments2: 14018562 false ) 
	#(151 4 #reduceActionForSuperProperty1: 12837889 false ) 
	#(334 1 #reduceActionForFormalParameterList1: 41763841 false ) 
	#(335 1 #liftFirstValue: 41870337 false ) 
	#(232 2 #reduceActionForCatch2: 29937666 false ) 
	#(233 2 #reduceActionForInitializer1: 30105601 false ) 
	#(231 4 #reduceActionForTryStatement3: 29766659 false ) 
	#(199 3 #reduceActionForFormalParameterList2: 23169026 false ) 
	#(376 2 #reduceActionForSimpleVariableDeclaration1: 50350081 false ) 
	#(148 1 #reduceActionForFormalParameterList1: 12103681 false ) 
	#(146 4 #reduceActionForTemplateLiteral2: 11910146 false ) 
	#(150 4 #reduceActionForMemberExpression2: 12336130 false ) 
	#(162 2 #reduceActionForOptionalRest3: 14773251 false ) 
	#(155 4 #reduceActionForCallExpression5: 13324293 false ) 
	#(166 4 #reduceActionForUnaryExpression11: 15776779 false ) 
	#(196 3 #reduceActionForFormalParameterList2: 22820866 false ) 
	#(378 3 #reduceActionForSingleNameBinding3: 50650113 false ) 
	#(379 3 #reduceActionForSingleNameBinding3: 50759681 false ) 
	#(244 1 #reduceActionForModuleBody1: 31217666 false ) 
	#(243 1 #reduceActionForModuleBody1: 31176705 false ) 
	#(301 4 #reduceActionForJSXElement2: 38681602 false ) 
	#(321 1 #reduceActionForJSXChild1: 40686593 false ) 
	#(321 1 #liftFirstValue: 40686594 false ) 
	#(320 2 #reduceActionForModuleItemList2: 40666114 false ) 
	#(309 2 #reduceActionForInitializer1: 39834625 false ) 
	#(326 0 #reduceActionForSwitchToJSXTextOrDefault11: 41099265 true ) 
	#(316 1 #reduceActionForJSXElementName1: 40258561 false ) 
	#(316 1 #liftFirstValue: 40258562 false ) 
	#(313 1 #reduceActionForModuleItemList1: 39961601 false ) 
	#(311 1 #reduceActionForModuleBody1: 39945217 false ) 
	#(312 1 #liftFirstValue: 39961601 false ) 
	#(312 1 #liftFirstValue: 39961602 false ) 
	#(315 1 #reduceActionForJSXAttribute1: 40175617 false ) 
	#(308 2 #reduceActionForJSXMemberExpression1: 39812097 false ) 
	#(310 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 39834626 false ) 
	#(347 2 #reduceActionForObjectType1: 42948609 false ) 
	#(362 1 #reduceActionForPropertySignature1: 44572673 false ) 
	#(348 1 #reduceActionForModuleBody1: 43030529 false ) 
	#(349 1 #reduceActionForFormalParameterList1: 43126785 false ) 
	#(350 1 #liftFirstValue: 43281409 false ) 
	#(350 1 #liftFirstValue: 43281410 false ) 
	#(350 1 #liftFirstValue: 43281411 false ) 
	#(350 1 #liftFirstValue: 43281412 false ) 
	#(350 1 #liftFirstValue: 43281413 false ) 
	#(354 1 #liftFirstValue: 43702273 false ) 
	#(353 1 #reduceActionForFormalParameterList1: 43593729 false ) 
	#(339 2 #reduceActionForPrefixType3: 42107907 false ) 
	#(339 2 #reduceActionForPrefixType2: 42107906 false ) 
	#(360 1 #reduceActionForTypeQueryExpression1: 44410881 false ) 
	#(359 2 #reduceActionForTypeQuery1: 44337153 false ) 
	#(331 2 #reduceActionForTypeParameter2: 41578498 false ) 
	#(329 3 #reduceActionForTypeParameters1: 41387009 false ) 
	#(344 2 #reduceActionForTypeReference1: 42643457 false ) 
	#(433 2 #reduceActionForAmbientBinding2: 60808194 false ) 
	#(431 3 #reduceActionForLexicalDeclaration1: 60399619 false ) 
	#(431 3 #reduceActionForLexicalDeclaration1: 60399618 false ) 
	#(443 0 #reduceActionForImplementationScript1: 62302209 false ) 
	#(431 3 #reduceActionForLexicalDeclaration1: 60399617 false ) 
	#(393 4 #reduceActionForEnumDeclaration1: 53481473 false ) 
	#(396 1 #reduceActionForEnumMember1: 53767169 false ) 
	#(394 1 #reduceActionForModuleBody1: 53628929 false ) 
	#(395 1 #reduceActionForFormalParameterList1: 53675009 false ) 
	#(429 4 #reduceActionForExportAssignment1: 59878401 false ) 
	#(428 4 #reduceActionForExportListDeclaration1: 59624449 false ) 
	#(427 4 #reduceActionForExportDefaultDeclarationElement3: 59289603 false ) 
	#(426 4 #reduceActionForExportDefaultImplementationElement4: 58863620 false ) 
	#(428 4 #reduceActionForExportListDeclaration2: 59624450 false ) 
	#(405 1 #liftFirstValue: 55457793 false ) 
	#(381 2 #reduceActionForInitializer1: 51342337 false ) 
	#(380 4 #reduceActionForInterfaceDeclaration3: 51186691 false ) 
	#(380 4 #reduceActionForInterfaceDeclaration2: 51186690 false ) 
	#(402 1 #liftFirstValue: 54297601 false ) 
	#(402 1 #liftFirstValue: 54297602 false ) 
	#(402 1 #liftFirstValue: 54297603 false ) 
	#(402 1 #liftFirstValue: 54297604 false ) 
	#(402 1 #liftFirstValue: 54297605 false ) 
	#(402 1 #liftFirstValue: 54297607 false ) 
	#(402 1 #liftFirstValue: 54297606 false ) 
	#(402 1 #liftFirstValue: 54297608 false ) 
	#(402 1 #liftFirstValue: 54297609 false ) 
	#(400 1 #reduceActionForModuleBody1: 54161410 false ) 
	#(401 1 #reduceActionForModuleItemList1: 54199297 false ) 
	#(402 1 #liftFirstValue: 54297612 false ) 
	#(402 1 #liftFirstValue: 54297611 false ) 
	#(402 1 #liftFirstValue: 54297610 false ) 
	#(399 3 #reduceActionForFormalParameterList2: 54055938 false ) 
	#(236 4 #reduceActionForFunctionDeclaration5: 30303237 false ) 
	#(268 4 #reduceActionForClassDeclaration4: 35052548 false ) 
	#(208 3 #reduceActionForBindingProperty2: 24643586 false ) 
	#(202 4 #reduceActionForObjectBindingPattern4: 23529476 false ) 
	#(205 3 #reduceActionForFormalParameterList2: 24354818 false ) 
	#(203 4 #reduceActionForArrayBindingPattern4: 23917572 false ) 
	#(203 4 #reduceActionForArrayBindingPattern6: 23917574 false ) 
	#(206 3 #reduceActionForBindingElementList2: 24473602 false ) 
	#(363 2 #reduceActionForInitializer1: 44741633 false ) 
	#(210 4 #reduceActionForSingleNameBinding4: 24861700 false ) 
	#(209 4 #reduceActionForBindingElement11: 24757259 false ) 
	#(209 4 #reduceActionForSingleNameBinding4: 24757253 false ) 
	#(210 4 #reduceActionForSingleNameBinding10: 24861706 false ) 
	#(210 4 #reduceActionForSingleNameBinding8: 24861704 false ) 
	#(210 4 #reduceActionForSingleNameBinding5: 24861701 false ) 
	#(209 4 #reduceActionForSingleNameBinding10: 24757260 false ) 
	#(209 4 #reduceActionForSingleNameBinding8: 24757257 false ) 
	#(209 4 #reduceActionForSingleNameBinding5: 24757254 false ) 
	#(253 1 #liftFirstValue: 32471041 false ) 
	#(266 1 #reduceActionForModuleBody1: 34939905 false ) 
	#(391 2 #reduceActionForMemberAccessorDeclaration2: 53181442 false ) 
	#(391 2 #reduceActionForMemberAccessorDeclaration2: 53181446 false ) 
	#(389 2 #reduceActionForMemberVariableDeclaration1: 52666369 false ) 
	#(391 2 #reduceActionForMemberAccessorDeclaration3: 53181443 false ) 
	#(391 2 #reduceActionForMemberAccessorDeclaration3: 53181447 false ) 
	#(392 2 #reduceActionForIndexMemberDeclaration1: 53390337 false ) 
	#(270 4 #reduceActionForClassTail4: 35228676 false ) 
	#(295 3 #reduceActionForExportSpecifier2: 38190082 false ) 
	#(293 4 #reduceActionForNamedExports3: 37869571 false ) 
	#(294 3 #reduceActionForFormalParameterList2: 38085634 false ) 
	#(214 5 #reduceActionForIfStatement2: 25260034 false ) 
	#(288 3 #reduceActionForImportSpecifier2: 36875266 false ) 
	#(285 4 #reduceActionForNamedImports3: 36488195 false ) 
	#(287 3 #reduceActionForFormalParameterList2: 36770818 false ) 
	#(158 4 #reduceActionForArguments3: 14018563 false ) 
	#(159 3 #reduceActionForArgumentList3: 14203907 false ) 
	#(333 3 #reduceActionForTypeArguments1: 41686017 false ) 
	#(158 4 #reduceActionForArguments4: 14018564 false ) 
	#(223 5 #reduceActionForSwitchStatement1: 28899329 false ) 
	#(234 1 #liftFirstValue: 30166017 false ) 
	#(234 1 #liftFirstValue: 30166018 false ) 
	#(376 3 #reduceActionForSimpleVariableDeclaration2: 50350082 false ) 
	#(377 3 #reduceActionForDestructuringVariableDeclaration1: 50455553 false ) 
	#(215 5 #reduceActionForIterationStatement2: 25550850 false ) 
	#(222 5 #reduceActionForWithStatement1: 28767233 false ) 
	#(149 2 #reduceActionForTemplateMiddleList1: 12190721 false ) 
	#(148 2 #reduceActionForTemplateSpans2: 12103682 false ) 
	#(163 3 #reduceActionForOptionalFirst2: 15060994 false ) 
	#(162 3 #reduceActionForOptionalFirst2: 14773250 false ) 
	#(182 5 #reduceActionForConditionalExpression2: 19755010 false ) 
	#(378 4 #reduceActionForSingleNameBinding4: 50650114 false ) 
	#(379 4 #reduceActionForSingleNameBinding4: 50759682 false ) 
	#(247 3 #reduceActionForConciseBody2: 31401986 false ) 
	#(307 3 #reduceActionForJSXNamespacedName1: 39688193 false ) 
	#(313 2 #reduceActionForModuleItemList2: 39961602 false ) 
	#(315 2 #reduceActionForJSXAttribute2: 40175618 false ) 
	#(303 5 #reduceActionForJSXOpeningElement1: 39015425 false ) 
	#(372 4 #reduceActionForTypeCallSignature1: 48439297 false ) 
	#(342 3 #reduceActionForParenthesizedExpression1: 42503169 false ) 
	#(362 2 #reduceActionForPropertySignature3: 44572675 false ) 
	#(362 2 #reduceActionForPropertySignature2: 44572674 false ) 
	#(370 2 #reduceActionForMethodSignature1: 47995905 false ) 
	#(347 3 #reduceActionForObjectType2: 42948610 false ) 
	#(348 2 #reduceActionForOptionalChain2: 43030530 false ) 
	#(348 2 #reduceActionForOptionalChain2: 43030532 false ) 
	#(352 3 #reduceActionForTupleType1: 43496449 false ) 
	#(332 2 #reduceActionForInitializer1: 41632769 false ) 
	#(330 3 #reduceActionForFormalParameterList2: 41465858 false ) 
	#(166 5 #reduceActionForUnaryExpression10: 15776778 false ) 
	#(355 3 #reduceActionForUnionType1: 43728897 false ) 
	#(356 3 #reduceActionForIntersectionType1: 43849729 false ) 
	#(344 3 #reduceActionForTypeReference2: 42643458 false ) 
	#(345 3 #reduceActionForTypeName2: 42737666 false ) 
	#(346 3 #reduceActionForFormalParameterList2: 42844162 false ) 
	#(372 4 #reduceActionForTypeCallSignature3: 48439299 false ) 
	#(393 5 #reduceActionForEnumDeclaration3: 53481475 false ) 
	#(436 0 #reduceActionForImplementationScript1: 61244417 false ) 
	#(432 3 #reduceActionForFormalParameterList2: 60695554 false ) 
	#(434 4 #reduceActionForAmbientFunctionDeclaration1: 60891137 false ) 
	#(445 1 #reduceActionForAmbientNamespaceElement3: 62481411 false ) 
	#(445 1 #reduceActionForAmbientNamespaceElement3: 62481417 false ) 
	#(445 1 #reduceActionForAmbientNamespaceElement3: 62481423 false ) 
	#(445 1 #reduceActionForAmbientNamespaceElement3: 62481409 false ) 
	#(445 1 #reduceActionForAmbientNamespaceElement3: 62481413 false ) 
	#(445 1 #reduceActionForAmbientNamespaceElement3: 62481415 false ) 
	#(445 1 #reduceActionForAmbientNamespaceElement3: 62481419 false ) 
	#(445 1 #reduceActionForAmbientNamespaceElement3: 62481421 false ) 
	#(443 1 #reduceActionForModuleBody1: 62302210 false ) 
	#(444 1 #reduceActionForModuleItemList1: 62354433 false ) 
	#(393 5 #reduceActionForEnumDeclaration2: 53481474 false ) 
	#(394 2 #reduceActionForOptionalChain2: 53628930 false ) 
	#(404 5 #reduceActionForImportAliasDeclaration1: 55320577 false ) 
	#(380 5 #reduceActionForInterfaceDeclaration4: 51186692 false ) 
	#(403 2 #reduceActionForExportNamespaceElement2: 54578178 false ) 
	#(403 2 #reduceActionForExportNamespaceElement2: 54578177 false ) 
	#(403 2 #reduceActionForExportNamespaceElement2: 54578179 false ) 
	#(403 2 #reduceActionForExportNamespaceElement2: 54578180 false ) 
	#(403 2 #reduceActionForExportNamespaceElement2: 54578181 false ) 
	#(403 2 #reduceActionForExportNamespaceElement2: 54578183 false ) 
	#(403 2 #reduceActionForExportNamespaceElement2: 54578182 false ) 
	#(403 2 #reduceActionForExportNamespaceElement2: 54578184 false ) 
	#(403 2 #reduceActionForExportNamespaceElement2: 54578185 false ) 
	#(403 2 #reduceActionForExportNamespaceElement2: 54578187 false ) 
	#(403 2 #reduceActionForExportNamespaceElement2: 54578186 false ) 
	#(398 5 #reduceActionForNamespaceDeclaration1: 53914625 false ) 
	#(401 2 #reduceActionForModuleItemList2: 54199298 false ) 
	#(371 5 #reduceActionForTypeAliasDeclaration1: 48101377 false ) 
	#(364 3 #reduceActionForCallSignature1: 44794881 false ) 
	#(236 5 #reduceActionForFunctionDeclaration6: 30303238 false ) 
	#(202 5 #reduceActionForObjectBindingPattern5: 23529477 false ) 
	#(203 5 #reduceActionForArrayBindingPattern8: 23917576 false ) 
	#(203 5 #reduceActionForArrayBindingPattern7: 23917575 false ) 
	#(210 5 #reduceActionForSingleNameBinding6: 24861702 false ) 
	#(209 5 #reduceActionForBindingElement13: 24757261 false ) 
	#(209 5 #reduceActionForSingleNameBinding6: 24757255 false ) 
	#(367 1 #liftFirstValue: 46823425 false ) 
	#(367 1 #liftFirstValue: 46823426 false ) 
	#(251 3 #reduceActionForConciseBody2: 31752194 false ) 
	#(389 3 #reduceActionForMemberVariableDeclaration5: 52666373 false ) 
	#(389 3 #reduceActionForMemberVariableDeclaration2: 52666370 false ) 
	#(389 3 #reduceActionForMemberVariableDeclaration3: 52666371 false ) 
	#(390 3 #reduceActionForMemberFunctionDeclaration5: 52836357 false ) 
	#(391 3 #reduceActionForMemberAccessorDeclaration4: 53181444 false ) 
	#(391 3 #reduceActionForMemberAccessorDeclaration4: 53181448 false ) 
	#(389 3 #reduceActionForMemberVariableDeclaration9: 52666377 false ) 
	#(382 3 #reduceActionForFormalParameterList2: 51427330 false ) 
	#(215 6 #reduceActionForIterationStatement3: 25550851 false ) 
	#(215 6 #reduceActionForIterationStatement15: 25550863 false ) 
	#(159 4 #reduceActionForArgumentList4: 14203908 false ) 
	#(334 3 #reduceActionForFormalParameterList2: 41763842 false ) 
	#(158 5 #reduceActionForArguments5: 14018565 false ) 
	#(224 2 #reduceActionForCaseBlock1: 29025281 false ) 
	#(225 1 #reduceActionForModuleItemList1: 29209601 false ) 
	#(149 3 #reduceActionForTemplateMiddleList2: 12190722 false ) 
	#(322 1 #liftFirstValue: 40919042 false ) 
	#(322 1 #liftFirstValue: 40919041 false ) 
	#(302 6 #reduceActionForJSXSelfClosingElement1: 38832129 false ) 
	#(303 6 #reduceActionForJSXOpeningElement2: 39015426 false ) 
	#(318 1 #reduceActionForLiteral4: 40423425 false ) 
	#(318 1 #liftFirstValue: 40423427 false ) 
	#(318 1 #liftFirstValue: 40423428 false ) 
	#(317 2 #reduceActionForInitializer1: 40349697 false ) 
	#(362 3 #reduceActionForPropertySignature4: 44572676 false ) 
	#(370 3 #reduceActionForMethodSignature2: 47995906 false ) 
	#(349 3 #reduceActionForFormalParameterList2: 43126786 false ) 
	#(349 3 #reduceActionForFormalParameterList2: 43126787 false ) 
	#(353 3 #reduceActionForFormalParameterList2: 43593730 false ) 
	#(360 3 #reduceActionForTypeQueryExpression2: 44410882 false ) 
	#(351 4 #reduceActionForArrayType1: 43388929 false ) 
	#(237 6 #reduceActionForFunctionExpression3: 30515203 false ) 
	#(372 5 #reduceActionForTypeCallSignature2: 48439298 false ) 
	#(393 6 #reduceActionForEnumDeclaration4: 53481476 false ) 
	#(438 1 #liftFirstValue: 61419523 false ) 
	#(436 1 #reduceActionForModuleBody1: 61244418 false ) 
	#(437 1 #reduceActionForModuleItemList1: 61292545 false ) 
	#(438 1 #liftFirstValue: 61419521 false ) 
	#(438 1 #liftFirstValue: 61419522 false ) 
	#(446 6 #reduceActionForAmbientModuleDeclaration1: 63253505 false ) 
	#(445 2 #reduceActionForExportNamespaceElement2: 62481412 false ) 
	#(445 2 #reduceActionForExportNamespaceElement2: 62481418 false ) 
	#(445 2 #reduceActionForExportNamespaceElement2: 62481424 false ) 
	#(445 2 #reduceActionForExportNamespaceElement2: 62481410 false ) 
	#(445 2 #reduceActionForExportNamespaceElement2: 62481414 false ) 
	#(445 2 #reduceActionForExportNamespaceElement2: 62481416 false ) 
	#(445 2 #reduceActionForExportNamespaceElement2: 62481420 false ) 
	#(445 2 #reduceActionForExportNamespaceElement2: 62481422 false ) 
	#(442 5 #reduceActionForNamespaceDeclaration1: 62126081 false ) 
	#(444 2 #reduceActionForModuleItemList2: 62354434 false ) 
	#(397 1 #liftFirstValue: 53872641 false ) 
	#(396 3 #reduceActionForEnumMember2: 53767170 false ) 
	#(395 3 #reduceActionForFormalParameterList2: 53675010 false ) 
	#(371 6 #reduceActionForTypeAliasDeclaration2: 48101378 false ) 
	#(364 4 #reduceActionForCallSignature2: 44794882 false ) 
	#(364 4 #reduceActionForCallSignature3: 44794883 false ) 
	#(236 6 #reduceActionForFunctionExpression3: 30303235 false ) 
	#(203 6 #reduceActionForArrayBindingPattern9: 23917577 false ) 
	#(375 2 #reduceActionForTypedPropertySetParameterList1: 49472513 false ) 
	#(252 6 #reduceActionForMethodDefinition7: 31873031 false ) 
	#(389 4 #reduceActionForMemberVariableDeclaration6: 52666374 false ) 
	#(389 4 #reduceActionForMemberVariableDeclaration7: 52666375 false ) 
	#(390 4 #reduceActionForMemberFunctionDeclaration6: 52836358 false ) 
	#(389 4 #reduceActionForMemberVariableDeclaration4: 52666372 false ) 
	#(389 4 #reduceActionForMemberVariableDeclaration13: 52666381 false ) 
	#(389 4 #reduceActionForMemberVariableDeclaration10: 52666378 false ) 
	#(389 4 #reduceActionForMemberVariableDeclaration11: 52666379 false ) 
	#(390 4 #reduceActionForMemberFunctionDeclaration7: 52836359 false ) 
	#(215 7 #reduceActionForIterationStatement1: 25550849 false ) 
	#(215 7 #reduceActionForIterationStatement4: 25550852 false ) 
	#(215 7 #reduceActionForIterationStatement5: 25550853 false ) 
	#(215 7 #reduceActionForIterationStatement19: 25550867 false ) 
	#(215 7 #reduceActionForIterationStatement22: 25550870 false ) 
	#(215 7 #reduceActionForIterationStatement7: 25550855 false ) 
	#(215 7 #reduceActionForIterationStatement16: 25550864 false ) 
	#(215 7 #reduceActionForIterationStatement17: 25550865 false ) 
	#(215 7 #reduceActionForIterationStatement21: 25550869 false ) 
	#(215 7 #reduceActionForIterationStatement24: 25550872 false ) 
	#(237 7 #reduceActionForFunctionExpression1: 30515201 false ) 
	#(257 1 #reduceActionForModuleBody1: 33217537 false ) 
	#(214 7 #reduceActionForIfStatement1: 25260033 false ) 
	#(227 2 #reduceActionForDefaultClause1: 29388801 false ) 
	#(224 3 #reduceActionForCaseBlock2: 29025282 false ) 
	#(225 2 #reduceActionForModuleItemList2: 29209602 false ) 
	#(224 3 #reduceActionForCaseBlock3: 29025283 false ) 
	#(232 5 #reduceActionForCatch1: 29937665 false ) 
	#(327 0 #reduceActionForSwitchToJSXTextOrDefault21: 41165825 true ) 
	#(321 4 #reduceActionForJSXChild3: 40686595 false ) 
	#(302 7 #reduceActionForJSXSelfClosingElement2: 38832130 false ) 
	#(357 5 #reduceActionForFunctionType1: 43956225 false ) 
	#(368 4 #reduceActionForConstructSignature1: 47502337 false ) 
	#(237 7 #reduceActionForFunctionExpression4: 30515204 false ) 
	#(440 2 #reduceActionForMemberVariableDeclaration1: 61739009 false ) 
	#(435 6 #reduceActionForAmbientClassDeclaration1: 61038593 false ) 
	#(437 2 #reduceActionForModuleItemList2: 61292546 false ) 
	#(236 7 #reduceActionForFunctionExpression1: 30303233 false ) 
	#(236 7 #reduceActionForFunctionExpression4: 30303236 false ) 
	#(364 5 #reduceActionForCallSignature4: 44794884 false ) 
	#(252 7 #reduceActionForMethodDefinition5: 31873029 false ) 
	#(252 7 #reduceActionForMethodDefinition1: 31873025 false ) 
	#(265 8 #reduceActionForAsyncFunctionExpression1: 34690049 false ) 
	#(262 1 #reduceActionForModuleBody1: 34184193 false ) 
	#(387 5 #reduceActionForConstructorDeclaration3: 52092931 false ) 
	#(389 5 #reduceActionForMemberVariableDeclaration8: 52666376 false ) 
	#(390 5 #reduceActionForMemberFunctionDeclaration1: 52836353 false ) 
	#(389 5 #reduceActionForMemberVariableDeclaration14: 52666382 false ) 
	#(389 5 #reduceActionForMemberVariableDeclaration15: 52666383 false ) 
	#(390 5 #reduceActionForMemberFunctionDeclaration8: 52836360 false ) 
	#(389 5 #reduceActionForMemberVariableDeclaration12: 52666380 false ) 
	#(215 8 #reduceActionForIterationStatement6: 25550854 false ) 
	#(215 8 #reduceActionForIterationStatement11: 25550859 false ) 
	#(215 8 #reduceActionForIterationStatement23: 25550871 false ) 
	#(215 8 #reduceActionForIterationStatement20: 25550868 false ) 
	#(215 8 #reduceActionForIterationStatement8: 25550856 false ) 
	#(215 8 #reduceActionForIterationStatement9: 25550857 false ) 
	#(215 8 #reduceActionForIterationStatement18: 25550866 false ) 
	#(215 8 #reduceActionForIterationStatement25: 25550873 false ) 
	#(215 8 #reduceActionForIterationStatement27: 25550875 false ) 
	#(256 8 #reduceActionForGeneratorExpression1: 32982017 false ) 
	#(237 8 #reduceActionForFunctionExpression2: 30515202 false ) 
	#(226 3 #reduceActionForCaseClause1: 29282305 false ) 
	#(227 3 #reduceActionForDefaultClause2: 29388802 false ) 
	#(224 4 #reduceActionForCaseBlock5: 29025285 false ) 
	#(224 4 #reduceActionForCaseBlock4: 29025284 false ) 
	#(321 5 #reduceActionForJSXChild4: 40686596 false ) 
	#(314 5 #reduceActionForJSXSpreadAttribute1: 40026113 false ) 
	#(368 5 #reduceActionForConstructSignature2: 47502338 false ) 
	#(368 5 #reduceActionForConstructSignature3: 47502339 false ) 
	#(358 6 #reduceActionForConstructorType1: 44136449 false ) 
	#(357 6 #reduceActionForFunctionType2: 43956226 false ) 
	#(440 3 #reduceActionForMemberVariableDeclaration5: 61739011 false ) 
	#(440 3 #reduceActionForMemberVariableDeclaration3: 61739010 false ) 
	#(440 3 #reduceActionForAmbientPropertyMemberDeclaration9: 61739017 false ) 
	#(440 3 #reduceActionForMemberVariableDeclaration9: 61739013 false ) 
	#(435 7 #reduceActionForAmbientClassDeclaration2: 61038594 false ) 
	#(255 8 #reduceActionForGeneratorExpression1: 32745473 false ) 
	#(236 8 #reduceActionForFunctionExpression2: 30303234 false ) 
	#(423 8 #reduceActionForImportRequireDeclaration1: 57608193 false ) 
	#(254 8 #reduceActionForGeneratorMethod1: 32529409 false ) 
	#(263 8 #reduceActionForAsyncMethod1: 34221057 false ) 
	#(252 8 #reduceActionForMethodDefinition6: 31873030 false ) 
	#(261 9 #reduceActionForAsyncGeneratorExpression1: 33909761 false ) 
	#(265 9 #reduceActionForAsyncFunctionExpression2: 34690050 false ) 
	#(369 6 #reduceActionForIndexSignature1: 47694849 false ) 
	#(369 6 #reduceActionForIndexSignature1: 47694850 false ) 
	#(390 6 #reduceActionForMemberFunctionDeclaration2: 52836354 false ) 
	#(387 6 #reduceActionForConstructorDeclaration4: 52092932 false ) 
	#(389 6 #reduceActionForMemberVariableDeclaration16: 52666384 false ) 
	#(390 6 #reduceActionForMemberFunctionDeclaration3: 52836355 false ) 
	#(264 8 #reduceActionForAsyncFunctionExpression1: 34440193 false ) 
	#(215 9 #reduceActionForIterationStatement12: 25550860 false ) 
	#(215 9 #reduceActionForIterationStatement13: 25550861 false ) 
	#(215 9 #reduceActionForIterationStatement10: 25550858 false ) 
	#(215 9 #reduceActionForIterationStatement26: 25550874 false ) 
	#(256 9 #reduceActionForGeneratorExpression2: 32982018 false ) 
	#(226 4 #reduceActionForCaseClause2: 29282306 false ) 
	#(224 5 #reduceActionForCaseBlock6: 29025286 false ) 
	#(305 9 #reduceActionForJSXFragment1: 39319553 false ) 
	#(304 6 #reduceActionForJSXClosingElement1: 39159809 false ) 
	#(368 6 #reduceActionForConstructSignature4: 47502340 false ) 
	#(358 7 #reduceActionForConstructorType2: 44136450 false ) 
	#(440 4 #reduceActionForMemberVariableDeclaration7: 61739012 false ) 
	#(440 4 #reduceActionForAmbientPropertyMemberDeclaration10: 61739018 false ) 
	#(440 4 #reduceActionForMemberVariableDeclaration13: 61739015 false ) 
	#(440 4 #reduceActionForMemberVariableDeclaration11: 61739014 false ) 
	#(440 4 #reduceActionForAmbientPropertyMemberDeclaration11: 61739019 false ) 
	#(255 9 #reduceActionForGeneratorExpression2: 32745474 false ) 
	#(259 9 #reduceActionForAsyncGeneratorMethod1: 33381377 false ) 
	#(373 9 #reduceActionForGetAccessor1: 48801793 false ) 
	#(374 9 #reduceActionForSetAccessor2: 49007618 false ) 
	#(261 10 #reduceActionForAsyncGeneratorExpression2: 33909762 false ) 
	#(387 7 #reduceActionForConstructorDeclaration1: 52092929 false ) 
	#(390 7 #reduceActionForMemberFunctionDeclaration4: 52836356 false ) 
	#(260 9 #reduceActionForAsyncGeneratorExpression1: 33634305 false ) 
	#(264 9 #reduceActionForAsyncFunctionExpression2: 34440194 false ) 
	#(215 10 #reduceActionForIterationStatement14: 25550862 false ) 
	#(318 5 #reduceActionForJSXChild4: 40423426 false ) 
	#(439 5 #reduceActionForAmbientConstructorDeclaration1: 61532161 false ) 
	#(440 5 #reduceActionForMemberVariableDeclaration15: 61739016 false ) 
	#(440 5 #reduceActionForAmbientPropertyMemberDeclaration12: 61739020 false ) 
	#(374 10 #reduceActionForSetAccessor1: 49007617 false ) 
	#(374 10 #reduceActionForSetAccessor1: 49007619 false ) 
	#(387 8 #reduceActionForConstructorDeclaration2: 52092930 false ) 
	#(260 10 #reduceActionForAsyncGeneratorExpression2: 33634306 false )
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
	^ #('<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<question>' '<questionDot>' '<percent>' '<bar>' '<barBar>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<module>' '<namespace>' '<new>' '<null>' '<of>' '<private>' '<protected>' '<public>' '<return>' '<set>' '<static>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<whitespace>' '<string>' '<numeric>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'FunctionDeclaration' 'FunctionExpression' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorMethod' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorBody' 'AsyncMethod' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' '<questionQuestion>' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSNewTargetExpressionNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSVariableDeclarationNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSVariableDeclarationNode #JSGeneratorMethodDefinitionNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorMethodDefinitionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #OrderedCollection #JSAsyncMethodDefinitionNode #JSAsyncFunctionNode #JSAsyncFunctionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariableDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSProgramNode #JSMemberVariableDeclarationNode #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 0 105 0 67 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 0 125 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 217 0 128 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 1 253 0 186 1 253 0 189 1 253 0 190 1 253 0 191 1 253 0 193 1 253 0 194 1 137 0 195 1 253 0 198 1 253 0 212 1 253 0 213 1 253 0 214 1 253 0 215 1 253 0 218 1 253 0 219 1 253 0 221 1 253 0 222 1 253 0 223 1 253 0 228 1 253 0 230 1 253 0 231 1 253 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 0 217 1 21 1 245 1 22 1 249 1 23 1 253 1 24 1 253 1 25 1 253 1 35 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194 0 14 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 2 65 0 182 2 65 0 183 2 65 0 185 0 253 0 237 2 65 0 245 1 205 0 246 1 209 0 249 2 65 0 250 0 253 1 0 2 65 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 69 0 186 2 69 0 189 2 69 0 190 2 69 0 191 2 69 0 198 2 69 0 212 2 69 0 213 2 69 0 214 2 69 0 215 2 69 0 218 2 69 0 219 2 69 0 221 2 69 0 222 2 69 0 223 2 69 0 228 2 69 0 230 2 69 0 231 2 69 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 2 73 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 81 1 19 2 85 1 20 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194 0 18 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 0 105 0 67 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 0 125 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 1 253 0 186 1 253 0 189 1 253 0 190 1 253 0 191 1 253 0 193 1 253 0 194 1 137 0 195 1 253 0 198 1 253 0 212 1 253 0 213 1 253 0 214 1 253 0 215 1 253 0 218 1 253 0 219 1 253 0 221 1 253 0 222 1 253 0 223 1 253 0 228 1 253 0 230 1 253 0 231 1 253 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 89 1 21 1 245 1 22 1 249 1 23 1 253 1 24 1 253 1 25 1 253 1 35 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194 0 14 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 2 101 0 61 0 97 0 63 0 101 0 64 2 105 0 66 2 109 0 67 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 2 117 0 76 2 121 0 81 1 137 0 83 2 125 0 85 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 2 129 0 102 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 201 0 186 2 201 0 189 2 201 0 190 2 201 0 191 2 201 0 194 1 137 0 195 2 201 0 198 2 201 0 212 2 201 0 213 2 201 0 214 2 201 0 215 2 201 0 218 2 201 0 219 2 201 0 221 2 201 0 222 2 201 0 223 2 201 0 228 2 201 0 230 2 201 0 231 2 201 0 235 2 201 0 236 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 2 201 0 255 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 2 201 1 12 0 253 1 13 2 153 1 25 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 157 1 115 2 161 1 124 2 201 1 137 2 169 1 142 2 173 1 148 2 177 1 150 2 181 1 151 2 185 1 152 2 189 1 153 2 193 1 154 2 197 1 155 2 201 1 156 2 205 1 157 2 209 1 158 2 213 1 159 2 217 1 160 2 221 1 161 2 225 1 162 2 229 1 163 2 233 1 164 2 237 1 165 2 241 1 166 2 229 1 167 2 229 1 168 2 241 1 169 2 229 1 170 2 241 1 171 3 9 1 172 3 13 1 173 3 17 1 174 3 21 1 190 3 25 1 194 0 11 1 195] 
#[1 0 29 0 1 0 38 0 2 3 29 0 3 3 33 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 3 37 0 109 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 41 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 3 45 0 182 3 45 0 183 3 45 0 185 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 0 253 0 237 3 73 0 238 3 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 3 45 0 245 1 205 0 246 1 209 0 249 3 45 0 250 0 253 1 0 3 45 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 93 1 194] 
#[1 0 29 0 1 0 33 0 3 3 97 0 4 3 101 0 5 0 41 0 7 3 105 0 25 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 109 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 3 113 0 74 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 3 117 0 93 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 3 121 0 109 0 193 0 113 3 125 0 114 3 181 0 116 3 185 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 129 0 129 3 145 0 130 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 3 137 0 139 3 141 0 140 3 145 0 141 3 145 0 142 3 145 0 143 3 141 0 144 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 3 161 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 3 141 0 252 3 141 0 254 0 253 1 0 1 109 1 2 3 141 1 3 0 253 1 5 3 141 1 7 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 3 181 1 42 3 185 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 141 1 117 3 141 1 118 3 197 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 3 201 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 3 205 0 109 3 209 0 110 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 3 213 0 135 3 217 0 136 3 221 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 3 225 0 182 3 225 0 183 0 253 0 237 3 225 0 245 1 205 0 246 1 209 0 249 3 225 0 250 0 253 1 0 3 225 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 0 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 3 245 0 165 3 245 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 3 245 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 3 253 0 165 3 253 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 3 253 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 4 1 0 165 4 1 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 4 1 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 4 5 0 165 4 5 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 4 5 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 4 9 0 165 4 9 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 4 9 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 4 13 0 165 4 13 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 4 13 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 4 17 0 1 4 21 0 73 2 61 0 113 4 25 0 129 4 29 0 246 1 209 0 249 4 33 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 4 37 0 165 4 37 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 4 37 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 0 46 0 7 0 46 0 113 4 41 0 220] 
#[1 4 45 0 3 4 49 0 68 2 61 0 113 4 53 0 129 4 57 1 14 4 61 1 15 4 65 1 194] 
#[0 0 50 0 3 0 5 0 113 1 194] 
#[1 0 46 0 7 0 46 0 113 4 69 0 220] 
#[0 4 73 0 7] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 4 77 0 165 4 77 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 4 77 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 4 81 0 186 4 81 0 189 4 81 0 190 4 81 0 191 4 81 0 198 4 81 0 212 4 81 0 213 4 81 0 214 4 81 0 215 4 81 0 218 4 81 0 219 4 81 0 221 4 81 0 222 4 81 0 223 4 81 0 228 4 81 0 230 4 81 0 231 4 81 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 4 85 0 3 4 89 0 25 4 93 0 51 4 97 0 56 1 137 0 57 4 101 0 62 4 105 0 73 1 137 0 83 0 173 0 104 4 109 0 187 4 109 0 188 4 109 0 194 1 137 0 195 4 121 0 198 4 109 0 236 4 109 0 255 4 109 1 4 4 109 1 8 4 109 1 12 4 145 1 36 4 149 1 37 4 153 1 194] 
#[0 0 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 4 157 0 1 4 161 0 52] 
#[1 4 165 0 1 4 169 0 25 2 61 0 113 4 173 0 129] 
#[0 4 177 0 1] 
#[1 4 181 0 1 4 185 0 3 4 189 0 25 2 61 0 113 4 213 0 116 4 201 0 129 4 197 1 26 4 201 1 27 4 205 1 28 4 209 1 29 4 213 1 33 4 201 1 34 4 213 1 42] 
#[0 0 58 0 3 0 5 0 113 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 4 225 0 21 3 233 0 51 0 81 0 56 2 13 0 69 0 117 0 73 0 133 0 86 2 9 0 87 4 229 0 95 0 153 0 98 2 13 0 100 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 4 233 0 129 4 233 0 131 4 233 0 132 4 233 0 133 4 233 0 134 4 233 0 138 4 233 0 146 0 249 0 147 4 233 0 150 4 233 0 151 4 233 0 152 4 233 0 153 4 237 0 154 4 233 0 237 4 233 1 0 4 233 1 5 4 233 1 9 4 233 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 4 233 1 44 4 233 1 45 4 233 1 46 2 37 1 47 4 233 1 49 2 45 1 67 4 241 1 194] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 46 0 1 0 46 0 3 0 46 0 5 0 46 0 7 0 46 0 34 0 46 0 35 0 46 0 36 0 46 0 37 0 46 0 38 0 46 0 47 0 46 0 51 0 46 0 52 0 46 0 56 0 46 0 63 0 46 0 69 0 46 0 73 0 46 0 76 0 46 0 86 0 46 0 87 0 46 0 95 0 46 0 98 0 46 0 100 0 46 0 103 0 46 0 105 0 46 0 108 0 46 0 113 0 46 0 116 0 46 0 117 0 46 0 118 0 46 0 120 0 46 0 121 0 46 0 124 4 245 0 220 0 46 1 194] 
#[1 4 249 0 1 4 253 0 5 5 1 0 21 5 5 0 158 5 9 1 194] 
#[0 5 13 0 1] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 5 17 0 182 5 17 0 183 5 17 0 185 0 253 0 237 5 17 0 245 1 205 0 246 1 209 0 249 5 17 0 250 0 253 1 0 5 17 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 0 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 5 21 0 3 5 25 0 191] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 5 29 0 165 5 29 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 5 29 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 5 41 0 129 5 45 0 199 5 49 0 200 5 53 0 201 5 53 0 202 5 53 0 203 5 57 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 5 61 0 165 5 61 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 5 61 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[0 5 65 0 1] 
#[0 5 69 0 1] 
#[1 0 29 0 1 0 74 0 2 2 53 0 3 0 74 0 4 0 37 0 5 0 74 0 6 0 74 0 7 5 73 0 25 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 74 0 88 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 0 74 0 110 0 74 0 111 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 74 0 122 0 74 0 123 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 5 77 0 182 5 77 0 183 0 253 0 237 5 77 0 245 1 205 0 246 1 209 0 249 5 77 0 250 0 253 1 0 5 77 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194 0 74 1 195] 
#[1 0 78 0 1 0 78 0 4 0 78 0 5 0 78 0 7 0 78 0 8 0 78 0 9 0 78 0 10 0 78 0 11 0 78 0 12 0 78 0 13 0 78 0 14 0 78 0 15 0 78 0 16 0 78 0 17 0 78 0 18 0 78 0 19 0 78 0 20 0 78 0 21 0 78 0 22 0 78 0 23 0 78 0 24 0 78 0 25 0 78 0 26 0 78 0 27 0 78 0 28 0 78 0 29 0 78 0 30 0 78 0 31 0 78 0 32 0 78 0 33 0 78 0 34 0 78 0 35 0 78 0 36 0 78 0 37 0 78 0 39 0 78 0 40 0 78 0 41 0 78 0 42 0 78 0 43 0 78 0 44 0 78 0 45 0 78 0 46 0 78 0 48 0 78 0 49 0 78 0 50 0 78 0 77 0 78 0 80 0 78 0 110 5 81 0 111 0 78 0 120 0 78 0 121 0 78 1 191 0 78 1 193 0 78 1 194] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 120 0 121 0 122 0 123 0 125 1 191 1 193 1 194 1 195] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 98 0 13 5 85 1 68] 
#[0 0 0 1 195] 
#[1 0 102 0 1 0 102 0 2 0 102 0 4 0 102 0 5 0 102 0 6 0 102 0 7 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 50 0 102 0 77 0 102 0 80 0 102 0 88 0 102 0 110 0 102 0 111 0 102 0 120 0 102 0 121 0 102 0 122 0 102 0 123 0 102 1 191 0 102 1 193 0 102 1 194 0 102 1 195] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 0 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 5 89 0 121] 
#[1 4 249 0 1 0 134 0 2 0 134 0 3 0 134 0 4 5 93 0 5 0 134 0 6 0 134 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 19 0 134 0 20 5 97 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 5 101 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 48 0 134 0 49 0 134 0 50 0 134 0 77 0 134 0 80 0 134 0 88 0 134 0 110 0 134 0 111 0 209 0 120 0 6 0 121 0 134 0 122 0 134 0 123 5 105 0 146 0 249 0 147 5 109 0 158 5 113 0 161 0 134 1 191 0 134 1 193 5 9 1 194 0 134 1 195] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 0 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 0 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 193 1 195] 
#[1 4 249 0 1 0 154 0 2 0 154 0 3 0 154 0 4 5 117 0 5 0 154 0 6 0 154 0 7 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 154 0 15 0 154 0 16 0 154 0 17 0 154 0 19 0 154 0 20 5 121 0 21 0 154 0 22 0 154 0 23 0 154 0 24 0 154 0 25 0 154 0 26 0 154 0 27 0 154 0 28 0 154 0 29 0 154 0 30 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 39 0 154 0 40 0 154 0 41 5 101 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 48 0 154 0 49 0 154 0 50 0 154 0 77 0 154 0 80 0 154 0 88 0 154 0 110 0 154 0 111 0 209 0 120 0 6 0 121 0 154 0 122 0 154 0 123 5 125 0 146 0 249 0 147 5 129 0 158 5 133 0 161 0 154 1 191 0 154 1 193 5 9 1 194 0 154 1 195] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 0 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 19 0 166 0 20 0 166 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 39 0 166 0 40 0 166 0 41 5 101 0 42 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 48 0 166 0 49 0 166 0 50 0 166 0 77 0 166 0 80 0 166 0 88 0 166 0 110 0 166 0 111 0 166 0 122 0 166 0 123 5 137 0 161 0 166 1 191 0 166 1 193 0 166 1 195] 
#[1 0 170 0 2 0 170 0 4 0 170 0 6 0 170 0 7 0 170 0 8 5 201 0 9 0 170 0 10 0 170 0 11 5 201 0 12 0 170 0 13 0 170 0 14 5 201 0 15 5 201 0 16 0 170 0 17 0 170 0 19 0 170 0 20 5 201 0 22 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 5 201 0 27 5 201 0 28 5 201 0 29 5 201 0 30 5 201 0 31 5 201 0 32 5 201 0 33 0 170 0 34 5 189 0 35 0 170 0 36 5 193 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 48 0 170 0 49 5 197 0 50 0 170 0 77 0 170 0 80 0 170 0 88 0 170 0 110 0 170 0 111 0 170 0 122 0 170 0 123 5 201 0 184 0 170 1 191 5 201 1 193 0 170 1 195] 
#[0 0 174 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[1 0 178 0 2 0 178 0 4 0 178 0 6 0 178 0 7 0 178 0 8 0 178 0 10 0 178 0 11 0 178 0 13 0 178 0 14 0 178 0 17 0 178 0 19 0 178 0 20 0 178 0 23 0 178 0 24 0 178 0 25 5 209 0 26 0 178 0 34 0 178 0 36 0 178 0 39 0 178 0 40 0 178 0 41 0 178 0 43 0 178 0 44 0 178 0 45 0 178 0 46 0 178 0 48 0 178 0 49 0 178 0 77 0 178 0 80 0 178 0 88 0 178 0 110 0 178 0 111 0 178 0 122 0 178 0 123 0 178 1 191 0 178 1 195] 
#[0 0 182 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[1 0 186 0 2 0 186 0 4 0 186 0 6 0 186 0 7 5 225 0 8 0 186 0 10 0 186 0 11 0 186 0 13 0 186 0 14 0 186 0 17 0 186 0 19 0 186 0 20 0 186 0 23 0 186 0 24 5 225 0 25 0 186 0 34 0 186 0 36 0 186 0 39 0 186 0 40 0 186 0 41 5 225 0 43 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 48 0 186 0 49 0 186 0 77 0 186 0 80 0 186 0 88 0 186 0 110 0 186 0 111 0 186 0 122 0 186 0 123 5 225 0 169 0 186 1 191 0 186 1 195] 
#[1 0 190 0 2 0 190 0 4 0 190 0 6 0 190 0 7 0 190 0 10 0 190 0 11 0 190 0 13 0 190 0 14 0 190 0 17 0 190 0 19 0 190 0 20 0 190 0 23 0 190 0 24 5 229 0 34 5 233 0 36 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 44 0 190 0 45 0 190 0 46 0 190 0 48 0 190 0 49 0 190 0 77 0 190 0 80 0 190 0 88 0 190 0 110 0 190 0 111 0 190 0 122 0 190 0 123 0 190 1 191 0 190 1 195] 
#[1 0 194 0 2 0 194 0 4 0 194 0 6 0 194 0 7 0 194 0 10 5 237 0 11 0 194 0 13 5 241 0 14 5 245 0 17 0 194 0 19 0 194 0 20 0 194 0 23 0 194 0 24 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 48 0 194 0 49 0 194 0 77 0 194 0 80 0 194 0 88 0 194 0 110 0 194 0 111 0 194 0 122 0 194 0 123 0 194 1 191 0 194 1 195] 
#[1 0 198 0 2 0 198 0 4 0 198 0 6 0 198 0 7 5 249 0 10 5 253 0 13 6 1 0 19 6 5 0 20 0 198 0 23 0 198 0 24 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 48 0 198 0 49 6 9 0 77 6 13 0 80 0 198 0 88 0 198 0 110 0 198 0 111 0 198 0 122 0 198 0 123 0 198 1 191 0 198 1 195] 
#[1 0 202 0 2 0 202 0 4 0 202 0 6 0 202 0 7 6 17 0 23 6 21 0 24 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 44 0 202 0 45 0 202 0 46 6 25 0 48 6 29 0 49 0 202 0 88 0 202 0 110 0 202 0 111 0 202 0 122 0 202 0 123 0 202 1 191 0 202 1 195] 
#[1 0 206 0 2 0 206 0 4 0 206 0 6 0 206 0 7 6 33 0 39 0 206 0 40 0 206 0 41 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 88 0 206 0 110 0 206 0 111 0 206 0 122 0 206 0 123 0 206 1 191 0 206 1 195] 
#[1 0 210 0 2 0 210 0 4 0 210 0 6 0 210 0 7 0 210 0 40 0 210 0 41 0 210 0 44 0 210 0 45 6 37 0 46 0 210 0 88 0 210 0 110 0 210 0 111 0 210 0 122 0 210 0 123 0 210 1 191 0 210 1 195] 
#[1 0 214 0 2 0 214 0 4 0 214 0 6 0 214 0 7 0 214 0 40 0 214 0 41 6 41 0 44 0 214 0 45 0 214 0 88 0 214 0 110 0 214 0 111 0 214 0 122 0 214 0 123 0 218 1 191 0 214 1 195] 
#[1 0 222 0 2 0 222 0 4 0 222 0 6 0 222 0 7 6 45 0 40 0 222 0 41 0 222 0 45 0 222 0 88 0 222 0 110 0 222 0 111 0 222 0 122 0 222 0 123 0 222 1 195] 
#[1 0 226 0 2 0 226 0 4 0 226 0 6 0 226 0 7 0 226 0 41 6 49 0 45 0 226 0 88 0 226 0 110 0 226 0 111 0 226 0 122 0 226 0 123 0 226 1 195] 
#[1 0 230 0 2 0 230 0 4 0 230 0 6 0 230 0 7 0 230 0 41 0 230 0 88 0 230 0 110 0 230 0 111 0 230 0 122 0 230 0 123 0 234 1 191 0 230 1 195] 
#[0 6 53 1 191] 
#[1 0 238 0 2 0 238 0 4 0 238 0 6 0 238 0 7 6 57 0 41 0 238 0 88 0 238 0 110 0 238 0 111 0 238 0 122 0 238 0 123 0 238 1 195] 
#[0 0 242 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[0 0 246 0 2 0 6 0 7 0 110 0 111 0 122 0 123 1 195] 
#[1 6 61 0 7 6 65 0 110] 
#[0 0 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 62 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 0 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 10 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 62 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 6 69 0 129 6 73 0 196 6 77 0 197 6 81 0 201 6 81 0 202 6 81 0 203 6 77 1 122 6 77 1 123 6 93 1 194] 
#[0 1 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 54 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 58 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 66 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 1 78 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[0 6 97 0 18] 
#[0 1 82 0 18] 
#[0 1 86 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[0 1 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 1 94 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[0 1 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 1 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 1 106 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[0 1 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 1 114 1 195] 
#[0 1 118 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 0 105 0 67 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 0 125 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 6 101 0 186 6 101 0 189 6 101 0 190 6 101 0 191 6 101 0 193 6 101 0 194 1 137 0 195 6 101 0 198 6 101 0 212 6 101 0 213 6 101 0 214 6 101 0 215 6 101 0 218 6 101 0 219 6 101 0 221 6 101 0 222 6 101 0 223 6 101 0 228 6 101 0 230 6 101 0 231 6 101 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 6 101 1 24 6 101 1 25 6 101 1 35 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194 1 122 1 195] 
#[0 1 126 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 130 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 134 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 191 1 193 1 194 1 195] 
#[1 1 166 0 3 1 166 0 124 1 166 0 126 6 105 1 69] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 6 109 0 124] 
#[1 6 113 0 1 6 117 0 10 6 121 0 73 6 125 1 73 6 129 1 116] 
#[1 6 133 0 4 6 137 0 5 3 105 0 25 6 141 0 51 3 113 0 74 3 117 0 93 3 121 0 109 2 61 0 113 3 125 0 114 6 149 0 116 6 153 0 117 6 145 0 129 3 145 0 130 3 137 0 139 3 141 0 140 3 145 0 141 3 145 0 142 3 145 0 143 3 141 0 144 3 141 0 252 3 141 0 254 3 141 1 3 3 141 1 7 6 149 1 42 6 153 1 43 3 141 1 117 3 141 1 118 6 157 1 194] 
#[0 4 181 0 1] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 58 0 68 0 72 0 77 0 79 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 6 65 0 110 0 0 1 195] 
#[0 0 0 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 6 161 0 186 6 161 0 189 6 161 0 190 6 161 0 191 6 161 0 193 6 161 0 194 1 137 0 195 6 161 0 198 6 161 0 212 6 161 0 213 6 161 0 214 6 161 0 215 6 161 0 218 6 161 0 219 6 161 0 221 6 161 0 222 6 161 0 223 6 161 0 228 6 161 0 230 6 161 0 231 6 161 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194 1 174 1 195] 
#[0 1 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 62 0 63 0 64 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 0 0 1 195] 
#[0 1 182 1 195] 
#[0 0 0 1 195] 
#[1 4 45 0 3 4 49 0 68 2 61 0 113 6 165 0 129 6 169 1 14 4 61 1 15 4 65 1 194] 
#[1 0 50 0 3 0 50 0 5 6 173 0 66 0 50 0 113 0 50 1 194] 
#[1 6 177 0 56 6 181 0 57 2 105 0 66 6 185 0 73 6 189 0 83 6 193 0 84 6 197 0 85 6 201 0 104 6 221 1 137 6 209 1 175 6 213 1 178 6 217 1 179 6 221 1 185 6 225 1 186] 
#[1 2 61 0 113 6 229 0 129] 
#[1 4 85 0 3 6 233 0 22 6 237 0 25 4 97 0 56 2 97 0 57 6 241 0 61 6 245 0 62 2 105 0 66 4 105 0 73 6 249 0 76 2 121 0 81 1 137 0 83 2 125 0 85 2 129 0 102 0 173 0 104 6 253 0 194 1 137 0 195 7 1 0 198 7 5 0 236 7 9 0 255 7 13 1 12 7 17 1 25 7 21 1 37 7 25 1 115 7 29 1 124 7 33 1 137 7 37 1 142 7 41 1 148 7 45 1 174 7 49 1 194] 
#[1 7 53 0 1 7 57 0 25 2 61 0 113 7 61 0 129] 
#[1 4 181 0 1 4 185 0 3 4 189 0 25 2 61 0 113 4 213 0 116 7 65 0 129 4 197 1 26 4 201 1 27 4 205 1 28 4 209 1 29 4 213 1 33 4 201 1 34 4 213 1 42] 
#[1 2 61 0 113 7 69 0 129] 
#[1 2 61 0 113 7 73 0 129 7 77 1 143] 
#[1 2 61 0 113 7 81 0 129] 
#[0 1 186 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 190 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 194 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 198 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 202 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 1 206 0 1 1 206 0 3 1 206 0 5 1 206 0 7 1 206 0 34 1 206 0 35 1 206 0 36 1 206 0 37 1 206 0 38 1 206 0 47 1 206 0 51 1 206 0 52 1 206 0 53 1 206 0 56 1 206 0 57 1 206 0 59 1 206 0 60 0 15 0 61 1 206 0 63 1 206 0 64 1 206 0 66 0 15 0 67 1 206 0 69 1 206 0 71 1 206 0 73 1 206 0 75 0 15 0 76 0 15 0 81 1 206 0 83 0 15 0 85 1 206 0 86 1 206 0 87 1 206 0 92 1 206 0 95 1 206 0 96 1 206 0 98 1 206 0 99 1 206 0 100 1 206 0 101 0 15 0 102 1 206 0 103 1 206 0 104 1 206 0 105 1 206 0 106 1 206 0 107 1 206 0 108 1 206 0 113 1 206 0 116 1 206 0 117 1 206 0 118 1 206 0 120 1 206 0 121 1 206 0 124 1 206 1 194 0 15 1 195] 
#[1 1 214 0 1 1 214 0 3 1 214 0 5 1 214 0 7 1 214 0 34 1 214 0 35 1 214 0 36 1 214 0 37 1 214 0 38 1 214 0 47 1 214 0 51 1 214 0 52 1 214 0 53 1 214 0 56 1 214 0 57 1 214 0 59 1 214 0 60 0 19 0 61 1 214 0 63 1 214 0 64 1 214 0 66 0 19 0 67 1 214 0 69 1 214 0 71 1 214 0 73 1 214 0 75 0 19 0 76 0 19 0 81 1 214 0 83 0 19 0 85 1 214 0 86 1 214 0 87 1 214 0 92 1 214 0 95 1 214 0 96 1 214 0 98 1 214 0 99 1 214 0 100 1 214 0 101 0 19 0 102 1 214 0 103 1 214 0 104 1 214 0 105 1 214 0 106 1 214 0 107 1 214 0 108 1 214 0 113 1 214 0 116 1 214 0 117 1 214 0 118 1 214 0 120 1 214 0 121 1 214 0 124 1 214 1 194 0 19 1 195] 
#[1 1 222 0 1 1 222 0 3 1 222 0 5 1 222 0 7 1 222 0 34 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 38 1 222 0 47 1 222 0 51 1 222 0 52 1 222 0 53 1 222 0 56 1 222 0 57 1 222 0 59 1 222 0 60 0 23 0 61 1 222 0 63 1 222 0 64 1 222 0 66 0 23 0 67 1 222 0 69 1 222 0 71 1 222 0 73 1 222 0 75 0 23 0 76 0 23 0 81 1 222 0 83 0 23 0 85 1 222 0 86 1 222 0 87 1 222 0 92 1 222 0 95 1 222 0 96 1 222 0 98 1 222 0 99 1 222 0 100 1 222 0 101 0 23 0 102 1 222 0 103 1 222 0 104 1 222 0 105 1 222 0 106 1 222 0 107 1 222 0 108 1 222 0 113 1 222 0 116 1 222 0 117 1 222 0 118 1 222 0 120 1 222 0 121 1 222 0 124 1 222 1 194 0 23 1 195] 
#[0 1 230 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 7 1 234 0 34 1 234 0 35 1 234 0 36 1 234 0 37 1 234 0 38 1 234 0 47 1 234 0 51 1 234 0 52 1 234 0 53 1 234 0 56 1 234 0 57 1 234 0 59 1 234 0 60 0 27 0 61 1 234 0 63 1 234 0 64 1 234 0 66 0 27 0 67 1 234 0 69 1 234 0 71 1 234 0 73 1 234 0 75 0 27 0 76 0 27 0 81 1 234 0 83 0 27 0 85 1 234 0 86 1 234 0 87 1 234 0 92 1 234 0 95 1 234 0 96 1 234 0 98 1 234 0 99 1 234 0 100 1 234 0 101 0 27 0 102 1 234 0 103 1 234 0 104 1 234 0 105 1 234 0 106 1 234 0 107 1 234 0 108 1 234 0 113 1 234 0 116 1 234 0 117 1 234 0 118 1 234 0 120 1 234 0 121 1 234 0 124 1 234 1 194 0 27 1 195] 
#[1 0 31 0 1 0 31 0 3 0 31 0 5 0 31 0 7 0 31 0 34 0 31 0 35 0 31 0 36 0 31 0 37 0 31 0 38 0 31 0 47 0 31 0 51 0 31 0 52 0 31 0 53 0 31 0 56 0 31 0 57 0 31 0 59 0 31 0 60 0 35 0 61 0 31 0 63 0 31 0 64 0 31 0 66 0 35 0 67 0 31 0 69 0 31 0 71 0 31 0 73 0 31 0 75 0 35 0 76 0 35 0 81 0 31 0 83 0 35 0 85 0 31 0 86 0 31 0 87 0 31 0 92 0 31 0 95 0 31 0 96 0 31 0 98 0 31 0 99 0 31 0 100 0 31 0 101 0 35 0 102 0 31 0 103 0 31 0 104 0 31 0 105 0 31 0 106 0 31 0 107 0 31 0 108 0 31 0 113 0 31 0 116 0 31 0 117 0 31 0 118 0 31 0 120 0 31 0 121 0 31 0 124 0 31 1 194 0 35 1 195] 
#[0 0 0 1 195] 
#[0 1 254 1 195] 
#[0 2 2 1 195] 
#[0 2 6 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 2 101 0 61 0 97 0 63 0 101 0 64 2 105 0 66 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 7 85 0 76 2 121 0 81 1 137 0 83 2 125 0 85 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 2 129 0 102 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 7 105 0 186 7 105 0 189 7 105 0 190 7 105 0 191 7 105 0 194 1 137 0 195 7 105 0 198 7 105 0 212 7 105 0 213 7 105 0 214 7 105 0 215 7 105 0 218 7 105 0 219 7 105 0 221 7 105 0 222 7 105 0 223 7 105 0 228 7 105 0 230 7 105 0 231 7 105 0 235 7 105 0 236 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 7 105 0 255 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 7 105 1 12 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 7 105 1 115 7 105 1 124 7 105 1 137 7 105 1 142 7 105 1 148 7 105 1 155 7 105 1 156 7 105 1 174 7 105 1 190 3 25 1 194 2 10 1 195] 
#[0 2 14 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 39 0 1 0 39 0 3 0 39 0 5 0 39 0 7 0 39 0 34 0 39 0 35 0 39 0 36 0 39 0 37 0 39 0 38 0 39 0 47 0 39 0 51 0 39 0 52 0 39 0 53 0 39 0 56 0 39 0 57 0 39 0 59 0 39 0 60 0 39 0 61 0 39 0 63 0 39 0 64 0 39 0 66 2 22 0 67 0 39 0 69 0 39 0 71 0 39 0 73 0 39 0 75 0 39 0 76 0 39 0 81 0 39 0 83 0 39 0 85 0 39 0 86 0 39 0 87 0 39 0 92 0 39 0 95 0 39 0 96 0 39 0 98 0 39 0 99 0 39 0 100 0 39 0 101 0 39 0 102 0 39 0 103 0 39 0 104 0 39 0 105 0 39 0 106 0 39 0 107 0 39 0 108 0 39 0 113 0 39 0 116 0 39 0 117 0 39 0 118 0 39 0 120 0 39 0 121 0 39 0 124 0 39 1 194 0 39 1 195] 
#[0 2 26 1 195] 
#[1 2 101 0 61 7 121 0 76 2 121 0 81 2 125 0 85 2 129 0 102 7 141 1 115 7 141 1 124 7 141 1 142 7 141 1 148 7 141 1 159 7 141 1 160 7 141 1 174 7 141 1 190 2 30 1 195] 
#[0 2 34 0 61 0 76 0 81 0 85 0 102 1 195] 
#[1 0 43 0 61 2 42 0 67 0 43 0 76 0 43 0 81 0 43 0 85 0 43 0 102 0 43 1 195] 
#[0 2 46 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 6 241 0 61 0 97 0 63 0 101 0 64 2 105 0 66 7 157 0 67 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 2 117 0 76 2 121 0 81 1 137 0 83 2 125 0 85 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 2 129 0 102 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 7 173 0 186 7 173 0 189 7 173 0 190 7 173 0 191 7 173 0 194 1 137 0 195 7 173 0 198 7 173 0 212 7 173 0 213 7 173 0 214 7 173 0 215 7 173 0 218 7 173 0 219 7 173 0 221 7 173 0 222 7 173 0 223 7 173 0 228 7 173 0 230 7 173 0 231 7 173 0 235 7 173 0 236 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 7 173 0 255 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 7 173 1 12 0 253 1 13 7 173 1 25 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 7 173 1 115 7 173 1 124 7 173 1 137 7 173 1 142 7 165 1 148 7 173 1 156 7 173 1 163 7 173 1 167 7 173 1 168 7 173 1 170 7 173 1 172 7 173 1 173 7 173 1 174 3 25 1 194 2 50 1 195] 
#[0 2 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 2 58 1 195] 
#[1 2 62 0 4 6 241 0 61 7 185 0 67 6 249 0 76 2 121 0 81 2 125 0 85 2 129 0 102 7 197 1 25 7 197 1 115 7 197 1 124 7 197 1 142 7 197 1 148 7 197 1 160 7 197 1 166 7 197 1 169 7 197 1 171 7 197 1 172 7 197 1 173 7 197 1 174 2 62 1 195] 
#[0 2 66 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 2 70 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 2 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 2 78 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 2 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 2 86 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[1 2 90 0 1 2 90 0 3 2 90 0 5 2 90 0 7 2 90 0 34 2 90 0 35 2 90 0 36 2 90 0 37 2 90 0 38 2 90 0 47 2 90 0 51 2 90 0 52 2 90 0 53 2 90 0 56 2 90 0 57 2 90 0 59 2 90 0 60 0 47 0 61 2 90 0 63 2 90 0 64 2 90 0 66 0 47 0 67 2 90 0 69 2 90 0 71 2 90 0 73 2 90 0 75 0 47 0 76 0 47 0 81 2 90 0 83 0 47 0 85 2 90 0 86 2 90 0 87 2 90 0 92 2 90 0 95 2 90 0 96 2 90 0 98 2 90 0 99 2 90 0 100 2 90 0 101 0 47 0 102 2 90 0 103 2 90 0 104 2 90 0 105 2 90 0 106 2 90 0 107 2 90 0 108 2 90 0 113 2 90 0 116 2 90 0 117 2 90 0 118 2 90 0 120 2 90 0 121 2 90 0 124 2 90 1 194 0 47 1 195] 
#[1 2 98 0 1 2 98 0 3 2 98 0 5 2 98 0 7 2 98 0 34 2 98 0 35 2 98 0 36 2 98 0 37 2 98 0 38 2 98 0 47 2 98 0 51 2 98 0 52 2 98 0 53 2 98 0 56 2 98 0 57 2 98 0 59 2 98 0 60 0 51 0 61 2 98 0 63 2 98 0 64 2 98 0 66 0 51 0 67 2 98 0 69 2 98 0 71 2 98 0 73 2 98 0 75 0 51 0 76 0 51 0 81 2 98 0 83 0 51 0 85 2 98 0 86 2 98 0 87 2 98 0 92 2 98 0 95 2 98 0 96 2 98 0 98 2 98 0 99 2 98 0 100 2 98 0 101 0 51 0 102 2 98 0 103 2 98 0 104 2 98 0 105 2 98 0 106 2 98 0 107 2 98 0 108 2 98 0 113 2 98 0 116 2 98 0 117 2 98 0 118 2 98 0 120 2 98 0 121 2 98 0 124 2 98 1 194 0 51 1 195] 
#[1 2 106 0 1 2 106 0 3 2 106 0 5 2 106 0 7 2 106 0 34 2 106 0 35 2 106 0 36 2 106 0 37 2 106 0 38 2 106 0 47 2 106 0 51 2 106 0 52 2 106 0 53 2 106 0 56 2 106 0 57 2 106 0 59 2 106 0 60 0 55 0 61 2 106 0 63 2 106 0 64 2 106 0 66 0 55 0 67 2 106 0 69 2 106 0 71 2 106 0 73 2 106 0 75 0 55 0 76 0 55 0 81 2 106 0 83 0 55 0 85 2 106 0 86 2 106 0 87 2 106 0 92 2 106 0 95 2 106 0 96 2 106 0 98 2 106 0 99 2 106 0 100 2 106 0 101 0 55 0 102 2 106 0 103 2 106 0 104 2 106 0 105 2 106 0 106 2 106 0 107 2 106 0 108 2 106 0 113 2 106 0 116 2 106 0 117 2 106 0 118 2 106 0 120 2 106 0 121 2 106 0 124 2 106 1 194 0 55 1 195] 
#[1 2 114 0 1 2 114 0 3 2 114 0 5 2 114 0 7 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 38 2 114 0 47 2 114 0 51 2 114 0 52 2 114 0 53 2 114 0 56 2 114 0 57 2 114 0 59 2 114 0 60 0 59 0 61 2 114 0 63 2 114 0 64 2 114 0 66 2 114 0 69 2 114 0 71 2 114 0 73 2 114 0 75 0 59 0 76 0 59 0 81 2 114 0 83 0 59 0 85 2 114 0 86 2 114 0 87 2 114 0 92 2 114 0 95 2 114 0 96 2 114 0 98 2 114 0 99 2 114 0 100 2 114 0 101 0 59 0 102 2 114 0 103 2 114 0 104 2 114 0 105 2 114 0 106 2 114 0 107 2 114 0 108 2 114 0 113 2 114 0 116 2 114 0 117 2 114 0 118 2 114 0 120 2 114 0 121 2 114 0 124 2 114 1 194 0 59 1 195] 
#[1 6 113 0 1 6 117 0 10 7 209 0 73 2 61 0 113 7 213 0 129 7 217 1 73 6 129 1 116] 
#[1 7 221 0 4 6 137 0 5 3 105 0 25 6 141 0 51 3 113 0 74 3 117 0 93 7 225 0 109 2 61 0 113 3 125 0 114 6 149 0 116 6 153 0 117 7 229 0 129 7 233 0 130 3 137 0 139 3 141 0 140 7 233 0 141 7 233 0 142 7 233 0 143 3 141 0 144 7 237 0 204 7 241 0 205 7 245 0 208 7 245 0 210 3 141 0 252 3 141 0 254 3 141 1 3 3 141 1 7 6 149 1 42 6 153 1 43 3 141 1 117 3 141 1 118 7 253 1 194] 
#[1 0 29 0 1 3 29 0 3 3 33 0 5 8 1 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 8 5 0 109 3 209 0 110 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 41 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 3 213 0 135 8 9 0 136 3 221 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 3 225 0 182 3 225 0 183 3 49 0 201 3 49 0 202 3 49 0 203 8 13 0 206 8 17 0 207 8 21 0 209 8 21 0 210 8 25 0 211 0 253 0 237 3 225 0 245 1 205 0 246 1 209 0 249 3 225 0 250 0 253 1 0 3 225 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 93 1 194] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 8 29 0 129 8 33 0 201 8 33 0 202 8 33 0 203] 
#[1 0 102 0 1 0 63 0 2 0 63 0 4 0 102 0 5 0 63 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 67 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 50 0 102 0 77 0 102 0 80 0 63 0 110 0 102 0 120 0 102 0 121 8 41 0 145 0 102 1 191 0 102 1 193 0 102 1 194] 
#[1 8 45 0 2 6 65 0 110] 
#[1 2 126 0 2 2 126 0 4 2 126 0 6 8 37 0 22 2 126 0 110 8 49 0 145] 
#[0 2 130 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 2 134 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 2 138 0 2 0 110] 
#[0 2 142 0 2 0 4 0 6 0 110] 
#[0 2 146 0 2] 
#[0 8 53 0 2] 
#[0 2 150 0 2] 
#[1 2 154 0 2 8 57 0 110] 
#[0 2 158 0 2] 
#[0 2 162 0 2 0 110] 
#[1 6 113 0 1 5 33 0 3 5 37 0 5 6 117 0 10 2 166 0 41 6 121 0 73 8 89 0 89 8 89 0 90 8 89 0 91 8 73 0 98 2 166 0 111 2 61 0 113 8 77 0 129 8 85 0 201 8 85 0 202 8 85 0 203 6 125 1 73 8 85 1 109 8 89 1 110 6 129 1 116] 
#[1 0 71 0 1 2 174 0 3 2 174 0 4 0 71 0 5 0 71 0 7 2 170 0 8 2 170 0 9 2 170 0 10 2 170 0 11 2 170 0 12 2 170 0 13 2 170 0 14 2 170 0 15 2 170 0 16 2 170 0 17 2 170 0 19 2 170 0 20 2 170 0 21 2 170 0 22 2 170 0 23 2 170 0 24 2 170 0 25 2 170 0 26 2 170 0 27 2 170 0 28 2 170 0 29 2 170 0 30 2 170 0 31 2 170 0 32 2 170 0 33 0 71 0 34 0 71 0 35 0 71 0 36 0 71 0 37 2 174 0 38 2 170 0 39 2 170 0 40 2 170 0 41 2 170 0 42 2 170 0 43 2 170 0 44 2 170 0 45 2 170 0 46 2 174 0 47 2 170 0 48 2 170 0 49 2 170 0 50 2 174 0 51 2 174 0 52 2 174 0 53 2 174 0 54 2 174 0 56 2 174 0 57 2 174 0 59 2 174 0 60 2 174 0 61 2 174 0 62 2 174 0 63 2 174 0 64 2 174 0 65 2 174 0 66 2 174 0 67 2 174 0 69 2 174 0 71 2 174 0 73 2 174 0 75 2 174 0 76 2 170 0 77 2 170 0 80 2 174 0 81 2 174 0 83 2 174 0 85 2 174 0 86 2 174 0 87 2 174 0 92 2 174 0 95 2 174 0 96 2 174 0 98 2 174 0 99 2 174 0 100 2 174 0 101 2 174 0 102 2 174 0 103 2 174 0 104 2 174 0 105 2 174 0 106 2 174 0 107 2 174 0 108 2 170 0 110 2 174 0 113 2 174 0 116 2 174 0 117 2 174 0 118 0 71 0 120 0 71 0 121 2 174 0 124 2 170 1 191 2 170 1 193 0 71 1 194 2 174 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 3 201 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 3 205 0 109 3 209 0 110 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 3 213 0 135 3 217 0 136 3 221 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 93 0 182 8 93 0 183 0 253 0 237 8 93 0 245 1 205 0 246 1 209 0 249 8 93 0 250 0 253 1 0 8 93 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 8 97 0 130 8 97 0 141 8 97 0 142 8 97 0 143 6 149 1 42 6 153 1 43] 
#[1 4 17 0 1 6 137 0 5 8 101 0 25 4 21 0 73 2 61 0 113 3 125 0 114 6 149 0 116 6 153 0 117 4 25 0 129 8 105 0 130 8 105 0 141 8 105 0 142 8 105 0 143 4 29 0 246 1 209 0 249 6 149 1 42 6 153 1 43 4 33 1 194] 
#[1 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 8 109 0 130 8 109 0 141 8 109 0 142 8 109 0 143 6 149 1 42 6 153 1 43] 
#[1 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 8 113 0 130 8 113 0 141 8 113 0 142 8 113 0 143 6 149 1 42 6 153 1 43] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 117 0 182 8 117 0 183 0 253 0 237 8 117 0 245 1 205 0 246 1 209 0 249 8 117 0 250 0 253 1 0 8 117 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 2 178 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[1 0 102 0 1 2 182 0 4 0 102 0 5 0 102 0 7 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 67 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 50 0 102 0 77 0 102 0 80 0 75 0 110 0 102 0 120 0 102 0 121 8 121 0 145 0 102 1 191 0 102 1 193 0 102 1 194] 
#[0 2 186 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[1 8 125 0 4 8 129 0 110] 
#[0 2 190 0 4 0 110] 
#[1 8 133 0 1 8 137 0 111] 
#[0 2 194 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[0 2 198 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[0 2 202 0 4 0 110] 
#[1 0 29 0 1 0 33 0 3 8 141 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 6 161 0 186 6 161 0 189 6 161 0 190 6 161 0 191 6 161 0 193 6 161 0 194 1 137 0 195 6 161 0 198 6 161 0 212 6 161 0 213 6 161 0 214 6 161 0 215 6 161 0 218 6 161 0 219 6 161 0 221 6 161 0 222 6 161 0 223 6 161 0 228 6 161 0 230 6 161 0 231 6 161 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 2 206 0 4 0 110] 
#[0 2 210 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 2 214 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 2 218 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[1 0 79 0 1 1 146 0 5 1 146 0 7 1 146 0 8 1 146 0 9 1 146 0 10 1 146 0 11 1 146 0 12 1 146 0 13 1 146 0 14 1 146 0 15 1 146 0 16 1 146 0 17 1 146 0 19 1 146 0 20 1 146 0 21 1 146 0 22 1 146 0 23 1 146 0 24 1 146 0 25 1 146 0 26 1 146 0 27 1 146 0 28 1 146 0 29 1 146 0 30 1 146 0 31 1 146 0 32 1 146 0 33 1 146 0 34 1 146 0 35 1 146 0 36 1 146 0 37 1 146 0 39 1 146 0 40 1 146 0 41 1 146 0 42 1 146 0 43 1 146 0 44 1 146 0 45 1 146 0 46 1 146 0 48 1 146 0 49 1 146 0 50 1 146 0 77 1 146 0 80 1 146 0 110 2 222 0 111 1 146 0 120 1 146 0 121 1 146 1 191 1 146 1 193 1 146 1 194] 
#[1 0 83 0 1 1 150 0 5 1 150 0 7 1 150 0 8 1 150 0 9 1 150 0 10 1 150 0 11 1 150 0 12 1 150 0 13 1 150 0 14 1 150 0 15 1 150 0 16 1 150 0 17 1 150 0 19 1 150 0 20 1 150 0 21 1 150 0 22 1 150 0 23 1 150 0 24 1 150 0 25 1 150 0 26 1 150 0 27 1 150 0 28 1 150 0 29 1 150 0 30 1 150 0 31 1 150 0 32 1 150 0 33 1 150 0 34 1 150 0 35 1 150 0 36 1 150 0 37 1 150 0 39 1 150 0 40 1 150 0 41 1 150 0 42 1 150 0 43 1 150 0 44 1 150 0 45 1 150 0 46 1 150 0 48 1 150 0 49 1 150 0 50 1 150 0 77 1 150 0 80 1 150 0 110 2 226 0 111 1 150 0 120 1 150 0 121 1 150 1 191 1 150 1 193 1 150 1 194] 
#[0 2 230 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 2 234 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[1 6 113 0 1 6 137 0 5 6 117 0 10 6 121 0 73 8 145 0 74 8 149 0 93 3 125 0 114 6 149 0 116 6 153 0 117 8 153 0 130 8 153 0 141 8 153 0 142 8 153 0 143 6 149 1 42 6 153 1 43 6 125 1 73 6 129 1 116] 
#[0 2 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 157 0 182 8 157 0 183 0 253 0 237 8 157 0 245 1 205 0 246 1 209 0 249 8 157 0 250 0 253 1 0 8 157 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 2 242 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 109 0 110 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[1 8 161 0 6 3 209 0 110 8 165 0 136] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 8 169 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 3 205 0 109 8 173 0 110 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 8 177 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 181 0 182 8 181 0 183 0 253 0 237 8 181 0 245 1 205 0 246 1 209 0 249 8 181 0 250 0 253 1 0 8 181 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 2 246 0 6 0 110] 
#[0 2 250 0 6 0 110] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 3 45 0 182 3 45 0 183 3 45 0 185 0 253 0 237 3 45 0 245 1 205 0 246 1 209 0 249 3 45 0 250 0 253 1 0 3 45 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 4 21 0 73] 
#[0 0 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 170 0 2 0 170 0 4 0 170 0 6 0 170 0 7 0 170 0 8 0 170 0 10 0 170 0 11 0 170 0 13 0 170 0 14 0 170 0 17 0 170 0 19 0 170 0 20 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 0 170 0 34 5 189 0 35 0 170 0 36 5 193 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 48 0 170 0 49 5 197 0 50 0 170 0 77 0 170 0 80 0 170 0 88 0 170 0 110 0 170 0 111 0 170 0 122 0 170 0 123 0 170 1 191 0 170 1 195] 
#[0 2 254 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[1 8 185 0 10 6 121 0 73] 
#[0 3 2 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[0 3 6 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[0 3 10 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[0 3 14 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[0 3 18 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 3 73 0 238 3 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 8 197 0 1 8 201 0 25 2 61 0 113 8 205 0 129] 
#[0 0 106 0 18] 
#[0 8 209 0 18] 
#[1 6 113 0 1 8 213 0 10 6 125 1 73 6 129 1 116] 
#[0 3 22 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[1 8 217 0 7 2 61 0 113 8 221 0 129] 
#[1 8 225 0 4 6 137 0 5 8 229 0 7 3 105 0 25 6 141 0 51 3 113 0 74 3 117 0 93 8 233 0 94 3 125 0 114 6 149 0 116 6 153 0 117 8 237 0 130 8 237 0 141 8 237 0 142 8 237 0 143 8 253 0 252 8 253 0 254 8 253 1 3 8 253 1 7 8 245 1 16 8 249 1 17 8 253 1 18 6 149 1 42 6 153 1 43 8 253 1 117 8 253 1 118 9 1 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 3 233 0 51 0 81 0 56 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 9 5 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 9 5 0 164 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 4 241 1 194] 
#[1 4 45 0 3 4 49 0 68 9 9 1 14 4 61 1 15 4 65 1 194] 
#[0 3 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 9 13 0 3] 
#[1 9 17 0 68 9 21 0 79 9 25 1 128 9 29 1 130] 
#[1 9 33 0 7 2 61 0 113 9 37 0 129] 
#[0 3 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 3 34 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[0 9 41 0 106] 
#[1 9 45 0 4 9 49 0 114 9 53 1 38 9 57 1 39] 
#[1 9 61 0 50 3 38 0 72] 
#[0 9 65 0 73] 
#[1 4 45 0 3 4 49 0 68 2 61 0 113 9 69 0 129 9 73 1 14 4 61 1 15 4 65 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 77 0 182 9 77 0 183 0 253 0 237 9 77 0 245 1 205 0 246 1 209 0 249 9 77 0 250 0 253 1 0 9 77 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 9 81 0 1 9 85 0 25 2 61 0 113 9 89 0 129] 
#[0 3 42 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 3 46 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 3 50 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 3 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 3 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 3 62 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 3 66 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 3 70 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 3 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 9 93 0 72 9 97 1 30] 
#[1 9 101 0 7 3 78 0 72] 
#[1 8 213 0 10 9 105 0 57 2 105 0 66 9 109 0 73 2 121 0 81 2 129 0 102 2 61 0 113 7 213 0 129 9 113 1 73 9 117 1 115 9 121 1 124 9 125 1 137] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 9 129 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 9 149 0 57 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 9 149 0 83 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 9 133 0 104 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 9 137 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 9 137 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 141 0 182 9 141 0 183 9 141 0 185 9 145 0 194 9 149 0 195 9 153 0 216 0 253 0 237 9 141 0 245 1 205 0 246 1 209 0 249 9 141 0 250 0 253 1 0 9 141 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 9 157 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 9 161 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 9 165 0 1 2 61 0 113 9 169 0 129] 
#[0 9 173 0 1] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 177 0 182 9 177 0 183 9 177 0 185 0 253 0 237 9 177 0 245 1 205 0 246 1 209 0 249 9 177 0 250 0 253 1 0 9 177 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 181 0 182 9 181 0 183 0 253 0 237 9 181 0 245 1 205 0 246 1 209 0 249 9 181 0 250 0 253 1 0 9 181 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 9 185 0 4 2 61 0 113 9 189 0 114 9 201 0 129 9 193 1 31 9 197 1 32 9 201 1 34] 
#[0 9 205 0 50] 
#[0 3 82 0 4 0 72 0 110] 
#[1 9 93 0 72 9 209 1 30] 
#[1 3 86 0 72 9 213 0 110] 
#[0 3 90 0 72] 
#[0 3 94 0 72] 
#[0 9 217 0 7] 
#[0 3 98 0 72 0 110] 
#[0 3 102 0 7] 
#[0 9 221 0 97] 
#[1 4 253 0 5 5 1 0 21] 
#[1 4 249 0 1 0 134 0 2 0 134 0 3 0 134 0 4 5 93 0 5 0 134 0 6 0 134 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 19 0 134 0 20 5 97 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 48 0 134 0 49 0 134 0 50 0 134 0 77 0 134 0 80 0 134 0 88 0 134 0 110 0 134 0 111 0 209 0 120 0 6 0 121 0 134 0 122 0 134 0 123 5 105 0 146 0 249 0 147 9 225 0 158 0 134 1 191 0 134 1 193 5 9 1 194 0 134 1 195] 
#[0 3 106 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 193 1 195] 
#[0 6 121 0 73] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 9 229 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 233 0 182 9 233 0 183 9 233 0 185 0 253 0 237 9 233 0 245 1 205 0 246 1 209 0 249 9 233 0 250 0 253 1 0 9 233 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 9 237 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 9 241 0 109 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 9 245 0 159 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 249 0 182 9 249 0 183 0 253 0 237 9 249 0 245 1 205 0 246 1 209 0 249 9 249 0 250 0 253 1 0 9 249 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 253 0 182 9 253 0 183 9 253 0 185 0 253 0 237 9 253 0 245 1 205 0 246 1 209 0 249 9 253 0 250 0 253 1 0 9 253 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 10 1 0 114] 
#[0 3 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 10 5 0 10 10 9 1 77] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 13 0 182 10 13 0 183 10 13 0 185 0 253 0 237 10 13 0 245 1 205 0 246 1 209 0 249 10 13 0 250 0 253 1 0 10 13 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 10 17 0 7 6 65 0 110] 
#[1 0 29 0 1 0 33 0 3 10 21 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 3 161 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 10 25 0 55 10 29 0 70 10 33 0 232 10 37 0 233] 
#[0 3 114 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[1 10 41 0 4 6 137 0 5 10 45 0 109 2 61 0 113 3 125 0 114 6 149 0 116 6 153 0 117 8 189 0 129 10 49 0 130 10 49 0 141 10 49 0 142 10 49 0 143 7 237 0 204 7 241 0 205 7 245 0 208 7 245 0 210 6 149 1 42 6 153 1 43 10 53 1 194] 
#[1 5 33 0 3 5 37 0 5 10 57 0 6 3 37 0 109 3 209 0 110 2 61 0 113 8 189 0 129 10 61 0 136 3 49 0 201 3 49 0 202 3 49 0 203 8 13 0 206 8 17 0 207 8 21 0 209 8 21 0 210 8 25 0 211 8 193 1 194] 
#[1 3 118 0 7 8 37 0 22 3 118 0 88 3 118 0 110 10 65 0 145] 
#[1 10 69 0 7 10 73 0 110] 
#[0 3 122 0 7 0 110] 
#[1 8 37 0 22 10 77 0 145] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 10 81 0 129 10 85 0 201 10 85 0 202 10 85 0 203 10 89 1 120 10 93 1 121] 
#[0 3 126 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 97 0 182 10 97 0 183 10 97 0 185 0 253 0 237 10 97 0 245 1 205 0 246 1 209 0 249 10 97 0 250 0 253 1 0 10 97 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 101 0 182 10 101 0 183 10 101 0 185 0 253 0 237 10 101 0 245 1 205 0 246 1 209 0 249 10 101 0 250 0 253 1 0 10 101 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 105 0 182 10 105 0 183 0 253 0 237 10 105 0 245 1 205 0 246 1 209 0 249 10 105 0 250 0 253 1 0 10 105 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 3 130 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 10 113 0 186 10 113 0 189 10 113 0 190 10 113 0 191 10 113 0 198 10 113 0 212 10 113 0 213 10 113 0 214 10 113 0 215 10 113 0 218 10 113 0 219 10 113 0 221 10 113 0 222 10 113 0 223 10 113 0 228 10 113 0 229 10 113 0 230 10 113 0 231 10 113 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 10 117 0 13] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 121 0 182 10 121 0 183 10 121 0 185 0 253 0 237 10 121 0 245 1 205 0 246 1 209 0 249 10 121 0 250 0 253 1 0 10 121 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 125 0 182 10 125 0 183 10 125 0 185 0 253 0 237 10 125 0 245 1 205 0 246 1 209 0 249 10 125 0 250 0 253 1 0 10 125 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 10 129 0 114] 
#[1 4 249 0 1 10 133 0 5 10 137 0 114 0 209 0 120 0 6 0 121 10 141 0 146 0 249 0 147 10 145 0 158 10 149 0 163 5 9 1 194] 
#[0 3 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 3 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 4 249 0 1 3 142 0 2 3 142 0 3 3 142 0 4 10 153 0 5 3 142 0 6 3 142 0 7 3 142 0 8 3 142 0 9 3 142 0 10 3 142 0 11 3 142 0 12 3 142 0 13 3 142 0 14 3 142 0 15 3 142 0 16 3 142 0 17 3 142 0 19 3 142 0 20 10 157 0 21 3 142 0 22 3 142 0 23 3 142 0 24 3 142 0 25 3 142 0 26 3 142 0 27 3 142 0 28 3 142 0 29 3 142 0 30 3 142 0 31 3 142 0 32 3 142 0 33 3 142 0 34 3 142 0 35 3 142 0 36 3 142 0 37 3 142 0 39 3 142 0 40 3 142 0 41 3 142 0 42 3 142 0 43 3 142 0 44 3 142 0 45 3 142 0 46 3 142 0 48 3 142 0 49 3 142 0 50 3 142 0 77 3 142 0 80 3 142 0 88 3 142 0 110 3 142 0 111 0 209 0 120 0 6 0 121 3 142 0 122 3 142 0 123 10 161 0 146 0 249 0 147 10 165 0 158 10 169 0 162 3 142 1 191 3 142 1 193 5 9 1 194 3 142 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 173 0 182 10 173 0 183 10 173 0 185 0 253 0 237 10 173 0 245 1 205 0 246 1 209 0 249 10 173 0 250 0 253 1 0 10 173 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 10 177 0 114] 
#[0 3 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 3 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 4 249 0 1 3 154 0 2 3 154 0 3 3 154 0 4 10 153 0 5 3 154 0 6 3 154 0 7 3 154 0 8 3 154 0 9 3 154 0 10 3 154 0 11 3 154 0 12 3 154 0 13 3 154 0 14 3 154 0 15 3 154 0 16 3 154 0 17 3 154 0 19 3 154 0 20 10 157 0 21 3 154 0 22 3 154 0 23 3 154 0 24 3 154 0 25 3 154 0 26 3 154 0 27 3 154 0 28 3 154 0 29 3 154 0 30 3 154 0 31 3 154 0 32 3 154 0 33 3 154 0 34 3 154 0 35 3 154 0 36 3 154 0 37 3 154 0 39 3 154 0 40 3 154 0 41 3 154 0 42 3 154 0 43 3 154 0 44 3 154 0 45 3 154 0 46 3 154 0 48 3 154 0 49 3 154 0 50 3 154 0 77 3 154 0 80 3 154 0 88 3 154 0 110 3 154 0 111 0 209 0 120 0 6 0 121 3 154 0 122 3 154 0 123 10 161 0 146 0 249 0 147 10 165 0 158 10 169 0 162 3 154 1 191 3 154 1 193 5 9 1 194 3 154 1 195] 
#[1 4 249 0 1 3 158 0 2 3 158 0 3 3 158 0 4 10 153 0 5 3 158 0 6 3 158 0 7 3 158 0 8 3 158 0 9 3 158 0 10 3 158 0 11 3 158 0 12 3 158 0 13 3 158 0 14 3 158 0 15 3 158 0 16 3 158 0 17 3 158 0 19 3 158 0 20 10 157 0 21 3 158 0 22 3 158 0 23 3 158 0 24 3 158 0 25 3 158 0 26 3 158 0 27 3 158 0 28 3 158 0 29 3 158 0 30 3 158 0 31 3 158 0 32 3 158 0 33 3 158 0 34 3 158 0 35 3 158 0 36 3 158 0 37 3 158 0 39 3 158 0 40 3 158 0 41 3 158 0 42 3 158 0 43 3 158 0 44 3 158 0 45 3 158 0 46 3 158 0 48 3 158 0 49 3 158 0 50 3 158 0 77 3 158 0 80 3 158 0 88 3 158 0 110 3 158 0 111 0 209 0 120 0 6 0 121 3 158 0 122 3 158 0 123 10 161 0 146 0 249 0 147 10 165 0 158 10 169 0 162 3 158 1 191 3 158 1 193 5 9 1 194 3 158 1 195] 
#[0 3 162 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 166 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 170 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 174 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 178 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 182 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 186 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 190 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 194 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 198 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 202 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 206 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 210 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[0 3 214 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[0 10 181 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 10 185 0 182 10 185 0 183 0 253 0 237 10 185 0 245 1 205 0 246 1 209 0 249 10 185 0 250 0 253 1 0 10 185 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 3 218 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 10 189 0 167 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[0 3 222 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 226 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 3 230 0 1 0 3 0 5 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 10 193 0 167 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 10 197 0 167 10 197 0 168 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 10 201 0 167 10 201 0 168 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 10 205 0 170 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 10 209 0 170 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 10 213 0 170 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 10 217 0 171 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 10 221 0 171 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 10 225 0 171 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 10 229 0 171 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 10 233 0 171 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 10 237 0 171 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 10 241 0 172 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 10 245 0 172 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 10 249 0 172 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 10 253 0 172 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 11 1 0 173 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 11 5 0 174 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 11 9 0 175 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 11 13 0 176 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 11 17 0 176 11 21 0 177 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 11 25 0 176 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 11 29 0 182 11 29 0 183 0 253 0 237 11 29 0 245 1 205 0 246 1 209 0 249 11 29 0 250 0 253 1 0 11 29 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 3 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 11 33 0 182 11 33 0 183 0 253 0 237 11 33 0 245 1 205 0 246 1 209 0 249 11 33 0 250 0 253 1 0 11 33 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 3 238 0 7 8 37 0 22 3 238 0 110 11 37 0 145] 
#[1 11 41 0 7 11 45 0 110] 
#[0 3 242 0 7 0 110] 
#[1 8 37 0 22 11 49 0 145] 
#[0 3 246 0 7 0 110] 
#[0 3 250 0 7 0 110] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 11 53 0 129 11 57 0 201 11 57 0 202 11 57 0 203] 
#[1 0 29 0 1 11 61 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 11 73 0 182 11 73 0 183 0 253 0 237 11 73 0 245 1 205 0 246 11 69 0 247 11 73 0 248 1 209 0 249 11 73 0 250 0 253 1 0 11 73 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 3 254 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 4 2 0 3 4 2 0 124 4 2 0 126 11 77 1 63 11 81 1 64] 
#[1 11 85 0 125 11 89 1 50 11 89 1 51 11 89 1 52 11 101 1 53 11 105 1 54] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 11 109 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 11 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 11 165 1 74 11 169 1 75 11 173 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 11 173 1 101 11 173 1 102 11 189 1 103 11 189 1 105] 
#[1 6 113 0 1 8 213 0 10 2 61 0 113 11 253 0 129 6 125 1 73 12 1 1 116] 
#[0 12 5 0 1] 
#[0 4 6 0 18] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 12 9 0 182 12 9 0 183 0 253 0 237 12 9 0 245 1 205 0 246 1 209 0 249 12 9 0 250 0 253 1 0 12 9 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 6 137 0 5 8 101 0 25 3 125 0 114 6 149 0 116 6 153 0 117 8 105 0 130 8 105 0 141 8 105 0 142 8 105 0 143 6 149 1 42 6 153 1 43] 
#[1 2 182 0 4 8 37 0 22 2 182 0 110 8 121 0 145] 
#[0 2 222 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[0 2 226 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[1 6 137 0 5 8 145 0 74 8 149 0 93 3 125 0 114 6 149 0 116 6 153 0 117 8 153 0 130 8 153 0 141 8 153 0 142 8 153 0 143 6 149 1 42 6 153 1 43] 
#[0 4 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 62 0 63 0 64 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 4 45 0 3 4 49 0 68 12 13 1 14 4 61 1 15 4 65 1 194] 
#[1 0 87 0 1 4 14 0 3 4 14 0 4 0 87 0 5 0 87 0 7 3 26 0 8 3 26 0 9 3 26 0 10 3 26 0 11 3 26 0 12 3 26 0 13 3 26 0 14 3 26 0 15 3 26 0 16 3 26 0 17 3 26 0 19 3 26 0 20 3 26 0 21 3 26 0 22 3 26 0 23 3 26 0 24 3 26 0 25 3 26 0 26 3 26 0 27 3 26 0 28 3 26 0 29 3 26 0 30 3 26 0 31 3 26 0 32 3 26 0 33 0 87 0 34 0 87 0 35 0 87 0 36 0 87 0 37 4 14 0 38 3 26 0 39 3 26 0 40 3 26 0 41 3 26 0 42 3 26 0 43 3 26 0 44 3 26 0 45 3 26 0 46 4 14 0 47 3 26 0 48 3 26 0 49 3 26 0 50 4 14 0 51 4 14 0 52 4 14 0 53 4 14 0 56 4 14 0 57 4 14 0 59 4 14 0 60 4 14 0 61 4 14 0 63 4 14 0 64 4 14 0 66 4 14 0 67 4 14 0 69 4 14 0 71 4 14 0 73 4 14 0 75 4 14 0 76 3 26 0 77 3 26 0 80 4 14 0 81 4 14 0 83 4 14 0 85 4 14 0 86 4 14 0 87 4 14 0 92 4 14 0 95 4 14 0 96 4 14 0 98 4 14 0 99 4 14 0 100 4 14 0 101 4 14 0 102 4 14 0 103 4 14 0 104 4 14 0 105 4 14 0 106 4 14 0 107 4 14 0 108 3 26 0 110 4 14 0 113 4 14 0 116 4 14 0 117 4 14 0 118 0 87 0 120 0 87 0 121 4 14 0 124 3 26 1 191 3 26 1 193 0 87 1 194 4 14 1 195] 
#[1 2 61 0 113 12 17 0 129] 
#[1 2 61 0 113 12 21 0 129] 
#[1 6 173 0 66 2 61 0 113 12 25 0 129 12 29 1 176 12 33 1 177] 
#[1 2 61 0 113 12 37 0 129] 
#[1 2 61 0 113 12 25 0 129 12 41 1 176 12 33 1 177] 
#[0 12 45 0 116 1 42] 
#[1 2 61 0 113 7 73 0 129 12 49 1 143] 
#[1 2 61 0 113 12 25 0 129 12 53 1 176 12 33 1 177] 
#[0 4 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 57 0 3] 
#[1 2 61 0 113 12 61 0 129] 
#[1 9 93 0 72 12 65 1 30] 
#[1 6 177 0 56 6 181 0 57 2 105 0 66 6 185 0 73 6 189 0 83 6 197 0 85 6 201 0 104 6 221 1 137 6 209 1 175 6 213 1 178 6 217 1 179 6 221 1 185 6 225 1 186] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 12 69 0 56 0 97 0 63 2 13 0 69 12 73 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 12 77 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 12 81 0 182 12 81 0 183 12 85 0 236 0 253 0 237 12 81 0 245 1 205 0 246 1 209 0 249 12 81 0 250 12 89 0 255 0 253 1 0 12 81 1 2 0 253 1 5 0 253 1 9 1 41 1 11 12 93 1 12 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 12 97 1 178 12 101 1 179 3 25 1 194] 
#[1 4 185 0 3 4 189 0 25 2 61 0 113 4 213 0 116 12 105 0 129 4 197 1 26 4 201 1 27 4 205 1 28 4 209 1 29 4 213 1 33 4 201 1 34 4 213 1 42] 
#[0 4 42 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 46 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 50 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 54 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 58 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 62 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 12 109 0 7 9 93 0 72 12 113 1 30] 
#[1 4 66 0 1 4 66 0 3 4 66 0 5 4 66 0 7 4 66 0 34 4 66 0 35 4 66 0 36 4 66 0 37 4 66 0 38 4 66 0 47 4 66 0 51 4 66 0 52 4 66 0 53 4 66 0 56 4 66 0 57 4 66 0 59 4 66 0 60 0 91 0 61 4 66 0 63 4 66 0 64 4 66 0 66 0 91 0 67 4 66 0 69 4 66 0 71 4 66 0 73 4 66 0 75 0 91 0 76 0 91 0 81 4 66 0 83 0 91 0 85 4 66 0 86 4 66 0 87 4 66 0 92 4 66 0 95 4 66 0 96 4 66 0 98 4 66 0 99 4 66 0 100 4 66 0 101 0 91 0 102 4 66 0 103 4 66 0 104 4 66 0 105 4 66 0 106 4 66 0 107 4 66 0 108 4 66 0 113 4 66 0 116 4 66 0 117 4 66 0 118 4 66 0 120 4 66 0 121 4 66 0 124 4 66 1 194 0 91 1 195] 
#[1 4 74 0 1 4 74 0 3 4 74 0 5 4 74 0 7 4 74 0 34 4 74 0 35 4 74 0 36 4 74 0 37 4 74 0 38 4 74 0 47 4 74 0 51 4 74 0 52 4 74 0 53 4 74 0 56 4 74 0 57 4 74 0 59 4 74 0 60 0 95 0 61 4 74 0 63 4 74 0 64 4 74 0 66 0 95 0 67 4 74 0 69 4 74 0 71 4 74 0 73 4 74 0 75 0 95 0 76 0 95 0 81 4 74 0 83 0 95 0 85 4 74 0 86 4 74 0 87 4 74 0 92 4 74 0 95 4 74 0 96 4 74 0 98 4 74 0 99 4 74 0 100 4 74 0 101 0 95 0 102 4 74 0 103 4 74 0 104 4 74 0 105 4 74 0 106 4 74 0 107 4 74 0 108 4 74 0 113 4 74 0 116 4 74 0 117 4 74 0 118 4 74 0 120 4 74 0 121 4 74 0 124 4 74 1 194 0 95 1 195] 
#[0 4 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 86 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 90 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[1 4 94 0 1 4 94 0 3 4 94 0 5 4 94 0 7 4 94 0 34 4 94 0 35 4 94 0 36 4 94 0 37 4 94 0 38 4 94 0 47 4 94 0 51 4 94 0 52 4 94 0 53 4 94 0 56 4 94 0 57 4 94 0 59 4 94 0 60 0 99 0 61 4 94 0 63 4 94 0 64 4 94 0 66 0 99 0 67 4 94 0 69 4 94 0 71 4 94 0 73 4 94 0 75 0 99 0 76 0 99 0 81 4 94 0 83 0 99 0 85 4 94 0 86 4 94 0 87 4 94 0 92 4 94 0 95 4 94 0 96 4 94 0 98 4 94 0 99 4 94 0 100 4 94 0 101 0 99 0 102 4 94 0 103 4 94 0 104 4 94 0 105 4 94 0 106 4 94 0 107 4 94 0 108 4 94 0 113 4 94 0 116 4 94 0 117 4 94 0 118 4 94 0 120 4 94 0 121 4 94 0 124 4 94 1 194 0 99 1 195] 
#[1 8 213 0 10 9 109 0 73 2 61 0 113 7 213 0 129 9 113 1 73] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 12 117 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 12 121 0 1 2 61 0 113 12 125 0 129] 
#[0 12 129 0 1] 
#[1 12 133 0 22 3 82 0 72 3 82 0 110] 
#[1 11 117 0 3 8 213 0 10 12 137 0 68 12 141 1 73 12 145 1 91 12 149 1 125] 
#[0 4 102 0 3 0 21] 
#[1 12 153 0 3 12 157 0 21] 
#[1 8 213 0 10 12 161 0 22 12 165 1 73] 
#[1 4 181 0 1 2 61 0 113 12 169 0 129] 
#[0 1 214 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 222 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 234 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 1 242 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 2 18 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 2 106 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 2 114 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 2 61 0 113 12 169 0 129] 
#[0 1 218 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 1 226 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 1 238 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 1 250 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 4 110 0 61 0 76 0 81 0 85 0 102 1 195] 
#[0 2 38 0 61 0 76 0 81 0 85 0 102 1 195] 
#[0 2 110 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 2 118 0 61 0 76 0 81 0 85 0 102 1 195] 
#[1 4 85 0 3 6 233 0 22 6 237 0 25 4 97 0 56 2 97 0 57 6 241 0 61 12 173 0 62 2 105 0 66 4 105 0 73 12 177 0 76 2 121 0 81 1 137 0 83 2 125 0 85 2 129 0 102 0 173 0 104 6 253 0 194 1 137 0 195 7 1 0 198 7 5 0 236 7 9 0 255 7 13 1 12 7 17 1 25 7 21 1 37 12 181 1 115 12 185 1 124 7 33 1 137 7 37 1 142 12 189 1 174 7 49 1 194] 
#[0 1 206 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 0 31 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 2 22 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 114 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 2 90 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 2 98 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 4 85 0 3 6 233 0 22 6 237 0 25 6 241 0 61 12 193 0 62 7 121 0 76 2 121 0 81 2 129 0 102 7 21 1 37 12 197 1 115 12 201 1 124 7 41 1 148 12 205 1 174] 
#[0 1 210 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 2 42 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 4 118 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 2 94 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 2 102 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[1 12 209 0 1 8 213 0 10 2 61 0 113 12 213 0 129 12 217 1 73 12 221 1 108 12 225 1 116] 
#[1 8 213 0 10 12 229 1 73] 
#[1 12 5 0 1 4 45 0 3 4 49 0 68 12 233 1 14 4 61 1 15 4 65 1 194] 
#[1 2 170 0 1 0 103 0 2 0 103 0 4 2 170 0 5 0 103 0 6 2 170 0 8 2 170 0 9 2 170 0 10 2 170 0 11 2 170 0 12 2 170 0 13 2 170 0 14 2 170 0 15 2 170 0 16 2 170 0 17 2 170 0 19 2 170 0 20 2 170 0 21 0 103 0 22 2 170 0 23 2 170 0 24 2 170 0 25 2 170 0 26 2 170 0 27 2 170 0 28 2 170 0 29 2 170 0 30 2 170 0 31 2 170 0 32 2 170 0 33 2 170 0 34 2 170 0 35 2 170 0 36 2 170 0 37 2 170 0 39 2 170 0 40 2 170 0 41 2 170 0 42 2 170 0 43 2 170 0 44 2 170 0 45 2 170 0 46 2 170 0 48 2 170 0 49 2 170 0 50 2 170 0 77 2 170 0 80 0 103 0 110 2 170 0 120 2 170 0 121 2 170 1 191 2 170 1 193 2 170 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 12 237 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 117 0 182 8 117 0 183 0 253 0 237 8 117 0 245 1 205 0 246 1 209 0 249 8 117 0 250 0 253 1 0 8 117 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 107 0 4 8 37 0 22 0 107 0 110 12 241 0 145] 
#[1 8 133 0 1 12 245 0 111] 
#[0 12 249 0 4] 
#[1 12 253 0 4 13 1 0 110] 
#[0 4 126 0 4 0 110] 
#[0 4 130 0 4 0 110] 
#[1 6 137 0 5 8 145 0 74 13 9 0 89 13 9 0 90 13 9 0 91 8 149 0 93 2 61 0 113 3 125 0 114 6 149 0 116 6 153 0 117 13 5 0 129 8 153 0 130 8 153 0 141 8 153 0 142 8 153 0 143 6 149 1 42 6 153 1 43 13 9 1 110] 
#[1 2 238 0 1 0 111 0 2 0 111 0 4 2 238 0 5 0 111 0 6 2 238 0 8 2 238 0 9 2 238 0 10 2 238 0 11 2 238 0 12 2 238 0 13 2 238 0 14 2 238 0 15 2 238 0 16 2 238 0 17 2 238 0 19 2 238 0 20 2 238 0 21 0 111 0 22 2 238 0 23 2 238 0 24 2 238 0 25 2 238 0 26 2 238 0 27 2 238 0 28 2 238 0 29 2 238 0 30 2 238 0 31 2 238 0 32 2 238 0 33 2 238 0 34 2 238 0 35 2 238 0 36 2 238 0 37 2 238 0 39 2 238 0 40 2 238 0 41 2 238 0 42 2 238 0 43 2 238 0 44 2 238 0 45 2 238 0 46 2 238 0 48 2 238 0 49 2 238 0 50 2 238 0 77 2 238 0 80 0 111 0 110 2 238 0 120 2 238 0 121 2 238 1 191 2 238 1 193 2 238 1 194] 
#[1 0 29 0 1 3 29 0 3 3 33 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 13 13 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 157 0 182 8 157 0 183 8 33 0 201 8 33 0 202 8 33 0 203 0 253 0 237 8 157 0 245 1 205 0 246 1 209 0 249 8 157 0 250 0 253 1 0 8 157 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 3 29 0 3 3 33 0 5 13 17 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 8 5 0 109 8 173 0 110 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 41 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 8 177 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 8 181 0 182 8 181 0 183 3 49 0 201 3 49 0 202 3 49 0 203 13 21 0 209 13 21 0 210 13 25 0 211 0 253 0 237 8 181 0 245 1 205 0 246 1 209 0 249 8 181 0 250 0 253 1 0 8 181 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 93 1 194] 
#[1 13 29 0 6 13 33 0 110] 
#[0 4 138 0 6 0 110] 
#[0 4 142 0 6 0 110] 
#[0 13 37 0 6] 
#[1 4 146 0 2 4 146 0 6 13 41 0 111 13 45 1 107] 
#[0 4 150 0 2 0 6] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 13 49 0 182 13 49 0 183 0 253 0 237 13 49 0 245 1 205 0 246 1 209 0 249 13 49 0 250 0 253 1 0 13 49 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 4 154 0 2 0 4 0 6 0 110] 
#[0 4 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 4 162 0 2 0 4 0 6 0 110] 
#[0 4 166 0 18] 
#[1 4 170 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 13 57 0 209 13 57 0 210 13 53 0 211 13 53 0 241 13 57 0 242 8 193 1 194] 
#[0 4 174 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 58 0 94 0 98 0 110 0 111 0 113 0 114 0 116 0 117 1 194] 
#[0 4 178 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 58 0 94 0 98 0 110 0 111 0 113 0 114 0 116 0 117 1 194] 
#[0 4 182 0 2 0 3 0 4 0 5 0 6 0 22 0 41 0 58 0 94 0 98 0 110 0 111 0 113 0 114 0 116 0 117 1 194] 
#[0 4 186 0 2 0 4 0 6 0 22 0 41 0 110 0 111] 
#[1 0 115 0 41 0 119 0 111 13 65 1 107] 
#[0 4 194 0 2 0 4 0 6 0 22 0 41 0 110 0 111] 
#[1 13 69 0 41 13 41 0 111 13 73 1 107] 
#[1 2 166 0 2 5 33 0 3 2 166 0 4 5 37 0 5 2 166 0 6 2 166 0 22 2 166 0 41 8 73 0 98 2 166 0 110 2 166 0 111 2 61 0 113 13 77 0 129 13 81 0 201 13 81 0 202 13 81 0 203 13 81 1 109] 
#[1 0 123 0 6 2 250 0 110] 
#[0 13 89 0 1] 
#[1 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 13 93 0 130 13 93 0 141 13 93 0 142 13 93 0 143 6 149 1 42 6 153 1 43] 
#[0 13 97 0 1] 
#[0 13 101 0 1] 
#[0 13 105 0 1] 
#[0 4 198 0 4 0 110] 
#[0 4 202 0 4 0 110] 
#[0 4 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 13 109 0 4 6 137 0 5 3 105 0 25 6 141 0 51 3 113 0 74 3 117 0 93 3 121 0 109 2 61 0 113 3 125 0 114 6 149 0 116 6 153 0 117 6 145 0 129 3 145 0 130 13 113 0 140 3 145 0 141 3 145 0 142 3 145 0 143 13 113 0 144 13 113 0 252 13 113 0 254 13 113 1 3 13 113 1 7 6 149 1 42 6 153 1 43 13 113 1 117 13 113 1 118 6 157 1 194] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 13 117 0 238 3 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 13 121 0 182 13 121 0 183 0 253 0 237 13 121 0 245 1 205 0 246 1 209 0 249 13 121 0 250 0 253 1 0 13 121 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 4 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 13 125 0 130 13 125 0 141 13 125 0 142 13 125 0 143 6 149 1 42 6 153 1 43] 
#[1 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 13 129 0 130 13 129 0 141 13 129 0 142 13 129 0 143 6 149 1 42 6 153 1 43] 
#[1 6 113 0 1 8 213 0 10 6 125 1 73 13 133 1 116] 
#[0 4 214 0 4 0 6 0 110] 
#[0 4 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 13 137 0 6 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 3 205 0 109 8 173 0 110 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 13 141 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 13 145 0 182 13 145 0 183 0 253 0 237 13 145 0 245 1 205 0 246 1 209 0 249 13 145 0 250 0 253 1 0 13 145 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 4 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 4 226 0 1 0 3 0 5 0 6 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 56 0 63 0 69 0 73 0 76 0 86 0 87 0 95 0 98 0 100 0 103 0 105 0 108 0 109 0 110 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 4 230 0 6 0 110] 
#[0 4 234 0 6 0 110] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 11 173 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 11 173 1 101 11 173 1 102 11 189 1 103 11 189 1 105] 
#[1 2 122 0 2 2 122 0 4 2 122 0 6 8 37 0 22 2 122 0 110 8 41 0 145] 
#[1 5 33 0 3 5 37 0 5 2 166 0 41 8 89 0 89 8 89 0 90 8 89 0 91 8 73 0 98 2 166 0 111 2 61 0 113 8 77 0 129 8 85 0 201 8 85 0 202 8 85 0 203 8 85 1 109 8 89 1 110] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 13 153 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 13 157 0 1 2 61 0 113 13 161 0 129] 
#[0 13 165 0 1] 
#[1 0 29 0 1 13 169 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 13 173 0 182 13 173 0 183 0 253 0 237 13 173 0 245 1 205 0 246 13 173 0 248 1 209 0 249 13 173 0 250 13 177 0 251 0 253 1 0 13 173 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 2 61 0 113 13 181 0 129 11 165 1 74 11 169 1 75] 
#[0 4 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 13 185 0 7] 
#[0 4 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 80 0 81 0 83 0 85 0 86 0 87 0 88 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 110 0 111 0 113 0 116 0 117 0 118 0 120 0 121 0 122 0 123 0 124 1 191 1 193 1 194 1 195] 
#[0 4 246 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[1 6 137 0 5 3 105 0 25 6 141 0 51 3 113 0 74 3 117 0 93 3 125 0 114 6 149 0 116 6 153 0 117 8 237 0 130 8 237 0 141 8 237 0 142 8 237 0 143 13 189 0 252 13 189 0 254 13 189 1 3 13 189 1 7 6 149 1 42 6 153 1 43 13 189 1 117 13 189 1 118 6 157 1 194] 
#[0 8 133 0 1] 
#[0 4 250 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 13 193 0 4] 
#[1 4 254 0 4 6 137 0 5 8 229 0 7 3 105 0 25 6 141 0 51 3 113 0 74 3 117 0 93 8 233 0 94 3 125 0 114 6 149 0 116 6 153 0 117 8 237 0 130 8 237 0 141 8 237 0 142 8 237 0 143 13 197 0 252 13 197 0 254 13 197 1 3 13 197 1 7 13 197 1 18 6 149 1 42 6 153 1 43 13 197 1 117 13 197 1 118 9 1 1 194] 
#[0 5 2 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[1 13 201 0 5 13 205 0 58 8 145 0 74 13 217 0 89 13 217 0 90 13 217 0 91 8 149 0 93 13 209 0 94 3 125 0 114 6 149 0 116 6 153 0 117 13 213 0 130 13 213 0 141 13 213 0 142 13 213 0 143 6 149 1 42 6 153 1 43 13 217 1 110 13 221 1 113 13 225 1 117 13 229 1 118 13 233 1 131 13 237 1 132 13 237 1 133 13 237 1 134 13 237 1 135 13 253 1 136 14 1 1 194] 
#[0 5 6 0 3] 
#[0 5 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 14 5 0 4 6 137 0 5 8 229 0 7 3 105 0 25 6 141 0 51 3 113 0 74 3 117 0 93 8 233 0 94 3 125 0 114 6 149 0 116 6 153 0 117 8 237 0 130 8 237 0 141 8 237 0 142 8 237 0 143 8 253 0 252 8 253 0 254 8 253 1 3 8 253 1 7 14 9 1 16 8 249 1 17 8 253 1 18 6 149 1 42 6 153 1 43 8 253 1 117 8 253 1 118 9 1 1 194] 
#[1 2 61 0 113 13 149 0 129 14 17 1 88 11 209 1 89 11 213 1 90 14 17 1 129] 
#[1 2 61 0 113 13 149 0 129 14 29 1 88 11 209 1 89 11 213 1 90 14 25 1 126 14 29 1 127] 
#[1 9 21 0 79 14 33 1 130] 
#[0 5 14 0 3] 
#[0 5 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 14 37 0 7] 
#[0 14 41 0 1] 
#[0 5 22 0 7 0 72] 
#[1 5 26 0 4 14 45 0 50 5 26 0 110] 
#[1 14 49 0 4 14 53 0 110] 
#[0 5 30 0 4 0 110] 
#[0 14 57 0 114] 
#[1 14 61 0 1 14 65 0 25 2 61 0 113 14 69 0 129] 
#[1 4 45 0 3 4 49 0 68 14 73 1 14 4 61 1 15 4 65 1 194] 
#[0 4 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 14 77 0 7] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 14 81 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 14 85 0 1 2 61 0 113 14 89 0 129] 
#[0 14 93 0 1] 
#[0 14 97 0 116 1 33 1 42] 
#[0 14 101 0 7] 
#[0 5 34 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 6 173 0 66] 
#[1 12 209 0 1 8 213 0 10 2 61 0 113 14 105 0 129 12 217 1 73 12 221 1 108 14 109 1 116] 
#[1 4 45 0 3 4 49 0 68 12 233 1 14 4 61 1 15 4 65 1 194] 
#[0 5 38 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 5 42 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 5 46 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 14 113 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 14 117 0 182 14 117 0 183 14 117 0 185 0 253 0 237 14 117 0 245 1 205 0 246 1 209 0 249 14 117 0 250 0 253 1 0 14 117 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 14 121 0 129 14 125 0 199 14 129 0 200 14 133 0 201 14 133 0 202 14 133 0 203 14 137 0 217 5 57 1 194] 
#[1 0 170 0 7 0 170 0 8 5 201 0 9 0 170 0 10 0 170 0 11 5 201 0 12 0 170 0 13 0 170 0 14 5 201 0 15 5 201 0 16 0 170 0 17 0 170 0 19 0 170 0 20 5 201 0 22 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 5 201 0 27 5 201 0 28 5 201 0 29 5 201 0 30 5 201 0 31 5 201 0 32 5 201 0 33 0 170 0 34 5 189 0 35 0 170 0 36 5 193 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 48 0 170 0 49 5 197 0 50 0 127 0 77 0 170 0 80 14 145 0 88 0 170 0 110 5 201 0 184 0 170 1 191 5 201 1 193] 
#[1 14 149 0 7 6 65 0 110] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 14 153 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 14 157 0 182 14 157 0 183 14 157 0 185 0 253 0 237 14 157 0 245 1 205 0 246 1 209 0 249 14 157 0 250 0 253 1 0 14 157 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 14 161 0 129 6 73 0 196 6 77 0 197 14 165 0 201 14 165 0 202 14 165 0 203 14 169 0 217 6 77 1 122 6 77 1 123 6 93 1 194] 
#[1 14 173 0 77 14 177 0 88] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 3 233 0 51 0 81 0 56 14 189 0 57 2 13 0 69 0 117 0 73 2 57 0 76 14 189 0 83 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 14 181 0 104 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 14 185 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 14 185 0 164 14 189 0 195 14 193 0 216 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 4 241 1 194] 
#[0 14 197 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 14 201 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 14 205 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 14 209 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 14 213 0 2 6 65 0 110] 
#[0 14 217 0 2] 
#[0 5 50 0 72] 
#[0 14 221 0 50] 
#[1 14 225 0 4 14 229 0 110] 
#[0 5 54 0 4 0 110] 
#[0 5 58 0 4 0 110] 
#[1 2 61 0 113 14 233 0 129 14 233 1 34] 
#[0 14 237 0 7] 
#[1 4 185 0 3 4 189 0 25 14 241 1 28 14 245 1 29] 
#[0 5 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 5 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 5 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 5 74 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 14 249 0 7 6 65 0 110] 
#[0 5 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 14 253 0 182 14 253 0 183 0 253 0 237 14 253 0 245 1 205 0 246 1 209 0 249 14 253 0 250 0 253 1 0 14 253 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 15 1 0 2 15 5 0 110] 
#[0 5 82 0 2 0 110] 
#[1 15 9 0 6 6 65 0 110] 
#[0 5 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 15 13 1 78 15 17 1 79 15 17 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 15 17 1 101 15 17 1 102 11 189 1 103 11 189 1 105] 
#[0 15 25 0 1] 
#[1 15 29 0 2 6 65 0 110] 
#[0 5 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 2 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 15 33 0 1 5 21 0 3 15 37 0 191] 
#[1 5 21 0 3 15 41 0 191] 
#[1 5 94 0 1 5 94 0 3 5 94 0 4 5 94 0 5 5 94 0 7 5 94 0 34 5 94 0 35 5 94 0 36 5 94 0 37 5 94 0 38 5 94 0 47 5 94 0 51 5 94 0 52 5 94 0 53 5 94 0 54 5 94 0 56 5 94 0 57 5 94 0 59 5 94 0 60 5 94 0 61 5 94 0 62 5 94 0 63 5 94 0 64 5 94 0 65 5 94 0 66 5 94 0 67 5 94 0 69 10 29 0 70 5 94 0 71 5 94 0 73 5 94 0 75 5 94 0 76 5 94 0 81 5 94 0 83 5 94 0 85 5 94 0 86 5 94 0 87 5 94 0 92 5 94 0 95 5 94 0 96 5 94 0 98 5 94 0 99 5 94 0 100 5 94 0 101 5 94 0 102 5 94 0 103 5 94 0 104 5 94 0 105 5 94 0 106 5 94 0 107 5 94 0 108 5 94 0 113 5 94 0 116 5 94 0 117 5 94 0 118 5 94 0 120 5 94 0 121 5 94 0 124 15 45 0 233 5 94 1 194 5 94 1 195] 
#[0 5 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 122 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 2 61 0 113 15 49 0 129] 
#[0 15 53 0 111] 
#[1 13 9 0 89 13 9 0 90 13 9 0 91 2 61 0 113 13 5 0 129 13 9 1 110] 
#[0 4 134 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 5 33 0 3 5 37 0 5 15 57 0 6 3 37 0 109 8 173 0 110 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 13 21 0 209 13 21 0 210 13 25 0 211 8 193 1 194] 
#[0 5 102 0 7 0 88 0 110] 
#[0 5 106 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 5 41 0 129 15 61 0 200 5 53 0 201 5 53 0 202 5 53 0 203 5 57 1 194] 
#[0 5 110 0 7 0 88 0 110] 
#[1 13 41 0 111 15 65 1 107] 
#[1 13 41 0 111 15 69 1 107] 
#[0 5 114 0 7 0 88 0 110] 
#[0 5 118 0 7 0 88 0 110] 
#[1 15 73 0 2 6 65 0 110] 
#[1 15 77 0 2 6 65 0 110] 
#[0 5 122 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[0 5 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 5 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 1 166 0 3 1 166 0 124 1 166 0 126 15 81 1 69] 
#[1 6 65 0 110 15 85 0 122 15 89 0 123 15 93 0 148 15 97 0 149] 
#[1 15 101 0 6 6 65 0 110] 
#[0 5 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 15 105 0 182 15 105 0 183 15 105 0 185 0 253 0 237 15 105 0 245 1 205 0 246 1 209 0 249 15 105 0 250 0 253 1 0 15 105 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 5 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 5 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 5 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 5 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 15 109 0 182 15 109 0 183 15 109 0 185 0 253 0 237 15 109 0 245 1 205 0 246 1 209 0 249 15 109 0 250 0 253 1 0 15 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 15 113 0 114] 
#[0 5 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 5 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 5 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 15 117 0 6 6 65 0 110] 
#[0 5 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 15 121 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 15 121 1 101 15 121 1 102 11 189 1 103 11 189 1 105] 
#[0 5 170 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[0 5 174 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[0 5 178 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[1 5 182 0 2 5 182 0 4 5 182 0 6 5 182 0 7 5 225 0 8 5 182 0 10 5 182 0 11 5 182 0 13 5 182 0 14 5 182 0 17 5 182 0 19 5 182 0 20 5 182 0 23 5 182 0 24 5 225 0 25 5 182 0 34 5 182 0 36 5 182 0 39 5 182 0 40 5 182 0 41 5 225 0 43 5 182 0 44 5 182 0 45 5 182 0 46 5 182 0 48 5 182 0 49 5 182 0 77 5 182 0 80 5 182 0 88 5 182 0 110 5 182 0 111 5 182 0 122 5 182 0 123 5 225 0 169 5 182 1 191 5 182 1 195] 
#[1 5 186 0 2 5 186 0 4 5 186 0 6 5 186 0 7 5 225 0 8 5 186 0 10 5 186 0 11 5 186 0 13 5 186 0 14 5 186 0 17 5 186 0 19 5 186 0 20 5 186 0 23 5 186 0 24 5 225 0 25 5 186 0 34 5 186 0 36 5 186 0 39 5 186 0 40 5 186 0 41 5 225 0 43 5 186 0 44 5 186 0 45 5 186 0 46 5 186 0 48 5 186 0 49 5 186 0 77 5 186 0 80 5 186 0 88 5 186 0 110 5 186 0 111 5 186 0 122 5 186 0 123 5 225 0 169 5 186 1 191 5 186 1 195] 
#[1 5 190 0 2 5 190 0 4 5 190 0 6 5 190 0 7 5 190 0 10 5 190 0 11 5 190 0 13 5 190 0 14 5 190 0 17 5 190 0 19 5 190 0 20 5 190 0 23 5 190 0 24 5 229 0 34 5 233 0 36 5 190 0 39 5 190 0 40 5 190 0 41 5 190 0 44 5 190 0 45 5 190 0 46 5 190 0 48 5 190 0 49 5 190 0 77 5 190 0 80 5 190 0 88 5 190 0 110 5 190 0 111 5 190 0 122 5 190 0 123 5 190 1 191 5 190 1 195] 
#[1 5 194 0 2 5 194 0 4 5 194 0 6 5 194 0 7 5 194 0 10 5 194 0 11 5 194 0 13 5 194 0 14 5 194 0 17 5 194 0 19 5 194 0 20 5 194 0 23 5 194 0 24 5 229 0 34 5 233 0 36 5 194 0 39 5 194 0 40 5 194 0 41 5 194 0 44 5 194 0 45 5 194 0 46 5 194 0 48 5 194 0 49 5 194 0 77 5 194 0 80 5 194 0 88 5 194 0 110 5 194 0 111 5 194 0 122 5 194 0 123 5 194 1 191 5 194 1 195] 
#[1 5 198 0 2 5 198 0 4 5 198 0 6 5 198 0 7 5 198 0 10 5 198 0 11 5 198 0 13 5 198 0 14 5 198 0 17 5 198 0 19 5 198 0 20 5 198 0 23 5 198 0 24 5 229 0 34 5 233 0 36 5 198 0 39 5 198 0 40 5 198 0 41 5 198 0 44 5 198 0 45 5 198 0 46 5 198 0 48 5 198 0 49 5 198 0 77 5 198 0 80 5 198 0 88 5 198 0 110 5 198 0 111 5 198 0 122 5 198 0 123 5 198 1 191 5 198 1 195] 
#[1 5 202 0 2 5 202 0 4 5 202 0 6 5 202 0 7 5 202 0 10 5 237 0 11 5 202 0 13 5 241 0 14 5 245 0 17 5 202 0 19 5 202 0 20 5 202 0 23 5 202 0 24 5 202 0 39 5 202 0 40 5 202 0 41 5 202 0 44 5 202 0 45 5 202 0 46 5 202 0 48 5 202 0 49 5 202 0 77 5 202 0 80 5 202 0 88 5 202 0 110 5 202 0 111 5 202 0 122 5 202 0 123 5 202 1 191 5 202 1 195] 
#[1 5 206 0 2 5 206 0 4 5 206 0 6 5 206 0 7 5 206 0 10 5 237 0 11 5 206 0 13 5 241 0 14 5 245 0 17 5 206 0 19 5 206 0 20 5 206 0 23 5 206 0 24 5 206 0 39 5 206 0 40 5 206 0 41 5 206 0 44 5 206 0 45 5 206 0 46 5 206 0 48 5 206 0 49 5 206 0 77 5 206 0 80 5 206 0 88 5 206 0 110 5 206 0 111 5 206 0 122 5 206 0 123 5 206 1 191 5 206 1 195] 
#[1 5 210 0 2 5 210 0 4 5 210 0 6 5 210 0 7 5 210 0 10 5 237 0 11 5 210 0 13 5 241 0 14 5 245 0 17 5 210 0 19 5 210 0 20 5 210 0 23 5 210 0 24 5 210 0 39 5 210 0 40 5 210 0 41 5 210 0 44 5 210 0 45 5 210 0 46 5 210 0 48 5 210 0 49 5 210 0 77 5 210 0 80 5 210 0 88 5 210 0 110 5 210 0 111 5 210 0 122 5 210 0 123 5 210 1 191 5 210 1 195] 
#[1 5 214 0 2 5 214 0 4 5 214 0 6 5 214 0 7 5 214 0 10 5 237 0 11 5 214 0 13 5 241 0 14 5 245 0 17 5 214 0 19 5 214 0 20 5 214 0 23 5 214 0 24 5 214 0 39 5 214 0 40 5 214 0 41 5 214 0 44 5 214 0 45 5 214 0 46 5 214 0 48 5 214 0 49 5 214 0 77 5 214 0 80 5 214 0 88 5 214 0 110 5 214 0 111 5 214 0 122 5 214 0 123 5 214 1 191 5 214 1 195] 
#[1 5 218 0 2 5 218 0 4 5 218 0 6 5 218 0 7 5 218 0 10 5 237 0 11 5 218 0 13 5 241 0 14 5 245 0 17 5 218 0 19 5 218 0 20 5 218 0 23 5 218 0 24 5 218 0 39 5 218 0 40 5 218 0 41 5 218 0 44 5 218 0 45 5 218 0 46 5 218 0 48 5 218 0 49 5 218 0 77 5 218 0 80 5 218 0 88 5 218 0 110 5 218 0 111 5 218 0 122 5 218 0 123 5 218 1 191 5 218 1 195] 
#[1 5 222 0 2 5 222 0 4 5 222 0 6 5 222 0 7 5 222 0 10 5 237 0 11 5 222 0 13 5 241 0 14 5 245 0 17 5 222 0 19 5 222 0 20 5 222 0 23 5 222 0 24 5 222 0 39 5 222 0 40 5 222 0 41 5 222 0 44 5 222 0 45 5 222 0 46 5 222 0 48 5 222 0 49 5 222 0 77 5 222 0 80 5 222 0 88 5 222 0 110 5 222 0 111 5 222 0 122 5 222 0 123 5 222 1 191 5 222 1 195] 
#[1 5 226 0 2 5 226 0 4 5 226 0 6 5 226 0 7 5 249 0 10 5 253 0 13 6 1 0 19 6 5 0 20 5 226 0 23 5 226 0 24 5 226 0 39 5 226 0 40 5 226 0 41 5 226 0 44 5 226 0 45 5 226 0 46 5 226 0 48 5 226 0 49 6 9 0 77 6 13 0 80 5 226 0 88 5 226 0 110 5 226 0 111 5 226 0 122 5 226 0 123 5 226 1 191 5 226 1 195] 
#[1 5 230 0 2 5 230 0 4 5 230 0 6 5 230 0 7 5 249 0 10 5 253 0 13 6 1 0 19 6 5 0 20 5 230 0 23 5 230 0 24 5 230 0 39 5 230 0 40 5 230 0 41 5 230 0 44 5 230 0 45 5 230 0 46 5 230 0 48 5 230 0 49 6 9 0 77 6 13 0 80 5 230 0 88 5 230 0 110 5 230 0 111 5 230 0 122 5 230 0 123 5 230 1 191 5 230 1 195] 
#[1 5 234 0 2 5 234 0 4 5 234 0 6 5 234 0 7 5 249 0 10 5 253 0 13 6 1 0 19 6 5 0 20 5 234 0 23 5 234 0 24 5 234 0 39 5 234 0 40 5 234 0 41 5 234 0 44 5 234 0 45 5 234 0 46 5 234 0 48 5 234 0 49 6 9 0 77 6 13 0 80 5 234 0 88 5 234 0 110 5 234 0 111 5 234 0 122 5 234 0 123 5 234 1 191 5 234 1 195] 
#[1 5 238 0 2 5 238 0 4 5 238 0 6 5 238 0 7 5 249 0 10 5 253 0 13 6 1 0 19 6 5 0 20 5 238 0 23 5 238 0 24 5 238 0 39 5 238 0 40 5 238 0 41 5 238 0 44 5 238 0 45 5 238 0 46 5 238 0 48 5 238 0 49 6 9 0 77 6 13 0 80 5 238 0 88 5 238 0 110 5 238 0 111 5 238 0 122 5 238 0 123 5 238 1 191 5 238 1 195] 
#[1 5 242 0 2 5 242 0 4 5 242 0 6 5 242 0 7 6 17 0 23 6 21 0 24 5 242 0 39 5 242 0 40 5 242 0 41 5 242 0 44 5 242 0 45 5 242 0 46 6 25 0 48 6 29 0 49 5 242 0 88 5 242 0 110 5 242 0 111 5 242 0 122 5 242 0 123 5 242 1 191 5 242 1 195] 
#[1 5 246 0 2 5 246 0 4 5 246 0 6 5 246 0 7 6 33 0 39 5 246 0 40 5 246 0 41 5 246 0 44 5 246 0 45 5 246 0 46 5 246 0 88 5 246 0 110 5 246 0 111 5 246 0 122 5 246 0 123 5 246 1 191 5 246 1 195] 
#[1 5 250 0 2 5 250 0 4 5 250 0 6 5 250 0 7 5 250 0 40 5 250 0 41 5 250 0 44 5 250 0 45 6 37 0 46 5 250 0 88 5 250 0 110 5 250 0 111 5 250 0 122 5 250 0 123 5 250 1 191 5 250 1 195] 
#[1 5 254 0 2 5 254 0 4 5 254 0 6 5 254 0 7 5 254 0 40 5 254 0 41 6 41 0 44 5 254 0 45 5 254 0 88 5 254 0 110 5 254 0 111 5 254 0 122 5 254 0 123 5 254 1 195] 
#[1 0 214 0 2 0 214 0 4 0 214 0 6 0 214 0 7 0 214 0 40 0 214 0 41 6 41 0 44 0 214 0 45 0 214 0 88 0 214 0 110 0 214 0 111 0 214 0 122 0 214 0 123 0 214 1 195] 
#[1 6 2 0 2 6 2 0 4 6 2 0 6 6 2 0 7 6 45 0 40 6 2 0 41 6 2 0 45 6 2 0 88 6 2 0 110 6 2 0 111 6 2 0 122 6 2 0 123 6 2 1 195] 
#[1 6 6 0 2 6 6 0 4 6 6 0 6 6 6 0 7 6 6 0 41 6 41 0 44 6 6 0 88 6 6 0 110 6 6 0 111 6 6 0 122 6 6 0 123 6 6 1 191 6 6 1 195] 
#[0 15 125 0 111] 
#[0 6 10 0 2 0 6 0 7 0 110 0 111 0 122 0 123 1 195] 
#[0 6 14 0 7 0 110] 
#[0 6 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 6 69 0 129 15 129 0 197 6 81 0 201 6 81 0 202 6 81 0 203 15 129 1 122 15 129 1 123 6 93 1 194] 
#[0 6 22 0 7 0 110] 
#[1 13 41 0 111 15 133 1 107] 
#[1 13 41 0 111 15 137 1 107] 
#[1 0 29 0 1 0 33 0 3 0 131 0 4 3 101 0 5 0 41 0 7 3 105 0 25 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 109 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 3 113 0 74 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 3 117 0 93 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 3 121 0 109 0 193 0 113 3 125 0 114 3 181 0 116 3 185 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 129 0 129 3 145 0 130 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 3 137 0 139 3 141 0 140 3 145 0 141 3 145 0 142 3 145 0 143 3 141 0 144 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 15 145 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 3 141 0 252 3 141 0 254 0 253 1 0 1 109 1 2 3 141 1 3 0 253 1 5 3 141 1 7 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 3 181 1 42 3 185 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 141 1 117 3 141 1 118 3 197 1 194] 
#[0 6 30 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[0 6 34 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[0 6 38 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[1 0 10 0 124 15 153 1 48 15 157 1 67] 
#[1 6 42 0 3 0 135 0 124 15 161 0 126 15 169 1 45 15 169 1 46 2 37 1 47 15 169 1 65 2 45 1 67 15 173 1 72] 
#[1 6 50 0 3 6 50 0 8 6 50 0 13 15 177 0 21 15 181 0 111 6 50 0 125] 
#[1 6 42 0 3 15 185 0 8 0 98 0 13 15 189 0 125 15 217 1 51 15 197 1 55 15 201 1 56 15 205 1 57 15 201 1 58 15 201 1 59 15 217 1 60 15 221 1 68 15 225 1 72] 
#[0 6 54 0 3 0 8 0 13 0 125] 
#[0 6 58 0 3 0 8 0 13 0 125] 
#[0 6 62 0 125] 
#[1 15 229 0 125 15 233 1 53] 
#[0 15 237 0 2] 
#[1 11 113 0 1 0 38 0 2 15 241 0 3 15 245 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 3 37 0 109 2 61 0 113 11 153 0 116 11 157 0 117 15 249 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 15 253 0 239 3 81 0 240 3 85 0 241 3 89 0 242 11 153 1 42 11 157 1 43 11 161 1 73 16 1 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 16 1 1 101 16 1 1 102 11 189 1 103 11 189 1 105 8 193 1 194] 
#[1 16 5 0 1 16 9 0 4 13 201 0 5 8 213 0 10 16 13 0 86 3 125 0 114 6 149 0 116 6 153 0 117 16 17 0 130 16 17 0 141 16 17 0 142 16 17 0 143 6 149 1 42 6 153 1 43 16 21 1 73 16 25 1 92 16 29 1 93 16 33 1 94 16 33 1 106 16 33 1 108 16 33 1 112 16 33 1 113 16 33 1 114] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 16 65 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 16 61 1 97 16 65 1 98 11 177 1 99 11 181 1 100 16 65 1 101 16 65 1 102 11 189 1 103 11 189 1 105] 
#[1 16 69 0 1 11 117 0 3 11 121 0 5 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 16 73 1 84 16 73 1 85 16 73 1 86 16 73 1 87 16 73 1 88 11 209 1 89 11 213 1 90 16 73 1 91 16 73 1 95 16 73 1 96 16 73 1 103 16 73 1 105] 
#[1 16 69 0 1 11 117 0 3 11 121 0 5 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 16 77 1 84 16 77 1 85 16 77 1 86 16 77 1 87 16 77 1 88 11 209 1 89 11 213 1 90 16 77 1 91 16 77 1 95 16 77 1 96 16 77 1 103 16 77 1 105] 
#[1 16 81 0 1 8 213 0 10 16 85 1 73] 
#[0 6 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[1 2 61 0 113 16 89 0 129 16 93 1 104] 
#[0 6 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[1 6 74 0 5 6 74 0 10 0 139 0 13 6 82 0 21 6 74 0 39 6 74 0 44 16 97 0 68 6 78 0 110 16 101 1 76] 
#[0 6 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 6 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 16 105 0 1] 
#[1 16 109 0 13 16 113 0 110] 
#[0 6 94 0 13 0 110] 
#[0 16 117 0 13] 
#[1 6 98 0 2 6 98 0 3 6 98 0 4 6 98 0 5 6 98 0 6 6 98 0 7 6 98 0 8 6 98 0 10 6 98 0 11 6 98 0 13 6 98 0 14 6 98 0 17 6 98 0 18 6 98 0 19 6 98 0 20 6 98 0 22 6 98 0 23 6 98 0 24 6 98 0 25 6 98 0 26 6 98 0 34 6 98 0 36 6 98 0 39 6 98 0 40 6 98 0 41 6 98 0 43 0 143 0 44 6 98 0 45 6 98 0 46 6 98 0 48 6 98 0 49 6 98 0 58 6 98 0 77 6 98 0 80 6 98 0 88 6 98 0 89 6 98 0 90 6 98 0 91 6 98 0 94 6 98 0 110 6 98 0 111 6 98 0 114 6 98 0 116 6 98 0 117 6 98 0 122 6 98 0 123 6 98 1 191 6 98 1 195] 
#[1 6 102 0 2 6 102 0 3 6 102 0 4 6 102 0 5 6 102 0 6 6 102 0 7 6 102 0 8 6 102 0 10 6 102 0 11 6 102 0 13 6 102 0 14 6 102 0 17 6 102 0 18 6 102 0 19 6 102 0 20 6 102 0 22 6 102 0 23 6 102 0 24 6 102 0 25 6 102 0 26 6 102 0 34 6 102 0 36 0 147 0 39 6 102 0 40 6 102 0 41 6 102 0 43 6 102 0 44 6 102 0 45 6 102 0 46 6 102 0 48 6 102 0 49 6 102 0 58 6 102 0 77 6 102 0 80 6 102 0 88 6 102 0 89 6 102 0 90 6 102 0 91 6 102 0 94 6 102 0 110 6 102 0 111 6 102 0 114 6 102 0 116 6 102 0 117 6 102 0 122 6 102 0 123 6 102 1 191 6 102 1 195] 
#[0 6 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[1 6 110 0 2 6 110 0 3 6 110 0 4 0 151 0 5 6 110 0 6 6 110 0 7 6 110 0 8 6 110 0 10 6 110 0 11 6 110 0 13 6 110 0 14 6 110 0 17 6 110 0 18 6 110 0 19 6 110 0 20 6 110 0 22 6 110 0 23 6 110 0 24 6 110 0 25 6 110 0 26 6 110 0 34 6 110 0 36 6 110 0 39 6 110 0 40 6 110 0 41 6 110 0 43 6 110 0 44 6 110 0 45 6 110 0 46 6 110 0 48 6 110 0 49 6 110 0 58 6 110 0 77 6 110 0 80 6 110 0 88 6 110 0 89 6 110 0 90 6 110 0 91 6 110 0 94 6 110 0 110 6 110 0 111 6 110 0 114 6 110 0 116 6 110 0 117 6 110 0 122 6 110 0 123 16 129 0 220 6 110 1 191 6 110 1 195] 
#[0 6 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 6 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 6 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 6 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[1 0 46 0 2 0 46 0 3 0 46 0 4 0 46 0 5 0 46 0 6 0 46 0 7 0 46 0 8 0 46 0 10 0 46 0 11 0 46 0 13 0 46 0 14 0 46 0 17 0 46 0 18 0 46 0 19 0 46 0 20 0 46 0 22 0 46 0 23 0 46 0 24 0 46 0 25 0 46 0 26 0 46 0 34 0 46 0 36 0 46 0 39 0 46 0 40 0 46 0 41 0 46 0 43 0 46 0 44 0 46 0 45 0 46 0 46 0 46 0 48 0 46 0 49 0 46 0 58 0 46 0 77 0 46 0 79 0 46 0 80 0 46 0 88 0 46 0 89 0 46 0 90 0 46 0 91 0 46 0 94 0 46 0 110 0 46 0 111 0 46 0 114 0 46 0 116 0 46 0 117 0 46 0 122 0 46 0 123 16 133 0 220 0 46 1 191 0 46 1 195] 
#[0 16 137 0 21] 
#[0 6 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 6 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 6 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 6 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 6 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 6 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 6 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 6 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 6 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[1 6 113 0 1 8 213 0 10 6 125 1 73 16 141 1 116] 
#[0 16 145 0 3] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 16 149 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 13 85 0 6] 
#[1 0 155 0 1 6 166 0 3 6 166 0 4 0 155 0 5 0 155 0 7 5 10 0 8 5 10 0 9 5 10 0 10 5 10 0 11 5 10 0 12 5 10 0 13 5 10 0 14 5 10 0 15 5 10 0 16 5 10 0 17 5 10 0 19 5 10 0 20 5 10 0 21 5 10 0 22 5 10 0 23 5 10 0 24 5 10 0 25 5 10 0 26 5 10 0 27 5 10 0 28 5 10 0 29 5 10 0 30 5 10 0 31 5 10 0 32 5 10 0 33 0 155 0 34 0 155 0 35 0 155 0 36 0 155 0 37 6 166 0 38 5 10 0 39 5 10 0 40 5 10 0 41 5 10 0 42 5 10 0 43 5 10 0 44 5 10 0 45 5 10 0 46 6 166 0 47 5 10 0 48 5 10 0 49 5 10 0 50 6 166 0 51 6 166 0 52 6 166 0 53 6 166 0 56 6 166 0 57 6 166 0 59 6 166 0 60 6 166 0 61 6 166 0 63 6 166 0 64 6 166 0 66 6 166 0 67 6 166 0 69 6 166 0 71 6 166 0 73 6 166 0 75 6 166 0 76 5 10 0 77 5 10 0 80 6 166 0 81 6 166 0 83 6 166 0 85 6 166 0 86 6 166 0 87 6 166 0 92 6 166 0 95 6 166 0 96 6 166 0 98 6 166 0 99 6 166 0 100 6 166 0 101 6 166 0 102 6 166 0 103 6 166 0 104 6 166 0 105 6 166 0 106 6 166 0 107 6 166 0 108 5 10 0 110 6 166 0 113 6 166 0 116 6 166 0 117 6 166 0 118 0 155 0 120 0 155 0 121 6 166 0 124 5 10 1 191 5 10 1 193 0 155 1 194 6 166 1 195] 
#[0 16 153 0 3] 
#[1 8 213 0 10 4 49 0 68 16 157 1 15 16 161 1 73 4 65 1 194] 
#[1 6 170 0 7 6 170 0 110 13 41 0 111 16 165 1 107] 
#[1 16 169 0 7 16 173 0 110] 
#[0 6 174 0 7 0 110] 
#[1 16 5 0 1 8 213 0 10 16 21 1 73 16 177 1 108] 
#[1 16 181 0 7 16 173 0 110] 
#[0 16 185 0 3] 
#[1 16 189 0 3 12 157 0 21] 
#[1 16 193 0 7 16 173 0 110] 
#[1 16 197 0 4 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 16 201 0 130 16 201 0 141 16 201 0 142 16 201 0 143 6 149 1 42 6 153 1 43 16 205 1 138 16 209 1 139 16 213 1 140] 
#[0 16 217 0 7] 
#[0 16 221 0 7] 
#[1 4 45 0 3 4 49 0 68 2 61 0 113 16 225 0 129 6 169 1 14 4 61 1 15 4 65 1 194] 
#[1 7 53 0 1 7 57 0 25 2 61 0 113 16 229 0 129] 
#[1 0 102 0 1 0 102 0 5 0 159 0 7 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 50 0 102 0 77 0 102 0 80 0 102 0 120 0 102 0 121 0 102 1 191 0 102 1 193 0 102 1 194] 
#[0 16 237 0 7] 
#[0 6 178 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 6 182 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 6 186 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 6 190 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 6 194 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[1 16 241 0 22 3 82 0 72 3 82 0 110] 
#[0 6 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 16 245 0 7] 
#[0 16 249 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 16 253 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 17 1 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 17 5 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 2 61 0 113 17 9 0 129 17 13 1 90 17 17 1 149 17 21 1 192] 
#[1 2 61 0 113 13 149 0 129 17 25 1 88 11 209 1 89 11 213 1 90 17 25 1 127] 
#[1 11 117 0 3 12 137 0 68 17 29 1 91 17 33 1 125] 
#[0 6 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 11 117 0 3 17 37 1 91] 
#[1 0 29 0 1 0 33 0 3 6 206 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 6 241 0 61 0 97 0 63 0 101 0 64 2 105 0 66 17 41 0 67 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 7 85 0 76 2 121 0 81 1 137 0 83 2 125 0 85 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 2 129 0 102 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 17 89 0 186 17 89 0 189 17 89 0 190 17 89 0 191 17 89 0 194 1 137 0 195 17 89 0 198 17 89 0 212 17 89 0 213 17 89 0 214 17 89 0 215 17 89 0 218 17 89 0 219 17 89 0 221 17 89 0 222 17 89 0 223 17 89 0 228 17 89 0 230 17 89 0 231 17 89 0 235 17 89 0 236 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 17 89 0 255 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 17 89 1 12 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 17 89 1 115 17 89 1 124 17 89 1 137 17 89 1 142 17 81 1 144 17 85 1 145 17 89 1 146 17 89 1 147 17 89 1 148 17 89 1 174 3 25 1 194] 
#[1 2 61 0 113 17 105 0 129] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 17 109 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 17 109 1 101 17 109 1 102 11 189 1 103 11 189 1 105] 
#[0 17 113 0 22] 
#[0 16 241 0 22] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 2 93 0 56 0 97 0 63 2 13 0 69 2 113 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 12 81 0 182 12 81 0 183 12 85 0 236 0 253 0 237 12 81 0 245 1 205 0 246 1 209 0 249 12 81 0 250 12 89 0 255 0 253 1 0 12 81 1 2 0 253 1 5 0 253 1 9 1 41 1 11 12 93 1 12 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 25 1 194] 
#[1 4 185 0 3 4 189 0 25 2 61 0 113 4 213 0 116 4 201 0 129 4 197 1 26 4 201 1 27 4 205 1 28 4 209 1 29 4 213 1 33 4 201 1 34 4 213 1 42] 
#[0 4 66 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 74 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 4 94 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 6 177 0 56 6 185 0 73 2 61 0 113 17 117 0 129 12 97 1 178 12 101 1 179] 
#[0 4 70 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 4 78 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 4 98 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 17 121 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 12 209 0 1 8 213 0 10 12 217 1 73 17 125 1 108 17 129 1 116] 
#[0 17 133 0 1] 
#[0 17 137 0 7] 
#[0 17 141 0 3] 
#[1 4 45 0 3 4 49 0 68 17 145 1 14 4 61 1 15 4 65 1 194] 
#[0 6 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 102 0 1 0 163 0 4 0 102 0 5 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 50 0 102 0 77 0 102 0 80 0 102 0 110 0 102 0 120 0 102 0 121 0 102 1 191 0 102 1 193 0 102 1 194] 
#[0 0 167 0 4 0 110] 
#[1 0 29 0 1 3 29 0 3 3 33 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 41 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 13 121 0 182 13 121 0 183 3 49 0 201 3 49 0 202 3 49 0 203 17 149 0 209 17 149 0 210 0 253 0 237 13 121 0 245 1 205 0 246 1 209 0 249 13 121 0 250 0 253 1 0 13 121 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 93 1 194] 
#[0 6 218 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 6 222 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 17 153 0 4 6 137 0 5 10 45 0 109 2 61 0 113 3 125 0 114 6 149 0 116 6 153 0 117 8 189 0 129 10 49 0 130 10 49 0 141 10 49 0 142 10 49 0 143 17 157 0 204 17 161 0 208 17 161 0 210 6 149 1 42 6 153 1 43 10 53 1 194] 
#[1 13 61 0 41 13 41 0 111 13 65 1 107] 
#[1 2 61 0 113 17 165 0 129] 
#[1 0 102 0 1 0 102 0 5 0 171 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 50 0 102 0 77 0 102 0 80 0 102 0 110 13 41 0 111 0 102 0 120 0 102 0 121 13 45 1 107 0 102 1 191 0 102 1 193 0 102 1 194] 
#[1 4 222 0 1 0 175 0 2 0 175 0 4 4 222 0 5 0 175 0 6 4 222 0 8 4 222 0 9 4 222 0 10 4 222 0 11 4 222 0 12 4 222 0 13 4 222 0 14 4 222 0 15 4 222 0 16 4 222 0 17 4 222 0 19 4 222 0 20 4 222 0 21 0 175 0 22 4 222 0 23 4 222 0 24 4 222 0 25 4 222 0 26 4 222 0 27 4 222 0 28 4 222 0 29 4 222 0 30 4 222 0 31 4 222 0 32 4 222 0 33 4 222 0 34 4 222 0 35 4 222 0 36 4 222 0 37 4 222 0 39 4 222 0 40 4 222 0 41 4 222 0 42 4 222 0 43 4 222 0 44 4 222 0 45 4 222 0 46 4 222 0 48 4 222 0 49 4 222 0 50 4 222 0 77 4 222 0 80 0 175 0 110 4 222 0 120 4 222 0 121 4 222 1 191 4 222 1 193 4 222 1 194] 
#[0 6 230 0 6 0 110] 
#[0 17 169 0 6] 
#[0 6 234 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 5 33 0 3 5 37 0 5 17 173 0 6 3 37 0 109 3 209 0 110 2 61 0 113 8 189 0 129 17 177 0 136 3 49 0 201 3 49 0 202 3 49 0 203 17 181 0 207 8 21 0 209 8 21 0 210 17 185 0 211 8 193 1 194] 
#[0 6 238 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 17 189 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 17 189 1 101 17 189 1 102 11 189 1 103 11 189 1 105] 
#[0 6 242 0 2 0 6] 
#[0 6 246 0 2 0 4 0 6 0 7 0 88 0 110] 
#[0 6 250 0 2] 
#[0 6 254 0 2 0 110] 
#[0 7 2 0 2 0 4 0 6 0 110] 
#[1 7 6 0 2 7 6 0 4 7 6 0 6 8 37 0 22 7 6 0 110 17 193 0 145] 
#[1 7 10 0 2 7 10 0 4 7 10 0 6 7 10 0 110 13 41 0 111 17 197 1 107] 
#[1 7 14 0 2 7 14 0 4 7 14 0 6 8 37 0 22 7 14 0 110 17 201 0 145] 
#[1 0 179 0 2 0 179 0 4 0 179 0 6 0 183 0 22 0 187 0 41 0 179 0 110 0 119 0 111 17 209 0 145 17 213 1 107] 
#[1 7 22 0 2 7 22 0 4 7 22 0 6 8 37 0 22 17 217 0 41 7 22 0 110 13 41 0 111 17 221 0 145 17 225 1 107] 
#[0 7 26 0 1 0 4 0 7 0 10 0 22 0 41 0 110 0 111] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 17 229 0 238 3 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 17 233 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 17 237 0 238 3 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 17 241 0 2] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 17 249 0 209 17 249 0 210 17 249 0 242 17 249 0 253 8 193 1 194] 
#[0 7 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 7 34 0 4 0 110] 
#[0 17 253 0 2] 
#[0 7 38 0 4 0 110] 
#[0 18 1 0 1] 
#[0 18 5 0 1] 
#[0 18 9 0 3] 
#[0 7 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 7 46 0 6 0 110] 
#[0 7 50 0 6 0 110] 
#[1 6 74 0 2 6 74 0 3 6 74 0 4 6 74 0 5 6 74 0 6 6 74 0 7 6 74 0 8 6 74 0 10 6 74 0 11 6 74 0 13 6 74 0 14 6 74 0 17 6 74 0 18 6 74 0 19 6 74 0 20 6 82 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 34 6 74 0 36 6 74 0 39 6 74 0 40 6 74 0 41 6 74 0 43 6 74 0 44 6 74 0 45 6 74 0 46 6 74 0 48 6 74 0 49 6 74 0 58 6 74 0 77 6 74 0 79 6 74 0 80 6 74 0 88 6 74 0 89 6 74 0 90 6 74 0 91 6 74 0 94 6 74 0 110 6 74 0 111 6 74 0 114 6 74 0 116 6 74 0 117 6 74 0 122 6 74 0 123 6 74 1 191 6 74 1 195] 
#[0 18 13 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 18 17 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 18 21 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 18 25 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 0 29 0 1 0 33 0 3 0 131 0 4 3 101 0 5 0 41 0 7 3 105 0 25 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 109 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 3 113 0 74 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 3 117 0 93 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 3 121 0 109 0 193 0 113 3 125 0 114 3 181 0 116 3 185 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 3 129 0 129 3 145 0 130 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 3 137 0 139 3 141 0 140 3 145 0 141 3 145 0 142 3 145 0 143 3 141 0 144 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 18 29 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 3 141 0 252 3 141 0 254 0 253 1 0 1 109 1 2 3 141 1 3 0 253 1 5 3 141 1 7 0 253 1 9 18 33 1 10 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 3 181 1 42 3 185 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 141 1 117 3 141 1 118 3 197 1 194] 
#[0 7 54 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[0 7 58 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[1 6 78 0 13 16 97 0 68 6 78 0 110 16 101 1 76] 
#[0 7 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 7 66 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 7 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 80 0 81 0 83 0 85 0 86 0 87 0 88 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 110 0 111 0 113 0 116 0 117 0 118 0 120 0 121 0 122 0 123 0 124 1 191 1 193 1 194 1 195] 
#[0 7 74 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 18 37 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 12 9 0 182 12 9 0 183 0 253 0 237 12 9 0 245 1 205 0 246 1 209 0 249 12 9 0 250 0 253 1 0 12 9 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 18 41 0 1] 
#[1 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 18 45 0 130 18 45 0 141 18 45 0 142 18 45 0 143 6 149 1 42 6 153 1 43 18 49 1 117 18 53 1 118 14 1 1 194] 
#[1 12 209 0 1 18 57 0 7 8 213 0 10 8 37 0 22 13 41 0 111 18 61 0 145 12 217 1 73 18 65 1 107 18 69 1 108 13 133 1 116] 
#[1 6 137 0 5 18 73 0 58 18 77 0 94 3 125 0 114 6 149 0 116 6 153 0 117 18 81 0 130 18 81 0 141 18 81 0 142 18 81 0 143 6 149 1 42 6 153 1 43 18 85 1 117 18 89 1 118 14 1 1 194] 
#[0 18 93 0 7] 
#[0 7 78 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 7 82 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 7 86 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 7 90 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 7 94 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 7 98 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 7 102 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 7 106 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[1 8 145 0 74 8 149 0 93] 
#[0 7 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 80 0 81 0 83 0 85 0 86 0 87 0 88 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 110 0 111 0 113 0 116 0 117 0 118 0 120 0 121 0 122 0 123 0 124 1 191 1 193 1 194 1 195] 
#[0 18 97 0 4] 
#[0 7 114 0 79] 
#[0 7 118 0 79] 
#[0 7 122 0 3 0 110] 
#[1 7 126 0 3 18 101 0 110] 
#[0 7 130 0 3 0 110] 
#[0 7 134 0 3] 
#[0 7 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 105 0 182 18 105 0 183 18 105 0 185 0 253 0 237 18 105 0 245 1 205 0 246 1 209 0 249 18 105 0 250 0 253 1 0 18 105 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 18 109 0 114] 
#[0 7 142 0 7 0 72] 
#[1 18 113 0 4 9 49 0 114 18 117 1 39] 
#[0 7 146 0 72] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 18 121 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 18 125 0 1 2 61 0 113 18 129 0 129] 
#[0 18 133 0 1] 
#[0 6 166 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 7 150 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 18 137 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 18 141 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 18 145 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 18 149 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 7 154 0 7] 
#[0 7 158 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 12 209 0 1 8 213 0 10 12 217 1 73 17 125 1 108 18 153 1 116] 
#[0 18 157 0 3] 
#[1 0 29 0 1 18 161 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 165 0 182 18 165 0 183 18 165 0 185 0 253 0 237 18 165 0 245 1 205 0 246 1 209 0 249 18 165 0 250 0 253 1 0 18 165 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 18 169 0 7 6 65 0 110] 
#[1 3 118 0 7 8 37 0 22 7 162 0 77 3 118 0 88 3 118 0 110 10 65 0 145] 
#[1 18 173 0 7 10 73 0 110] 
#[1 3 122 0 7 18 177 0 88 3 122 0 110] 
#[1 8 37 0 22 7 166 0 77 10 77 0 145] 
#[0 18 181 0 77] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 185 0 182 18 185 0 183 18 185 0 185 0 253 0 237 18 185 0 245 1 205 0 246 1 209 0 249 18 185 0 250 0 253 1 0 18 185 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 189 0 182 18 189 0 183 0 253 0 237 18 189 0 245 1 205 0 246 1 209 0 249 18 189 0 250 0 253 1 0 18 189 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 18 193 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 197 0 182 18 197 0 183 18 197 0 185 0 253 0 237 18 197 0 245 1 205 0 246 1 209 0 249 18 197 0 250 0 253 1 0 18 197 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 18 201 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 205 0 182 18 205 0 183 18 205 0 185 0 253 0 237 18 205 0 245 1 205 0 246 1 209 0 249 18 205 0 250 0 253 1 0 18 205 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 18 209 0 7 6 65 0 110] 
#[1 3 238 0 7 8 37 0 22 7 162 0 77 7 162 0 88 3 238 0 110 11 37 0 145] 
#[1 8 37 0 22 7 166 0 77 7 166 0 88 11 49 0 145] 
#[0 7 170 0 77 0 88] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 213 0 182 18 213 0 183 18 213 0 185 0 253 0 237 18 213 0 245 1 205 0 246 1 209 0 249 18 213 0 250 0 253 1 0 18 213 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 18 217 0 182 18 217 0 183 0 253 0 237 18 217 0 245 1 205 0 246 1 209 0 249 18 217 0 250 0 253 1 0 18 217 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 5 41 0 129 18 221 0 200 5 53 0 201 5 53 0 202 5 53 0 203 5 57 1 194] 
#[0 18 225 0 88] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 14 169 0 129 14 169 0 201 14 169 0 202 14 169 0 203 14 169 0 217] 
#[0 18 237 0 88] 
#[0 18 241 0 3] 
#[0 18 245 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 18 249 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 18 253 0 2] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 19 1 0 186 19 1 0 189 19 1 0 190 19 1 0 191 19 1 0 198 19 1 0 212 19 1 0 213 19 1 0 214 19 1 0 215 19 1 0 218 19 1 0 219 19 1 0 221 19 1 0 222 19 1 0 223 19 1 0 228 19 1 0 230 19 1 0 231 19 1 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 7 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 2 61 0 113 19 5 0 129 19 5 1 34] 
#[0 7 178 0 72] 
#[1 19 9 0 4 2 61 0 113 9 189 0 114 9 201 0 129 19 13 1 32 9 201 1 34] 
#[0 7 182 0 72] 
#[0 7 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 7 190 0 72] 
#[0 7 194 0 72] 
#[0 7 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 7 202 0 2 0 110] 
#[0 7 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 19 17 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 19 21 0 109 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 19 25 0 182 19 25 0 183 0 253 0 237 19 25 0 245 1 205 0 246 1 209 0 249 19 25 0 250 0 253 1 0 19 25 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 7 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 19 29 0 13 19 33 0 110] 
#[0 7 214 0 13 0 110] 
#[0 7 218 0 13 0 110] 
#[1 0 29 0 1 19 37 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 9 241 0 109 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 19 41 0 159 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 9 249 0 182 9 249 0 183 0 253 0 237 9 249 0 245 1 205 0 246 1 209 0 249 9 249 0 250 0 253 1 0 9 249 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 19 45 0 3 19 49 0 224] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 19 61 0 129 19 61 0 201 19 61 0 202 19 61 0 203 19 61 0 234] 
#[0 7 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 7 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 7 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 6 214 0 4] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 17 149 0 209 17 149 0 210 8 193 1 194] 
#[0 6 226 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 7 234 0 7 0 110] 
#[1 7 238 0 7 8 37 0 22 7 238 0 88 7 238 0 110 19 65 0 145] 
#[1 8 37 0 22 19 69 0 145] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 19 73 0 186 19 73 0 189 19 73 0 190 19 73 0 191 19 73 0 198 19 73 0 212 19 73 0 213 19 73 0 214 19 73 0 215 19 73 0 218 19 73 0 219 19 73 0 221 19 73 0 222 19 73 0 223 19 73 0 228 19 73 0 230 19 73 0 231 19 73 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 19 77 0 186 19 77 0 189 19 77 0 190 19 77 0 191 19 77 0 198 19 77 0 212 19 77 0 213 19 77 0 214 19 77 0 215 19 77 0 218 19 77 0 219 19 77 0 221 19 77 0 222 19 77 0 223 19 77 0 228 19 77 0 230 19 77 0 231 19 77 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 4 2 0 3 4 2 0 124 4 2 0 126 19 81 1 63 11 81 1 64] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 19 85 0 182 19 85 0 183 19 85 0 185 0 253 0 237 19 85 0 245 1 205 0 246 1 209 0 249 19 85 0 250 0 253 1 0 19 85 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 7 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 7 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 19 89 0 122 19 93 0 123] 
#[0 7 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 19 97 0 6 6 65 0 110] 
#[1 19 101 0 6 6 65 0 110] 
#[0 7 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 8 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 8 6 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 19 105 0 182 19 105 0 183 0 253 0 237 19 105 0 245 1 205 0 246 1 209 0 249 19 105 0 250 0 253 1 0 19 105 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 8 10 0 7 0 110] 
#[1 8 14 0 7 8 37 0 22 8 14 0 110 19 109 0 145] 
#[1 8 18 0 7 8 37 0 22 8 18 0 110 19 113 0 145] 
#[1 0 29 0 1 0 33 0 3 8 22 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 6 161 0 186 6 161 0 189 6 161 0 190 6 161 0 191 6 161 0 193 6 161 0 194 1 137 0 195 6 161 0 198 6 161 0 212 6 161 0 213 6 161 0 214 6 161 0 215 6 161 0 218 6 161 0 219 6 161 0 221 6 161 0 222 6 161 0 223 6 161 0 228 6 161 0 230 6 161 0 231 6 161 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 19 117 0 4] 
#[0 8 26 0 4] 
#[0 8 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 191 1 193 1 194 1 195] 
#[0 19 121 0 124] 
#[0 8 34 0 3 0 124 0 126] 
#[0 8 38 0 3 0 124 0 126] 
#[0 8 42 0 3 0 124 0 126] 
#[0 19 125 0 3] 
#[0 8 46 0 125] 
#[0 19 129 0 125] 
#[1 8 50 0 13 19 133 1 70] 
#[1 8 54 0 3 8 54 0 8 8 54 0 13 8 54 0 22 15 181 0 111 8 54 0 125] 
#[0 8 58 0 3 0 8 0 13 0 22 0 125] 
#[1 19 137 0 8 0 98 0 13 19 141 1 68] 
#[0 8 62 0 3 0 8 0 13 0 125] 
#[1 6 42 0 3 8 66 0 8 8 66 0 13 15 189 0 125 15 217 1 51 19 145 1 56 19 145 1 58 19 145 1 59 15 217 1 60 15 225 1 72] 
#[0 8 70 0 3 0 8 0 13 0 125] 
#[0 8 74 0 3 0 8 0 13 0 125] 
#[1 8 78 0 3 8 78 0 8 8 78 0 13 19 149 0 22 8 78 0 125 19 153 1 61] 
#[0 19 157 0 13] 
#[0 19 161 0 3] 
#[1 8 82 0 3 8 82 0 8 8 82 0 13 15 177 0 21 8 82 0 125] 
#[0 8 86 0 125] 
#[1 13 41 0 111 19 165 1 107] 
#[1 16 5 0 1 19 169 0 4 13 201 0 5 8 213 0 10 16 13 0 86 10 45 0 109 2 61 0 113 3 125 0 114 6 149 0 116 6 153 0 117 8 189 0 129 19 173 0 130 19 173 0 141 19 173 0 142 19 173 0 143 7 237 0 204 7 241 0 205 7 245 0 208 7 245 0 210 6 149 1 42 6 153 1 43 16 21 1 73 16 25 1 92 16 29 1 93 16 33 1 94 16 33 1 106 16 33 1 108 16 33 1 112 16 33 1 113 16 33 1 114 10 53 1 194] 
#[1 11 113 0 1 15 241 0 3 15 245 0 5 10 57 0 6 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 3 37 0 109 3 209 0 110 2 61 0 113 11 153 0 116 11 157 0 117 15 249 0 129 10 61 0 136 3 49 0 201 3 49 0 202 3 49 0 203 8 13 0 206 8 17 0 207 8 21 0 209 8 21 0 210 8 25 0 211 11 153 1 42 11 157 1 43 11 161 1 73 16 65 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 16 61 1 97 16 65 1 98 11 177 1 99 11 181 1 100 16 65 1 101 16 65 1 102 11 189 1 103 11 189 1 105 8 193 1 194] 
#[1 0 191 0 2 0 191 0 4 6 74 0 5 0 191 0 6 6 74 0 7 6 74 0 10 6 82 0 21 8 37 0 22 6 74 0 39 6 74 0 44 0 191 0 110 8 41 0 145] 
#[0 19 177 0 2] 
#[0 19 181 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 19 185 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 8 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 80 0 81 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 110 0 111 0 113 0 114 0 116 0 117 0 118 0 120 0 121 0 122 0 123 0 124 1 191 1 194 1 195] 
#[1 19 189 0 1 8 213 0 10 19 193 1 73] 
#[1 16 5 0 1 8 94 0 4 8 94 0 7 8 213 0 10 19 197 0 41 8 94 0 110 13 41 0 111 16 21 1 73 19 201 1 107 19 205 1 108] 
#[0 19 209 0 1] 
#[0 19 213 0 4] 
#[1 8 98 0 4 19 217 0 7 19 221 0 110] 
#[0 8 102 0 4 0 7 0 110] 
#[0 8 106 0 4 0 7 0 110] 
#[0 8 110 0 4 0 7 0 110] 
#[0 8 114 0 4 0 7 0 110] 
#[0 8 118 0 4 0 7 0 110] 
#[0 8 122 0 4 0 7 0 110] 
#[0 8 126 0 6 0 110] 
#[1 19 225 0 6 19 229 0 110] 
#[0 8 130 0 6 0 110] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 16 1 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 16 1 1 101 16 1 1 102 11 189 1 103 11 189 1 105] 
#[1 8 134 0 2 8 134 0 3 8 134 0 4 0 195 0 5 8 134 0 6 8 134 0 7 8 134 0 8 8 134 0 10 8 134 0 11 8 134 0 13 8 134 0 14 8 134 0 17 8 134 0 18 8 134 0 19 8 134 0 20 8 134 0 22 8 134 0 23 8 134 0 24 8 134 0 25 8 134 0 26 8 134 0 34 8 134 0 36 8 134 0 39 8 134 0 40 8 134 0 41 8 134 0 43 8 134 0 44 8 134 0 45 8 134 0 46 8 134 0 48 8 134 0 49 8 134 0 58 8 134 0 77 8 134 0 80 8 134 0 88 8 134 0 89 8 134 0 90 8 134 0 91 8 134 0 94 8 134 0 110 8 134 0 111 8 134 0 114 8 134 0 116 8 134 0 117 8 134 0 122 8 134 0 123 16 129 0 220 8 134 1 191 8 134 1 195] 
#[1 8 138 0 2 8 138 0 3 8 138 0 4 0 199 0 5 8 138 0 6 8 138 0 7 8 138 0 8 8 138 0 10 8 138 0 11 8 138 0 13 8 138 0 14 8 138 0 17 8 138 0 18 8 138 0 19 8 138 0 20 8 138 0 22 8 138 0 23 8 138 0 24 8 138 0 25 8 138 0 26 8 138 0 34 8 138 0 36 8 138 0 39 8 138 0 40 8 138 0 41 8 138 0 43 8 138 0 44 8 138 0 45 8 138 0 46 8 138 0 48 8 138 0 49 8 138 0 58 8 138 0 77 8 138 0 80 8 138 0 88 8 138 0 89 8 138 0 90 8 138 0 91 8 138 0 94 8 138 0 110 8 138 0 111 8 138 0 114 8 138 0 116 8 138 0 117 8 138 0 122 8 138 0 123 16 129 0 220 8 138 1 191 8 138 1 195] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 19 233 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 19 237 0 1] 
#[0 8 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[1 8 146 0 2 8 146 0 3 8 146 0 4 8 146 0 5 8 146 0 6 8 146 0 7 8 146 0 8 8 146 0 10 8 146 0 11 8 146 0 13 8 146 0 14 8 146 0 17 8 146 0 18 8 146 0 19 8 146 0 20 19 241 0 21 8 146 0 22 8 146 0 23 8 146 0 24 8 146 0 25 8 146 0 26 8 146 0 34 8 146 0 36 8 146 0 39 8 146 0 40 8 146 0 41 8 146 0 43 8 146 0 44 8 146 0 45 8 146 0 46 8 146 0 48 8 146 0 49 8 146 0 58 8 146 0 77 8 146 0 80 8 146 0 88 8 146 0 89 8 146 0 90 8 146 0 91 8 146 0 94 8 146 0 110 8 146 0 111 8 146 0 114 8 146 0 116 8 146 0 117 8 146 0 122 8 146 0 123 8 146 1 191 8 146 1 195] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 19 245 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 19 245 1 101 19 245 1 102 11 189 1 103 11 189 1 105] 
#[0 8 150 0 13 0 110] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 19 249 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 8 154 0 1 0 3 0 22 0 68 1 194] 
#[1 2 61 0 113 13 181 0 129 19 253 1 75] 
#[1 3 229 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 3 233 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 253 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 3 241 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 3 241 0 164 20 1 0 165 20 1 0 166 0 253 0 237 0 253 1 0 0 253 1 5 0 253 1 9 20 1 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 3 249 1 194] 
#[1 16 69 0 1 11 117 0 3 11 121 0 5 11 125 0 78 11 129 0 82 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 20 5 1 82 20 5 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 20 5 1 100 11 189 1 103 11 189 1 105] 
#[1 16 69 0 1 11 117 0 3 11 121 0 5 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 20 9 1 84 20 9 1 85 20 9 1 86 20 9 1 87 20 9 1 88 11 209 1 89 11 213 1 90 20 9 1 91 20 9 1 95 20 9 1 96 20 9 1 103 20 9 1 105] 
#[0 20 13 0 5] 
#[1 8 158 0 2 8 158 0 3 8 158 0 4 8 158 0 5 8 158 0 6 8 158 0 7 8 158 0 8 0 203 0 10 8 158 0 11 8 158 0 13 8 158 0 14 8 158 0 17 8 158 0 18 8 158 0 19 8 158 0 20 8 158 0 22 8 158 0 23 8 158 0 24 8 158 0 25 8 158 0 26 8 158 0 34 8 158 0 36 8 158 0 39 8 158 0 40 8 158 0 41 8 158 0 43 8 158 0 44 8 158 0 45 8 158 0 46 8 158 0 48 8 158 0 49 8 158 0 58 8 158 0 77 8 158 0 79 8 158 0 80 8 158 0 88 8 158 0 89 8 158 0 90 8 158 0 91 8 158 0 94 8 158 0 110 8 158 0 111 8 158 0 114 8 158 0 116 8 158 0 117 8 158 0 122 8 158 0 123 20 17 1 77 8 158 1 191 8 158 1 195] 
#[1 2 61 0 113 20 21 0 129] 
#[0 20 25 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 20 29 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 20 33 0 2] 
#[1 20 37 0 4 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 16 201 0 130 16 201 0 141 16 201 0 142 16 201 0 143 6 149 1 42 6 153 1 43 20 41 1 138 16 209 1 139 16 213 1 140] 
#[0 20 45 0 3] 
#[1 4 49 0 68 20 49 1 15 4 65 1 194] 
#[0 8 162 0 7 0 110] 
#[0 8 166 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 2 61 0 113 12 25 0 129 20 53 1 177] 
#[0 20 57 0 7] 
#[0 8 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 30 0 4 6 241 0 61 7 185 0 67 6 249 0 76 2 121 0 81 2 125 0 85 2 129 0 102 2 241 1 25 2 241 1 115 2 241 1 124 2 241 1 142 2 241 1 148 2 241 1 160 20 61 1 164 2 237 1 165 2 241 1 166 2 241 1 169 2 241 1 171 2 241 1 172 2 241 1 173 2 241 1 174] 
#[1 8 174 0 4 6 177 0 56 20 65 0 57 2 105 0 66 20 69 0 67 6 185 0 73 7 121 0 76 2 121 0 81 20 73 0 83 6 197 0 85 6 201 0 104 20 77 0 194 1 137 0 195 20 81 1 124 20 101 1 137 20 85 1 148 20 89 1 175 20 93 1 178 20 97 1 179 20 101 1 185 20 105 1 186 20 109 1 187 20 113 1 188 20 117 1 189] 
#[0 8 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 8 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 8 186 0 4 20 121 0 22 8 186 0 110] 
#[0 20 125 0 4] 
#[1 8 190 0 4 20 129 0 110] 
#[0 8 194 0 4 0 110] 
#[0 8 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 8 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 4 45 0 3 8 213 0 10 4 49 0 68 12 13 1 14 20 133 1 15 16 161 1 73 4 65 1 194] 
#[1 20 137 0 1 8 213 0 10 16 21 1 73 16 177 1 108] 
#[0 8 206 0 4 0 61 0 67 0 76 0 81 0 85 0 102 1 195] 
#[0 8 210 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 2 61 0 113 17 9 0 129 17 13 1 90 17 17 1 149] 
#[0 8 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 20 141 0 3] 
#[0 20 145 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 20 149 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 20 153 0 2] 
#[0 6 82 0 7 0 21] 
#[1 8 218 0 7 20 157 0 21] 
#[0 20 161 0 7] 
#[0 20 165 0 1] 
#[0 8 222 0 3] 
#[0 8 226 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 11 117 0 3 20 169 1 91] 
#[0 8 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 4 97 0 56 2 97 0 57 6 241 0 61 2 105 0 66 4 105 0 73 7 121 0 76 2 121 0 81 1 137 0 83 2 125 0 85 2 129 0 102 0 173 0 104 20 173 0 194 1 137 0 195 20 177 0 198 20 181 0 236 20 185 0 255 20 189 1 12 20 193 1 115 20 197 1 124 20 201 1 137 20 205 1 142 20 209 1 148 20 213 1 174 7 49 1 194] 
#[0 8 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 8 238 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 8 242 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 8 246 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 8 250 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 8 254 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 9 2 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 9 6 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 9 10 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 20 217 0 4] 
#[1 0 29 0 1 0 33 0 3 9 14 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 2 93 0 56 2 97 0 57 0 89 0 59 0 93 0 60 6 241 0 61 0 97 0 63 0 101 0 64 2 105 0 66 17 41 0 67 2 13 0 69 0 113 0 71 2 113 0 73 0 121 0 75 7 85 0 76 2 121 0 81 1 137 0 83 2 125 0 85 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 2 129 0 102 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 20 221 0 186 20 221 0 189 20 221 0 190 20 221 0 191 20 221 0 194 1 137 0 195 20 221 0 198 20 221 0 212 20 221 0 213 20 221 0 214 20 221 0 215 20 221 0 218 20 221 0 219 20 221 0 221 20 221 0 222 20 221 0 223 20 221 0 228 20 221 0 230 20 221 0 231 20 221 0 235 20 221 0 236 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 20 221 0 255 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 20 221 1 12 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 20 221 1 115 20 221 1 124 20 221 1 137 20 221 1 142 20 221 1 146 20 221 1 147 20 221 1 148 20 221 1 174 3 25 1 194] 
#[0 9 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 9 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 9 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 9 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 9 34 0 3 0 21] 
#[0 20 225 0 7] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 20 229 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 20 229 1 101 20 229 1 102 11 189 1 103 11 189 1 105] 
#[0 16 233 0 7] 
#[0 20 233 0 2] 
#[0 20 237 0 7] 
#[0 20 241 0 3] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 20 245 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 9 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 20 249 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 9 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 9 46 0 4 0 110] 
#[0 9 50 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 20 253 0 4] 
#[0 9 54 0 4 0 110] 
#[1 7 18 0 4 8 37 0 22 17 205 0 41 7 18 0 110 13 41 0 111 17 209 0 145 17 213 1 107] 
#[0 9 58 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 9 62 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 5 33 0 3 5 37 0 5 21 1 0 6 3 37 0 109 8 173 0 110 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 13 21 0 209 13 21 0 210 21 5 0 211 8 193 1 194] 
#[0 9 66 0 6 0 110] 
#[0 21 9 0 6] 
#[0 9 70 0 2 0 3 0 4 0 5 0 6 0 7 0 18 0 22 0 58 0 88 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 9 74 0 2 0 4 0 6 0 110] 
#[0 9 78 0 2 0 4 0 6 0 110] 
#[0 9 82 0 2 0 4 0 6 0 110] 
#[0 9 86 0 2 0 4 0 6 0 110] 
#[0 9 90 0 2 0 4 0 6 0 110] 
#[1 9 94 0 2 9 94 0 4 9 94 0 6 8 37 0 22 9 94 0 110 21 13 0 145] 
#[1 9 98 0 2 9 98 0 4 9 98 0 6 9 98 0 110 13 41 0 111 21 17 1 107] 
#[0 9 102 0 2 0 4 0 6 0 110] 
#[1 9 106 0 2 9 106 0 4 9 106 0 6 8 37 0 22 9 106 0 110 21 21 0 145] 
#[0 21 25 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 21 29 0 238 3 77 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 21 33 0 2] 
#[0 21 37 0 3] 
#[0 9 110 0 2] 
#[0 21 41 0 2] 
#[0 21 45 0 3] 
#[0 21 49 0 2] 
#[1 5 33 0 3 5 37 0 5 2 61 0 113 21 53 0 129 21 57 0 201 21 57 0 202 21 57 0 203 21 61 0 209 21 61 0 210 21 61 0 242 21 61 0 253 21 65 1 111 21 69 1 119 8 193 1 194] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 21 73 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 21 77 0 3] 
#[0 21 81 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 21 85 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 21 89 0 2] 
#[0 9 114 0 4] 
#[0 21 93 0 4] 
#[1 0 102 0 1 0 102 0 5 0 102 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 48 0 102 0 49 0 102 0 50 0 102 0 77 0 102 0 80 21 97 0 111 0 102 0 120 0 102 0 121 0 102 1 191 0 102 1 193 0 102 1 194] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 21 101 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 16 5 0 1 21 105 0 7 8 213 0 10 8 37 0 22 13 41 0 111 21 109 0 145 16 21 1 73 21 113 1 107 21 117 1 108] 
#[0 9 118 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 9 122 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 9 126 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 21 121 0 7] 
#[1 21 125 0 7 8 37 0 22 21 129 0 145] 
#[1 21 133 0 3 21 137 0 7] 
#[0 21 141 0 1] 
#[1 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 21 145 0 130 21 145 0 141 21 145 0 142 21 145 0 143 6 149 1 42 6 153 1 43 21 149 1 117 21 153 1 118 14 1 1 194] 
#[1 16 5 0 1 21 157 0 7 8 213 0 10 8 37 0 22 13 41 0 111 21 161 0 145 16 21 1 73 21 165 1 107 21 169 1 108] 
#[0 9 130 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 9 134 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 9 138 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 9 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 80 0 81 0 83 0 85 0 86 0 87 0 88 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 110 0 111 0 113 0 116 0 117 0 118 0 120 0 121 0 122 0 123 0 124 1 191 1 193 1 194 1 195] 
#[1 2 61 0 113 13 149 0 129 21 173 1 88 11 209 1 89 11 213 1 90 21 173 1 127] 
#[1 21 177 0 2 6 65 0 110] 
#[0 9 146 0 4 0 110] 
#[0 9 150 0 7 0 72] 
#[0 9 154 0 4 0 110] 
#[0 21 181 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 21 185 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 21 189 0 1] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 21 193 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 21 197 0 3] 
#[0 21 201 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 21 205 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 21 209 0 2] 
#[0 21 213 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 21 217 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 21 221 0 186 21 221 0 189 21 221 0 190 21 221 0 191 21 221 0 198 21 221 0 212 21 221 0 213 21 221 0 214 21 221 0 215 21 221 0 218 21 221 0 219 21 221 0 221 21 221 0 222 21 221 0 223 21 221 0 228 21 221 0 230 21 221 0 231 21 221 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 21 225 0 2 6 65 0 110] 
#[1 0 29 0 1 21 229 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 21 233 0 182 21 233 0 183 21 233 0 185 0 253 0 237 21 233 0 245 1 205 0 246 1 209 0 249 21 233 0 250 0 253 1 0 21 233 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 21 237 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 21 241 0 182 21 241 0 183 21 241 0 185 0 253 0 237 21 241 0 245 1 205 0 246 1 209 0 249 21 241 0 250 0 253 1 0 21 241 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 21 245 0 182 21 245 0 183 0 253 0 237 21 245 0 245 1 205 0 246 1 209 0 249 21 245 0 250 0 253 1 0 21 245 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 21 249 0 182 21 249 0 183 21 249 0 185 0 253 0 237 21 249 0 245 1 205 0 246 1 209 0 249 21 249 0 250 0 253 1 0 21 249 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 21 253 0 2 6 65 0 110] 
#[0 22 1 0 2] 
#[1 0 29 0 1 22 5 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 9 0 182 22 9 0 183 22 9 0 185 0 253 0 237 22 9 0 245 1 205 0 246 1 209 0 249 22 9 0 250 0 253 1 0 22 9 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 22 13 0 7 6 65 0 110] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 22 17 0 186 22 17 0 189 22 17 0 190 22 17 0 191 22 17 0 198 22 17 0 212 22 17 0 213 22 17 0 214 22 17 0 215 22 17 0 218 22 17 0 219 22 17 0 221 22 17 0 222 22 17 0 223 22 17 0 228 22 17 0 230 22 17 0 231 22 17 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 22 21 0 2 6 65 0 110] 
#[1 0 29 0 1 22 25 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 29 0 182 22 29 0 183 22 29 0 185 0 253 0 237 22 29 0 245 1 205 0 246 1 209 0 249 22 29 0 250 0 253 1 0 22 29 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 22 33 0 2 6 65 0 110] 
#[0 22 37 0 2] 
#[0 22 41 0 88] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 45 0 182 22 45 0 183 0 253 0 237 22 45 0 245 1 205 0 246 1 209 0 249 22 45 0 250 0 253 1 0 22 45 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 7 162 0 88] 
#[0 7 166 0 88] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 49 0 182 22 49 0 183 0 253 0 237 22 49 0 245 1 205 0 246 1 209 0 249 22 49 0 250 0 253 1 0 22 49 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 22 53 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 22 57 0 3] 
#[0 22 61 0 2] 
#[0 22 65 0 3] 
#[1 9 158 0 1 9 158 0 3 9 158 0 4 9 158 0 5 9 158 0 7 9 158 0 34 9 158 0 35 9 158 0 36 9 158 0 37 9 158 0 38 9 158 0 47 9 158 0 51 9 158 0 52 9 158 0 53 9 158 0 54 9 158 0 56 9 158 0 57 9 158 0 59 9 158 0 60 9 158 0 61 9 158 0 62 9 158 0 63 9 158 0 64 22 69 0 65 9 158 0 66 9 158 0 67 9 158 0 69 9 158 0 71 9 158 0 73 9 158 0 75 9 158 0 76 9 158 0 81 9 158 0 83 9 158 0 85 9 158 0 86 9 158 0 87 9 158 0 92 9 158 0 95 9 158 0 96 9 158 0 98 9 158 0 99 9 158 0 100 9 158 0 101 9 158 0 102 9 158 0 103 9 158 0 104 9 158 0 105 9 158 0 106 9 158 0 107 9 158 0 108 9 158 0 113 9 158 0 116 9 158 0 117 9 158 0 118 9 158 0 120 9 158 0 121 9 158 0 124 9 158 1 194 9 158 1 195] 
#[0 9 162 0 4 0 110] 
#[0 9 166 0 72] 
#[0 9 170 0 4 0 110] 
#[0 9 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 73 0 182 22 73 0 183 0 253 0 237 22 73 0 245 1 205 0 246 1 209 0 249 22 73 0 250 0 253 1 0 22 73 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 9 178 0 2 0 110] 
#[0 9 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 79 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 22 77 1 79 22 77 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 22 77 1 101 22 77 1 102 11 189 1 103 11 189 1 105] 
#[0 9 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 22 81 0 2 22 85 0 110] 
#[1 22 89 0 4 22 93 0 54 22 97 0 62 22 101 0 225 22 105 0 226 22 109 0 227] 
#[0 9 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 9 194 0 2] 
#[0 9 198 0 2] 
#[0 22 113 0 2] 
#[0 9 202 0 7 0 88 0 110] 
#[0 9 206 0 7 0 88 0 110] 
#[0 9 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 9 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 22 117 0 124] 
#[1 6 65 0 110 9 218 0 122 9 218 0 123] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 121 0 182 22 121 0 183 22 121 0 185 0 253 0 237 22 121 0 245 1 205 0 246 1 209 0 249 22 121 0 250 0 253 1 0 22 121 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 9 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 9 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 9 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 9 234 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[0 9 238 0 7 0 110] 
#[0 9 242 0 7 0 110] 
#[0 9 246 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[0 22 125 0 8] 
#[1 0 29 0 1 2 53 0 3 0 98 0 4 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 3 205 0 109 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 22 137 0 137 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 22 137 0 182 22 137 0 183 0 253 0 237 22 137 0 245 1 205 0 246 1 209 0 249 22 137 0 250 0 253 1 0 22 137 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 22 137 1 66 2 45 1 67 22 141 1 68 2 49 1 194] 
#[0 9 250 0 3 0 8 0 13 0 22 0 125] 
#[0 22 145 0 13] 
#[1 8 50 0 13 22 149 1 70] 
#[0 22 153 0 13] 
#[0 9 254 0 3 0 8 0 13 0 125] 
#[1 6 42 0 3 22 157 0 116 0 7 0 124 22 157 1 42 22 169 1 45 22 169 1 46 2 37 1 47 22 169 1 49 22 169 1 62 2 45 1 67 22 173 1 72] 
#[0 10 2 0 3 0 8 0 13 0 125] 
#[0 10 6 0 3 0 124 0 126] 
#[1 3 205 0 109 22 177 0 137] 
#[0 10 10 0 3 0 18] 
#[1 0 207 0 2 0 207 0 4 8 90 0 5 0 207 0 6 8 90 0 7 4 122 0 22 8 90 0 39 8 90 0 44 0 207 0 110] 
#[1 16 5 0 1 8 94 0 4 8 94 0 7 8 213 0 10 19 197 0 41 8 94 0 110 22 181 0 111 16 21 1 73 19 201 1 107 19 205 1 108] 
#[0 22 185 0 18] 
#[0 10 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 22 189 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 22 193 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 22 197 0 1] 
#[1 16 5 0 1 10 18 0 4 10 18 0 7 8 213 0 10 10 18 0 110 13 41 0 111 16 21 1 73 22 201 1 107 22 205 1 108] 
#[0 10 22 0 4 0 7 0 110] 
#[0 10 26 0 4 0 7 0 110] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 22 209 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 10 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 77 0 80 0 81 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 110 0 111 0 113 0 114 0 116 0 117 0 118 0 120 0 121 0 122 0 123 0 124 1 191 1 194 1 195] 
#[1 16 5 0 1 10 34 0 4 13 201 0 5 8 213 0 10 16 13 0 86 3 125 0 114 6 149 0 116 6 153 0 117 16 17 0 130 16 17 0 141 16 17 0 142 16 17 0 143 6 149 1 42 6 153 1 43 16 21 1 73 22 213 1 94 22 213 1 106 22 213 1 108 22 213 1 112 22 213 1 113 22 213 1 114] 
#[1 16 5 0 1 10 38 0 4 13 201 0 5 8 213 0 10 16 13 0 86 3 125 0 114 6 149 0 116 6 153 0 117 16 17 0 130 16 17 0 141 16 17 0 142 16 17 0 143 6 149 1 42 6 153 1 43 16 21 1 73 22 217 1 94 22 217 1 106 22 217 1 108 22 217 1 112 22 217 1 113 22 217 1 114] 
#[0 10 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 22 221 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 22 221 1 98 11 177 1 99 11 181 1 100 22 221 1 101 22 221 1 102 11 189 1 103 11 189 1 105] 
#[0 22 225 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 22 229 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 2 61 0 113 22 233 0 129] 
#[0 10 46 0 13 0 110] 
#[0 22 237 0 2] 
#[0 10 50 0 13 0 110] 
#[0 10 54 0 2 0 4 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 19 0 20 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 77 0 80 0 88 0 110 0 111 0 122 0 123 1 191 1 195] 
#[1 10 58 0 2 10 58 0 3 10 58 0 4 10 58 0 5 10 58 0 6 10 58 0 7 10 58 0 8 10 58 0 10 10 58 0 11 10 58 0 13 10 58 0 14 10 58 0 17 10 58 0 18 10 58 0 19 10 58 0 20 10 58 0 22 10 58 0 23 10 58 0 24 10 58 0 25 10 58 0 26 10 58 0 34 10 58 0 36 0 211 0 39 10 58 0 40 10 58 0 41 10 58 0 43 10 58 0 44 10 58 0 45 10 58 0 46 10 58 0 48 10 58 0 49 10 58 0 58 10 58 0 77 10 58 0 80 10 58 0 88 10 58 0 89 10 58 0 90 10 58 0 91 10 58 0 94 10 58 0 110 10 58 0 111 10 58 0 114 10 58 0 116 10 58 0 117 10 58 0 122 10 58 0 123 10 58 1 191 10 58 1 195] 
#[1 10 62 0 2 10 62 0 3 10 62 0 4 0 215 0 5 10 62 0 6 10 62 0 7 10 62 0 8 10 62 0 10 10 62 0 11 10 62 0 13 10 62 0 14 10 62 0 17 10 62 0 18 10 62 0 19 10 62 0 20 10 62 0 22 10 62 0 23 10 62 0 24 10 62 0 25 10 62 0 26 10 62 0 34 10 62 0 36 10 62 0 39 10 62 0 40 10 62 0 41 10 62 0 43 10 62 0 44 10 62 0 45 10 62 0 46 10 62 0 48 10 62 0 49 10 62 0 58 10 62 0 77 10 62 0 80 10 62 0 88 10 62 0 89 10 62 0 90 10 62 0 91 10 62 0 94 10 62 0 110 10 62 0 111 10 62 0 114 10 62 0 116 10 62 0 117 10 62 0 122 10 62 0 123 16 129 0 220 10 62 1 191 10 62 1 195] 
#[0 22 241 0 6] 
#[0 10 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 79 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[1 10 70 0 2 10 70 0 3 10 70 0 4 10 70 0 5 10 70 0 6 10 70 0 7 10 70 0 8 10 70 0 10 10 70 0 11 10 70 0 13 10 70 0 14 10 70 0 17 10 70 0 18 10 70 0 19 10 70 0 20 10 74 0 21 10 70 0 22 10 70 0 23 10 70 0 24 10 70 0 25 10 70 0 26 10 70 0 34 10 70 0 36 10 70 0 39 10 70 0 40 10 70 0 41 10 70 0 43 10 70 0 44 10 70 0 45 10 70 0 46 10 70 0 48 10 70 0 49 10 70 0 58 10 70 0 77 10 70 0 79 10 70 0 80 10 70 0 88 10 70 0 89 10 70 0 90 10 70 0 91 10 70 0 94 10 70 0 110 10 70 0 111 10 70 0 114 10 70 0 116 10 70 0 117 10 70 0 122 10 70 0 123 10 70 1 191 10 70 1 195] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 22 245 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 22 249 0 4] 
#[1 10 78 0 3 10 78 0 18 13 41 0 111 22 253 1 107] 
#[0 10 82 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 23 1 0 4] 
#[1 10 86 0 4 13 201 0 5 23 5 0 58 23 17 0 89 23 17 0 90 23 17 0 91 23 9 0 94 3 125 0 114 6 149 0 116 6 153 0 117 23 13 0 130 23 13 0 141 23 13 0 142 23 13 0 143 6 149 1 42 6 153 1 43 23 17 1 110 23 33 1 113 23 25 1 180 23 29 1 181 23 33 1 182 23 33 1 183 23 33 1 184] 
#[0 23 45 0 3] 
#[0 10 90 0 7 0 110] 
#[0 10 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 23 49 0 4] 
#[1 0 50 0 3 0 50 0 5 6 173 0 66 0 219 0 113 12 25 0 129 12 29 1 176 12 33 1 177 0 50 1 194] 
#[1 6 177 0 56 20 65 0 57 2 105 0 66 6 185 0 73 7 121 0 76 2 121 0 81 20 73 0 83 6 197 0 85 6 201 0 104 23 53 0 194 1 137 0 195 23 57 1 124 23 77 1 137 23 61 1 148 23 65 1 175 23 69 1 178 23 73 1 179 23 77 1 185 23 81 1 186] 
#[1 0 58 0 3 0 58 0 5 0 223 0 113 12 25 0 129 12 41 1 176 12 33 1 177 0 58 1 194] 
#[0 10 98 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 102 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 106 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 110 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 114 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 118 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 122 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 10 126 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 23 85 0 4] 
#[1 10 130 0 4 6 177 0 56 20 65 0 57 2 105 0 66 20 69 0 67 6 185 0 73 7 121 0 76 2 121 0 81 20 73 0 83 6 197 0 85 6 201 0 104 20 77 0 194 1 137 0 195 20 81 1 124 20 101 1 137 20 85 1 148 20 89 1 175 20 93 1 178 20 97 1 179 20 101 1 185 20 105 1 186 23 89 1 189] 
#[0 10 134 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 23 97 0 182 23 97 0 183 0 253 0 237 23 97 0 245 1 205 0 246 1 209 0 249 23 97 0 250 0 253 1 0 23 97 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 23 97 1 141 2 49 1 194] 
#[0 10 138 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 10 142 0 4 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 16 201 0 130 16 201 0 141 16 201 0 142 16 201 0 143 6 149 1 42 6 153 1 43 23 101 1 140] 
#[0 23 105 0 3] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 23 109 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 23 113 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 23 117 0 3] 
#[0 23 121 0 2] 
#[0 23 125 0 3] 
#[1 2 61 0 113 23 129 0 129] 
#[0 10 146 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 23 133 0 116 1 42] 
#[0 10 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 10 154 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 10 158 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 10 162 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 10 166 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 10 170 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 10 174 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 10 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 10 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 10 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 10 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 10 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 10 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 10 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194] 
#[0 10 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 23 137 0 7] 
#[1 10 210 0 3 10 210 0 7 13 41 0 111 23 141 1 107] 
#[0 10 214 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 23 145 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 23 149 0 2] 
#[0 23 153 0 4] 
#[0 10 218 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 10 222 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 23 157 0 6] 
#[0 10 226 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[0 10 230 0 2 0 4 0 6 0 110] 
#[0 10 234 0 2 0 4 0 6 0 110] 
#[0 10 238 0 2 0 4 0 6 0 110] 
#[0 23 161 0 3] 
#[0 23 165 0 2] 
#[0 23 169 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 23 173 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 23 177 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 23 181 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 13 41 0 111 23 185 1 107] 
#[1 2 122 0 2 8 37 0 22 10 242 0 111 8 41 0 145] 
#[1 2 126 0 2 8 37 0 22 10 246 0 111 8 49 0 145] 
#[0 23 189 0 2] 
#[1 13 41 0 111 23 193 1 107] 
#[0 23 197 0 2] 
#[0 23 201 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 18 29 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 23 205 1 10 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 23 209 0 3] 
#[0 23 213 0 2] 
#[0 23 217 0 3] 
#[0 10 250 0 2 0 4 0 6 0 7 0 88 0 110 0 111 0 122 0 123 1 195] 
#[1 23 221 0 116 23 225 0 117] 
#[0 23 229 0 2] 
#[0 10 254 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 23 233 0 7] 
#[1 23 237 0 7 8 37 0 22 23 241 0 145] 
#[1 23 245 0 3 23 249 0 7] 
#[0 11 2 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 11 6 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 23 253 0 7] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 1 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 11 10 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 24 5 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 16 5 0 1 24 9 0 7 8 213 0 10 8 37 0 22 13 41 0 111 24 13 0 145 16 21 1 73 24 17 1 107 24 21 1 108] 
#[0 11 14 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 11 18 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 11 22 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 24 25 0 7] 
#[1 24 29 0 7 8 37 0 22 24 33 0 145] 
#[1 24 37 0 3 24 41 0 7] 
#[0 11 26 0 3 0 110] 
#[0 24 45 0 7] 
#[0 24 49 0 3] 
#[0 24 53 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 24 57 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 24 61 0 2] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 65 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 24 69 0 3] 
#[0 24 73 0 2] 
#[0 24 77 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 81 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 24 85 0 4] 
#[0 11 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 89 0 186 24 89 0 189 24 89 0 190 24 89 0 191 24 89 0 198 24 89 0 212 24 89 0 213 24 89 0 214 24 89 0 215 24 89 0 218 24 89 0 219 24 89 0 221 24 89 0 222 24 89 0 223 24 89 0 228 24 89 0 230 24 89 0 231 24 89 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 93 0 186 24 93 0 189 24 93 0 190 24 93 0 191 24 93 0 198 24 93 0 212 24 93 0 213 24 93 0 214 24 93 0 215 24 93 0 218 24 93 0 219 24 93 0 221 24 93 0 222 24 93 0 223 24 93 0 228 24 93 0 230 24 93 0 231 24 93 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 24 97 0 2 6 65 0 110] 
#[1 0 29 0 1 24 101 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 24 105 0 182 24 105 0 183 24 105 0 185 0 253 0 237 24 105 0 245 1 205 0 246 1 209 0 249 24 105 0 250 0 253 1 0 24 105 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 24 109 0 7 6 65 0 110] 
#[0 24 113 0 2] 
#[1 24 117 0 2 6 65 0 110] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 121 0 186 24 121 0 189 24 121 0 190 24 121 0 191 24 121 0 198 24 121 0 212 24 121 0 213 24 121 0 214 24 121 0 215 24 121 0 218 24 121 0 219 24 121 0 221 24 121 0 222 24 121 0 223 24 121 0 228 24 121 0 230 24 121 0 231 24 121 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 125 0 186 24 125 0 189 24 125 0 190 24 125 0 191 24 125 0 198 24 125 0 212 24 125 0 213 24 125 0 214 24 125 0 215 24 125 0 218 24 125 0 219 24 125 0 221 24 125 0 222 24 125 0 223 24 125 0 228 24 125 0 230 24 125 0 231 24 125 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 129 0 186 24 129 0 189 24 129 0 190 24 129 0 191 24 129 0 198 24 129 0 212 24 129 0 213 24 129 0 214 24 129 0 215 24 129 0 218 24 129 0 219 24 129 0 221 24 129 0 222 24 129 0 223 24 129 0 228 24 129 0 230 24 129 0 231 24 129 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 24 133 0 2 6 65 0 110] 
#[1 0 29 0 1 24 137 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 24 141 0 182 24 141 0 183 24 141 0 185 0 253 0 237 24 141 0 245 1 205 0 246 1 209 0 249 24 141 0 250 0 253 1 0 24 141 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 11 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 145 0 186 24 145 0 189 24 145 0 190 24 145 0 191 24 145 0 198 24 145 0 212 24 145 0 213 24 145 0 214 24 145 0 215 24 145 0 218 24 145 0 219 24 145 0 221 24 145 0 222 24 145 0 223 24 145 0 228 24 145 0 230 24 145 0 231 24 145 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 149 0 186 24 149 0 189 24 149 0 190 24 149 0 191 24 149 0 198 24 149 0 212 24 149 0 213 24 149 0 214 24 149 0 215 24 149 0 218 24 149 0 219 24 149 0 221 24 149 0 222 24 149 0 223 24 149 0 228 24 149 0 230 24 149 0 231 24 149 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 24 153 0 2 6 65 0 110] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 157 0 186 24 157 0 189 24 157 0 190 24 157 0 191 24 157 0 198 24 157 0 212 24 157 0 213 24 157 0 214 24 157 0 215 24 157 0 218 24 157 0 219 24 157 0 221 24 157 0 222 24 157 0 223 24 157 0 228 24 157 0 230 24 157 0 231 24 157 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 161 0 186 24 161 0 189 24 161 0 190 24 161 0 191 24 161 0 198 24 161 0 212 24 161 0 213 24 161 0 214 24 161 0 215 24 161 0 218 24 161 0 219 24 161 0 221 24 161 0 222 24 161 0 223 24 161 0 228 24 161 0 230 24 161 0 231 24 161 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 24 165 0 182 24 165 0 183 0 253 0 237 24 165 0 245 1 205 0 246 1 209 0 249 24 165 0 250 0 253 1 0 24 165 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 24 169 0 2] 
#[0 24 173 0 2] 
#[0 24 177 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 181 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 24 185 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 24 189 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 193 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 24 197 0 186 24 197 0 189 24 197 0 190 24 197 0 191 24 197 0 198 24 197 0 212 24 197 0 213 24 197 0 214 24 197 0 215 24 197 0 218 24 197 0 219 24 197 0 221 24 197 0 222 24 197 0 223 24 197 0 228 24 197 0 230 24 197 0 231 24 197 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 11 38 0 2 0 110] 
#[0 11 42 0 13 0 110] 
#[0 11 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 19 21 0 109 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 19 25 0 182 19 25 0 183 0 253 0 237 19 25 0 245 1 205 0 246 1 209 0 249 19 25 0 250 0 253 1 0 19 25 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 11 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 24 201 0 182 24 201 0 183 24 201 0 185 0 253 0 237 24 201 0 245 1 205 0 246 1 209 0 249 24 201 0 250 0 253 1 0 24 201 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 24 205 0 111] 
#[1 24 209 0 4 22 93 0 54 22 97 0 62 24 213 0 226 24 217 0 227] 
#[0 11 54 0 4 0 54 0 62] 
#[1 24 221 0 4 22 93 0 54 24 225 0 225 22 105 0 226] 
#[1 5 21 0 3 24 229 0 191] 
#[0 24 233 0 8] 
#[1 6 65 0 110 11 58 0 122 11 58 0 123] 
#[1 11 85 0 125 24 237 1 50 24 237 1 51 24 237 1 52 11 101 1 53 11 105 1 54] 
#[0 11 62 0 4] 
#[0 11 66 0 4] 
#[1 0 98 0 4 24 241 1 68] 
#[0 24 245 0 4] 
#[0 11 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 191 1 193 1 194 1 195] 
#[0 24 249 0 13] 
#[0 11 74 0 3 0 124 0 126] 
#[0 11 78 0 3 0 8 0 13 0 125] 
#[0 11 82 0 3 0 8 0 13 0 125] 
#[0 11 86 0 3 0 8 0 13 0 125] 
#[0 11 90 0 3 0 8 0 13 0 125] 
#[0 24 253 0 3] 
#[1 0 10 0 4 25 1 1 67] 
#[1 11 113 0 1 15 241 0 3 15 245 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 15 249 0 129 3 49 0 201 3 49 0 202 3 49 0 203 17 149 0 209 17 149 0 210 11 153 1 42 11 157 1 43 11 161 1 73 17 189 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 17 189 1 101 17 189 1 102 11 189 1 103 11 189 1 105 8 193 1 194] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 25 5 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 25 5 1 101 25 5 1 102 11 189 1 103 11 189 1 105] 
#[1 10 210 0 3 10 210 0 4 10 210 0 7 10 210 0 110 13 41 0 111 25 9 1 107] 
#[0 25 13 0 2] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 25 17 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[0 11 94 0 4 0 7 0 110] 
#[0 11 98 0 4 0 7 0 110] 
#[0 25 21 0 2] 
#[0 11 102 0 4 0 7 0 110] 
#[0 11 106 0 4 0 7 0 110] 
#[0 11 110 0 6 0 110] 
#[0 25 25 0 18] 
#[0 25 29 0 2] 
#[0 11 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 25 33 0 18] 
#[0 11 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 25 37 0 4] 
#[0 11 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 11 126 0 3 0 18] 
#[0 11 130 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 25 41 0 1] 
#[1 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 25 45 0 130 25 45 0 141 25 45 0 142 25 45 0 143 6 149 1 42 6 153 1 43] 
#[1 16 5 0 1 25 49 0 7 8 213 0 10 13 41 0 111 16 21 1 73 25 53 1 107 25 57 1 108] 
#[1 6 137 0 5 25 61 0 94 3 125 0 114 6 149 0 116 6 153 0 117 25 65 0 130 25 65 0 141 25 65 0 142 25 65 0 143 6 149 1 42 6 153 1 43] 
#[0 11 134 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 25 69 0 4] 
#[1 11 138 0 4 13 201 0 5 23 5 0 58 23 17 0 89 23 17 0 90 23 17 0 91 23 9 0 94 3 125 0 114 6 149 0 116 6 153 0 117 23 13 0 130 23 13 0 141 23 13 0 142 23 13 0 143 6 149 1 42 6 153 1 43 23 17 1 110 25 73 1 113 25 73 1 182 25 73 1 183 25 73 1 184] 
#[0 11 142 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 11 146 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 11 150 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[1 10 86 0 4 13 201 0 5 23 5 0 58 23 17 0 89 23 17 0 90 23 17 0 91 23 9 0 94 3 125 0 114 6 149 0 116 6 153 0 117 23 13 0 130 23 13 0 141 23 13 0 142 23 13 0 143 6 149 1 42 6 153 1 43 23 17 1 110 23 33 1 113 25 77 1 180 23 29 1 181 23 33 1 182 23 33 1 183 23 33 1 184] 
#[0 11 154 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 11 158 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 162 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 166 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 170 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 174 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 178 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 182 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 186 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 11 194 0 4 0 56 0 57 0 66 0 67 0 73 0 76 0 81 0 83 0 85 0 104] 
#[0 11 198 0 4 0 110] 
#[0 11 202 0 4 0 110] 
#[0 11 206 0 4 0 110] 
#[1 0 227 0 4 13 201 0 5 8 229 0 7 3 105 0 25 6 141 0 51 23 5 0 58 3 113 0 74 23 17 0 89 23 17 0 90 23 17 0 91 3 117 0 93 25 81 0 94 3 125 0 114 6 149 0 116 6 153 0 117 25 85 0 130 25 85 0 141 25 85 0 142 25 85 0 143 8 253 0 252 8 253 0 254 8 253 1 3 8 253 1 7 14 9 1 16 8 249 1 17 8 253 1 18 6 149 1 42 6 153 1 43 23 17 1 110 23 33 1 113 8 253 1 117 8 253 1 118 23 25 1 180 23 29 1 181 23 33 1 182 23 33 1 183 23 33 1 184 9 1 1 194] 
#[0 25 89 0 2] 
#[0 25 93 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 181 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 25 97 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 25 101 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 105 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 10 74 0 7 0 21] 
#[0 25 109 0 2] 
#[0 11 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 231 0 3 11 214 0 7] 
#[0 25 113 0 4] 
#[1 0 235 0 3 11 218 0 7 13 41 0 111 25 117 1 107] 
#[1 0 239 0 1 11 222 0 3 11 222 0 4 0 239 0 5 0 239 0 7 11 122 0 8 11 122 0 9 11 122 0 10 11 122 0 11 11 122 0 12 11 122 0 13 11 122 0 14 11 122 0 15 11 122 0 16 11 122 0 17 11 122 0 19 11 122 0 20 11 122 0 21 11 122 0 22 11 122 0 23 11 122 0 24 11 122 0 25 11 122 0 26 11 122 0 27 11 122 0 28 11 122 0 29 11 122 0 30 11 122 0 31 11 122 0 32 11 122 0 33 0 239 0 34 0 239 0 35 0 239 0 36 0 239 0 37 11 222 0 38 11 122 0 39 11 122 0 40 11 122 0 41 11 122 0 42 11 122 0 43 11 122 0 44 11 122 0 45 11 122 0 46 11 222 0 47 11 122 0 48 11 122 0 49 11 122 0 50 11 222 0 51 11 222 0 52 11 222 0 53 11 222 0 56 11 222 0 57 11 222 0 59 11 222 0 60 11 222 0 61 11 222 0 63 11 222 0 64 11 222 0 66 11 222 0 67 11 222 0 69 11 222 0 71 11 222 0 73 11 222 0 75 11 222 0 76 11 122 0 77 11 122 0 80 11 222 0 81 11 222 0 83 11 222 0 85 11 222 0 86 11 222 0 87 11 222 0 92 11 222 0 95 11 222 0 96 11 222 0 98 11 222 0 99 11 222 0 100 11 222 0 101 11 222 0 102 11 222 0 103 11 222 0 104 11 222 0 105 11 222 0 106 11 222 0 107 11 222 0 108 11 122 0 110 11 222 0 113 11 222 0 116 11 222 0 117 11 222 0 118 0 239 0 120 0 239 0 121 11 222 0 124 11 122 1 191 11 122 1 193 0 239 1 194 11 222 1 195] 
#[0 11 226 0 2 0 4 0 6 0 22 0 41 0 77 0 88 0 110 0 111] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 181 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 25 121 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 25 125 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 18 29 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 25 129 1 10 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 25 133 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 137 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 25 141 0 4] 
#[0 25 145 0 3] 
#[1 13 41 0 111 25 149 1 107] 
#[0 11 230 0 2] 
#[1 25 153 0 3 13 41 0 111 25 157 1 107] 
#[0 11 234 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 25 161 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 165 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 25 169 1 6 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 25 173 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 18 29 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 25 177 1 10 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 25 181 0 6] 
#[0 25 185 0 6] 
#[1 25 189 0 3 25 193 0 7] 
#[0 11 238 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 11 242 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 25 197 0 7] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 201 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 11 246 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 11 250 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 25 205 0 4] 
#[0 25 209 0 2] 
#[0 11 254 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 25 213 0 7] 
#[1 25 217 0 7 8 37 0 22 25 221 0 145] 
#[1 25 225 0 3 25 229 0 7] 
#[0 12 2 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 12 6 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 25 233 0 7] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 237 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 12 10 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 12 14 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 18 29 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 25 241 1 10 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 25 245 0 3] 
#[0 25 249 0 2] 
#[0 25 253 0 3] 
#[0 26 1 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 181 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 26 5 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 26 9 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 26 13 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 26 17 0 4] 
#[0 11 222 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 18 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 21 0 186 26 21 0 189 26 21 0 190 26 21 0 191 26 21 0 198 26 21 0 212 26 21 0 213 26 21 0 214 26 21 0 215 26 21 0 218 26 21 0 219 26 21 0 221 26 21 0 222 26 21 0 223 26 21 0 228 26 21 0 230 26 21 0 231 26 21 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 25 0 186 26 25 0 189 26 25 0 190 26 25 0 191 26 25 0 198 26 25 0 212 26 25 0 213 26 25 0 214 26 25 0 215 26 25 0 218 26 25 0 219 26 25 0 221 26 25 0 222 26 25 0 223 26 25 0 228 26 25 0 230 26 25 0 231 26 25 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 26 29 0 2 6 65 0 110] 
#[1 0 29 0 1 26 33 0 2 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 26 37 0 182 26 37 0 183 26 37 0 185 0 253 0 237 26 37 0 245 1 205 0 246 1 209 0 249 26 37 0 250 0 253 1 0 26 37 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 41 0 186 26 41 0 189 26 41 0 190 26 41 0 191 26 41 0 198 26 41 0 212 26 41 0 213 26 41 0 214 26 41 0 215 26 41 0 218 26 41 0 219 26 41 0 221 26 41 0 222 26 41 0 223 26 41 0 228 26 41 0 230 26 41 0 231 26 41 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 45 0 186 26 45 0 189 26 45 0 190 26 45 0 191 26 45 0 198 26 45 0 212 26 45 0 213 26 45 0 214 26 45 0 215 26 45 0 218 26 45 0 219 26 45 0 221 26 45 0 222 26 45 0 223 26 45 0 228 26 45 0 230 26 45 0 231 26 45 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 12 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 34 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 49 0 186 26 49 0 189 26 49 0 190 26 49 0 191 26 49 0 198 26 49 0 212 26 49 0 213 26 49 0 214 26 49 0 215 26 49 0 218 26 49 0 219 26 49 0 221 26 49 0 222 26 49 0 223 26 49 0 228 26 49 0 230 26 49 0 231 26 49 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 53 0 186 26 53 0 189 26 53 0 190 26 53 0 191 26 53 0 198 26 53 0 212 26 53 0 213 26 53 0 214 26 53 0 215 26 53 0 218 26 53 0 219 26 53 0 221 26 53 0 222 26 53 0 223 26 53 0 228 26 53 0 230 26 53 0 231 26 53 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 26 57 0 2 6 65 0 110] 
#[0 12 38 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 42 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 61 0 186 26 61 0 189 26 61 0 190 26 61 0 191 26 61 0 198 26 61 0 212 26 61 0 213 26 61 0 214 26 61 0 215 26 61 0 218 26 61 0 219 26 61 0 221 26 61 0 222 26 61 0 223 26 61 0 228 26 61 0 230 26 61 0 231 26 61 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 12 46 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 50 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 26 65 0 2] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 69 0 186 26 69 0 189 26 69 0 190 26 69 0 191 26 69 0 198 26 69 0 212 26 69 0 213 26 69 0 214 26 69 0 215 26 69 0 218 26 69 0 219 26 69 0 221 26 69 0 222 26 69 0 223 26 69 0 228 26 69 0 230 26 69 0 231 26 69 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 26 73 0 186 26 73 0 189 26 73 0 190 26 73 0 191 26 73 0 198 26 73 0 212 26 73 0 213 26 73 0 214 26 73 0 215 26 73 0 218 26 73 0 219 26 73 0 221 26 73 0 222 26 73 0 223 26 73 0 228 26 73 0 230 26 73 0 231 26 73 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 12 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 12 58 0 4] 
#[0 26 77 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 181 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 26 81 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 26 85 0 4] 
#[0 12 62 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 6 65 0 110 26 89 0 111] 
#[1 0 29 0 1 0 33 0 3 12 66 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 12 66 0 54 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 26 93 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 12 70 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 74 0 4 0 54 0 62] 
#[1 26 97 0 4 22 93 0 54 26 101 0 225 22 105 0 226] 
#[0 12 78 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 26 105 0 4 22 93 0 54 24 213 0 226] 
#[0 12 82 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 12 86 0 13 26 109 1 71] 
#[1 12 86 0 13 26 113 1 71] 
#[0 26 117 0 4] 
#[0 12 90 0 3 0 124 0 126] 
#[0 12 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 2 53 0 3 0 37 0 5 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 81 0 56 0 97 0 63 2 13 0 69 0 117 0 73 2 57 0 76 0 133 0 86 2 9 0 87 0 145 0 95 0 153 0 98 2 13 0 100 0 169 0 103 0 177 0 105 0 189 0 108 2 61 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 26 121 0 182 26 121 0 183 0 253 0 237 26 121 0 245 1 205 0 246 1 209 0 249 26 121 0 250 0 253 1 0 26 121 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 26 125 0 4] 
#[0 12 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 11 214 0 3 0 4 0 7 0 110] 
#[1 12 102 0 4 12 102 0 7 12 102 0 110 13 41 0 111 26 129 1 107] 
#[0 26 133 0 2] 
#[1 11 218 0 3 11 218 0 4 11 218 0 7 11 218 0 110 13 41 0 111 26 137 1 107] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 26 141 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 26 141 1 101 26 141 1 102 11 189 1 103 11 189 1 105] 
#[0 26 145 0 18] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 26 149 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 26 149 1 101 26 149 1 102 11 189 1 103 11 189 1 105] 
#[0 12 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 26 153 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 16 5 0 1 26 157 0 7 8 213 0 10 13 41 0 111 16 21 1 73 26 161 1 107 26 165 1 108] 
#[0 12 110 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 26 169 0 7] 
#[0 26 173 0 7] 
#[1 6 137 0 5 3 125 0 114 6 149 0 116 6 153 0 117 26 177 0 130 26 177 0 141 26 177 0 142 26 177 0 143 6 149 1 42 6 153 1 43] 
#[1 16 5 0 1 26 181 0 7 8 213 0 10 13 41 0 111 16 21 1 73 26 185 1 107 26 189 1 108] 
#[0 12 114 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 118 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 26 193 0 4] 
#[1 6 137 0 5 3 105 0 25 6 141 0 51 3 113 0 74 3 117 0 93 3 125 0 114 6 149 0 116 6 153 0 117 26 197 0 130 26 197 0 141 26 197 0 142 26 197 0 143 13 189 0 252 13 189 0 254 13 189 1 3 13 189 1 7 6 149 1 42 6 153 1 43 13 189 1 117 13 189 1 118 6 157 1 194] 
#[1 26 201 0 1 25 49 0 7 8 213 0 10 13 41 0 111 16 21 1 73 25 53 1 107 25 57 1 108] 
#[1 23 125 0 3 10 210 0 7 13 41 0 111 25 9 1 107] 
#[1 0 243 0 1 12 122 0 3 12 122 0 4 0 243 0 5 0 243 0 7 12 54 0 8 12 54 0 9 12 54 0 10 12 54 0 11 12 54 0 12 12 54 0 13 12 54 0 14 12 54 0 15 12 54 0 16 12 54 0 17 12 54 0 19 12 54 0 20 12 54 0 21 12 54 0 22 12 54 0 23 12 54 0 24 12 54 0 25 12 54 0 26 12 54 0 27 12 54 0 28 12 54 0 29 12 54 0 30 12 54 0 31 12 54 0 32 12 54 0 33 0 243 0 34 0 243 0 35 0 243 0 36 0 243 0 37 12 122 0 38 12 54 0 39 12 54 0 40 12 54 0 41 12 54 0 42 12 54 0 43 12 54 0 44 12 54 0 45 12 54 0 46 12 122 0 47 12 54 0 48 12 54 0 49 12 54 0 50 12 122 0 51 12 122 0 52 12 122 0 53 12 122 0 56 12 122 0 57 12 122 0 59 12 122 0 60 12 122 0 61 12 122 0 63 12 122 0 64 12 122 0 66 12 122 0 67 12 122 0 69 12 122 0 71 12 122 0 73 12 122 0 75 12 122 0 76 12 54 0 77 12 54 0 80 12 122 0 81 12 122 0 83 12 122 0 85 12 122 0 86 12 122 0 87 12 122 0 92 12 122 0 95 12 122 0 96 12 122 0 98 12 122 0 99 12 122 0 100 12 122 0 101 12 122 0 102 12 122 0 103 12 122 0 104 12 122 0 105 12 122 0 106 12 122 0 107 12 122 0 108 12 54 0 110 12 122 0 113 12 122 0 116 12 122 0 117 12 122 0 118 0 243 0 120 0 243 0 121 12 122 0 124 12 54 1 191 12 54 1 193 0 243 1 194 12 122 1 195] 
#[0 26 205 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 181 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 26 209 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 26 213 0 4] 
#[0 26 217 0 7] 
#[1 0 247 0 1 12 126 0 3 12 126 0 4 0 247 0 5 0 247 0 7 12 106 0 8 12 106 0 9 12 106 0 10 12 106 0 11 12 106 0 12 12 106 0 13 12 106 0 14 12 106 0 15 12 106 0 16 12 106 0 17 12 106 0 19 12 106 0 20 12 106 0 21 12 106 0 22 12 106 0 23 12 106 0 24 12 106 0 25 12 106 0 26 12 106 0 27 12 106 0 28 12 106 0 29 12 106 0 30 12 106 0 31 12 106 0 32 12 106 0 33 0 247 0 34 0 247 0 35 0 247 0 36 0 247 0 37 12 126 0 38 12 106 0 39 12 106 0 40 12 106 0 41 12 106 0 42 12 106 0 43 12 106 0 44 12 106 0 45 12 106 0 46 12 126 0 47 12 106 0 48 12 106 0 49 12 106 0 50 12 126 0 51 12 126 0 52 12 126 0 53 12 126 0 56 12 126 0 57 12 126 0 59 12 126 0 60 12 126 0 61 12 126 0 63 12 126 0 64 12 126 0 66 12 126 0 67 12 126 0 69 12 126 0 71 12 126 0 73 12 126 0 75 12 126 0 76 12 106 0 77 12 106 0 80 12 126 0 81 12 126 0 83 12 126 0 85 12 126 0 86 12 126 0 87 12 126 0 92 12 126 0 95 12 126 0 96 12 126 0 98 12 126 0 99 12 126 0 100 12 126 0 101 12 126 0 102 12 126 0 103 12 126 0 104 12 126 0 105 12 126 0 106 12 126 0 107 12 126 0 108 12 106 0 110 12 126 0 113 12 126 0 116 12 126 0 117 12 126 0 118 0 247 0 120 0 247 0 121 12 126 0 124 12 106 1 191 12 106 1 193 0 247 1 194 12 126 1 195] 
#[1 0 251 0 3 12 130 0 7] 
#[0 26 221 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 165 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 26 225 1 6 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 26 229 0 4] 
#[0 12 134 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 26 233 0 4] 
#[0 12 138 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 26 237 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 26 241 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 26 245 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 26 249 0 3] 
#[0 12 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 12 146 0 4] 
#[0 26 253 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 165 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 27 1 1 6 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 27 5 0 4] 
#[1 13 41 0 111 27 9 1 107] 
#[1 13 41 0 111 27 13 1 107] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 27 17 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 12 150 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 12 154 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 27 21 0 4] 
#[0 12 158 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[1 27 25 0 3 27 29 0 7] 
#[0 12 162 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 12 166 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 27 33 0 7] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 27 37 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 12 170 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 12 174 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 27 41 0 4] 
#[0 27 45 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 165 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 27 49 1 6 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 27 53 0 3] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 18 29 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 27 57 1 10 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 12 122 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 27 61 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 24 181 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 27 65 1 1 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 27 69 0 4] 
#[0 12 126 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 178 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 182 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 27 73 0 186 27 73 0 189 27 73 0 190 27 73 0 191 27 73 0 198 27 73 0 212 27 73 0 213 27 73 0 214 27 73 0 215 27 73 0 218 27 73 0 219 27 73 0 221 27 73 0 222 27 73 0 223 27 73 0 228 27 73 0 230 27 73 0 231 27 73 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 27 77 0 186 27 77 0 189 27 77 0 190 27 77 0 191 27 77 0 198 27 77 0 212 27 77 0 213 27 77 0 214 27 77 0 215 27 77 0 218 27 77 0 219 27 77 0 221 27 77 0 222 27 77 0 223 27 77 0 228 27 77 0 230 27 77 0 231 27 77 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 27 81 0 2 6 65 0 110] 
#[0 12 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 190 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 194 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 198 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 27 85 0 186 27 85 0 189 27 85 0 190 27 85 0 191 27 85 0 198 27 85 0 212 27 85 0 213 27 85 0 214 27 85 0 215 27 85 0 218 27 85 0 219 27 85 0 221 27 85 0 222 27 85 0 223 27 85 0 228 27 85 0 230 27 85 0 231 27 85 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 12 202 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 27 89 0 186 27 89 0 189 27 89 0 190 27 89 0 191 27 89 0 198 27 89 0 212 27 89 0 213 27 89 0 214 27 89 0 215 27 89 0 218 27 89 0 219 27 89 0 221 27 89 0 222 27 89 0 223 27 89 0 228 27 89 0 230 27 89 0 231 27 89 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 12 206 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 210 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 12 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 27 93 0 4] 
#[0 12 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 12 222 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 12 222 0 54 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 12 222 0 62 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 27 97 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[1 0 29 0 1 0 33 0 3 12 226 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 12 226 0 54 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 6 161 0 186 6 161 0 189 6 161 0 190 6 161 0 191 6 161 0 193 6 161 0 194 1 137 0 195 6 161 0 198 6 161 0 212 6 161 0 213 6 161 0 214 6 161 0 215 6 161 0 218 6 161 0 219 6 161 0 221 6 161 0 222 6 161 0 223 6 161 0 228 6 161 0 230 6 161 0 231 6 161 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 12 230 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 27 101 0 4 22 93 0 54 24 213 0 226] 
#[0 12 234 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 27 105 0 13] 
#[0 27 109 0 13] 
#[0 12 238 0 3 0 124 0 126] 
#[1 0 10 0 4 27 113 1 67] 
#[0 12 242 0 3 0 8 0 13 0 125] 
#[0 12 246 0 4 0 7 0 110] 
#[1 12 250 0 4 12 250 0 7 12 250 0 110 13 41 0 111 27 117 1 107] 
#[0 12 130 0 3 0 4 0 7 0 110] 
#[0 12 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[1 11 113 0 1 11 117 0 3 11 121 0 5 8 213 0 10 11 125 0 78 11 129 0 82 11 133 0 86 11 137 0 98 11 141 0 103 11 145 0 105 2 61 0 113 11 153 0 116 11 157 0 117 13 149 0 129 11 153 1 42 11 157 1 43 11 161 1 73 27 121 1 80 11 177 1 81 11 181 1 82 11 181 1 83 11 189 1 84 11 189 1 85 11 189 1 86 11 189 1 87 11 189 1 88 11 209 1 89 11 213 1 90 11 189 1 91 11 189 1 95 11 189 1 96 11 177 1 99 11 181 1 100 27 121 1 101 27 121 1 102 11 189 1 103 11 189 1 105] 
#[0 13 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 27 125 0 2] 
#[0 13 6 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 27 129 0 7] 
#[0 27 133 0 7] 
#[0 13 10 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 14 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[1 16 5 0 1 27 137 0 7 8 213 0 10 13 41 0 111 16 21 1 73 27 141 1 107 27 145 1 108] 
#[0 13 18 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 27 149 0 7] 
#[0 27 153 0 7] 
#[0 13 22 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 26 201 0 1 26 157 0 7 8 213 0 10 13 41 0 111 16 21 1 73 26 161 1 107 26 165 1 108] 
#[1 0 38 0 2 5 33 0 3 5 37 0 5 3 37 0 109 2 61 0 113 8 189 0 129 3 49 0 201 3 49 0 202 3 49 0 203 3 89 0 209 3 89 0 210 3 85 0 211 13 117 0 238 27 157 0 239 3 81 0 240 3 85 0 241 3 89 0 242 8 193 1 194] 
#[1 0 255 0 1 13 26 0 3 13 26 0 4 0 255 0 5 0 255 0 7 12 214 0 8 12 214 0 9 12 214 0 10 12 214 0 11 12 214 0 12 12 214 0 13 12 214 0 14 12 214 0 15 12 214 0 16 12 214 0 17 12 214 0 19 12 214 0 20 12 214 0 21 12 214 0 22 12 214 0 23 12 214 0 24 12 214 0 25 12 214 0 26 12 214 0 27 12 214 0 28 12 214 0 29 12 214 0 30 12 214 0 31 12 214 0 32 12 214 0 33 0 255 0 34 0 255 0 35 0 255 0 36 0 255 0 37 13 26 0 38 12 214 0 39 12 214 0 40 12 214 0 41 12 214 0 42 12 214 0 43 12 214 0 44 12 214 0 45 12 214 0 46 13 26 0 47 12 214 0 48 12 214 0 49 12 214 0 50 13 26 0 51 13 26 0 52 13 26 0 53 13 26 0 56 13 26 0 57 13 26 0 59 13 26 0 60 13 26 0 61 13 26 0 63 13 26 0 64 13 26 0 66 13 26 0 67 13 26 0 69 13 26 0 71 13 26 0 73 13 26 0 75 13 26 0 76 12 214 0 77 12 214 0 80 13 26 0 81 13 26 0 83 13 26 0 85 13 26 0 86 13 26 0 87 13 26 0 92 13 26 0 95 13 26 0 96 13 26 0 98 13 26 0 99 13 26 0 100 13 26 0 101 13 26 0 102 13 26 0 103 13 26 0 104 13 26 0 105 13 26 0 106 13 26 0 107 13 26 0 108 12 214 0 110 13 26 0 113 13 26 0 116 13 26 0 117 13 26 0 118 0 255 0 120 0 255 0 121 13 26 0 124 12 214 1 191 12 214 1 193 0 255 1 194 13 26 1 195] 
#[0 27 161 0 4] 
#[1 1 3 0 1 13 30 0 3 13 30 0 4 1 3 0 5 1 3 0 7 12 218 0 8 12 218 0 9 12 218 0 10 12 218 0 11 12 218 0 12 12 218 0 13 12 218 0 14 12 218 0 15 12 218 0 16 12 218 0 17 12 218 0 19 12 218 0 20 12 218 0 21 12 218 0 22 12 218 0 23 12 218 0 24 12 218 0 25 12 218 0 26 12 218 0 27 12 218 0 28 12 218 0 29 12 218 0 30 12 218 0 31 12 218 0 32 12 218 0 33 1 3 0 34 1 3 0 35 1 3 0 36 1 3 0 37 13 30 0 38 12 218 0 39 12 218 0 40 12 218 0 41 12 218 0 42 12 218 0 43 12 218 0 44 12 218 0 45 12 218 0 46 13 30 0 47 12 218 0 48 12 218 0 49 12 218 0 50 13 30 0 51 13 30 0 52 13 30 0 53 13 30 0 56 13 30 0 57 13 30 0 59 13 30 0 60 13 30 0 61 13 30 0 63 13 30 0 64 13 30 0 66 13 30 0 67 13 30 0 69 13 30 0 71 13 30 0 73 13 30 0 75 13 30 0 76 12 218 0 77 12 218 0 80 13 30 0 81 13 30 0 83 13 30 0 85 13 30 0 86 13 30 0 87 13 30 0 92 13 30 0 95 13 30 0 96 13 30 0 98 13 30 0 99 13 30 0 100 13 30 0 101 13 30 0 102 13 30 0 103 13 30 0 104 13 30 0 105 13 30 0 106 13 30 0 107 13 30 0 108 12 218 0 110 13 30 0 113 13 30 0 116 13 30 0 117 13 30 0 118 1 3 0 120 1 3 0 121 13 30 0 124 12 218 1 191 12 218 1 193 1 3 1 194 13 30 1 195] 
#[0 13 34 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 13 38 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 27 165 0 4] 
#[0 13 42 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 13 46 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 27 169 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 27 173 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 27 177 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 27 181 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 13 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 27 185 0 4] 
#[0 13 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 13 58 0 4 0 5 0 7 0 58 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 13 62 0 4 0 5 0 7 0 58 0 89 0 90 0 91 0 94 0 110 0 114 0 116 0 117] 
#[0 27 189 0 4] 
#[0 13 66 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 27 193 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 13 70 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 13 74 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 27 197 0 4] 
#[0 13 78 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 13 82 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 27 201 0 4] 
#[1 0 29 0 1 0 33 0 3 6 26 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 2 77 0 186 2 77 0 189 2 77 0 190 2 77 0 191 15 141 0 192 2 77 0 193 2 77 0 194 1 137 0 195 2 77 0 198 2 77 0 212 2 77 0 213 2 77 0 214 2 77 0 215 2 77 0 218 2 77 0 219 2 77 0 221 2 77 0 222 2 77 0 223 2 77 0 228 2 77 0 230 2 77 0 231 2 77 0 235 0 253 0 237 25 165 0 243 15 149 0 244 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 27 205 1 6 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 27 209 0 4] 
#[0 13 26 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 27 213 0 4] 
#[0 13 30 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 13 86 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 13 90 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 56 0 89 0 59 0 93 0 60 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 27 217 0 186 27 217 0 189 27 217 0 190 27 217 0 191 27 217 0 198 27 217 0 212 27 217 0 213 27 217 0 214 27 217 0 215 27 217 0 218 27 217 0 219 27 217 0 221 27 217 0 222 27 217 0 223 27 217 0 228 27 217 0 230 27 217 0 231 27 217 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 13 94 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 13 98 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 13 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[1 0 29 0 1 0 33 0 3 13 106 0 4 0 37 0 5 0 41 0 7 0 45 0 34 0 49 0 35 0 53 0 36 0 57 0 37 0 61 0 38 0 65 0 47 0 69 0 51 0 73 0 52 0 77 0 53 13 106 0 54 0 81 0 56 1 137 0 57 0 89 0 59 0 93 0 60 13 106 0 62 0 97 0 63 0 101 0 64 2 13 0 69 0 113 0 71 0 117 0 73 0 121 0 75 2 57 0 76 1 137 0 83 0 133 0 86 2 9 0 87 0 141 0 92 0 145 0 95 0 149 0 96 0 153 0 98 0 157 0 99 2 13 0 100 0 165 0 101 0 169 0 103 0 173 0 104 0 177 0 105 0 181 0 106 0 185 0 107 0 189 0 108 0 193 0 113 2 17 0 116 2 21 0 117 0 205 0 118 0 209 0 120 0 6 0 121 0 7 0 124 0 221 0 129 0 253 0 131 0 253 0 132 0 253 0 133 0 253 0 134 0 253 0 138 0 253 0 146 0 249 0 147 0 253 0 150 0 253 0 151 0 253 0 152 0 253 0 153 1 33 0 154 1 17 0 155 1 17 0 156 1 17 0 157 1 29 0 160 1 33 0 164 1 41 0 165 1 41 0 166 1 49 0 167 1 49 0 168 1 53 0 170 1 57 0 171 1 61 0 172 1 65 0 173 1 69 0 174 1 73 0 175 1 77 0 176 1 81 0 177 1 85 0 178 1 89 0 179 1 93 0 180 1 97 0 181 1 109 0 182 1 109 0 183 1 109 0 185 6 161 0 186 6 161 0 189 6 161 0 190 6 161 0 191 6 161 0 193 6 161 0 194 1 137 0 195 6 161 0 198 6 161 0 212 6 161 0 213 6 161 0 214 6 161 0 215 6 161 0 218 6 161 0 219 6 161 0 221 6 161 0 222 6 161 0 223 6 161 0 228 6 161 0 230 6 161 0 231 6 161 0 235 0 253 0 237 1 109 0 245 1 205 0 246 1 209 0 249 1 109 0 250 0 253 1 0 1 109 1 2 0 253 1 5 0 253 1 9 1 41 1 11 0 253 1 13 2 9 1 40 2 13 1 41 2 17 1 42 2 21 1 43 0 253 1 44 0 253 1 45 0 253 1 46 2 37 1 47 0 253 1 49 2 45 1 67 2 49 1 194] 
#[0 13 110 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 13 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 125 1 191 1 193 1 194 1 195] 
#[0 13 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 191 1 193 1 194 1 195] 
#[0 27 221 0 4] 
#[0 13 122 0 4 0 7 0 110] 
#[0 13 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 13 0 14 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 34 0 36 0 39 0 40 0 41 0 43 0 44 0 45 0 46 0 48 0 49 0 58 0 77 0 80 0 88 0 89 0 90 0 91 0 94 0 110 0 111 0 114 0 116 0 117 0 122 0 123 1 191 1 195] 
#[0 27 225 0 7] 
#[0 13 130 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 134 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 138 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 27 229 0 7] 
#[0 27 233 0 7] 
#[0 13 142 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 146 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 1 7 0 2] 
#[1 1 11 0 1 13 150 0 3 13 150 0 4 1 11 0 5 1 11 0 7 13 102 0 8 13 102 0 9 13 102 0 10 13 102 0 11 13 102 0 12 13 102 0 13 13 102 0 14 13 102 0 15 13 102 0 16 13 102 0 17 13 102 0 19 13 102 0 20 13 102 0 21 13 102 0 22 13 102 0 23 13 102 0 24 13 102 0 25 13 102 0 26 13 102 0 27 13 102 0 28 13 102 0 29 13 102 0 30 13 102 0 31 13 102 0 32 13 102 0 33 1 11 0 34 1 11 0 35 1 11 0 36 1 11 0 37 13 150 0 38 13 102 0 39 13 102 0 40 13 102 0 41 13 102 0 42 13 102 0 43 13 102 0 44 13 102 0 45 13 102 0 46 13 150 0 47 13 102 0 48 13 102 0 49 13 102 0 50 13 150 0 51 13 150 0 52 13 150 0 53 13 150 0 56 13 150 0 57 13 150 0 59 13 150 0 60 13 150 0 61 13 150 0 63 13 150 0 64 13 150 0 66 13 150 0 67 13 150 0 69 13 150 0 71 13 150 0 73 13 150 0 75 13 150 0 76 13 102 0 77 13 102 0 80 13 150 0 81 13 150 0 83 13 150 0 85 13 150 0 86 13 150 0 87 13 150 0 92 13 150 0 95 13 150 0 96 13 150 0 98 13 150 0 99 13 150 0 100 13 150 0 101 13 150 0 102 13 150 0 103 13 150 0 104 13 150 0 105 13 150 0 106 13 150 0 107 13 150 0 108 13 102 0 110 13 150 0 113 13 150 0 116 13 150 0 117 13 150 0 118 1 11 0 120 1 11 0 121 13 150 0 124 13 102 1 191 13 102 1 193 1 11 1 194 13 150 1 195] 
#[0 13 154 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 13 158 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 27 237 0 4] 
#[0 13 162 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 27 241 0 4] 
#[0 13 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 49 0 50 0 77 0 80 0 88 0 110 0 111 0 120 0 121 0 122 0 123 1 191 1 193 1 194 1 195] 
#[0 13 170 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 27 245 0 4] 
#[0 13 174 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 13 178 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 27 249 0 4] 
#[0 13 182 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 13 150 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 61 0 63 0 64 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 13 186 0 1 0 3 0 4 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 54 0 56 0 57 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 71 0 73 0 75 0 76 0 81 0 83 0 85 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195] 
#[0 13 190 0 3 0 8 0 13 0 125] 
#[0 13 194 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 198 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 202 0 4 0 5 0 58 0 89 0 90 0 91 0 94 0 114 0 116 0 117] 
#[0 13 206 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 13 210 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 110 0 114 0 116 0 117 1 194] 
#[0 13 214 0 4 0 5 0 7 0 25 0 51 0 74 0 93 0 94 0 114 0 116 0 117 1 194] 
#[0 13 218 0 1 0 3 0 5 0 7 0 34 0 35 0 36 0 37 0 38 0 47 0 51 0 52 0 53 0 56 0 57 0 59 0 60 0 63 0 64 0 67 0 69 0 71 0 73 0 75 0 76 0 83 0 86 0 87 0 92 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 113 0 116 0 117 0 118 0 120 0 121 0 124 1 194 1 195]
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
JSParser >> reduceActionForIndexSignature1: nodes [
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
