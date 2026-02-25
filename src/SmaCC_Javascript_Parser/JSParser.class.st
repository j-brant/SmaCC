Class {
	#name : 'JSParser',
	#superclass : 'SmaCCGLRParser',
	#classInstVars : [
		'keywords'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSParser class >> ambiguousTransitions [
^#(
#[ 0 6 0 45] 
#[ 0 6 0 97] 
#[ 0 22 0 217] 
#[ 0 14 1 221] 
#[ 0 14 3 241] 
#[ 0 162 5 17] 
#[ 0 186 5 17] 
#[ 0 38 0 141] 
#[ 0 38 6 189] 
#[ 1 242 7 237] 
#[ 1 246 7 241] 
#[ 1 114 1 254] 
#[ 1 114 2 22] 
#[ 0 38 7 89] 
#[ 0 38 7 101] 
#[ 0 38 0 201] 
#[ 0 38 0 205] 
#[ 0 130 2 214] 
#[ 0 130 8 53] 
#[ 0 38 9 121] 
#[ 0 38 9 125] 
#[ 0 38 9 129] 
#[ 0 38 9 133] 
#[ 0 38 0 193] 
#[ 0 182 3 46] 
#[ 3 74 5 17] 
#[ 3 86 5 17] 
#[ 3 90 5 17] 
#[ 0 14 11 37] 
#[ 1 226 2 214] 
#[ 1 114 4 134] 
#[ 1 114 4 138] 
#[ 4 170 8 249] 
#[ 4 170 9 121] 
#[ 4 170 9 125] 
#[ 4 170 9 129] 
#[ 4 170 9 133] 
#[ 4 170 13 97] 
#[ 4 170 7 101] 
#[ 0 201 4 170] 
#[ 0 205 4 170] 
#[ 2 250 5 10] 
#[ 0 14 14 153] 
#[ 3 70 5 142] 
#[ 0 22 6 102] 
#[ 1 226 4 126] 
#[ 0 202 15 233] 
#[ 4 54 4 254] 
#[ 4 114 5 10] 
#[ 2 254 12 205] 
#[ 4 114 6 250] 
#[ 6 254 7 241] 
#[ 1 114 7 2] 
#[ 0 130 7 58] 
#[ 5 73 7 62] 
#[ 0 186 5 17 7 62] 
#[ 0 130 5 34] 
#[ 5 90 7 118] 
#[ 0 38 21 53] 
#[ 8 206 8 210] 
#[ 8 214 8 218] 
#[ 8 234 8 238] 
#[ 6 234 9 38] 
#[ 6 238 9 42] 
#[ 4 170 23 173] 
#[ 0 34 0 193] 
#[ 0 42 0 193] 
#[ 0 130 24 225] 
#[ 9 22 11 22] 
#[ 9 50 11 26] 
#[ 9 201 10 70] 
#[ 3 57 4 170] 
#[ 3 65 4 170] 
#[ 11 170 12 210] 
#[ 12 230 13 186] 
#[ 10 70 14 173] 
#[ 12 250 13 194] 
#[ 13 206 14 90] 
#[ 13 210 14 94] 
#[ 14 106 14 202]
	).
]

{ #category : 'generated-accessing' }
JSParser class >> cacheId [
	^'2026-02-25T11:27:39.309404-06:00'
]

{ #category : 'generated' }
JSParser class >> definitionComment [
"%root Program;
%prefix JS;
%suffix Node;

%scopes default template;
%excludes jsx jsxText;

%start Expression Statement Script Module SourceFile Type ClassElement;

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
	DecoratorExpression #TS 
	Function
	ImportCallExpression
	ImportMeta
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
    IndexedAccessType
    InferType
    IntersectionType
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
<questionDot> <question> <ts> <eqGt> <mandatory_semicolon>;

%right <else>;

default <at>
:   @
;
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
default <mandatory_semicolon>
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
default <ampAmpEq>
:   \&\&\=
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
default <questionQuestionEq>
:   \?\?\=
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
default <barBarEq>
:   \|\|\=
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
default <abstract>
: abstract
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
default <global>
:	global
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
default <meta>
:	meta
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
default <override>
	: override	# ts
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
default <readonly>
	: readonly
	;
default <require>
:	require
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

default jsx <comment>
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
default <privateIdentifier>
:	\# <identifier>
;
jsx default <whitespace>
:	(<isSeparator> | \xA0 | \xFEFF)+
;
default <escape_sequence>
:	[^xu] | (x <hex>{2,2}) | (u <hex>{4,4})
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
| <decimal_integer> n
;
<hex_integer>
:	0 [xX] [0-9A-Fa-f]+ n?
;
<binary_integer>
:	0 [bB] [0-1]+ n?
;
<octal_integer>
:	0 [oO] [0-7]+ n?
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
: 	\`\`\? [a-zA-Z_]+ [^\`]* \`
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
:	ValidationNotArrowFunction <leftBrace> 'leftBrace' <rightBrace> 'rightBrace' {{}}
|	ValidationNotArrowFunction <leftBrace> 'leftBrace' PropertyDefinitionList <rightBrace> 'rightBrace' {{}}
|	ValidationNotArrowFunction <leftBrace> 'leftBrace' PropertyDefinitionList <comma> 'comma' <rightBrace> 'rightBrace' {{}}
;
ValidationNotArrowFunction 
:	[| token |
	nodeStack notEmpty 
		ifTrue: 
			[token := nodeStack last.
			((token isKindOf: SmaCCToken) and: [token ids includes: scanner eqGtId]) ifTrue: [self killState]].
	nil]
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
|	MemberExpression 'expression' <period> 'periodToken' <privateIdentifier> 'name' {{NamedPropertyExpression}}
;
SuperProperty
:	<super> 'superToken' <leftBracket> 'leftBracket' Expression 'expression' <rightBracket> 'rightBracket' {{SuperIndexedPropertyExpression}}
|	<super> 'superToken' <period> 'periodToken' <identifierName> 'name' {{SuperNamedPropertyExpression}}
;
MetaProperty
:	NewTarget
|	ImportMeta
;
NewTarget
:	<new> 'newToken' <period> 'periodToken' <target> 'targetToken' {{NewTargetExpression}}
;
ImportMeta
:	<import> 'importToken' <period> 'periodToken' <meta> 'metaToken' {{}}
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
|	CallExpression 'expression' <leftBracket> 'leftBracket' Expression 'fieldExpression' <rightBracket> 'rightBracket' {{IndexedPropertyExpression}}
|	CallExpression 'expression' <period> 'periodToken' <identifierName> 'name' {{NamedPropertyExpression}}
|	CallExpression 'expression' TemplateLiteral 'template'  {{TaggedTemplateLiteral}}
|	CallExpression 'expression' <period> 'periodToken' <privateIdentifier> 'name' {{NamedPropertyExpression}}
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
|	<period> 'periodToken' <privateIdentifier> 'name' {{OptionalName}}
;
OptionalFirst	## added for AST
:	Arguments {{OptionalArguments}}
|	<leftBracket> 'leftBracket' Expression 'value' <rightBracket> 'rightBracket' {{OptionalIndexed}}
|	<identifierName> 'name' {{OptionalName}}
|	TemplateLiteral 'template' {{OptionalTemplate}}
|	<privateIdentifier> 'name' {{OptionalName}}
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
|	PrivateIdentifier 'leftExpression' <in> 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
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
|	<ampAmpEq>
|	<barBarEq>
|	<questionQuestionEq>
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
|	BindingPattern 'pattern' Initializer? {{VariablePatternDeclaration}}
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
:	DoWhileStatement
|	WhileStatement
|	ForStatement
|	ForInOfStatement
;
DoWhileStatement
:	<do> 'doToken' Statement 'statement' <while> 'whileToken' <leftParen> 'left' Expression 'expression' <rightParen> 'right' <semicolon> 'semicolon' {{DoWhileStatement}}
;
WhileStatement
:	<while> 'whileToken' <leftParen> 'left' Expression 'expression' <rightParen> 'right' Statement 'statement' {{WhileStatement}}
;
ForStatement
:	<for> 'forToken' <leftParen> 'left' Expression 'initialExpression'?<mandatory_semicolon> 'semicolon' Expression 'condition'?<mandatory_semicolon> 'semicolon' Expression 'iteratorExpression'? <rightParen> 'right' Statement 'statement' {{ForStatement}}
|	<for> 'forToken' <leftParen> 'left' <var> 'varToken' VariableDeclarationList <mandatory_semicolon> 'semicolon' Expression 'condition'? <mandatory_semicolon> 'semicolon' Expression 'iteratorExpression'? <rightParen> 'right' Statement 'statement' {{ForStatement}}
|	<for> 'forToken' <leftParen> 'left' LexicalDeclaration 'declaration' Expression 'condition'? <mandatory_semicolon> 'semicolon' Expression 'iteratorExpression'? <rightParen> 'right' Statement 'statement' {{ForStatement}}
;
ForInOfStatement
:	<for> 'forToken' <leftParen> 'left' LeftHandSideExpression 'variable' <in> 'inToken' Expression 'expression' <rightParen> 'right' Statement 'statement' {{ForInStatement}}
|	<for> 'forToken' <leftParen> 'left' <var> 'varToken' ForBinding 'variable' <in> 'inToken' Expression 'expression' <rightParen> 'right' Statement  'statement' {{ForInStatement}}
|	<for> 'forToken' <leftParen> 'left' ForDeclaration <in> 'inToken' Expression 'expression' <rightParen> 'right' Statement  'statement' {{ForInStatement}}
|	<for> 'forToken' <leftParen> 'left' LeftHandSideExpression 'variable' <of> 'ofToken' AssignmentExpression 'expression' <rightParen> 'right' Statement 'statement' {{ForOfStatement}}
|	<for> 'forToken' <leftParen> 'left' <var> 'varToken' ForBinding 'variable' <of> 'ofToken' AssignmentExpression 'expression' <rightParen> 'right' Statement  'statement' {{ForOfStatement}}
|	<for> 'forToken' <leftParen> 'left' ForDeclaration <of> 'ofToken' AssignmentExpression 'expression' <rightParen> 'right' Statement  'statement' {{ForOfStatement}}
|	<for> 'forToken' <await> 'awaitToken' <leftParen> 'left' LeftHandSideExpression 'variable' <of> 'ofToken' AssignmentExpression 'expression' <rightParen> 'right' Statement 'statement' {{ForOfStatement}}
|	<for> 'forToken' <await> 'awaitToken' <leftParen> 'left' <var> 'varToken' ForBinding 'variable' <of> 'ofToken' AssignmentExpression 'expression' <rightParen> 'right' Statement  'statement' {{ForOfStatement}}
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
:	<continue> 'continueToken' (CheckEOL Identifier 'label')? <semicolon> 'semicolon' {{}}  ##
;
BreakStatement 
:	<break> 'breakToken' (CheckEOL Identifier 'label')? <semicolon> 'semicolon' {{}}    ##
;
CheckEOL
:	[self checkEOL. nil]
;
ReturnStatement  
:	<return> 'returnToken' (CheckEOL Expression 'expression')? <semicolon> 'semicolon' {{}} ##
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
|	Identifier <ts> TypeAnnotation
|	BindingPattern
;
DebuggerStatement 
:	<debugger> 'debuggerToken' <semicolon> 'semicolon' {{}}
;
#A.4
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
FunctionDeclaration 
:	<function> 'functionToken' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{Function}}	##
;
FunctionExpression 
:	<function> 'functionToken' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{Function}}	##
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
:	ClassElementName 'name' <leftParen> 'left' UniqueFormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}
|	GeneratorMethod
|	AsyncMethod
|	AsyncGeneratorMethod
|	<get> 'getToken' ClassElementName 'name' <leftParen> 'left' <rightParen> 'right' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{GetMethodDefinition}}
|	<set> 'setToken' ClassElementName 'name' <leftParen> 'left' PropertySetParameterList <rightParen> 'right' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{SetMethodDefinition}}
;
PropertySetParameterList
:	FormalParameter 'parameter'
;
GeneratorDeclaration
:	<function> 'functionToken' <star> 'star' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' GeneratorBody <rightBrace> 'rightBrace' {{GeneratorFunction}}	##
;
GeneratorExpression
:	<function> 'functionToken' <star> 'star' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' GeneratorBody <rightBrace> 'rightBrace' {{GeneratorFunction}}	##
;
GeneratorMethod
:	<star> 'star' ClassElementName 'name' <leftParen> 'left' UniqueFormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' GeneratorBody <rightBrace> 'rightBrace' {{GeneratorMethodDefinition}}
;
GeneratorBody
:	FunctionBody
;
YieldExpression
:   <yield> 'yieldToken' {{}}
|	<yield> 'yieldToken'  <star> 'star'? AssignmentExpression 'expression' {{}} ##
;
AsyncGeneratorDeclaration
:	<async> 'asyncToken' <function> 'functionToken' <star> 'star' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncGeneratorBody <rightBrace> 'rightBrace' {{AsyncGeneratorFunction}}   ##
;
AsyncGeneratorExpression
:	<async> 'asyncToken' <function> 'functionToken' <star> 'star' Identifier 'name'? <leftParen> 'left' FormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncGeneratorBody <rightBrace> 'rightBrace' {{AsyncGeneratorFunction}}   ##
;
AsyncGeneratorMethod
:	<async> 'asyncToken' <star> 'star' ClassElementName 'name' <leftParen> 'left' UniqueFormalParameters <rightParen> 'right' <leftBrace> 'leftBrace' AsyncGeneratorBody <rightBrace> 'rightBrace' {{AsyncGeneratorMethodDefinition}}
;
AsyncGeneratorBody
:	FunctionBody
;
AsyncFunctionDeclaration
:	<async> 'asyncToken' <function> 'functionToken' Identifier 'name'? (<ts> TypeParameters 'typeParameters')? <leftParen> 'left' FormalParameters <rightParen> 'right' (<ts> TypeAnnotation)? <leftBrace> 'leftBrace' AsyncFunctionBody <rightBrace> 'rightBrace' {{AsyncFunction}}   ##
;
AsyncFunctionExpression
:	<async> 'asyncToken' <function> 'functionToken' Identifier 'name'? (<ts> TypeParameters 'typeParameters')? <leftParen> 'left' FormalParameters <rightParen> 'right' (<ts> TypeAnnotation)? <leftBrace> 'leftBrace' AsyncFunctionBody <rightBrace> 'rightBrace' {{AsyncFunction}}    ##
;
AsyncMethod
:	<async> 'asyncToken' ClassElementName 'name' <leftParen> 'left' UniqueFormalParameters <rightParen> 'right' (<ts> TypeAnnotation)? <leftBrace> 'leftBrace' AsyncFunctionBody <rightBrace> 'rightBrace' {{AsyncMethodDefinition}}
;
AsyncFunctionBody
:	FunctionBody
;
AwaitExpression
:	<await> 'awaitToken' UnaryExpression 'expression' {{}}
;
ClassDeclaration
:	DecoratorExpression 'decorator'* <abstract> 'abstract'?  <class> 'classToken' Identifier 'name'? (<ts> TypeParameters 'typeParameters')? ClassTail {{ClassExpression}}	##
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
:	<ts> ConstructorDeclaration {'2'}
|	<ts> PropertyMemberDeclaration {'2'}
|	<ts> IndexMemberDeclaration {'2'}
|	MethodDefinition
|	<static> 'staticToken' MethodDefinition {{MethodDefinition}}
|	FieldDefinition <semicolon> 'semicolon' {{FieldDefinition}}
|	<static> 'staticToken' FieldDefinition <semicolon> 'semicolon' {{FieldDefinition}}
|	ClassStaticBlock
|	<semicolon> 'semicolon' {{EmptyStatement}}
;
FieldDefinition
:	ClassElementName 'variable' Initializer
|	ClassElementNameWithSemicolonCheck 'variable'
;
ClassElementNameWithSemicolonCheck
:	<identifier> 'name' CheckSemicolon{{NameExpression}}
|	<privateIdentifier> 'name' {{NameExpression}}
;
CheckSemicolon
:	[self checkSemicolon. nil]
;
ClassElementName
:	<identifierName> 'name' {{NameExpression}}
|	<privateIdentifier> 'name' {{NameExpression}}
;
ClassStaticBlock
:	<static> 'staticToken' <leftBrace> 'leftBrace' ClassStaticBlockBody <rightBrace> 'rightBrace' {{}}
;
ClassStaticBlockBody
:	ClassStaticBlockStatementList
;
ClassStaticBlockStatementList
:	StatementList?
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
ModuleExportName
:	<identifierName>
|	StringLiteral
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
|	<ts> <type> 'typeToken' ImportedDefaultBinding 'import'
|	<ts> <type> 'typeToken' NamedImports 'import'
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
|	ModuleExportName 'name' <as> 'asToken' ImportedBinding 'binding' {{}}
|	<ts> <type> 'typeToken' ImportedBinding 'binding' {{}}
|	<ts> <type> 'typeToken' ModuleExportName 'name' <as> 'asToken' ImportedBinding 'binding' {{}}
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
|	<export> 'exportToken' <default> 'defaultToken' AssignmentExpression 'statement' <semicolon> 'semicolon' {{}}
|	<ts> <export> 'exportToken' <type> 'typeToken' ExportFromClause FromClause <semicolon> 'semicolon' {{}}
;
ExportFromClause
:	<star> 'star'
|	<star> 'star' <as> 'asToken' ModuleExportName 'name'
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
:	ModuleExportName 'name' {{}}
|	ModuleExportName 'name' <as> 'asToken' ModuleExportName 'as' {{}}
;


PrivateIdentifier
:	<privateIdentifier> 'name' {{NameExpression}}
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
|	SwitchToJSX <jsxLT> 'ltToken' SwitchToJSXText <gt> 'gtToken' {{XOpeningElement}}
;
JSXClosingElement
:	SwitchToJSX <jsxLT> 'ltToken' <slash> 'slashToken' JSXElementName 'name'? SwitchToJSXTextOrDefault2 <gt> 'gtToken' {{XClosingElement}}
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
|	IndexedAccessType
;
IndexedAccessType
:	PrimaryType 'type' CheckEOL <leftBracket> 'leftBracket' Type 'index' <rightBracket> 'rightBracket' {{}}
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
:	TypeName 'type' (CheckEOL TypeArguments 'typeArguments')? {{TypeReference}}
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
:	<readonly> 'readonlyToken'? PrimaryType 'type' CheckEOL <leftBracket> 'leftBracket' <rightBracket> 'rightBracket' {{}}
;
TupleType
:	<readonly> 'readonlyToken'? <leftBracket> 'leftBracket' TupleElementTypes? <comma> 'comma'? <rightBracket> 'rightBracket' {{}}	##
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
:	<readonly> 'readonlyToken'? PropertyName 'name' NullableIndicator? TypeAnnotation? {{}}
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
:	<ts> DecoratorExpression 'decorator'* BindingModifier* TSIdentifierOrBindingPattern 'variable' TypeAnnotation Initializer? {{VariableDeclaration}}
|	<ts> DecoratorExpression 'decorator'* BindingModifier* TSIdentifierOrBindingPattern 'variable' Initializer? {{VariableDeclaration}}
|	<ts> DecoratorExpression 'decorator'* BindingModifier* TSIdentifierOrBindingPattern 'variable' NullableIndicator TypeAnnotation? {{VariableDeclaration}}	##
;
BindingModifier
	: AccessibilityModifier 'modifier'
	| <readonly> 'modifier'
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
|	<ts> AccessibilityModifier 'modifier'? Identifier 'variable' NullableIndicator {{VariableDeclaration}}	##
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
|	<override>
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
:	PropertyName 'name' NullableIndicator? CallSignature 'signature' {{}}
;
TypeAliasDeclaration
:	<type> 'typeToken' Identifier 'name' TypeParameters 'typeParameters'? <eq> 'equalToken' <bar> 'bar'? Type 'type' <semicolon> 'semicolon' {{}}
;
# A.2
MethodDefinition 	# PropertyDefinition
:	<ts> PropertyName 'name' TypeCallSignature <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{MethodDefinition}}
|	<ts> PropertyName 'name' NullableIndicator TypeCallSignature <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{MethodDefinition}}
|	<ts> PropertyName 'name' NullableIndicator TypeCallSignature <semicolon> 'semicolon' {{MethodDefinition}}
;
TypeCallSignature
:	TypeParameters 'typeParameters'? <leftParen> 'left' FormalParameters <rightParen> 'right' TypeAnnotation   ## changed ParameterList
|	TypeParameters 'typeParameters'? <leftParen> 'left' FormalParameters <rightParen> 'right'   ## changed ParameterList
;
MethodDefinition    # GetAccessor / SetAccessor
:   GetAccessor
|   SetAccessor
;
GetAccessor
:	<ts> <get> 'getToken' PropertyName 'name' <leftParen> 'left' <rightParen> 'right' TypeAnnotation? <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{GetMethodDefinition}} 	### added optional to TypeAnnotation
;
SetAccessor
:	<ts> <set> 'setToken' PropertyName 'name' <leftParen> 'left' PropertySetParameterList <rightParen> 'right' TypeAnnotation? <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{SetMethodDefinition}}	### added optional to TypeAnnotation
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
:	<ts> TypeArguments 'typeArguments' <leftParen> 'left' ArgumentList? <comma> 'comma'? <rightParen> 'right'
;
PrimaryExpression
:	LeftHandSideExpression 'expression' <ts> <bang> 'operator' {{PostfixExpression}}
;
UnaryExpression
:	<ts> <lt> 'leftAngle' Type 'type' <gt> 'rightAngle' UnaryExpression 'expression' {{CastExpression}}
|	AsExpression
;
AsExpression
	: (LeftHandSideExpression 'expression' | AsExpression 'expression') <ts> <as> 'asToken' Type 'type' {{}}
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
:	<ts> BindingPattern 'pattern' TypeAnnotation Initializer? {{VariablePatternDeclaration}}
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
ClassHeritage
:	<ts> ClassExtendsClause? ImplementsClause 	##
|	<ts> ClassExtendsClause						 ##
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
ConstructorDeclaration
:	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <constructor> 'constructorToken' ConstructorCallSignature 'signature' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}   ## changed ParameterList
|	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <constructor> 'constructorToken' ConstructorCallSignature 'signature' <semicolon> 'semicolon' {{}}   ## changed ParameterList
;
ConstructorCallSignature
	: <leftParen> 'left' FormalParameters <rightParen> 'right' TypeAnnotation? {{CallSignature}} ### added for ast creation
	;
PropertyMemberDeclaration
:	MemberVariableDeclaration
|	MemberFunctionDeclaration
|	MemberAccessorDeclaration
;
MemberVariableDeclaration
:	DecoratorExpression 'decorator'* (BindingModifier 'modifier' |  <static> 'modifier')* PropertyName 'name' CheckSemicolon NullableIndicator? TypeAnnotation? Initializer? <semicolon> 'semicolon' {{}}
;
NullableIndicator
	: <question> 'nullableIndicator'
	| <bang> 'nullableIndicator'
	;
MemberFunctionDeclaration
:	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <static> 'staticToken'? <async> 'asyncToken'? PropertyName 'name' CallSignature 'signature' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}
|	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <static> 'staticToken'? <async> 'asyncToken'? PropertyName 'name' CallSignature 'signature' <semicolon> 'semicolon' {{}}
;
MemberAccessorDeclaration
:	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <static> 'staticToken'? GetAccessor 'accessor' {{}}
|	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <static> 'staticToken'? SetAccessor 'accessor' {{}}
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
:	<import> 'importToken' Identifier 'identifier' <eq> 'equalToken' EntityName <semicolon> 'semicolon' {{}}
;
EntityName
:	NamespaceName
#|	NamespaceName <period> 'periodToken' Identifier	##
;
# A.9 Scripts and Modules
SourceFile
#:	ImplementationSourceFile {{TSSourceFile}}
#|	DeclarationSourceFile {{TSSourceFile}}
:	SourceFileElement 'element'* {{TSSourceFile}}
;
SourceFileElement
#ImplementationScriptElement
:	ImplementationElement
|	AmbientModuleDeclaration
#ImplementationModuleElement
#|	ImplementationElement
|	ImportDeclaration
|	ImportRequireDeclaration
|	ExportImplementationElement
|	ExportDefaultImplementationElement
|	ExportListDeclaration
|	ExportAssignment
#DeclarationScriptElement
#|	DeclarationElement	## all are in ImplementationElement
#|	AmbientModuleDeclaration
#DeclarationModuleElement
#|	DeclarationElement
#|	ImportDeclaration
|	ExportDeclarationElement
|	ExportDefaultDeclarationElement
#|	ExportListDeclaration
#|	ExportAssignment
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
#|	ImportAliasDeclaration ## already in ImplementationElement
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
#|	ImportAliasDeclaration ## already in DeclarationElement
|	ExportDeclarationElement
|	ExportDefaultDeclarationElement
|	ExportListDeclaration
|	ExportAssignment
;
ImportRequireDeclaration
:	<import> 'importToken' Identifier 'name' <eq> 'equalToken' <require> 'requireToken' <leftParen> 'leftParen' StringLiteral 'value' <rightParen> 'rightParen' <semicolon> 'semicolon' {{}}
;
ExportImplementationElement
:	DecoratorExpression 'decorator'* <export> 'exportToken' VariableStatement 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' LexicalDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' HoistableDeclaration 'declaration' {{}}	# added to handle async ones and the two below
#|	DecoratorExpression 'decorator'* <export> 'exportToken' FunctionDeclaration 'declaration' {{}}
#|	DecoratorExpression 'decorator'* <export> 'exportToken' GeneratorDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' ClassDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' InterfaceDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' TypeAliasDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' EnumDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' NamespaceDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' AmbientDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' ImportDeclaration 'declaration' {{}}
;
ExportDeclarationElement
:	DecoratorExpression 'decorator'* <export> 'exportToken' InterfaceDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' TypeAliasDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' AmbientDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' ImportAliasDeclaration 'declaration' {{}}
;
ExportDefaultImplementationElement
:	DecoratorExpression 'decorator'* <export> 'exportToken' <default> 'defaultToken' FunctionDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' <default> 'defaultToken' GeneratorDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' <default> 'defaultToken' ClassDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' <default> 'defaultToken' AssignmentExpression 'declaration' <semicolon> 'semicolon' {{}}
;
ExportDefaultDeclarationElement
:	DecoratorExpression 'decorator'* <export> 'exportToken' <default> 'defaultToken' AmbientFunctionDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' <default> 'defaultToken' AmbientClassDeclaration 'declaration' {{}}
|	DecoratorExpression 'decorator'* <export> 'exportToken' <default> 'defaultToken' Identifier 'declaration' <semicolon> 'semicolon' {{}}
;
ExportListDeclaration
:	<export> 'exportToken' (<ts> <type> 'typeToken')? <star> 'star' FromClause <semicolon> 'semicolon' {{}}
|	<export> 'exportToken' (<ts> <type> 'typeToken')? NamedExports FromClause <semicolon> 'semicolon' {{}}
|	<export> 'exportToken' (<ts> <type> 'typeToken')? NamedExports <semicolon> 'semicolon' {{}}
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
:	<class> 'classToken' Identifier 'name' TypeParameters 'typeParameters'? ClassHeritage? <leftBrace> 'leftBrace' AmbientClassBody <rightBrace> 'rightBrace' {{ClassExpression}}	##
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
:	AccessibilityModifier 'modifier'? <constructor> 'constructorToken' ConstructorCallSignature 'signature' <semicolon> 'semicolon' {{ConstructorDeclaration}}   ## changed ParameterList
;
AmbientPropertyMemberDeclaration
:	(BindingModifier 'modifier' |  <static> 'modifier')* PropertyName 'name' CheckSemicolon TypeAnnotation? <semicolon> 'semicolon' {{MemberVariableDeclaration}}
|	(BindingModifier 'modifier' |  <static> 'modifier')* PropertyName 'name' CallSignature 'signature' <semicolon> 'semicolon' {{MethodSignature}}
;
AmbientEnumDeclaration
:	EnumDeclaration
;
AmbientNamespaceDeclaration
:	<namespace> 'namespaceToken' IdentifierPath <leftBrace> 'leftBrace' AmbientNamespaceBody <rightBrace> 'rightBrace' {{NamespaceDeclaration}}
|	<global> 'globalToken' <leftBrace> 'leftBrace' AmbientNamespaceBody <rightBrace> 'rightBrace' {{NamespaceDeclaration}}
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
|	<declare> 'declareToken'? <module> 'namespaceToken' <identifierName> 'name' <leftBrace> 'leftBrace' AmbientNamespaceBody <rightBrace> 'rightBrace' {{}}	### Added???
;

DecoratorExpression
:	<at> 'atToken' CallExpression 'expression' {{DecoratorExpression}}
|	<at> 'atToken' Identifier 'expression' {{DecoratorExpression}}
;"
]

{ #category : 'file types' }
JSParser class >> fileExtension [
	^ '.js'
]

{ #category : 'file types' }
JSParser class >> fileExtensionType [
	^ 'Javascript files'
]

{ #category : 'private' }
JSParser class >> keywords [
	^ keywords
		ifNil:
			[ keywords := #(break case catch class const continue debugger default delete do else export extends finally for function if import in instanceof new return super switch this throw try typeof var void while with yield)
				asSet collect: [ :each | each asString ] ]
]

{ #category : 'generated' }
JSParser class >> reduceTable [
^#(
	#(211 0 #reduceActionForStartStatementListItem1: 24322049 true) 
	#(308 0 #reduceActionForModule1: 38973441 false) 
	#(154 0 #reduceActionForValidationNotArrowFunction1: 11836417 true) 
	#(163 0 #reduceActionForStartTemplateLiteral1: 13051905 true) 
	#(356 0 #reduceActionForSwitchToJSX1: 44825601 true) 
	#(306 0 #reduceActionForScript1: 38915073 false) 
	#(448 0 #reduceActionForSourceFileElement__element__1: 60682241 false) 
	#(213 1 #liftFirstValue: 24494082 false) 
	#(292 0 #reduceActionForSourceFileElement__element__1: 37286913 false) 
	#(213 1 #liftFirstValue: 24494081 false) 
	#(311 1 #liftFirstValue: 39106563 false) 
	#(210 1 #liftFirstValue: 24224770 false) 
	#(143 1 #liftFirstValue: 9172993 false) 
	#(308 1 #reduceActionForModule2: 38973442 false) 
	#(309 1 #reduceActionForModuleBody1: 39002113 false) 
	#(310 1 #reduceActionForModuleItemList1: 39032833 false) 
	#(311 1 #liftFirstValue: 39106561 false) 
	#(311 1 #liftFirstValue: 39106562 false) 
	#(259 0 #reduceActionForFormalParameters1: 32275457 false) 
	#(330 1 #liftFirstValue: 42078210 false) 
	#(329 1 #liftFirstValue: 42054657 false) 
	#(146 1 #reduceActionForPrimaryExpression1: 9580545 false) 
	#(330 1 #liftFirstValue: 42078209 false) 
	#(281 1 #reduceActionForYieldExpression1: 35303425 false) 
	#(144 1 #reduceActionForIdentifier1: 9285633 false) 
	#(328 1 #reduceActionForIdentifier1: 41985025 false) 
	#(331 1 #liftFirstValue: 42115073 false) 
	#(332 1 #liftFirstValue: 42150913 false) 
	#(333 1 #reduceActionForRegularExpressionLiteral1: 42188801 false) 
	#(162 1 #reduceActionForTemplateLiteral1: 12896257 false) 
	#(357 0 #reduceActionForSwitchToJSXText1: 44866561 true) 
	#(146 1 #liftFirstValue: 9580546 false) 
	#(269 1 #reduceActionForArrowParameterDeclaration1: 33344513 false) 
	#(166 1 #liftFirstValue: 13322241 false) 
	#(146 1 #liftFirstValue: 9580557 false) 
	#(146 1 #liftFirstValue: 9580547 false) 
	#(146 1 #liftFirstValue: 9580548 false) 
	#(146 1 #liftFirstValue: 9580549 false) 
	#(146 1 #liftFirstValue: 9580556 false) 
	#(171 1 #liftFirstValue: 14433281 false) 
	#(166 1 #liftFirstValue: 13322245 false) 
	#(166 1 #liftFirstValue: 13322246 false) 
	#(168 1 #liftFirstValue: 14201857 false) 
	#(168 1 #liftFirstValue: 14201858 false) 
	#(181 1 #liftFirstValue: 16758785 false) 
	#(181 1 #liftFirstValue: 16758786 false) 
	#(172 1 #liftFirstValue: 14523394 false) 
	#(172 1 #liftFirstValue: 14523395 false) 
	#(181 1 #liftFirstValue: 16758787 false) 
	#(182 1 #liftFirstValue: 16840705 false) 
	#(183 1 #liftFirstValue: 17209345 false) 
	#(184 1 #liftFirstValue: 17661953 false) 
	#(185 1 #liftFirstValue: 17831937 false) 
	#(187 1 #liftFirstValue: 18092033 false) 
	#(188 1 #liftFirstValue: 18390017 false) 
	#(189 1 #liftFirstValue: 18775041 false) 
	#(190 1 #liftFirstValue: 19623937 false) 
	#(191 1 #liftFirstValue: 20154369 false) 
	#(192 1 #liftFirstValue: 20318209 false) 
	#(193 1 #liftFirstValue: 20486145 false) 
	#(194 1 #liftFirstValue: 20653057 false) 
	#(197 1 #liftFirstValue: 21150722 false) 
	#(195 1 #liftFirstValue: 20823041 false) 
	#(198 1 #liftFirstValue: 21224449 false) 
	#(198 1 #liftFirstValue: 21224450 false) 
	#(197 1 #liftFirstValue: 21150721 false) 
	#(199 1 #liftFirstValue: 21298177 false) 
	#(200 1 #liftFirstValue: 21525505 false) 
	#(202 1 #liftFirstValue: 23303169 false) 
	#(146 1 #liftFirstValue: 9580550 false) 
	#(200 1 #liftFirstValue: 21525507 false) 
	#(268 1 #reduceActionForArrowParameters1: 33254401 false) 
	#(268 1 #reduceActionForArrowParameters2: 33254402 false) 
	#(200 1 #liftFirstValue: 21525508 false) 
	#(146 1 #liftFirstValue: 9580552 false) 
	#(200 1 #liftFirstValue: 21525506 false) 
	#(146 1 #liftFirstValue: 9580554 false) 
	#(146 1 #liftFirstValue: 9580553 false) 
	#(183 1 #liftFirstValue: 17209353 false) 
	#(146 1 #liftFirstValue: 9580551 false) 
	#(148 1 #reduceActionForLiteral1: 10681345 false) 
	#(148 1 #reduceActionForLiteral2: 10681346 false) 
	#(148 1 #reduceActionForLiteral4: 10681348 false) 
	#(148 1 #reduceActionForLiteral3: 10681347 false) 
	#(146 1 #liftFirstValue: 9580555 false) 
	#(146 1 #liftFirstValue: 9580558 false) 
	#(334 1 #liftFirstValue: 42440705 false) 
	#(358 0 #reduceActionForStartJSXText1: 44915713 true) 
	#(146 1 #liftFirstValue: 9580559 false) 
	#(183 1 #liftFirstValue: 17209355 false) 
	#(230 1 #reduceActionForEmptyStatement1: 26841089 false) 
	#(242 0 #reduceActionForCheckEOL1: 30510081 true) 
	#(203 1 #liftFirstValue: 23454726 false) 
	#(203 1 #liftFirstValue: 23454721 false) 
	#(207 1 #liftFirstValue: 24004609 false) 
	#(203 1 #liftFirstValue: 23454722 false) 
	#(203 1 #liftFirstValue: 23454723 false) 
	#(203 1 #liftFirstValue: 23454724 false) 
	#(203 1 #liftFirstValue: 23454725 false) 
	#(206 1 #liftFirstValue: 23942145 false) 
	#(233 1 #liftFirstValue: 27261953 false) 
	#(233 1 #liftFirstValue: 27261954 false) 
	#(233 1 #liftFirstValue: 27261955 false) 
	#(233 1 #liftFirstValue: 27261956 false) 
	#(203 1 #liftFirstValue: 23454727 false) 
	#(203 1 #liftFirstValue: 23454728 false) 
	#(203 1 #liftFirstValue: 23454729 false) 
	#(203 1 #liftFirstValue: 23454730 false) 
	#(206 1 #liftFirstValue: 23942146 false) 
	#(203 1 #liftFirstValue: 23454731 false) 
	#(203 1 #liftFirstValue: 23454732 false) 
	#(203 1 #liftFirstValue: 23454733 false) 
	#(203 1 #liftFirstValue: 23454734 false) 
	#(307 1 #reduceActionForModuleBody1: 38943745 false) 
	#(209 1 #reduceActionForModuleItemList1: 24127489 false) 
	#(306 1 #reduceActionForScript2: 38915074 false) 
	#(447 1 #reduceActionForSourceFile1: 60579841 false) 
	#(395 1 #reduceActionForThisType1: 48610305 false) 
	#(377 1 #reduceActionForPredefinedType1: 46585857 false) 
	#(379 1 #reduceActionForTypeName1: 46734337 false) 
	#(380 1 #reduceActionForNamespaceName1: 46840833 false) 
	#(375 1 #reduceActionForLiteralType1: 46423041 false) 
	#(375 1 #reduceActionForLiteralType1: 46423042 false) 
	#(369 1 #liftFirstValue: 45737985 false) 
	#(370 1 #liftFirstValue: 45814786 false) 
	#(371 1 #liftFirstValue: 45891586 false) 
	#(372 1 #liftFirstValue: 45953025 false) 
	#(373 1 #liftFirstValue: 46096394 false) 
	#(373 1 #liftFirstValue: 46096393 false) 
	#(373 1 #liftFirstValue: 46096385 false) 
	#(373 1 #liftFirstValue: 46096386 false) 
	#(373 1 #liftFirstValue: 46096387 false) 
	#(378 1 #reduceActionForTypeReference1: 46638081 false) 
	#(373 1 #liftFirstValue: 46096388 false) 
	#(373 1 #liftFirstValue: 46096389 false) 
	#(373 1 #liftFirstValue: 46096390 false) 
	#(370 1 #liftFirstValue: 45814785 false) 
	#(371 1 #liftFirstValue: 45891585 false) 
	#(369 1 #liftFirstValue: 45737986 false) 
	#(369 1 #liftFirstValue: 45737987 false) 
	#(373 1 #liftFirstValue: 46096391 false) 
	#(373 1 #liftFirstValue: 46096392 false) 
	#(298 1 #reduceActionForEmptyStatement1: 37835785 false) 
	#(301 0 #reduceActionForCheckSemicolon1: 38518785 true) 
	#(302 1 #reduceActionForIdentifier1: 38565889 false) 
	#(302 1 #reduceActionForIdentifier1: 38565890 false) 
	#(300 1 #reduceActionForIdentifier1: 38375426 false) 
	#(298 1 #liftFirstValue: 37835780 false) 
	#(275 1 #liftFirstValue: 33910786 false) 
	#(275 1 #liftFirstValue: 33910788 false) 
	#(275 1 #liftFirstValue: 33910787 false) 
	#(299 1 #reduceActionForFieldDefinition2: 38264834 false) 
	#(298 1 #liftFirstValue: 37835784 false) 
	#(275 1 #liftFirstValue: 33910794 false) 
	#(275 1 #liftFirstValue: 33910795 false) 
	#(324 1 #reduceActionForExportFromClause1: 41435137 false) 
	#(323 2 #reduceActionForExportDeclaration4: 40641540 false) 
	#(204 1 #liftFirstValue: 23737345 false) 
	#(204 1 #liftFirstValue: 23737347 false) 
	#(323 2 #reduceActionForExportDeclaration3: 40641539 false) 
	#(205 1 #liftFirstValue: 23816193 false) 
	#(205 1 #liftFirstValue: 23816194 false) 
	#(205 1 #liftFirstValue: 23816196 false) 
	#(205 1 #liftFirstValue: 23816195 false) 
	#(204 1 #liftFirstValue: 23737346 false) 
	#(324 1 #reduceActionForExportFromClause3: 41435139 false) 
	#(322 1 #liftFirstValue: 40606721 false) 
	#(314 1 #reduceActionForImportClause1: 39408641 false) 
	#(314 1 #reduceActionForImportClause1: 39408642 false) 
	#(314 1 #reduceActionForImportClause1: 39408643 false) 
	#(315 1 #liftFirstValue: 39770113 false) 
	#(321 1 #liftFirstValue: 40564737 false) 
	#(210 2 #liftSecondValue: 24224769 false) 
	#(215 1 #reduceActionForArrowParameterDeclaration1: 24624129 false) 
	#(214 1 #reduceActionForNamespaceName1: 24525825 false) 
	#(219 1 #liftFirstValue: 25170945 false) 
	#(219 1 #liftFirstValue: 25170946 false) 
	#(215 1 #liftFirstValue: 24624132 false) 
	#(215 1 #liftFirstValue: 24624133 false) 
	#(310 2 #reduceActionForModuleItemList2: 39032834 false) 
	#(228 1 #reduceActionForArrowParameterDeclaration1: 26572801 false) 
	#(227 1 #reduceActionForBindingElement2: 26462210 false) 
	#(262 1 #liftFirstValue: 32645121 false) 
	#(227 1 #liftFirstValue: 26462209 false) 
	#(261 1 #liftFirstValue: 32599041 false) 
	#(258 1 #reduceActionForModuleBody1: 32230401 false) 
	#(259 1 #reduceActionForFormalParameters3: 32275459 false) 
	#(259 1 #reduceActionForFormalParameters2: 32275458 false) 
	#(260 1 #reduceActionForNamespaceName1: 32477185 false) 
	#(149 2 #reduceActionForArrayLiteral1: 10863617 false) 
	#(151 1 #reduceActionForModuleItemList1: 11342849 false) 
	#(150 1 #reduceActionForNamespaceName1: 11124739 false) 
	#(150 1 #reduceActionForNamespaceName1: 11124737 false) 
	#(183 2 #reduceActionForUnaryExpression5: 17209349 false) 
	#(182 2 #reduceActionForUpdateExpression4: 16840708 false) 
	#(183 2 #reduceActionForUnaryExpression5: 17209350 false) 
	#(182 2 #reduceActionForUpdateExpression4: 16840709 false) 
	#(183 2 #reduceActionForUnaryExpression5: 17209351 false) 
	#(183 2 #reduceActionForUnaryExpression5: 17209352 false) 
	#(290 2 #reduceActionForAwaitExpression1: 37190657 false) 
	#(293 2 #reduceActionForClassExpression1: 37463041 false) 
	#(183 2 #reduceActionForUnaryExpression5: 17209346 false) 
	#(171 2 #reduceActionForNewExpression2: 14433282 false) 
	#(173 2 #reduceActionForSuperCall1: 15122433 false) 
	#(183 2 #reduceActionForUnaryExpression5: 17209348 false) 
	#(183 2 #reduceActionForUnaryExpression5: 17209347 false) 
	#(281 2 #reduceActionForYieldExpression2: 35303426 false) 
	#(166 2 #reduceActionForMemberExpression4: 13322244 false) 
	#(172 2 #reduceActionForCallExpression1: 14523393 false) 
	#(177 2 #reduceActionForOptionalExpression1: 15787009 false) 
	#(172 2 #reduceActionForMemberExpression4: 14523399 false) 
	#(172 2 #reduceActionForCallExpression1: 14523396 false) 
	#(177 2 #reduceActionForOptionalExpression1: 15787010 false) 
	#(177 2 #reduceActionForOptionalExpression1: 15787011 false) 
	#(201 1 #liftFirstValue: 21730307 false) 
	#(201 1 #liftFirstValue: 21730311 false) 
	#(201 1 #liftFirstValue: 21730312 false) 
	#(201 1 #liftFirstValue: 21730313 false) 
	#(201 1 #liftFirstValue: 21730305 false) 
	#(201 1 #liftFirstValue: 21730306 false) 
	#(201 1 #liftFirstValue: 21730308 false) 
	#(201 1 #liftFirstValue: 21730314 false) 
	#(201 1 #liftFirstValue: 21730315 false) 
	#(201 1 #liftFirstValue: 21730316 false) 
	#(201 1 #liftFirstValue: 21730310 false) 
	#(201 1 #liftFirstValue: 21730309 false) 
	#(182 2 #reduceActionForUpdateExpression2: 16840706 false) 
	#(182 2 #reduceActionForUpdateExpression2: 16840707 false) 
	#(201 1 #liftFirstValue: 21730318 false) 
	#(201 1 #liftFirstValue: 21730320 false) 
	#(201 1 #liftFirstValue: 21730319 false) 
	#(201 1 #liftFirstValue: 21730317 false) 
	#(186 1 #liftFirstValue: 18034690 false) 
	#(186 1 #liftFirstValue: 18034689 false) 
	#(186 1 #liftFirstValue: 18034691 false) 
	#(353 0 #reduceActionForSourceFileElement__element__1: 44511233 false) 
	#(272 2 #reduceActionForArrowFormalParameters2: 33595394 false) 
	#(208 2 #reduceActionForBlock1: 24030209 false) 
	#(241 2 #reduceActionForBreakStatement1: 30400513 false) 
	#(240 2 #reduceActionForContinueStatement1: 30283777 false) 
	#(257 2 #reduceActionForDebuggerStatement1: 32144385 false) 
	#(243 2 #reduceActionForReturnStatement1: 30544897 false) 
	#(218 1 #reduceActionForArrowParameterDeclaration1: 25010177 false) 
	#(217 1 #reduceActionForNamespaceName1: 24873985 false) 
	#(231 2 #reduceActionForExpressionStatement1: 26891265 false) 
	#(209 2 #reduceActionForModuleItemList2: 24127490 false) 
	#(455 1 #liftFirstValue: 61766657 false) 
	#(455 1 #liftFirstValue: 61766658 false) 
	#(455 1 #liftFirstValue: 61766659 false) 
	#(455 1 #liftFirstValue: 61766660 false) 
	#(455 1 #liftFirstValue: 61766661 false) 
	#(449 1 #liftFirstValue: 60731395 false) 
	#(455 1 #liftFirstValue: 61766663 false) 
	#(455 1 #liftFirstValue: 61766662 false) 
	#(455 1 #liftFirstValue: 61766664 false) 
	#(455 1 #liftFirstValue: 61766665 false) 
	#(455 1 #liftFirstValue: 61766667 false) 
	#(448 2 #reduceActionForModuleItemList2: 60682242 false) 
	#(449 1 #liftFirstValue: 60731393 false) 
	#(449 1 #liftFirstValue: 60731396 false) 
	#(449 1 #liftFirstValue: 60731397 false) 
	#(449 1 #liftFirstValue: 60731401 false) 
	#(449 1 #liftFirstValue: 60731398 false) 
	#(449 1 #liftFirstValue: 60731402 false) 
	#(449 1 #liftFirstValue: 60731399 false) 
	#(449 1 #liftFirstValue: 60731400 false) 
	#(455 1 #liftFirstValue: 61766666 false) 
	#(449 1 #liftFirstValue: 60731394 false) 
	#(381 2 #reduceActionForObjectType1: 46945281 false) 
	#(145 1 #reduceActionForIdentifier1: 9479169 false) 
	#(158 1 #liftFirstValue: 12500993 false) 
	#(396 1 #reduceActionForPropertySignature1: 48648193 false) 
	#(157 1 #liftFirstValue: 12438529 false) 
	#(157 1 #liftFirstValue: 12438530 false) 
	#(158 1 #reduceActionForIdentifier1: 12500994 false) 
	#(158 1 #reduceActionForIdentifier1: 12500995 false) 
	#(382 1 #reduceActionForModuleBody1: 47027201 false) 
	#(383 1 #reduceActionForNamespaceName1: 47123457 false) 
	#(384 1 #liftFirstValue: 47278081 false) 
	#(384 1 #liftFirstValue: 47278082 false) 
	#(384 1 #liftFirstValue: 47278083 false) 
	#(384 1 #liftFirstValue: 47278084 false) 
	#(384 1 #liftFirstValue: 47278085 false) 
	#(386 2 #reduceActionForTupleType1: 47521793 false) 
	#(388 1 #liftFirstValue: 47777793 false) 
	#(387 1 #reduceActionForNamespaceName1: 47669249 false) 
	#(364 1 #reduceActionForTypeParameter1: 45423617 false) 
	#(363 1 #reduceActionForNamespaceName1: 45310977 false) 
	#(372 2 #reduceActionForPrefixType3: 45953027 false) 
	#(372 2 #reduceActionForPrefixType2: 45953026 false) 
	#(394 1 #reduceActionForTypeQueryExpression1: 48486401 false) 
	#(393 2 #reduceActionForTypeQuery1: 48412673 false) 
	#(305 0 #reduceActionForSourceFileElement__element__1: 38859777 false) 
	#(298 2 #reduceActionForClassElement5: 37835781 false) 
	#(300 2 #reduceActionForIdentifier1: 38375425 false) 
	#(298 2 #reduceActionForClassElement6: 37835782 false) 
	#(299 2 #reduceActionForFieldDefinition1: 38264833 false) 
	#(429 0 #reduceActionForSourceFileElement__element__1: 57410561 false) 
	#(298 2 #liftSecondValue: 37835777 false) 
	#(298 2 #liftSecondValue: 37835778 false) 
	#(426 1 #liftFirstValue: 57233409 false) 
	#(426 1 #liftFirstValue: 57233410 false) 
	#(426 1 #liftFirstValue: 57233411 false) 
	#(298 2 #liftSecondValue: 37835779 false) 
	#(325 2 #reduceActionForNamedExports1: 41542657 false) 
	#(312 1 #liftFirstValue: 39181313 false) 
	#(327 1 #reduceActionForExportSpecifier1: 41863169 false) 
	#(326 1 #reduceActionForNamespaceName1: 41758721 false) 
	#(312 1 #liftFirstValue: 39181314 false) 
	#(292 2 #reduceActionForModuleItemList2: 37286914 false) 
	#(323 3 #reduceActionForExportDeclaration2: 40641538 false) 
	#(204 2 #liftSecondValue: 23737349 false) 
	#(204 2 #liftSecondValue: 23737348 false) 
	#(204 2 #liftSecondValue: 23737350 false) 
	#(317 2 #reduceActionForNamedImports1: 39895041 false) 
	#(319 1 #reduceActionForNamespaceName1: 40177665 false) 
	#(320 1 #reduceActionForImportSpecifier1: 40282113 false) 
	#(313 3 #reduceActionForImportDeclaration2: 39236610 false) 
	#(220 2 #reduceActionForObjectBindingPattern1: 25234433 false) 
	#(223 1 #reduceActionForNamespaceName1: 26059777 false) 
	#(226 1 #liftFirstValue: 26348545 false) 
	#(221 2 #reduceActionForArrayBindingPattern1: 25622529 false) 
	#(224 1 #reduceActionForBindingElementList1: 26178561 false) 
	#(225 1 #reduceActionForBindingElisionElement1: 26287105 false) 
	#(215 2 #reduceActionForLexicalBinding2: 24624130 false) 
	#(212 3 #reduceActionForLexicalDeclaration1: 24404993 false) 
	#(215 2 #reduceActionForLexicalBinding3: 24624131 false) 
	#(229 2 #reduceActionForBindingRestElement1: 26658817 false) 
	#(229 2 #reduceActionForBindingRestElement1: 26658818 false) 
	#(228 2 #reduceActionForLexicalBinding2: 26572802 false) 
	#(147 3 #reduceActionForParenthesizedExpression1: 9946113 false) 
	#(227 2 #reduceActionForLexicalBinding3: 26462211 false) 
	#(272 3 #reduceActionForArrowFormalParameters1: 33595393 false) 
	#(259 2 #reduceActionForFormalParameters4: 32275460 false) 
	#(402 1 #liftFirstValue: 50957316 false) 
	#(402 1 #liftFirstValue: 50957314 false) 
	#(402 1 #liftFirstValue: 50957315 false) 
	#(402 1 #liftFirstValue: 50957313 false) 
	#(399 0 #reduceActionForSourceFileElement__element__1: 49132545 false) 
	#(152 2 #reduceActionForSpreadElement1: 11398145 false) 
	#(149 3 #reduceActionForArrayLiteral3: 10863619 false) 
	#(149 3 #reduceActionForArrayLiteral2: 10863618 false) 
	#(151 2 #reduceActionForModuleItemList2: 11342850 false) 
	#(150 2 #reduceActionForElementList4: 11124740 false) 
	#(150 2 #reduceActionForElementList4: 11124738 false) 
	#(294 2 #reduceActionForClassTail1: 37542913 false) 
	#(296 1 #reduceActionForModuleBody1: 37715969 false) 
	#(297 1 #reduceActionForModuleItemList1: 37747713 false) 
	#(295 2 #reduceActionForClassHeritage1: 37635073 false) 
	#(293 3 #reduceActionForClassExpression2: 37463042 false) 
	#(295 2 #reduceActionForClassHeritage4: 37635076 false) 
	#(295 2 #reduceActionForClassHeritage2: 37635074 false) 
	#(170 3 #reduceActionForImportMeta1: 14346241 false) 
	#(169 3 #reduceActionForNewTarget1: 14242817 false) 
	#(166 3 #reduceActionForMemberExpression7: 13322247 false) 
	#(175 2 #reduceActionForArguments1: 15333377 false) 
	#(176 1 #reduceActionForArgumentList1: 15518721 false) 
	#(167 3 #reduceActionForSuperProperty2: 13936642 false) 
	#(281 3 #reduceActionForYieldExpression3: 35303427 false) 
	#(153 3 #reduceActionForObjectLiteral1: 11496449 false) 
	#(156 1 #liftFirstValue: 12189697 false) 
	#(155 1 #reduceActionForNamespaceName1: 12054529 false) 
	#(156 1 #liftFirstValue: 12189698 false) 
	#(156 1 #liftFirstValue: 12189700 false) 
	#(166 3 #reduceActionForMemberExpression3: 13322243 false) 
	#(166 3 #reduceActionForMemberExpression3: 13322248 false) 
	#(180 1 #reduceActionForOptionalFirst3: 16446467 false) 
	#(180 1 #reduceActionForOptionalFirst3: 16446469 false) 
	#(180 1 #reduceActionForOptionalFirst4: 16446468 false) 
	#(180 1 #reduceActionForOptionalFirst1: 16446465 false) 
	#(178 2 #reduceActionForOptionalChain1: 15965185 false) 
	#(179 1 #reduceActionForOptionalFirst4: 16088068 false) 
	#(179 1 #reduceActionForOptionalFirst1: 16088065 false) 
	#(178 2 #reduceActionForOptionalChain2: 15965186 false) 
	#(172 3 #reduceActionForMemberExpression3: 14523398 false) 
	#(172 3 #reduceActionForMemberExpression3: 14523400 false) 
	#(200 3 #reduceActionForAssignmentExpression5: 21525509 false) 
	#(146 3 #reduceActionForPrimaryExpression16: 9580560 false) 
	#(184 3 #reduceActionForExponentiationExpression2: 17661954 false) 
	#(185 3 #reduceActionForExponentiationExpression2: 17831938 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18092034 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 18092035 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 18390018 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 18390019 false) 
	#(188 3 #reduceActionForExponentiationExpression2: 18390020 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 18775042 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 18775043 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 18775044 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 18775045 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 18775047 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 18775046 false) 
	#(190 3 #reduceActionForExponentiationExpression2: 19623938 false) 
	#(190 3 #reduceActionForExponentiationExpression2: 19623940 false) 
	#(190 3 #reduceActionForExponentiationExpression2: 19623939 false) 
	#(190 3 #reduceActionForExponentiationExpression2: 19623941 false) 
	#(191 3 #reduceActionForExponentiationExpression2: 20154370 false) 
	#(192 3 #reduceActionForExponentiationExpression2: 20318210 false) 
	#(193 3 #reduceActionForExponentiationExpression2: 20486146 false) 
	#(194 3 #reduceActionForExponentiationExpression2: 20653058 false) 
	#(195 3 #reduceActionForExponentiationExpression2: 20823042 false) 
	#(196 3 #reduceActionForExponentiationExpression2: 20993025 false) 
	#(202 3 #reduceActionForExpression2: 23303170 false) 
	#(266 0 #reduceActionForSourceFileElement__element__1: 33144833 false) 
	#(271 1 #liftFirstValue: 33554433 false) 
	#(267 3 #reduceActionForArrowFunction1: 33186817 false) 
	#(270 1 #reduceActionForImportClause1: 33439745 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 18775048 false) 
	#(361 0 #reduceActionForSwitchToDefault1: 45077505 true) 
	#(352 1 #reduceActionForModuleBody1: 44496897 false) 
	#(339 1 #reduceActionForJSXElementName1: 43353089 false) 
	#(339 1 #liftFirstValue: 43353090 false) 
	#(339 1 #liftFirstValue: 43353091 false) 
	#(343 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 43679745 false) 
	#(208 3 #reduceActionForBlock2: 24030210 false) 
	#(252 3 #reduceActionForThrowStatement1: 31563777 false) 
	#(253 3 #reduceActionForTryStatement1: 31660033 false) 
	#(253 3 #reduceActionForTryStatement2: 31660034 false) 
	#(218 2 #reduceActionForLexicalBinding2: 25010178 false) 
	#(216 3 #reduceActionForVariableStatement1: 24778753 false) 
	#(218 2 #reduceActionForLexicalBinding3: 25010179 false) 
	#(218 2 #liftSecondValue: 25010180 false) 
	#(218 2 #liftSecondValue: 25010181 false) 
	#(251 1 #liftFirstValue: 31469569 false) 
	#(250 3 #reduceActionForLabelledStatement1: 31370241 false) 
	#(484 1 #liftFirstValue: 68795393 false) 
	#(473 2 #reduceActionForAmbientDeclaration1: 66700289 false) 
	#(473 2 #reduceActionForAmbientDeclaration1: 66700290 false) 
	#(473 2 #reduceActionForAmbientDeclaration1: 66700291 false) 
	#(473 2 #reduceActionForAmbientDeclaration1: 66700292 false) 
	#(473 2 #reduceActionForAmbientDeclaration1: 66700293 false) 
	#(440 1 #reduceActionForNamespaceName1: 59068417 false) 
	#(376 3 #reduceActionForParenthesizedExpression1: 46497793 false) 
	#(396 2 #reduceActionForPropertySignature5: 48648197 false) 
	#(430 1 #liftFirstValue: 57581569 false) 
	#(430 1 #liftFirstValue: 57581570 false) 
	#(396 2 #reduceActionForPropertySignature2: 48648194 false) 
	#(406 2 #reduceActionForMethodSignature1: 52205569 false) 
	#(396 2 #reduceActionForPropertySignature3: 48648195 false) 
	#(381 3 #reduceActionForObjectType2: 46945282 false) 
	#(382 2 #reduceActionForOptionalChain2: 47027202 false) 
	#(382 2 #reduceActionForOptionalChain2: 47027204 false) 
	#(386 3 #reduceActionForTupleType2: 47521794 false) 
	#(386 3 #reduceActionForTupleType3: 47521795 false) 
	#(364 2 #reduceActionForTypeParameter2: 45423618 false) 
	#(362 3 #reduceActionForTypeParameters1: 45232129 false) 
	#(386 3 #reduceActionForTupleType5: 47521797 false) 
	#(389 3 #reduceActionForUnionType1: 47804417 false) 
	#(390 3 #reduceActionForIntersectionType1: 47925249 false) 
	#(378 3 #reduceActionForTypeReference2: 46638082 false) 
	#(379 3 #reduceActionForTypeName2: 46734338 false) 
	#(380 3 #reduceActionForNamespaceName2: 46840834 false) 
	#(305 1 #reduceActionForModuleBody1: 38859778 false) 
	#(304 1 #reduceActionForModuleBody1: 38803457 false) 
	#(298 3 #reduceActionForClassElement7: 37835783 false) 
	#(161 2 #reduceActionForInitializer1: 12831745 false) 
	#(432 2 #reduceActionForMemberAccessorDeclaration1: 58126337 false) 
	#(432 2 #reduceActionForMemberAccessorDeclaration1: 58126341 false) 
	#(433 2 #reduceActionForIndexMemberDeclaration1: 58402817 false) 
	#(325 3 #reduceActionForNamedExports2: 41542658 false) 
	#(324 3 #reduceActionForExportFromClause2: 41435138 false) 
	#(323 4 #reduceActionForExportDeclaration5: 40641541 false) 
	#(490 2 #reduceActionForDecoratorExpression2: 70437890 false) 
	#(490 2 #reduceActionForDecoratorExpression2: 70437889 false) 
	#(291 3 #reduceActionForClassDeclaration1: 37267457 false) 
	#(318 2 #reduceActionForInitializer1: 40126465 false) 
	#(323 4 #reduceActionForExportDeclaration1: 40641537 false) 
	#(317 3 #reduceActionForNamedImports2: 39895042 false) 
	#(316 3 #reduceActionForNameSpaceImport1: 39814145 false) 
	#(313 4 #reduceActionForImportDeclaration1: 39236609 false) 
	#(314 3 #reduceActionForImportClause4: 39408644 false) 
	#(314 3 #reduceActionForImportClause4: 39408645 false) 
	#(314 3 #reduceActionForImportClause6: 39408646 false) 
	#(314 3 #reduceActionForImportClause6: 39408647 false) 
	#(222 2 #reduceActionForBindingRestProperty1: 25988097 false) 
	#(220 3 #reduceActionForObjectBindingPattern2: 25234434 false) 
	#(220 3 #reduceActionForObjectBindingPattern3: 25234435 false) 
	#(221 3 #reduceActionForArrayBindingPattern3: 25622531 false) 
	#(225 2 #reduceActionForBindingElisionElement2: 26287106 false) 
	#(221 3 #reduceActionForArrayBindingPattern5: 25622533 false) 
	#(221 3 #reduceActionForArrayBindingPattern2: 25622530 false) 
	#(214 3 #reduceActionForNamespaceName2: 24525826 false) 
	#(415 3 #reduceActionForSimpleLexicalBinding1: 55373825 false) 
	#(416 3 #reduceActionForDestructuringLexicalBinding1: 55483393 false) 
	#(229 3 #reduceActionForBindingRestElement3: 26658819 false) 
	#(259 3 #reduceActionForFormalParameters5: 32275461 false) 
	#(260 3 #reduceActionForNamespaceName2: 32477186 false) 
	#(228 3 #reduceActionForSimpleLexicalBinding1: 26572803 false) 
	#(228 3 #reduceActionForSingleNameBinding9: 26572809 false) 
	#(401 0 #nil 49627140 false) 
	#(228 3 #reduceActionForSingleNameBinding7: 26572807 false) 
	#(149 4 #reduceActionForArrayLiteral4: 10863620 false) 
	#(150 3 #reduceActionForElementList6: 11124742 false) 
	#(150 3 #reduceActionForElementList6: 11124741 false) 
	#(274 1 #reduceActionForImportClause1: 33789953 false) 
	#(273 4 #reduceActionForAsyncArrowFunction1: 33687553 false) 
	#(294 3 #reduceActionForClassTail2: 37542914 false) 
	#(297 2 #reduceActionForModuleItemList2: 37747714 false) 
	#(294 3 #reduceActionForClassTail3: 37542915 false) 
	#(422 1 #liftFirstValue: 56495105 false) 
	#(421 2 #reduceActionForInitializer1: 56435713 false) 
	#(420 1 #liftFirstValue: 56288257 false) 
	#(423 2 #reduceActionForImplementsClause1: 56537089 false) 
	#(419 1 #reduceActionForNamespaceName1: 56157185 false) 
	#(295 3 #reduceActionForClassHeritage3: 37635075 false) 
	#(174 4 #reduceActionForImportCall1: 15193089 false) 
	#(176 2 #reduceActionForArgumentList2: 15518722 false) 
	#(175 3 #reduceActionForArguments2: 15333378 false) 
	#(167 4 #reduceActionForSuperProperty1: 13936641 false) 
	#(367 1 #reduceActionForNamespaceName1: 45608961 false) 
	#(368 1 #liftFirstValue: 45715457 false) 
	#(156 2 #reduceActionForPropertyDefinition5: 12189701 false) 
	#(160 2 #reduceActionForCoverInitializedName1: 12748801 false) 
	#(153 4 #reduceActionForObjectLiteral2: 11496450 false) 
	#(164 1 #reduceActionForNamespaceName1: 13089793 false) 
	#(162 4 #reduceActionForTemplateLiteral2: 12896258 false) 
	#(166 4 #reduceActionForMemberExpression2: 13322242 false) 
	#(179 2 #reduceActionForOptionalRest3: 16088067 false) 
	#(179 2 #reduceActionForOptionalRest3: 16088069 false) 
	#(172 4 #reduceActionForMemberExpression2: 14523397 false) 
	#(412 4 #reduceActionForAsExpression1: 54719489 false) 
	#(266 1 #reduceActionForModuleBody1: 33144834 false) 
	#(265 1 #reduceActionForModuleBody1: 33103873 false) 
	#(334 4 #reduceActionForJSXElement2: 42440706 false) 
	#(354 1 #reduceActionForJSXChild1: 44531713 false) 
	#(354 1 #liftFirstValue: 44531714 false) 
	#(353 2 #reduceActionForModuleItemList2: 44511234 false) 
	#(342 2 #reduceActionForInitializer1: 43679745 false) 
	#(359 0 #reduceActionForSwitchToJSXTextOrDefault11: 44944385 true) 
	#(349 1 #reduceActionForJSXElementName1: 44103681 false) 
	#(349 1 #liftFirstValue: 44103682 false) 
	#(346 1 #reduceActionForModuleItemList1: 43806721 false) 
	#(344 1 #reduceActionForModuleBody1: 43790337 false) 
	#(345 1 #liftFirstValue: 43806721 false) 
	#(345 1 #liftFirstValue: 43806722 false) 
	#(348 1 #reduceActionForJSXAttribute1: 44020737 false) 
	#(341 2 #reduceActionForJSXMemberExpression1: 43657217 false) 
	#(343 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 43679746 false) 
	#(336 4 #reduceActionForJSXOpeningElement3: 42774531 false) 
	#(412 4 #reduceActionForAsExpression1: 54719490 false) 
	#(408 3 #reduceActionForArrowFormalParameters1: 52910083 false) 
	#(241 4 #reduceActionForBreakStatement2: 30400514 false) 
	#(240 4 #reduceActionForContinueStatement2: 30283778 false) 
	#(239 1 #liftFirstValue: 30236673 false) 
	#(239 1 #liftFirstValue: 30236674 false) 
	#(238 2 #reduceActionForInitializer1: 30172161 false) 
	#(243 4 #reduceActionForReturnStatement2: 30544898 false) 
	#(254 2 #reduceActionForCatch2: 31831042 false) 
	#(255 2 #reduceActionForInitializer1: 31998977 false) 
	#(253 4 #reduceActionForTryStatement3: 31660035 false) 
	#(217 3 #reduceActionForNamespaceName2: 24873986 false) 
	#(413 2 #reduceActionForSimpleVariableDeclaration1: 55073793 false) 
	#(476 1 #reduceActionForArrowParameterDeclaration1: 67497985 false) 
	#(475 1 #reduceActionForNamespaceName1: 67385345 false) 
	#(486 0 #reduceActionForSourceFileElement__element__1: 69139457 false) 
	#(471 3 #reduceActionForExportListDeclaration5: 66231301 false) 
	#(417 3 #reduceActionForInterfaceDeclaration1: 55916545 false) 
	#(441 0 #reduceActionForSourceFileElement__element__1: 59173889 false) 
	#(467 3 #reduceActionForExportImplementationElement3: 63540227 false) 
	#(467 3 #reduceActionForExportImplementationElement3: 63540226 false) 
	#(467 3 #reduceActionForExportImplementationElement3: 63540225 false) 
	#(467 3 #reduceActionForExportImplementationElement3: 63540228 false) 
	#(467 3 #reduceActionForExportImplementationElement3: 63540234 false) 
	#(468 3 #reduceActionForExportDeclarationElement2: 64804866 false) 
	#(467 3 #reduceActionForExportImplementationElement3: 63540230 false) 
	#(468 3 #reduceActionForExportDeclarationElement2: 64804865 false) 
	#(467 3 #reduceActionForExportImplementationElement3: 63540229 false) 
	#(467 3 #reduceActionForExportImplementationElement3: 63540231 false) 
	#(467 3 #reduceActionForExportImplementationElement3: 63540232 false) 
	#(468 3 #reduceActionForExportDeclarationElement2: 64804868 false) 
	#(467 3 #reduceActionForExportImplementationElement3: 63540233 false) 
	#(468 3 #reduceActionForExportDeclarationElement2: 64804867 false) 
	#(398 3 #reduceActionForCallSignature1: 48885761 false) 
	#(159 3 #reduceActionForComputedPropertyName1: 12627969 false) 
	#(396 3 #reduceActionForPropertySignature6: 48648198 false) 
	#(396 3 #reduceActionForPropertySignature7: 48648199 false) 
	#(397 2 #reduceActionForInitializer1: 48832513 false) 
	#(396 3 #reduceActionForPropertySignature4: 48648196 false) 
	#(406 3 #reduceActionForMethodSignature2: 52205570 false) 
	#(383 3 #reduceActionForNamespaceName2: 47123458 false) 
	#(383 3 #reduceActionForNamespaceName2: 47123459 false) 
	#(386 4 #reduceActionForTupleType4: 47521796 false) 
	#(387 3 #reduceActionForNamespaceName2: 47669250 false) 
	#(365 2 #reduceActionForInitializer1: 45477889 false) 
	#(363 3 #reduceActionForNamespaceName2: 45310978 false) 
	#(386 4 #reduceActionForTupleType6: 47521798 false) 
	#(386 4 #reduceActionForTupleType7: 47521799 false) 
	#(394 3 #reduceActionForTypeQueryExpression2: 48486402 false) 
	#(385 4 #reduceActionForArrayType1: 47385601 false) 
	#(276 1 #liftFirstValue: 34521089 false) 
	#(303 4 #reduceActionForClassStaticBlock1: 38680577 false) 
	#(432 3 #reduceActionForMemberAccessorDeclaration2: 58126338 false) 
	#(432 3 #reduceActionForMemberAccessorDeclaration2: 58126342 false) 
	#(432 3 #reduceActionForMemberAccessorDeclaration3: 58126339 false) 
	#(432 3 #reduceActionForMemberAccessorDeclaration3: 58126343 false) 
	#(400 1 #liftFirstValue: 49545218 false) 
	#(428 1 #liftFirstValue: 57410562 false) 
	#(428 1 #liftFirstValue: 57410561 false) 
	#(400 1 #liftFirstValue: 49545217 false) 
	#(429 2 #reduceActionForModuleItemList2: 57410562 false) 
	#(327 3 #reduceActionForExportSpecifier2: 41863170 false) 
	#(325 4 #reduceActionForNamedExports3: 41542659 false) 
	#(326 3 #reduceActionForNamespaceName2: 41758722 false) 
	#(291 4 #reduceActionForClassDeclaration3: 37267459 false) 
	#(291 4 #reduceActionForClassDeclaration5: 37267461 false) 
	#(263 4 #reduceActionForFunctionDeclaration5: 32680965 false) 
	#(320 3 #reduceActionForImportSpecifier2: 40282114 false) 
	#(317 4 #reduceActionForNamedImports3: 39895043 false) 
	#(319 3 #reduceActionForNamespaceName2: 40177666 false) 
	#(320 3 #reduceActionForImportSpecifier3: 40282115 false) 
	#(226 3 #reduceActionForBindingProperty2: 26348546 false) 
	#(220 4 #reduceActionForObjectBindingPattern4: 25234436 false) 
	#(223 3 #reduceActionForNamespaceName2: 26059778 false) 
	#(221 4 #reduceActionForArrayBindingPattern4: 25622532 false) 
	#(221 4 #reduceActionForArrayBindingPattern6: 25622534 false) 
	#(224 3 #reduceActionForBindingElementList2: 26178562 false) 
	#(415 4 #reduceActionForSimpleLexicalBinding2: 55373826 false) 
	#(416 4 #reduceActionForDestructuringLexicalBinding2: 55483394 false) 
	#(228 4 #reduceActionForSimpleLexicalBinding2: 26572804 false) 
	#(401 1 #reduceActionForIdentifier1: 49627138 false) 
	#(401 1 #liftFirstValue: 49627137 false) 
	#(401 1 #liftFirstValue: 49627139 false) 
	#(399 2 #reduceActionForModuleItemList2: 49132546 false) 
	#(227 4 #reduceActionForBindingElement6: 26462214 false) 
	#(228 4 #reduceActionForSingleNameBinding8: 26572808 false) 
	#(228 4 #reduceActionForSingleNameBinding5: 26572805 false) 
	#(228 4 #reduceActionForSingleNameBinding10: 26572810 false) 
	#(289 1 #reduceActionForModuleBody1: 37154817 false) 
	#(294 4 #reduceActionForClassTail4: 37542916 false) 
	#(175 4 #reduceActionForArguments3: 15333379 false) 
	#(176 3 #reduceActionForArgumentList3: 15518723 false) 
	#(366 3 #reduceActionForTypeArguments1: 45531137 false) 
	#(175 4 #reduceActionForArguments4: 15333380 false) 
	#(153 5 #reduceActionForObjectLiteral3: 11496451 false) 
	#(155 3 #reduceActionForNamespaceName2: 12054530 false) 
	#(156 3 #reduceActionForPropertyDefinition3: 12189699 false) 
	#(165 2 #reduceActionForTemplateMiddleList1: 13176833 false) 
	#(164 2 #reduceActionForTemplateSpans2: 13089794 false) 
	#(180 3 #reduceActionForOptionalFirst2: 16446466 false) 
	#(179 3 #reduceActionForOptionalFirst2: 16088066 false) 
	#(199 5 #reduceActionForConditionalExpression2: 21298178 false) 
	#(270 3 #reduceActionForConciseBody2: 33439746 false) 
	#(340 3 #reduceActionForJSXNamespacedName1: 43533313 false) 
	#(346 2 #reduceActionForModuleItemList2: 43806722 false) 
	#(348 2 #reduceActionForJSXAttribute2: 44020738 false) 
	#(336 5 #reduceActionForJSXOpeningElement1: 42774529 false) 
	#(408 4 #reduceActionForTypeCallSignature1: 52910081 false) 
	#(183 5 #reduceActionForUnaryExpression10: 17209354 false) 
	#(408 4 #reduceActionForTypeCallSignature4: 52910084 false) 
	#(232 5 #reduceActionForIfStatement2: 26971138 false) 
	#(245 5 #reduceActionForSwitchStatement1: 30792705 false) 
	#(256 1 #liftFirstValue: 32059393 false) 
	#(256 1 #liftFirstValue: 32059395 false) 
	#(413 3 #reduceActionForSimpleVariableDeclaration2: 55073794 false) 
	#(414 3 #reduceActionForDestructuringVariableDeclaration1: 55179265 false) 
	#(235 5 #reduceActionForWhileStatement1: 27548673 false) 
	#(244 5 #reduceActionForWithStatement1: 30660609 false) 
	#(479 0 #reduceActionForSourceFileElement__element__1: 67938305 false) 
	#(476 2 #reduceActionForAmbientBinding2: 67497986 false) 
	#(474 3 #reduceActionForLexicalDeclaration1: 67089411 false) 
	#(488 1 #reduceActionForAmbientNamespaceElement3: 69318659 false) 
	#(488 1 #reduceActionForAmbientNamespaceElement3: 69318665 false) 
	#(488 1 #reduceActionForAmbientNamespaceElement3: 69318671 false) 
	#(488 1 #reduceActionForAmbientNamespaceElement3: 69318657 false) 
	#(488 1 #reduceActionForAmbientNamespaceElement3: 69318661 false) 
	#(488 1 #reduceActionForAmbientNamespaceElement3: 69318663 false) 
	#(488 1 #reduceActionForAmbientNamespaceElement3: 69318667 false) 
	#(488 1 #reduceActionForAmbientNamespaceElement3: 69318669 false) 
	#(486 1 #reduceActionForModuleBody1: 69139458 false) 
	#(487 1 #reduceActionForModuleItemList1: 69191681 false) 
	#(474 3 #reduceActionForLexicalDeclaration1: 67089410 false) 
	#(463 0 #reduceActionForSourceFileElement__element__1: 62903297 false) 
	#(474 3 #reduceActionForLexicalDeclaration1: 67089409 false) 
	#(434 4 #reduceActionForEnumDeclaration1: 58493953 false) 
	#(437 1 #reduceActionForEnumMember1: 58779649 false) 
	#(435 1 #reduceActionForModuleBody1: 58641409 false) 
	#(436 1 #reduceActionForNamespaceName1: 58687489 false) 
	#(472 4 #reduceActionForExportAssignment1: 66568193 false) 
	#(471 4 #reduceActionForExportListDeclaration1: 66231297 false) 
	#(471 4 #reduceActionForExportListDeclaration3: 66231299 false) 
	#(446 1 #reduceActionForModuleBody1: 60468225 false) 
	#(418 2 #reduceActionForInitializer1: 56072193 false) 
	#(417 4 #reduceActionForInterfaceDeclaration3: 55916547 false) 
	#(417 4 #reduceActionForInterfaceDeclaration2: 55916546 false) 
	#(443 1 #liftFirstValue: 59310081 false) 
	#(443 1 #liftFirstValue: 59310082 false) 
	#(443 1 #liftFirstValue: 59310083 false) 
	#(443 1 #liftFirstValue: 59310084 false) 
	#(443 1 #liftFirstValue: 59310085 false) 
	#(443 1 #liftFirstValue: 59310087 false) 
	#(443 1 #liftFirstValue: 59310086 false) 
	#(443 1 #liftFirstValue: 59310088 false) 
	#(443 1 #liftFirstValue: 59310089 false) 
	#(441 1 #reduceActionForModuleBody1: 59173890 false) 
	#(442 1 #reduceActionForModuleItemList1: 59211777 false) 
	#(443 1 #liftFirstValue: 59310092 false) 
	#(443 1 #liftFirstValue: 59310091 false) 
	#(443 1 #liftFirstValue: 59310090 false) 
	#(440 3 #reduceActionForNamespaceName2: 59068418 false) 
	#(469 4 #reduceActionForExportDefaultImplementationElement1: 65233921 false) 
	#(469 4 #reduceActionForExportDefaultImplementationElement1: 65233922 false) 
	#(469 4 #reduceActionForExportDefaultImplementationElement1: 65233923 false) 
	#(470 4 #reduceActionForExportDefaultDeclarationElement1: 65795073 false) 
	#(470 4 #reduceActionForExportDefaultDeclarationElement1: 65795074 false) 
	#(391 5 #reduceActionForFunctionType1: 48031745 false) 
	#(398 4 #reduceActionForCallSignature2: 48885762 false) 
	#(404 4 #reduceActionForConstructSignature1: 51712001 false) 
	#(396 4 #reduceActionForPropertySignature8: 48648200 false) 
	#(398 4 #reduceActionForCallSignature3: 48885763 false) 
	#(386 5 #reduceActionForTupleType8: 47521800 false) 
	#(385 5 #reduceActionForArrayType2: 47385602 false) 
	#(374 5 #reduceActionForIndexedAccessType1: 46294017 false) 
	#(403 1 #liftFirstValue: 51033089 false) 
	#(403 1 #liftFirstValue: 51033090 false) 
	#(275 5 #reduceActionForMethodDefinition9: 33910793 false) 
	#(424 4 #reduceActionForConstructorDeclaration3: 56615939 false) 
	#(431 4 #reduceActionForMemberFunctionDeclaration9: 57668617 false) 
	#(432 4 #reduceActionForMemberAccessorDeclaration4: 58126340 false) 
	#(432 4 #reduceActionForMemberAccessorDeclaration4: 58126344 false) 
	#(291 5 #reduceActionForClassDeclaration2: 37267458 false) 
	#(291 5 #reduceActionForClassDeclaration7: 37267463 false) 
	#(263 5 #reduceActionForFunctionDeclaration6: 32680966 false) 
	#(220 5 #reduceActionForObjectBindingPattern5: 25234437 false) 
	#(221 5 #reduceActionForArrayBindingPattern8: 25622536 false) 
	#(221 5 #reduceActionForArrayBindingPattern7: 25622535 false) 
	#(323 6 #reduceActionForExportDeclaration6: 40641542 false) 
	#(227 5 #reduceActionForBindingElement7: 26462215 false) 
	#(227 5 #reduceActionForBindingElement4: 26462212 false) 
	#(227 5 #reduceActionForBindingElement8: 26462216 false) 
	#(228 5 #reduceActionForSingleNameBinding6: 26572806 false) 
	#(274 3 #reduceActionForConciseBody2: 33789954 false) 
	#(419 3 #reduceActionForNamespaceName2: 56157186 false) 
	#(176 4 #reduceActionForArgumentList4: 15518724 false) 
	#(367 3 #reduceActionForNamespaceName2: 45608962 false) 
	#(175 5 #reduceActionForArguments5: 15333381 false) 
	#(175 5 #reduceActionForArguments6: 15333382 false) 
	#(165 3 #reduceActionForTemplateMiddleList2: 13176834 false) 
	#(360 0 #reduceActionForSwitchToJSXTextOrDefault21: 45010945 true) 
	#(355 1 #liftFirstValue: 44764162 false) 
	#(355 1 #liftFirstValue: 44764161 false) 
	#(335 6 #reduceActionForJSXSelfClosingElement1: 42591233 false) 
	#(336 6 #reduceActionForJSXOpeningElement2: 42774530 false) 
	#(351 1 #reduceActionForLiteral4: 44268545 false) 
	#(351 1 #liftFirstValue: 44268547 false) 
	#(351 1 #liftFirstValue: 44268548 false) 
	#(350 2 #reduceActionForInitializer1: 44194817 false) 
	#(264 6 #reduceActionForFunctionExpression3: 32892931 false) 
	#(408 5 #reduceActionForTypeCallSignature2: 52910082 false) 
	#(236 6 #reduceActionForForStatement1: 27697153 false) 
	#(236 6 #reduceActionForForStatement13: 27697165 false) 
	#(246 2 #reduceActionForCaseBlock1: 30918657 false) 
	#(247 1 #reduceActionForModuleItemList1: 31102977 false) 
	#(434 5 #reduceActionForEnumDeclaration3: 58493955 false) 
	#(481 1 #liftFirstValue: 68113411 false) 
	#(479 1 #reduceActionForModuleBody1: 67938306 false) 
	#(480 1 #reduceActionForModuleItemList1: 67986433 false) 
	#(481 1 #liftFirstValue: 68113409 false) 
	#(481 1 #liftFirstValue: 68113410 false) 
	#(475 3 #reduceActionForNamespaceName2: 67385346 false) 
	#(477 4 #reduceActionForAmbientFunctionDeclaration1: 67580929 false) 
	#(488 2 #reduceActionForAmbientNamespaceElement4: 69318660 false) 
	#(488 2 #reduceActionForAmbientNamespaceElement4: 69318666 false) 
	#(488 2 #reduceActionForAmbientNamespaceElement4: 69318672 false) 
	#(488 2 #reduceActionForAmbientNamespaceElement4: 69318658 false) 
	#(488 2 #reduceActionForAmbientNamespaceElement4: 69318662 false) 
	#(488 2 #reduceActionForAmbientNamespaceElement4: 69318664 false) 
	#(488 2 #reduceActionForAmbientNamespaceElement4: 69318668 false) 
	#(488 2 #reduceActionForAmbientNamespaceElement4: 69318670 false) 
	#(485 4 #reduceActionForAmbientNamespaceDeclaration2: 68839426 false) 
	#(487 2 #reduceActionForModuleItemList2: 69191682 false) 
	#(465 1 #liftFirstValue: 63084546 false) 
	#(459 1 #liftFirstValue: 62284802 false) 
	#(459 1 #liftFirstValue: 62284801 false) 
	#(459 1 #liftFirstValue: 62284803 false) 
	#(459 1 #liftFirstValue: 62284805 false) 
	#(465 1 #liftFirstValue: 63084545 false) 
	#(463 1 #reduceActionForModuleBody1: 62903298 false) 
	#(464 1 #reduceActionForModuleItemList1: 62953473 false) 
	#(465 1 #liftFirstValue: 63084547 false) 
	#(465 1 #liftFirstValue: 63084548 false) 
	#(465 1 #liftFirstValue: 63084549 false) 
	#(465 1 #liftFirstValue: 63084550 false) 
	#(459 1 #liftFirstValue: 62284804 false) 
	#(434 5 #reduceActionForEnumDeclaration2: 58493954 false) 
	#(435 2 #reduceActionForOptionalChain2: 58641410 false) 
	#(471 5 #reduceActionForExportListDeclaration6: 66231302 false) 
	#(445 5 #reduceActionForImportAliasDeclaration1: 60333057 false) 
	#(417 5 #reduceActionForInterfaceDeclaration4: 55916548 false) 
	#(489 5 #reduceActionForAmbientModuleDeclaration2: 70090754 false) 
	#(444 2 #reduceActionForAmbientNamespaceElement4: 59590658 false) 
	#(444 2 #reduceActionForAmbientNamespaceElement4: 59590657 false) 
	#(444 2 #reduceActionForAmbientNamespaceElement4: 59590659 false) 
	#(444 2 #reduceActionForAmbientNamespaceElement4: 59590660 false) 
	#(444 2 #reduceActionForAmbientNamespaceElement4: 59590661 false) 
	#(444 2 #reduceActionForAmbientNamespaceElement4: 59590663 false) 
	#(444 2 #reduceActionForAmbientNamespaceElement4: 59590662 false) 
	#(444 2 #reduceActionForAmbientNamespaceElement4: 59590664 false) 
	#(444 2 #reduceActionForAmbientNamespaceElement4: 59590665 false) 
	#(444 2 #reduceActionForAmbientNamespaceElement4: 59590667 false) 
	#(444 2 #reduceActionForAmbientNamespaceElement4: 59590666 false) 
	#(439 5 #reduceActionForNamespaceDeclaration1: 58927105 false) 
	#(442 2 #reduceActionForModuleItemList2: 59211778 false) 
	#(407 5 #reduceActionForTypeAliasDeclaration1: 52297729 false) 
	#(470 5 #reduceActionForExportDefaultDeclarationElement3: 65795075 false) 
	#(469 5 #reduceActionForExportDefaultImplementationElement4: 65233924 false) 
	#(404 5 #reduceActionForConstructSignature2: 51712002 false) 
	#(404 5 #reduceActionForConstructSignature3: 51712003 false) 
	#(398 5 #reduceActionForCallSignature4: 48885764 false) 
	#(392 6 #reduceActionForConstructorType1: 48211969 false) 
	#(391 6 #reduceActionForFunctionType2: 48031746 false) 
	#(411 2 #reduceActionForTypedPropertySetParameterList1: 54022145 false) 
	#(275 6 #reduceActionForMethodDefinition7: 33910791 false) 
	#(431 5 #reduceActionForMemberFunctionDeclaration10: 57668618 false) 
	#(425 3 #reduceActionForCallSignature1: 57080833 false) 
	#(431 5 #reduceActionForMemberFunctionDeclaration11: 57668619 false) 
	#(424 5 #reduceActionForConstructorDeclaration4: 56615940 false) 
	#(431 5 #reduceActionForMemberFunctionDeclaration13: 57668621 false) 
	#(427 5 #reduceActionForMemberVariableDeclaration1: 57348097 false) 
	#(291 6 #reduceActionForClassDeclaration4: 37267460 false) 
	#(291 6 #reduceActionForClassDeclaration6: 37267462 false) 
	#(263 6 #reduceActionForFunctionExpression3: 32680963 false) 
	#(320 5 #reduceActionForImportSpecifier4: 40282116 false) 
	#(221 6 #reduceActionForArrayBindingPattern9: 25622537 false) 
	#(227 6 #reduceActionForBindingElement5: 26462213 false) 
	#(227 6 #reduceActionForBindingElement9: 26462217 false) 
	#(264 7 #reduceActionForFunctionExpression1: 32892929 false) 
	#(280 1 #reduceActionForModuleBody1: 35271681 false) 
	#(175 6 #reduceActionForArguments7: 15333383 false) 
	#(354 4 #reduceActionForJSXChild3: 44531715 false) 
	#(335 7 #reduceActionForJSXSelfClosingElement2: 42591234 false) 
	#(264 7 #reduceActionForFunctionExpression4: 32892932 false) 
	#(234 7 #reduceActionForDoWhileStatement1: 27356161 false) 
	#(236 7 #reduceActionForForStatement2: 27697154 false) 
	#(236 7 #reduceActionForForStatement3: 27697155 false) 
	#(237 7 #reduceActionForForInOfStatement1: 28469249 false) 
	#(237 7 #reduceActionForForInOfStatement4: 28469252 false) 
	#(236 7 #reduceActionForForStatement5: 27697157 false) 
	#(236 7 #reduceActionForForStatement14: 27697166 false) 
	#(236 7 #reduceActionForForStatement15: 27697167 false) 
	#(237 7 #reduceActionForForInOfStatement3: 28469251 false) 
	#(237 7 #reduceActionForForInOfStatement6: 28469254 false) 
	#(232 7 #reduceActionForIfStatement1: 26971137 false) 
	#(249 2 #reduceActionForDefaultClause1: 31282177 false) 
	#(246 3 #reduceActionForCaseBlock2: 30918658 false) 
	#(247 2 #reduceActionForModuleItemList2: 31102978 false) 
	#(246 3 #reduceActionForCaseBlock3: 30918659 false) 
	#(256 3 #liftFirstValue: 32059394 false) 
	#(254 5 #reduceActionForCatch1: 31831041 false) 
	#(434 6 #reduceActionForEnumDeclaration4: 58493956 false) 
	#(478 5 #reduceActionForAmbientClassDeclaration1: 67728385 false) 
	#(480 2 #reduceActionForModuleItemList2: 67986434 false) 
	#(489 6 #reduceActionForAmbientModuleDeclaration3: 70090755 false) 
	#(489 6 #reduceActionForAmbientModuleDeclaration1: 70090753 false) 
	#(464 2 #reduceActionForModuleItemList2: 62953474 false) 
	#(485 5 #reduceActionForNamespaceDeclaration1: 68839425 false) 
	#(438 1 #liftFirstValue: 58885121 false) 
	#(437 3 #reduceActionForEnumMember2: 58779650 false) 
	#(436 3 #reduceActionForNamespaceName2: 58687490 false) 
	#(471 6 #reduceActionForExportListDeclaration2: 66231298 false) 
	#(471 6 #reduceActionForExportListDeclaration4: 66231300 false) 
	#(407 6 #reduceActionForTypeAliasDeclaration2: 52297730 false) 
	#(407 6 #reduceActionForTypeAliasDeclaration3: 52297731 false) 
	#(405 6 #reduceActionForIndexSignature2: 51904514 false) 
	#(405 6 #reduceActionForIndexSignature2: 51904513 false) 
	#(404 6 #reduceActionForConstructSignature4: 51712004 false) 
	#(392 7 #reduceActionForConstructorType2: 48211970 false) 
	#(275 7 #reduceActionForMethodDefinition5: 33910789 false) 
	#(275 7 #reduceActionForMethodDefinition1: 33910785 false) 
	#(275 7 #reduceActionForMethodDefinition8: 33910792 false) 
	#(425 4 #reduceActionForCallSignature2: 57080834 false) 
	#(424 6 #reduceActionForConstructorDeclaration1: 56615937 false) 
	#(431 6 #reduceActionForMemberFunctionDeclaration12: 57668620 false) 
	#(431 6 #reduceActionForMemberFunctionDeclaration1: 57668609 false) 
	#(431 6 #reduceActionForMemberFunctionDeclaration14: 57668622 false) 
	#(431 6 #reduceActionForMemberFunctionDeclaration15: 57668623 false) 
	#(427 6 #reduceActionForMemberVariableDeclaration2: 57348098 false) 
	#(427 6 #reduceActionForMemberVariableDeclaration3: 57348099 false) 
	#(427 6 #reduceActionForMemberVariableDeclaration5: 57348101 false) 
	#(263 7 #reduceActionForFunctionExpression1: 32680961 false) 
	#(291 7 #reduceActionForClassDeclaration8: 37267464 false) 
	#(263 7 #reduceActionForFunctionExpression4: 32680964 false) 
	#(287 8 #reduceActionForAsyncFunctionExpression1: 36593665 false) 
	#(285 1 #reduceActionForModuleBody1: 36242433 false) 
	#(278 8 #reduceActionForGeneratorExpression1: 34816001 false) 
	#(264 8 #reduceActionForFunctionExpression2: 32892930 false) 
	#(337 5 #reduceActionForJSXClosingElement1: 43003905 false) 
	#(354 5 #reduceActionForJSXChild4: 44531716 false) 
	#(347 5 #reduceActionForJSXSpreadAttribute1: 43871233 false) 
	#(236 8 #reduceActionForForStatement4: 27697156 false) 
	#(236 8 #reduceActionForForStatement9: 27697161 false) 
	#(237 8 #reduceActionForForInOfStatement2: 28469250 false) 
	#(237 8 #reduceActionForForInOfStatement5: 28469253 false) 
	#(236 8 #reduceActionForForStatement6: 27697158 false) 
	#(236 8 #reduceActionForForStatement7: 27697159 false) 
	#(236 8 #reduceActionForForStatement16: 27697168 false) 
	#(237 8 #reduceActionForForInOfStatement7: 28469255 false) 
	#(237 8 #reduceActionForForInOfStatement9: 28469257 false) 
	#(248 3 #reduceActionForCaseClause1: 31175681 false) 
	#(249 3 #reduceActionForDefaultClause2: 31282178 false) 
	#(246 4 #reduceActionForCaseBlock5: 30918661 false) 
	#(246 4 #reduceActionForCaseBlock4: 30918660 false) 
	#(482 3 #reduceActionForAmbientConstructorDeclaration1: 68226049 false) 
	#(478 6 #reduceActionForAmbientClassDeclaration2: 67728386 false) 
	#(478 6 #reduceActionForAmbientClassDeclaration3: 67728387 false) 
	#(407 7 #reduceActionForTypeAliasDeclaration4: 52297732 false) 
	#(279 8 #reduceActionForGeneratorMethod1: 35051521 false) 
	#(288 8 #reduceActionForAsyncMethod1: 36908033 false) 
	#(275 8 #reduceActionForMethodDefinition6: 33910790 false) 
	#(409 8 #reduceActionForGetAccessor1: 53273601 false) 
	#(431 7 #reduceActionForMemberFunctionDeclaration2: 57668610 false) 
	#(431 7 #reduceActionForMemberFunctionDeclaration3: 57668611 false) 
	#(424 7 #reduceActionForConstructorDeclaration2: 56615938 false) 
	#(431 7 #reduceActionForMemberFunctionDeclaration16: 57668624 false) 
	#(431 7 #reduceActionForMemberFunctionDeclaration5: 57668613 false) 
	#(427 7 #reduceActionForMemberVariableDeclaration4: 57348100 false) 
	#(427 7 #reduceActionForMemberVariableDeclaration6: 57348102 false) 
	#(427 7 #reduceActionForMemberVariableDeclaration7: 57348103 false) 
	#(286 8 #reduceActionForAsyncFunctionExpression1: 36279297 false) 
	#(277 8 #reduceActionForGeneratorExpression1: 34579457 false) 
	#(263 8 #reduceActionForFunctionExpression2: 32680962 false) 
	#(283 9 #reduceActionForAsyncGeneratorExpression1: 35710977 false) 
	#(287 9 #reduceActionForAsyncFunctionExpression5: 36593669 false) 
	#(278 9 #reduceActionForGeneratorExpression2: 34816002 false) 
	#(338 9 #reduceActionForJSXFragment1: 43164673 false) 
	#(337 6 #reduceActionForJSXClosingElement2: 43003906 false) 
	#(236 9 #reduceActionForForStatement10: 27697162 false) 
	#(236 9 #reduceActionForForStatement11: 27697163 false) 
	#(236 9 #reduceActionForForStatement8: 27697160 false) 
	#(237 9 #reduceActionForForInOfStatement8: 28469256 false) 
	#(248 4 #reduceActionForCaseClause2: 31175682 false) 
	#(246 5 #reduceActionForCaseBlock6: 30918662 false) 
	#(482 4 #reduceActionForAmbientConstructorDeclaration2: 68226050 false) 
	#(483 4 #reduceActionForAmbientPropertyMemberDeclaration1: 68447233 false) 
	#(483 4 #reduceActionForAmbientPropertyMemberDeclaration3: 68447235 false) 
	#(478 7 #reduceActionForAmbientClassDeclaration4: 67728388 false) 
	#(466 8 #reduceActionForImportRequireDeclaration1: 63321089 false) 
	#(284 9 #reduceActionForAsyncGeneratorMethod1: 35985409 false) 
	#(409 9 #reduceActionForGetAccessor2: 53273602 false) 
	#(410 9 #reduceActionForSetAccessor1: 53518337 false) 
	#(410 9 #reduceActionForSetAccessor1: 53518339 false) 
	#(431 8 #reduceActionForMemberFunctionDeclaration4: 57668612 false) 
	#(431 8 #reduceActionForMemberFunctionDeclaration6: 57668614 false) 
	#(431 8 #reduceActionForMemberFunctionDeclaration7: 57668615 false) 
	#(427 8 #reduceActionForMemberVariableDeclaration8: 57348104 false) 
	#(282 9 #reduceActionForAsyncGeneratorExpression1: 35435521 false) 
	#(286 9 #reduceActionForAsyncFunctionExpression5: 36279301 false) 
	#(277 9 #reduceActionForGeneratorExpression2: 34579458 false) 
	#(287 10 #reduceActionForAsyncFunctionExpression2: 36593666 false) 
	#(283 10 #reduceActionForAsyncGeneratorExpression2: 35710978 false) 
	#(287 10 #reduceActionForAsyncFunctionExpression3: 36593667 false) 
	#(351 5 #reduceActionForJSXChild4: 44268546 false) 
	#(236 10 #reduceActionForForStatement12: 27697164 false) 
	#(483 5 #reduceActionForAmbientPropertyMemberDeclaration2: 68447234 false) 
	#(288 10 #reduceActionForAsyncMethod2: 36908034 false) 
	#(410 10 #reduceActionForSetAccessor2: 53518338 false) 
	#(410 10 #reduceActionForSetAccessor2: 53518340 false) 
	#(431 9 #reduceActionForMemberFunctionDeclaration8: 57668616 false) 
	#(286 10 #reduceActionForAsyncFunctionExpression2: 36279298 false) 
	#(282 10 #reduceActionForAsyncGeneratorExpression2: 35435522 false) 
	#(286 10 #reduceActionForAsyncFunctionExpression3: 36279299 false) 
	#(287 11 #reduceActionForAsyncFunctionExpression6: 36593670 false) 
	#(287 11 #reduceActionForAsyncFunctionExpression7: 36593671 false) 
	#(286 11 #reduceActionForAsyncFunctionExpression6: 36279302 false) 
	#(286 11 #reduceActionForAsyncFunctionExpression7: 36279303 false) 
	#(287 12 #reduceActionForAsyncFunctionExpression4: 36593668 false) 
	#(286 12 #reduceActionForAsyncFunctionExpression4: 36279300 false) 
	#(287 13 #reduceActionForAsyncFunctionExpression8: 36593672 false) 
	#(286 13 #reduceActionForAsyncFunctionExpression8: 36279304 false)
	).
]

{ #category : 'generated-accessing' }
JSParser class >> scannerClass [
	^JSScanner
]

{ #category : 'generated' }
JSParser class >> startingStateForClassElement [
	^ 8
]

{ #category : 'generated' }
JSParser class >> startingStateForExpression [
	^ 2
]

{ #category : 'generated' }
JSParser class >> startingStateForModule [
	^ 5
]

{ #category : 'generated' }
JSParser class >> startingStateForScript [
	^ 4
]

{ #category : 'generated' }
JSParser class >> startingStateForSourceFile [
	^ 6
]

{ #category : 'generated' }
JSParser class >> startingStateForStatement [
	^ 3
]

{ #category : 'generated' }
JSParser class >> startingStateForType [
	^ 7
]

{ #category : 'generated' }
JSParser class >> startingStateForgoal [
	^ 1
]

{ #category : 'generated' }
JSParser class >> symbolNames [
	^ #('<at>' '<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<mandatory_semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<ampAmpEq>' '<question>' '<questionDot>' '<questionQuestion>' '<questionQuestionEq>' '<percent>' '<bar>' '<barBar>' '<barBarEq>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<abstract>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<global>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<meta>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<override>' '<private>' '<protected>' '<public>' '<readonly>' '<require>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<privateIdentifier>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'ValidationNotArrowFunction' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'ImportMeta' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'DoWhileStatement' 'WhileStatement' 'ForStatement' 'ForInOfStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionDeclaration' 'FunctionExpression' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorMethod' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorBody' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncMethod' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'DecoratorExpression ''decorator''*' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'FieldDefinition' 'ClassElementNameWithSemicolonCheck' 'CheckSemicolon' 'ClassElementName' 'ClassStaticBlock' 'ClassStaticBlockBody' 'ClassStaticBlockStatementList' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ModuleExportName' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'PrivateIdentifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'IndexedAccessType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'BindingModifier*' 'BindingModifier' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'AsExpression' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'ConstructorCallSignature' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' '(BindingModifier ''modifier'' |  <static> ''modifier'')' '(BindingModifier ''modifier'' |  <static> ''modifier'')*' 'NullableIndicator' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'SourceFileElement ''element''*' 'SourceFileElement' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' 'DecoratorExpression' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : 'generated' }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode nil #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSImportMetaNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #JSDoWhileStatementNode #JSWhileStatementNode #JSForStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSProgramNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSProgramNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #JSGeneratorMethodDefinitionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorMethodDefinitionNode #OrderedCollection #JSAsyncFunctionNode #JSAsyncFunctionNode #JSAsyncMethodDefinitionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #OrderedCollection #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSNameExpressionNode nil #JSNameExpressionNode #JSClassStaticBlockNode #OrderedCollection #OrderedCollection #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #SmaCCToken #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #JSNameExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSIndexedAccessTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #OrderedCollection #SmaCCToken #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSAsExpressionNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSCallSignatureNode #JSProgramNode #JSMemberVariableDeclarationNode #SmaCCToken #OrderedCollection #SmaCCToken #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #JSProgramNode #JSProgramNode #Object #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #JSDecoratorExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 41 0 74 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 7 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 0 53 0 143 0 85 0 210 0 61 0 211 0 85 0 212 0 69 0 213 0 53 1 52 0 77 1 53 0 81 1 54 0 85 1 55 0 85 1 57 0 85 1 67 0 11 1 236 0 10 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 1 117 0 199 1 117 0 200 1 117 0 202 1 1 1 8 1 117 1 11 1 129 1 12 1 133 1 13 1 137 1 16 1 117 1 17 1 1 1 22 1 117 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 2 33 0 203 2 33 0 206 2 33 0 207 2 33 0 208 2 33 0 216 2 33 0 230 2 33 0 231 2 33 0 232 2 33 0 233 2 33 0 234 2 33 0 235 2 33 0 236 2 33 0 237 2 33 0 240 2 33 0 241 2 33 0 243 2 33 0 244 2 33 0 245 2 33 0 250 2 33 0 252 2 33 0 253 2 33 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 2 121 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 2 129 1 50 2 133 1 51 0 6 1 236 0 26 1 237] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 41 0 74 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 7 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 0 85 0 210 0 61 0 211 0 85 0 212 0 69 0 213 2 137 1 52 0 77 1 53 0 81 1 54 0 85 1 55 0 85 1 57 0 85 1 67 0 11 1 236 0 10 1 237] 
#[1 0 30 0 1 0 30 0 2 0 30 0 4 0 30 0 6 0 30 0 8 0 30 0 36 0 30 0 37 0 30 0 38 0 30 0 39 0 30 0 40 0 30 0 53 0 30 0 57 0 30 0 58 0 30 0 59 0 30 0 62 0 30 0 63 0 30 0 64 0 30 0 66 0 30 0 67 0 30 0 68 0 30 0 70 0 30 0 71 0 30 0 73 0 30 0 74 0 30 0 76 0 30 0 78 0 30 0 80 0 30 0 83 0 30 0 84 0 30 0 89 0 30 0 91 0 30 0 93 0 30 0 94 0 30 0 95 0 30 0 96 0 30 0 105 0 30 0 109 0 30 0 110 0 30 0 112 0 30 0 113 0 30 0 114 0 30 0 115 0 30 0 116 0 30 0 117 0 30 0 118 0 30 0 119 0 30 0 120 0 30 0 121 0 30 0 122 0 30 0 127 0 30 0 129 0 30 0 131 0 30 0 132 0 30 0 133 0 30 0 135 0 30 0 136 0 30 0 139 2 141 1 191 2 145 1 192 0 30 1 236 0 30 1 237] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 2 209 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 2 209 1 135 2 209 1 136 2 225 1 137 2 225 1 139] 
#[1 3 37 0 8 3 41 0 27 3 45 0 57 3 49 0 81 3 53 0 106 3 57 0 107 3 61 0 127 3 65 0 128 3 69 0 129 3 89 1 19 3 89 1 23 3 89 1 28 3 89 1 32 3 89 1 42 3 93 1 43 3 97 1 44 3 101 1 46 3 89 1 47 3 89 1 153 3 89 1 154 3 117 1 236] 
#[0 0 34 0 4 0 6 0 127 1 236] 
#[1 0 38 0 1 3 121 0 4 3 125 0 27 3 129 0 57 0 38 0 62 0 38 0 63 0 69 0 64 3 133 0 69 3 137 0 80 0 69 0 91 2 13 0 118 3 141 0 204 3 141 0 205 3 141 0 212 0 69 0 213 3 153 0 216 3 141 1 7 3 141 1 21 3 141 1 26 3 141 1 30 3 141 1 35 3 177 1 36 3 181 1 68 3 185 1 69 3 189 1 236] 
#[1 3 193 0 4 3 197 0 27 0 193 0 127 3 221 0 131 3 209 0 144 3 205 1 58 3 209 1 59 3 213 1 60 3 217 1 61 3 221 1 65 3 209 1 66 3 221 1 75 3 233 1 236] 
#[0 0 42 0 4 0 6 0 127 1 236] 
#[0 0 0 1 237] 
#[0 0 46 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 3 237 0 203 3 237 0 206 3 237 0 207 3 237 0 208 3 237 0 216 3 237 0 230 3 237 0 231 3 237 0 232 3 237 0 233 3 237 0 234 3 237 0 235 3 237 0 236 3 237 0 237 3 237 0 240 3 237 0 241 3 237 0 243 3 237 0 244 3 237 0 245 3 237 0 250 3 237 0 252 3 237 0 253 3 237 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 0 50 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 64 0 66 0 67 0 69 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 3 249 0 144 3 253 0 214 4 1 0 215 4 5 0 219 4 5 0 220 4 5 0 221 4 1 1 159 4 1 1 160 4 25 1 236] 
#[0 0 54 1 237] 
#[0 0 58 1 237] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 41 0 74 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 7 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 4 29 0 210 0 61 0 211 4 29 0 212 0 69 0 213 4 29 1 55 4 29 1 57 4 29 1 67 0 11 1 236 0 62 1 237] 
#[0 0 66 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 0 70 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 0 74 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 33 0 74] 
#[1 0 101 0 2 0 78 0 3 0 23 0 4 4 37 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 4 41 0 123 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 4 45 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 4 49 0 199 4 49 0 200 4 49 0 202 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 4 69 1 2 4 73 1 3 4 77 1 4 4 81 1 5 4 85 1 6 1 1 1 8 4 49 1 11 1 129 1 12 1 133 1 13 1 137 1 16 4 49 1 17 1 1 1 22 4 49 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 89 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 4 93 0 7 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 4 97 0 123 4 101 0 124 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 4 105 0 150 4 109 0 151 4 113 0 152 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 4 117 0 199 4 117 0 200 1 1 1 8 4 117 1 11 1 129 1 12 1 133 1 13 1 137 1 16 4 117 1 17 1 1 1 22 4 117 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 4 137 0 182 4 137 0 183 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 4 137 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 4 145 0 182 4 145 0 183 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 4 145 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 4 149 0 182 4 149 0 183 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 4 149 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 4 153 0 182 4 153 0 183 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 4 153 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 4 157 0 182 4 157 0 183 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 4 157 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 4 161 0 182 4 161 0 183 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 4 161 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 165 0 2 4 169 0 80 0 193 0 127 4 173 0 144 4 177 1 12 1 133 1 13 1 137 1 16 4 181 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 4 185 0 182 4 185 0 183 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 4 185 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 189 0 4 4 193 0 75 0 193 0 127 4 197 0 144 4 201 1 38 4 205 1 39 4 209 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 4 213 0 182 4 213 0 183 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 4 213 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 4 217 0 2 4 221 0 27 0 193 0 127 4 225 0 144] 
#[1 4 229 0 2 4 233 0 23] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 4 237 0 23 4 125 0 57 0 141 0 62 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 4 241 0 144 4 241 0 146 4 241 0 147 4 241 0 148 4 241 0 149 4 241 0 153 0 245 0 154 4 241 0 162 0 253 0 163 4 241 0 166 4 241 0 167 4 241 0 168 4 241 0 169 4 241 0 170 4 245 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 249 0 181 4 241 1 8 4 241 1 22 4 241 1 27 4 241 1 31 4 241 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 4 241 1 77 4 241 1 78 4 241 1 79 1 201 1 80 4 241 1 82 1 209 1 100 4 253 1 236] 
#[0 0 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 5 1 0 2 5 5 0 6 5 9 0 23 5 13 0 175 5 17 1 236] 
#[0 0 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 5 21 0 182 5 21 0 183 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 5 21 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 5 25 0 182 5 25 0 183 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 5 25 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 0 101 0 2 0 98 0 3 0 14 0 4 0 98 0 5 0 105 0 6 0 98 0 7 0 98 0 8 0 98 0 9 5 29 0 27 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 98 0 124 0 98 0 125 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 98 0 137 0 98 0 138 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 5 33 0 199 5 33 0 200 1 1 1 8 5 33 1 11 1 129 1 12 1 133 1 13 1 137 1 16 5 33 1 17 1 1 1 22 5 33 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236 0 98 1 237] 
#[0 0 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 75 0 79 0 85 0 87 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 106 0 85] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 65 0 79 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 135 0 136 0 137 0 138 0 140 1 235 1 236 1 237] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 65 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 126 0 15 5 37 1 101] 
#[1 0 130 0 2 0 130 0 3 0 130 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 130 0 19 0 134 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 39 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 52 0 130 0 54 0 130 0 55 0 130 0 85 0 130 0 88 0 130 0 98 0 130 0 124 0 130 0 125 0 130 0 135 0 130 0 136 0 130 0 137 0 130 0 138 0 130 1 235 0 130 1 236 0 130 1 237] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 41 0 4] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 45 0 136] 
#[1 5 1 0 2 0 162 0 3 0 162 0 4 0 162 0 5 5 49 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 18 0 162 0 19 0 162 0 21 0 162 0 22 5 53 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 38 0 162 0 39 0 162 0 41 0 162 0 42 0 162 0 43 0 162 0 44 5 57 0 45 0 162 0 46 0 162 0 47 0 162 0 48 0 162 0 49 0 162 0 50 0 162 0 51 0 162 0 52 0 162 0 54 0 162 0 55 0 162 0 85 0 162 0 88 0 162 0 98 0 162 0 124 0 162 0 125 0 213 0 135 0 18 0 136 0 162 0 137 0 162 0 138 5 61 0 162 0 253 0 163 5 65 0 175 5 69 0 178 0 162 1 235 0 27 1 236 0 162 1 237] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 182 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 137 0 138 1 235 1 236 1 237] 
#[1 5 1 0 2 0 186 0 3 0 186 0 4 0 186 0 5 5 73 0 6 0 186 0 7 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 11 0 186 0 12 0 186 0 13 0 186 0 14 0 186 0 15 0 186 0 16 0 186 0 17 0 186 0 18 0 186 0 19 0 186 0 21 0 186 0 22 5 77 0 23 0 186 0 24 0 186 0 25 0 186 0 26 0 186 0 27 0 186 0 28 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 0 186 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 41 0 186 0 42 0 186 0 43 0 186 0 44 5 57 0 45 0 186 0 46 0 186 0 47 0 186 0 48 0 186 0 49 0 186 0 50 0 186 0 51 0 186 0 52 0 186 0 54 0 186 0 55 0 186 0 85 0 186 0 88 0 186 0 98 0 186 0 124 0 186 0 125 0 213 0 135 0 18 0 136 0 186 0 137 0 186 0 138 5 81 0 162 0 253 0 163 5 85 0 175 5 89 0 178 0 186 1 235 0 31 1 236 0 186 1 237] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 0 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 15 0 198 0 16 0 198 0 17 0 198 0 18 0 198 0 19 0 198 0 21 0 198 0 22 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 41 0 198 0 42 0 198 0 43 0 198 0 44 5 57 0 45 0 198 0 46 0 198 0 47 0 198 0 48 0 198 0 49 0 198 0 50 0 198 0 51 0 198 0 52 0 198 0 54 0 198 0 55 0 198 0 85 0 198 0 88 0 198 0 98 0 198 0 124 0 198 0 125 0 198 0 137 0 198 0 138 5 93 0 178 0 198 1 235 0 198 1 236 0 198 1 237] 
#[1 0 202 0 3 0 202 0 5 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 10 5 165 0 11 0 202 0 12 0 202 0 13 5 165 0 14 0 202 0 15 0 202 0 16 5 165 0 17 5 165 0 18 0 202 0 19 0 202 0 21 0 202 0 22 5 165 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 5 165 0 29 5 165 0 30 5 165 0 31 5 165 0 32 5 165 0 33 5 165 0 34 5 165 0 35 0 202 0 36 5 145 0 37 0 202 0 38 5 149 0 39 0 202 0 41 0 202 0 42 5 165 0 43 0 202 0 44 0 202 0 46 5 165 0 47 0 202 0 48 0 202 0 49 0 202 0 50 5 165 0 51 0 202 0 52 0 202 0 54 0 202 0 55 0 202 0 85 0 202 0 88 0 202 0 124 0 202 0 125 0 202 0 137 0 202 0 138 5 165 0 201 5 165 1 235 5 173 1 236 0 202 1 237] 
#[0 0 206 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[1 0 210 0 3 0 210 0 5 0 210 0 7 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 12 0 210 0 13 0 210 0 15 0 210 0 16 0 210 0 19 0 210 0 21 0 210 0 22 0 210 0 25 0 210 0 26 0 210 0 27 5 177 0 28 0 210 0 36 0 210 0 38 0 210 0 41 0 210 0 42 0 210 0 44 0 210 0 46 0 210 0 48 0 210 0 49 0 210 0 50 0 210 0 52 0 210 0 54 0 210 0 55 0 210 0 85 0 210 0 88 0 210 0 124 0 210 0 125 0 210 0 137 0 210 0 138 0 210 1 237] 
#[0 0 214 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[1 0 218 0 3 0 218 0 5 0 218 0 7 0 218 0 8 0 218 0 9 5 193 0 10 0 218 0 12 0 218 0 13 0 218 0 15 0 218 0 16 0 218 0 19 0 218 0 21 0 218 0 22 0 218 0 25 0 218 0 26 5 193 0 27 0 218 0 36 0 218 0 38 0 218 0 41 0 218 0 42 0 218 0 44 0 218 0 46 5 193 0 48 0 218 0 49 0 218 0 50 0 218 0 52 0 218 0 54 0 218 0 55 0 218 0 85 0 218 0 88 0 218 0 124 0 218 0 125 0 218 0 137 0 218 0 138 5 193 0 186 0 218 1 237] 
#[1 0 222 0 3 0 222 0 5 0 222 0 7 0 222 0 8 0 222 0 9 0 222 0 12 0 222 0 13 0 222 0 15 0 222 0 16 0 222 0 19 0 222 0 21 0 222 0 22 0 222 0 25 0 222 0 26 5 197 0 36 5 201 0 38 0 222 0 41 0 222 0 42 0 222 0 44 0 222 0 46 0 222 0 49 0 222 0 50 0 222 0 52 0 222 0 54 0 222 0 55 0 222 0 85 0 222 0 88 0 222 0 124 0 222 0 125 0 222 0 137 0 222 0 138 0 222 1 237] 
#[1 0 226 0 3 0 226 0 5 0 226 0 7 0 226 0 8 0 226 0 9 0 226 0 12 5 205 0 13 0 226 0 15 5 209 0 16 5 213 0 19 0 226 0 21 0 226 0 22 0 226 0 25 0 226 0 26 0 226 0 41 0 226 0 42 0 226 0 44 0 226 0 46 0 226 0 49 0 226 0 50 0 226 0 52 0 226 0 54 0 226 0 55 0 226 0 85 0 226 0 88 0 226 0 124 0 226 0 125 0 226 0 137 0 226 0 138 0 226 1 237] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 0 230 0 9 5 217 0 12 5 221 0 15 5 225 0 21 5 229 0 22 0 230 0 25 0 230 0 26 0 230 0 41 0 230 0 42 0 230 0 44 0 230 0 46 0 230 0 49 0 230 0 50 0 230 0 52 0 230 0 54 0 230 0 55 5 233 0 85 5 237 0 88 0 230 0 124 0 230 0 125 0 230 0 137 0 230 0 138 0 230 1 237] 
#[1 0 234 0 3 0 234 0 5 0 234 0 7 0 234 0 8 0 234 0 9 5 241 0 25 5 245 0 26 0 234 0 41 0 234 0 42 0 234 0 44 0 234 0 46 0 234 0 49 0 234 0 50 0 234 0 52 5 249 0 54 5 253 0 55 0 234 0 124 0 234 0 125 0 234 0 137 0 234 0 138 0 234 1 237] 
#[1 0 238 0 3 0 238 0 5 0 238 0 7 0 238 0 8 0 238 0 9 6 1 0 41 0 238 0 42 0 238 0 44 0 238 0 46 0 238 0 49 0 238 0 50 0 238 0 52 0 238 0 124 0 238 0 125 0 238 0 137 0 238 0 138 0 238 1 237] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 0 242 0 9 0 242 0 42 0 242 0 44 0 242 0 46 0 242 0 49 0 242 0 50 6 5 0 52 0 242 0 124 0 242 0 125 0 242 0 137 0 242 0 138 0 242 1 237] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 0 246 0 9 0 246 0 42 0 246 0 44 0 250 0 46 6 9 0 49 0 246 0 50 0 246 0 124 0 246 0 125 0 246 0 137 0 246 0 138 0 246 1 237] 
#[1 0 254 0 3 0 254 0 5 0 254 0 7 0 254 0 8 0 254 0 9 6 13 0 42 0 254 0 44 0 254 0 50 0 254 0 124 0 254 0 125 0 254 0 137 0 254 0 138 0 254 1 237] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 1 2 0 9 1 2 0 44 6 17 0 50 1 2 0 124 1 2 0 125 1 2 0 137 1 2 0 138 1 2 1 237] 
#[1 1 6 0 3 1 6 0 5 1 6 0 7 1 6 0 8 1 6 0 9 1 6 0 44 1 10 0 46 1 6 0 124 1 6 0 125 1 6 0 137 1 6 0 138 1 6 1 237] 
#[0 6 21 0 46] 
#[1 1 14 0 3 1 14 0 5 1 14 0 7 1 14 0 8 1 14 0 9 6 25 0 44 1 14 0 124 1 14 0 125 1 14 0 137 1 14 0 138 1 14 1 237] 
#[0 1 18 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 1 22 0 3 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[1 6 29 0 124 0 0 1 237] 
#[0 1 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 1 30 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 6 33 0 20] 
#[0 1 34 0 20] 
#[0 1 38 0 20] 
#[0 1 42 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 1 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 1 50 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 1 62 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 6 37 0 85] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 1 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 0 139 0 140 0 141 1 235 1 236 1 237] 
#[1 1 98 0 4 1 98 0 139 1 98 0 141 6 41 1 102] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 6 45 0 139] 
#[1 1 106 0 3 1 106 0 5 1 106 0 7 1 106 0 8 1 106 0 9 1 106 0 10 1 106 0 12 1 106 0 13 1 106 0 15 1 106 0 16 1 106 0 19 1 106 0 21 1 106 0 22 1 106 0 25 1 106 0 26 1 106 0 27 1 106 0 28 1 106 0 36 1 106 0 38 1 106 0 41 1 106 0 42 1 106 0 44 1 106 0 46 1 106 0 48 1 106 0 49 1 106 0 50 1 106 0 52 1 106 0 54 1 106 0 55 1 106 0 85 1 106 0 88 1 106 0 124 1 106 0 125 1 106 0 137 1 106 0 138 6 49 1 236 1 106 1 237] 
#[1 6 53 0 2 6 57 0 12 6 61 0 80 6 65 1 106 6 69 1 152] 
#[1 0 6 0 2 0 6 0 4 6 73 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 6 77 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 0 6 1 236] 
#[0 1 110 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 6 81 0 8 1 114 0 127 6 85 0 242] 
#[1 6 89 0 8 1 114 0 127 6 93 0 242] 
#[0 6 97 0 8] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 6 101 0 203 6 101 0 206 6 101 0 207 6 101 0 208 6 101 0 216 6 101 0 230 6 101 0 231 6 101 0 232 6 101 0 233 6 101 0 234 6 101 0 235 6 101 0 236 6 101 0 237 6 101 0 240 6 101 0 241 6 101 0 243 6 101 0 244 6 101 0 245 6 101 0 250 6 101 0 252 6 101 0 253 6 101 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 6 105 0 2 6 109 0 58] 
#[0 6 113 0 2] 
#[1 1 114 0 2 1 114 0 4 1 114 0 6 6 117 0 8 1 114 0 36 1 114 0 37 1 114 0 38 1 114 0 39 1 114 0 40 1 114 0 53 1 114 0 57 1 114 0 58 1 114 0 62 1 114 0 70 1 114 0 76 1 114 0 80 1 114 0 84 1 114 0 95 1 114 0 96 1 114 0 109 1 114 0 112 1 114 0 114 1 114 0 117 1 114 0 119 1 114 0 122 1 114 0 127 1 114 0 129 1 114 0 131 1 114 0 132 1 114 0 133 1 114 0 135 1 114 0 136 1 114 0 139 6 121 0 242 1 114 1 236] 
#[0 6 125 0 2] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 6 129 0 199 6 129 0 200 6 129 0 202 1 1 1 8 6 129 1 11 1 129 1 12 1 133 1 13 1 137 1 16 6 129 1 17 1 1 1 22 6 129 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 1 221 0 4 6 133 0 208] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 6 137 0 144 6 141 0 217 6 145 0 218 6 149 0 219 6 149 0 220 6 149 0 221 6 153 1 236] 
#[0 6 157 0 2] 
#[0 6 161 0 2] 
#[1 0 102 0 2 0 102 0 6 0 102 0 8 0 102 0 10 0 102 0 11 0 102 0 12 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 17 0 102 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 25 0 102 0 26 0 102 0 27 0 102 0 28 0 102 0 29 0 102 0 30 0 102 0 31 0 102 0 32 0 102 0 33 0 102 0 34 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 38 0 102 0 39 0 102 0 41 0 102 0 42 0 102 0 43 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 47 0 102 0 48 0 102 0 49 0 102 0 50 0 102 0 51 0 102 0 52 0 102 0 54 0 102 0 55 0 102 0 85 0 102 0 88 0 102 0 124 6 165 0 125 0 102 0 135 0 102 0 136 0 102 1 235 0 102 1 236] 
#[1 6 169 0 8 6 29 0 124] 
#[0 0 0 1 237] 
#[0 1 118 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 122 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 126 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 130 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 134 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 138 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 142 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 146 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 150 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 154 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 158 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 162 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 166 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 170 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 174 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 178 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 182 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 186 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 190 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 194 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 1 198 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 6 173 0 210 0 61 0 211 6 173 0 212 0 69 0 213 0 6 1 236 1 202 1 237] 
#[0 1 206 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 64 0 66 0 67 0 69 0 70 0 71 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 0 0 1 237] 
#[0 1 210 1 237] 
#[0 0 0 1 237] 
#[0 0 0 1 237] 
#[1 0 38 0 1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 35 0 62 0 38 0 63 6 177 0 64 1 233 0 66 1 237 0 67 6 181 0 68 0 145 0 70 1 241 0 71 6 185 0 73 0 39 0 74 1 177 0 76 1 245 0 78 6 193 0 80 1 249 0 83 6 197 0 84 6 201 0 89 0 69 0 91 6 205 0 93 6 209 0 94 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 6 213 0 116 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 7 9 0 203 7 9 0 206 7 9 0 207 7 9 0 208 7 9 0 212 0 69 0 213 7 9 0 216 7 9 0 230 7 9 0 231 7 9 0 232 7 9 0 233 7 9 0 234 7 9 0 235 7 9 0 236 7 9 0 237 7 9 0 240 7 9 0 241 7 9 0 243 7 9 0 244 7 9 0 245 7 9 0 250 7 9 0 252 7 9 0 253 7 9 1 1 7 9 1 7 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 7 9 1 21 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 7 9 1 35 6 237 1 36 1 1 1 37 7 9 1 57 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 7 9 1 151 1 213 1 156 7 9 1 161 7 9 1 178 7 9 1 183 7 9 1 189 7 9 1 193 7 9 1 199 7 9 1 210 7 9 1 211 7 9 1 212 7 9 1 213 7 9 1 214 7 9 1 215 7 9 1 216 7 9 1 217 7 9 1 233 7 53 1 236 1 214 1 237] 
#[1 2 149 0 2 0 78 0 3 7 57 0 4 7 61 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 4 41 0 123 0 193 0 127 2 197 0 131 2 201 0 132 7 65 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 7 69 1 3 4 77 1 4 4 81 1 5 4 85 1 6 2 197 1 75 2 201 1 76 2 205 1 106 7 73 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 7 73 1 135 7 73 1 136 2 225 1 137 2 225 1 139 7 77 1 236] 
#[1 7 81 0 2 7 85 0 5 7 89 0 6 2 161 0 12 7 93 0 95 7 97 0 103 7 101 0 128 7 121 0 131 7 125 0 132 7 109 0 145 7 109 0 157 7 109 0 158 7 109 0 159 7 121 1 75 7 125 1 76 7 129 1 106 7 133 1 126 7 137 1 127 7 141 1 128 7 141 1 140 7 141 1 142 7 141 1 148 7 141 1 149 7 141 1 150] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 7 165 0 7 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 7 169 0 124 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 7 181 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 7 177 1 131 7 181 1 132 2 213 1 133 2 217 1 134 7 181 1 135 7 181 1 136 2 225 1 137 2 225 1 139] 
#[1 0 193 0 127 7 185 0 144 7 189 1 107 7 193 1 108] 
#[1 7 197 0 2 2 153 0 4 2 157 0 6 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 7 201 1 117 7 201 1 118 7 201 1 119 7 201 1 120 7 201 1 121 7 201 1 122 2 249 1 123 2 253 1 124 7 201 1 125 7 201 1 129 7 201 1 130 7 201 1 137 7 201 1 139] 
#[1 7 197 0 2 2 153 0 4 2 157 0 6 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 7 205 1 117 7 205 1 118 7 205 1 119 7 205 1 120 7 205 1 121 7 205 1 122 2 249 1 123 2 253 1 124 7 205 1 125 7 205 1 129 7 205 1 130 7 205 1 137 7 205 1 139] 
#[1 7 209 0 2 2 161 0 12 7 213 1 106] 
#[1 7 197 0 2 2 153 0 4 7 217 0 6 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 7 221 1 117 7 221 1 118 7 221 1 119 7 221 1 120 7 221 1 121 7 221 1 122 2 249 1 123 2 253 1 124 7 221 1 125 7 221 1 129 7 221 1 130 7 221 1 137 7 221 1 139] 
#[0 1 218 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[1 0 193 0 127 7 225 0 144 7 229 1 138] 
#[0 1 222 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[1 1 226 0 3 1 226 0 4 1 226 0 5 1 226 0 6 1 226 0 7 1 226 0 8 1 226 0 9 1 226 0 10 1 226 0 12 1 226 0 13 1 226 0 15 1 226 0 16 1 226 0 19 1 226 0 20 1 226 0 21 1 226 0 22 1 230 0 23 1 226 0 24 1 226 0 25 1 226 0 26 1 226 0 27 1 226 0 28 1 226 0 36 1 226 0 38 1 226 0 41 1 226 0 42 1 226 0 44 1 226 0 46 1 226 0 48 1 226 0 49 1 226 0 50 1 226 0 52 1 226 0 54 1 226 0 55 1 226 0 65 1 226 0 85 1 226 0 87 1 226 0 88 1 226 0 99 1 226 0 100 1 226 0 101 1 226 0 102 1 226 0 103 1 226 0 107 1 226 0 124 1 226 0 125 1 226 0 128 1 226 0 131 1 226 0 132 1 226 0 137 1 226 0 138 1 226 1 236 1 226 1 237] 
#[0 1 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 1 238 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 7 233 0 2] 
#[0 0 0 1 237] 
#[1 1 242 0 3 1 242 0 4 1 242 0 5 1 242 0 6 1 242 0 7 1 242 0 8 1 242 0 9 1 242 0 10 1 242 0 12 1 242 0 13 1 242 0 15 1 242 0 16 1 242 0 19 1 242 0 20 1 242 0 21 1 242 0 22 1 242 0 24 1 242 0 25 1 242 0 26 1 242 0 27 1 242 0 28 1 242 0 36 1 242 0 38 1 242 0 41 1 242 0 42 1 242 0 44 1 242 0 46 1 242 0 48 0 43 0 49 1 242 0 50 1 242 0 52 1 242 0 54 1 242 0 55 1 242 0 65 1 242 0 85 1 242 0 88 1 242 0 99 1 242 0 100 1 242 0 101 1 242 0 102 1 242 0 103 1 242 0 107 1 242 0 124 1 242 0 125 1 242 0 128 1 242 0 131 1 242 0 132 1 242 0 137 1 242 0 138 1 242 1 236 1 242 1 237] 
#[1 1 246 0 3 1 246 0 4 1 246 0 5 1 246 0 6 1 246 0 7 1 246 0 8 1 246 0 9 1 246 0 10 1 246 0 12 1 246 0 13 1 246 0 15 1 246 0 16 1 246 0 19 1 246 0 20 1 246 0 21 1 246 0 22 1 246 0 24 1 246 0 25 1 246 0 26 1 246 0 27 1 246 0 28 1 246 0 36 1 246 0 38 0 47 0 41 1 246 0 42 1 246 0 44 1 246 0 46 1 246 0 48 1 246 0 49 1 246 0 50 1 246 0 52 1 246 0 54 1 246 0 55 1 246 0 65 1 246 0 85 1 246 0 88 1 246 0 99 1 246 0 100 1 246 0 101 1 246 0 102 1 246 0 103 1 246 0 107 1 246 0 124 1 246 0 125 1 246 0 128 1 246 0 131 1 246 0 132 1 246 0 137 1 246 0 138 1 246 1 236 1 246 1 237] 
#[0 1 250 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[1 1 254 0 3 1 254 0 4 1 254 0 5 0 51 0 6 1 254 0 7 1 254 0 8 1 254 0 9 1 254 0 10 1 254 0 12 1 254 0 13 1 254 0 15 1 254 0 16 1 254 0 19 1 254 0 20 1 254 0 21 1 254 0 22 1 254 0 24 1 254 0 25 1 254 0 26 1 254 0 27 1 254 0 28 1 254 0 36 1 254 0 38 1 254 0 41 1 254 0 42 1 254 0 44 1 254 0 46 1 254 0 48 1 254 0 49 1 254 0 50 1 254 0 52 1 254 0 54 1 254 0 55 1 254 0 65 1 254 0 85 1 254 0 88 1 254 0 99 1 254 0 100 1 254 0 101 1 254 0 102 1 254 0 103 1 254 0 107 1 254 0 124 1 254 0 125 1 254 0 128 1 254 0 131 1 254 0 132 1 254 0 137 1 254 0 138 7 245 0 242 1 254 1 236 1 254 1 237] 
#[0 2 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 6 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 10 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 14 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 18 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[1 2 22 0 3 2 22 0 4 2 22 0 5 2 22 0 6 2 22 0 7 2 22 0 8 2 22 0 9 2 22 0 10 0 55 0 12 2 22 0 13 2 22 0 15 2 22 0 16 2 22 0 19 2 22 0 20 2 22 0 21 2 22 0 22 2 22 0 24 2 22 0 25 2 22 0 26 2 22 0 27 2 22 0 28 2 22 0 36 2 22 0 38 2 22 0 41 2 22 0 42 2 22 0 44 2 22 0 46 2 22 0 48 2 22 0 49 2 22 0 50 2 22 0 52 2 22 0 54 2 22 0 55 2 22 0 65 2 22 0 85 2 22 0 87 2 22 0 88 2 22 0 99 2 22 0 100 2 22 0 101 2 22 0 102 2 22 0 103 2 22 0 107 2 22 0 124 2 22 0 125 2 22 0 128 2 22 0 131 2 22 0 132 2 22 0 137 2 22 0 138 7 249 0 242 2 22 1 236 2 22 1 237] 
#[0 7 253 0 23] 
#[0 2 26 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 30 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 34 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 38 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 42 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 46 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 50 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 54 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 58 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 2 62 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[1 3 65 0 128 8 1 0 129 8 5 1 46] 
#[1 8 9 0 27 3 65 0 128 8 1 0 129 8 13 1 46] 
#[1 3 65 0 128 8 1 0 129 8 17 1 46] 
#[1 3 65 0 128 8 1 0 129 8 21 1 46] 
#[1 8 25 0 4 3 41 0 27 3 45 0 57 3 49 0 81 3 53 0 106 3 61 0 127 3 65 0 128 3 69 0 129 8 29 1 19 8 29 1 23 8 29 1 28 8 29 1 32 8 33 1 43 3 97 1 44 3 101 1 46 8 29 1 153 8 29 1 154 8 37 1 236] 
#[1 2 66 0 8 8 41 1 45] 
#[0 2 70 0 2 0 24] 
#[1 2 74 0 2 2 78 0 8 2 74 0 24] 
#[0 2 82 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 2 86 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 2 90 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 2 94 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 0 0 1 237] 
#[0 8 45 0 8] 
#[0 2 98 0 8] 
#[1 8 49 0 2 8 53 0 24 8 57 0 161] 
#[0 2 102 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 2 106 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 2 110 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[1 0 38 0 1 0 59 0 6 0 38 0 57 0 38 0 65 8 61 0 81 0 38 0 99 0 38 0 100 0 38 0 101 0 38 0 102 0 38 0 103 8 65 0 106 0 38 0 107 0 63 0 128 0 67 0 131 0 71 0 132 8 69 0 145 8 69 0 157 8 69 0 158 8 69 0 159 8 73 1 36 7 121 1 75 7 125 1 76 8 77 1 149 8 81 1 168 8 85 1 170 8 85 1 171 8 85 1 175 8 85 1 176 8 101 1 177 0 38 1 236] 
#[1 8 105 0 5 8 113 0 128 8 113 0 131 8 113 1 56 8 117 1 70 8 121 1 71 8 113 1 75] 
#[1 8 129 0 56 2 114 0 79] 
#[0 8 133 0 80] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 8 137 0 199 8 137 0 200 1 1 1 8 8 137 1 11 1 129 1 12 1 133 1 13 1 137 1 16 8 137 1 17 1 1 1 22 8 137 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 8 141 0 2 8 145 0 27 0 193 0 127 8 149 0 144] 
#[0 2 118 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 2 122 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 2 126 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 2 130 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 2 134 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 2 138 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 2 142 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 2 146 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 2 150 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 8 153 0 1 8 157 0 62 8 161 0 63 8 165 1 234] 
#[1 8 169 0 79 8 173 1 62] 
#[1 8 177 0 8 2 154 0 79] 
#[1 8 181 0 64 6 185 0 73 8 185 0 80 6 201 0 89 6 213 0 116 8 189 1 151 8 193 1 161 8 197 1 178] 
#[1 8 201 0 5 0 193 0 127 8 205 0 128 8 205 0 131 8 217 0 144 8 205 1 56 8 209 1 63 8 213 1 64 8 217 1 66 8 205 1 75 8 221 1 236] 
#[0 8 225 0 56] 
#[0 2 158 0 5 0 79 0 124] 
#[1 8 169 0 79 8 229 1 62] 
#[1 2 162 0 79 8 233 0 124] 
#[0 2 166 0 79] 
#[0 2 170 0 79] 
#[0 8 237 0 8] 
#[0 2 174 0 79 0 124] 
#[0 2 178 0 8] 
#[0 8 241 0 116] 
#[0 2 182 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 64 0 66 0 67 0 69 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 8 245 0 5 8 249 0 6 8 253 0 123 0 193 0 127 7 101 0 128 7 121 0 131 7 125 0 132 9 1 0 144 9 5 0 145 9 5 0 157 9 5 0 158 9 5 0 159 9 9 0 222 9 13 0 223 9 17 0 226 9 17 0 228 7 121 1 75 7 125 1 76 9 25 1 236] 
#[1 3 241 0 4 3 245 0 6 9 29 0 7 4 41 0 123 4 101 0 124 0 193 0 127 9 1 0 144 9 33 0 151 4 53 0 219 4 53 0 220 4 53 0 221 9 37 0 224 9 41 0 225 9 45 0 227 9 45 0 228 9 49 0 229 7 77 1 236] 
#[1 2 186 0 8 8 53 0 24 2 186 0 124 9 53 0 161] 
#[1 9 57 0 8 9 61 0 124] 
#[0 2 190 0 8 0 124] 
#[1 8 53 0 24 9 65 0 161] 
#[0 2 194 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[0 2 198 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[0 2 202 0 8 0 124] 
#[0 2 206 0 8 0 124] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 9 69 0 144 9 73 0 219 9 73 0 220 9 73 0 221] 
#[0 2 210 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 9 77 0 116] 
#[1 0 101 0 2 0 23 0 4 4 37 0 6 9 81 0 7 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 9 85 0 123 4 101 0 124 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 4 45 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 4 105 0 150 9 89 0 151 4 113 0 152 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 4 117 0 199 4 117 0 200 4 53 0 219 4 53 0 220 4 53 0 221 9 37 0 224 9 41 0 225 9 45 0 227 9 45 0 228 9 49 0 229 1 1 1 8 4 117 1 11 1 129 1 12 1 133 1 13 1 137 1 16 4 117 1 17 1 1 1 22 4 117 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 89 1 236] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 9 93 0 144 9 97 0 219 9 97 0 220 9 97 0 221] 
#[1 0 130 0 2 0 75 0 3 0 130 0 6 0 75 0 7 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 130 0 19 0 134 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 79 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 39 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 52 0 130 0 54 0 130 0 55 0 130 0 85 0 130 0 88 0 75 0 124 0 130 0 135 0 130 0 136 9 101 0 161 0 130 1 235 0 130 1 236] 
#[1 9 105 0 3 6 29 0 124] 
#[1 2 218 0 3 2 218 0 5 2 218 0 7 8 53 0 24 2 218 0 124 9 109 0 161] 
#[0 2 222 0 3 0 124] 
#[0 2 226 0 3 0 5 0 7 0 124] 
#[0 2 230 0 3] 
#[0 9 113 0 3] 
#[0 2 234 0 3] 
#[1 2 238 0 3 9 117 0 124] 
#[0 2 242 0 3] 
#[0 2 246 0 3 0 124] 
#[1 0 38 0 1 6 53 0 2 0 38 0 3 0 38 0 4 0 38 0 6 0 38 0 7 6 57 0 12 0 38 0 24 0 38 0 44 0 38 0 53 6 61 0 80 0 83 0 99 0 87 0 100 0 91 0 101 0 95 0 102 0 38 0 103 0 38 0 112 0 38 0 124 0 38 0 125 0 99 0 127 9 137 0 144 9 141 1 36 6 65 1 106 9 145 1 146 6 69 1 152] 
#[0 2 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 9 149 0 199 9 149 0 200 1 1 1 8 9 149 1 11 1 129 1 12 1 133 1 13 1 137 1 16 9 149 1 17 1 1 1 22 9 149 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 2 254 0 2 0 4 0 6 0 7 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 123 0 124 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[1 9 153 0 7 4 101 0 124 9 157 0 151] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 9 161 0 7 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 4 97 0 123 9 165 0 124 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 9 169 0 152 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 9 173 0 199 9 173 0 200 1 1 1 8 9 173 1 11 1 129 1 12 1 133 1 13 1 137 1 16 9 173 1 17 1 1 1 22 9 173 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 3 2 0 7 0 124] 
#[0 3 6 0 7 0 124] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 4 49 0 199 4 49 0 200 4 49 0 202 1 1 1 8 4 49 1 11 1 129 1 12 1 133 1 13 1 137 1 16 4 49 1 17 1 1 1 22 4 49 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 4 169 0 80] 
#[0 0 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 202 0 3 0 202 0 5 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 10 0 202 0 12 0 202 0 13 0 202 0 15 0 202 0 16 0 202 0 19 0 202 0 21 0 202 0 22 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 202 0 36 5 145 0 37 0 202 0 38 5 149 0 39 0 202 0 41 0 202 0 42 0 202 0 44 0 202 0 46 0 202 0 48 0 202 0 49 0 202 0 50 0 202 0 52 0 202 0 54 0 202 0 55 0 202 0 85 0 202 0 88 0 202 0 124 0 202 0 125 0 202 0 137 0 202 0 138 5 173 1 236 0 202 1 237] 
#[0 3 10 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[1 9 177 0 12 6 61 0 80] 
#[0 3 14 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[0 3 18 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[0 3 22 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[0 3 26 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[0 3 30 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 4 69 1 2 4 73 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 9 181 0 2 9 185 0 27 0 193 0 127 9 189 0 144 9 193 1 236] 
#[0 0 134 0 20] 
#[0 9 197 0 20] 
#[1 6 53 0 2 2 161 0 12 6 65 1 106 6 69 1 152] 
#[0 3 34 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[1 9 201 0 5 3 37 0 8 3 41 0 27 3 45 0 57 3 49 0 81 3 53 0 106 3 57 0 107 3 61 0 127 3 65 0 128 3 69 0 129 9 213 1 19 9 213 1 23 9 213 1 28 9 213 1 32 9 205 1 40 9 209 1 41 9 213 1 42 3 93 1 43 3 97 1 44 3 101 1 46 9 213 1 47 9 213 1 153 9 213 1 154 3 117 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 4 125 0 57 0 141 0 62 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 9 217 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 9 217 0 181 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 4 253 1 236] 
#[1 4 189 0 4 4 193 0 75 9 221 1 38 4 205 1 39 4 209 1 236] 
#[0 3 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 9 225 0 4] 
#[1 9 229 0 75 9 233 0 87 9 237 1 165 9 241 1 167] 
#[0 3 42 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 9 245 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 9 249 0 2 0 193 0 127 9 253 0 144] 
#[0 10 1 0 2] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 10 5 0 199 10 5 0 200 1 1 1 8 10 5 1 11 1 129 1 12 1 133 1 13 1 137 1 16 10 5 1 17 1 1 1 22 10 5 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 10 9 0 92] 
#[0 10 13 0 111] 
#[1 5 1 0 2 0 162 0 3 0 162 0 4 0 162 0 5 5 49 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 18 0 162 0 19 0 162 0 21 0 162 0 22 5 53 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 38 0 162 0 39 0 162 0 41 0 162 0 42 0 162 0 43 0 162 0 44 5 57 0 45 0 162 0 46 0 162 0 47 0 162 0 48 0 162 0 49 0 162 0 50 0 162 0 51 0 162 0 52 0 162 0 54 0 162 0 55 0 162 0 85 0 162 0 88 0 162 0 98 0 162 0 124 0 162 0 125 0 213 0 135 0 18 0 136 0 162 0 137 0 162 0 138 5 61 0 162 0 253 0 163 10 17 0 175 5 69 0 178 0 162 1 235 0 27 1 236 0 162 1 237] 
#[1 3 46 0 3 3 46 0 4 3 46 0 5 3 46 0 7 3 46 0 8 3 46 0 9 3 46 0 10 3 46 0 11 3 46 0 12 3 46 0 13 3 46 0 14 3 46 0 15 3 46 0 16 3 46 0 17 3 46 0 18 3 46 0 19 3 46 0 21 3 46 0 22 3 46 0 24 3 46 0 25 3 46 0 26 3 46 0 27 3 46 0 28 3 46 0 29 3 46 0 30 3 46 0 31 3 46 0 32 3 46 0 33 3 46 0 34 3 46 0 35 3 46 0 36 3 46 0 37 3 46 0 38 3 46 0 39 3 46 0 41 3 46 0 42 3 46 0 43 3 46 0 44 3 46 0 46 3 46 0 47 3 46 0 48 3 46 0 49 3 46 0 50 3 46 0 51 3 46 0 52 3 46 0 54 3 46 0 55 3 46 0 85 3 46 0 88 3 46 0 98 3 46 0 124 3 46 0 125 3 46 0 137 3 46 0 138 3 46 1 235 0 103 1 236 3 46 1 237] 
#[0 10 21 1 236] 
#[0 6 61 0 80] 
#[1 0 101 0 2 10 25 0 3 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 10 29 0 123 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 10 33 0 176 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 10 37 0 199 10 37 0 200 1 1 1 8 10 37 1 11 1 129 1 12 1 133 1 13 1 137 1 16 10 37 1 17 1 1 1 22 10 37 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 10 41 0 199 10 41 0 200 10 41 0 202 1 1 1 8 10 41 1 11 1 129 1 12 1 133 1 13 1 137 1 16 10 41 1 17 1 1 1 22 10 41 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 10 45 0 128] 
#[0 3 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 10 49 0 12 10 53 1 110] 
#[0 3 54 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[0 3 58 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 10 57 0 199 10 57 0 200 1 1 1 8 10 57 1 11 1 129 1 12 1 133 1 13 1 137 1 16 10 57 1 17 1 1 1 22 10 57 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 3 62 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 10 61 0 15] 
#[1 10 65 0 5 8 249 0 6 3 41 0 27 3 45 0 57 3 49 0 81 3 53 0 106 10 69 0 123 0 193 0 127 10 73 0 128 8 1 0 129 7 121 0 131 7 125 0 132 10 77 0 144 10 89 0 145 10 81 0 155 10 85 0 156 10 89 0 157 10 89 0 158 10 89 0 159 10 85 0 160 10 85 1 19 10 85 1 23 10 85 1 28 10 85 1 32 10 101 1 46 7 121 1 75 7 125 1 76 10 85 1 153 10 85 1 154 8 37 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 10 105 0 199 10 105 0 200 10 105 0 202 1 1 1 8 10 105 1 11 1 129 1 12 1 133 1 13 1 137 1 16 10 105 1 17 1 1 1 22 10 105 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 10 109 0 199 10 109 0 200 10 109 0 202 1 1 1 8 10 109 1 11 1 129 1 12 1 133 1 13 1 137 1 16 10 109 1 17 1 1 1 22 10 109 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 10 113 0 128 10 117 0 129] 
#[1 5 1 0 2 10 121 0 6 10 125 0 128 10 129 0 129 0 213 0 135 0 18 0 136 10 133 0 162 0 253 0 163 10 137 0 175 10 141 0 180 5 17 1 236] 
#[0 3 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 3 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 5 1 0 2 3 74 0 3 3 74 0 4 3 74 0 5 10 145 0 6 3 74 0 7 3 74 0 8 3 74 0 9 3 74 0 10 3 74 0 11 3 74 0 12 3 74 0 13 3 74 0 14 3 74 0 15 3 74 0 16 3 74 0 17 3 74 0 18 3 74 0 19 3 74 0 21 3 74 0 22 10 149 0 23 3 74 0 24 3 74 0 25 3 74 0 26 3 74 0 27 3 74 0 28 3 74 0 29 3 74 0 30 3 74 0 31 3 74 0 32 3 74 0 33 3 74 0 34 3 74 0 35 3 74 0 36 3 74 0 37 3 74 0 38 3 74 0 39 3 74 0 41 3 74 0 42 3 74 0 43 3 74 0 44 3 74 0 45 3 74 0 46 3 74 0 47 3 74 0 48 3 74 0 49 3 74 0 50 3 74 0 51 3 74 0 52 3 74 0 54 3 74 0 55 3 74 0 85 3 74 0 88 3 74 0 98 3 74 0 124 3 74 0 125 0 213 0 135 0 18 0 136 3 74 0 137 3 74 0 138 10 153 0 162 0 253 0 163 10 157 0 175 10 161 0 179 3 74 1 235 0 107 1 236 3 74 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 10 165 0 199 10 165 0 200 10 165 0 202 1 1 1 8 10 165 1 11 1 129 1 12 1 133 1 13 1 137 1 16 10 165 1 17 1 1 1 22 10 165 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 10 169 0 128 10 173 0 129] 
#[0 3 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 3 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 5 1 0 2 3 86 0 3 3 86 0 4 3 86 0 5 10 145 0 6 3 86 0 7 3 86 0 8 3 86 0 9 3 86 0 10 3 86 0 11 3 86 0 12 3 86 0 13 3 86 0 14 3 86 0 15 3 86 0 16 3 86 0 17 3 86 0 18 3 86 0 19 3 86 0 21 3 86 0 22 10 149 0 23 3 86 0 24 3 86 0 25 3 86 0 26 3 86 0 27 3 86 0 28 3 86 0 29 3 86 0 30 3 86 0 31 3 86 0 32 3 86 0 33 3 86 0 34 3 86 0 35 3 86 0 36 3 86 0 37 3 86 0 38 3 86 0 39 3 86 0 41 3 86 0 42 3 86 0 43 3 86 0 44 3 86 0 45 3 86 0 46 3 86 0 47 3 86 0 48 3 86 0 49 3 86 0 50 3 86 0 51 3 86 0 52 3 86 0 54 3 86 0 55 3 86 0 85 3 86 0 88 3 86 0 98 3 86 0 124 3 86 0 125 0 213 0 135 0 18 0 136 3 86 0 137 3 86 0 138 10 153 0 162 0 253 0 163 10 157 0 175 10 161 0 179 3 86 1 235 0 111 1 236 3 86 1 237] 
#[1 5 1 0 2 3 90 0 3 3 90 0 4 3 90 0 5 10 145 0 6 3 90 0 7 3 90 0 8 3 90 0 9 3 90 0 10 3 90 0 11 3 90 0 12 3 90 0 13 3 90 0 14 3 90 0 15 3 90 0 16 3 90 0 17 3 90 0 18 3 90 0 19 3 90 0 21 3 90 0 22 10 149 0 23 3 90 0 24 3 90 0 25 3 90 0 26 3 90 0 27 3 90 0 28 3 90 0 29 3 90 0 30 3 90 0 31 3 90 0 32 3 90 0 33 3 90 0 34 3 90 0 35 3 90 0 36 3 90 0 37 3 90 0 38 3 90 0 39 3 90 0 41 3 90 0 42 3 90 0 43 3 90 0 44 3 90 0 45 3 90 0 46 3 90 0 47 3 90 0 48 3 90 0 49 3 90 0 50 3 90 0 51 3 90 0 52 3 90 0 54 3 90 0 55 3 90 0 85 3 90 0 88 3 90 0 98 3 90 0 124 3 90 0 125 0 213 0 135 0 18 0 136 3 90 0 137 3 90 0 138 10 153 0 162 0 253 0 163 10 157 0 175 10 161 0 179 3 90 1 235 0 115 1 236 3 90 1 237] 
#[0 3 94 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 98 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 102 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 106 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 110 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 114 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 118 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 122 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 126 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 130 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 134 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 138 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 142 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[0 3 146 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[0 3 150 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 154 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 158 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 10 177 0 199 10 177 0 200 1 1 1 8 10 177 1 11 1 129 1 12 1 133 1 13 1 137 1 16 10 177 1 17 1 1 1 22 10 177 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 3 162 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[1 10 181 0 53 10 185 0 56] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 10 189 0 184 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[0 3 166 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 127 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 170 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 127 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 3 174 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 127 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 10 193 0 184 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 10 197 0 184 10 197 0 185 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 10 201 0 184 10 201 0 185 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 10 205 0 187 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 10 209 0 187 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 10 213 0 187 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 10 217 0 188 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 10 221 0 188 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 10 225 0 188 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 10 229 0 188 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 10 233 0 188 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 10 237 0 188 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 10 241 0 189 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 10 245 0 189 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 10 249 0 189 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 10 253 0 189 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 11 1 0 190 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 11 5 0 191 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 11 9 0 192 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 11 13 0 193 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 11 17 0 193 11 21 0 194 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 11 25 0 193 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 11 29 0 199 11 29 0 200 1 1 1 8 11 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 11 29 1 17 1 1 1 22 11 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 11 33 0 199 11 33 0 200 1 1 1 8 11 33 1 11 1 129 1 12 1 133 1 13 1 137 1 16 11 33 1 17 1 1 1 22 11 33 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 119 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 11 49 0 199 11 49 0 200 1 1 1 8 11 49 1 11 1 129 1 12 1 133 1 13 11 45 1 14 11 49 1 15 1 137 1 16 11 49 1 17 1 1 1 22 11 49 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 11 53 0 188 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[1 3 178 0 4 3 178 0 139 3 178 0 141 11 57 1 96 11 61 1 97] 
#[1 0 126 0 15 11 65 0 140 11 69 1 83 11 69 1 84 11 69 1 85 11 81 1 86 11 85 1 87 11 89 1 101] 
#[0 11 93 0 56] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 11 97 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 11 101 0 144 2 197 1 75 2 201 1 76 2 205 1 106 7 189 1 107 7 193 1 108 11 105 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 11 105 1 135 11 105 1 136 2 225 1 137 2 225 1 139] 
#[1 6 53 0 2 2 161 0 12 0 193 0 127 11 109 0 144 6 65 1 106 11 113 1 152] 
#[0 11 117 0 2] 
#[0 3 182 0 20] 
#[0 3 186 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 11 121 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 6 173 0 210 0 61 0 211 6 173 0 212 0 69 0 213 0 6 1 236] 
#[0 3 190 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 193 0 127 11 125 0 144] 
#[0 3 194 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 193 0 127 11 129 0 144] 
#[0 3 198 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 11 133 0 120] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 11 137 0 9 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 11 157 0 64 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 11 157 0 91 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 11 141 0 118 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 11 145 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 11 145 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 11 149 0 199 11 149 0 200 11 149 0 202 11 153 0 212 11 157 0 213 11 161 0 238 1 1 1 8 11 149 1 11 1 129 1 12 1 133 1 13 1 137 1 16 11 149 1 17 1 1 1 22 11 149 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 11 165 0 2] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 11 169 0 199 11 169 0 200 11 169 0 202 1 1 1 8 11 169 1 11 1 129 1 12 1 133 1 13 1 137 1 16 11 169 1 17 1 1 1 22 11 169 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 3 202 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 11 173 0 199 11 173 0 200 11 173 0 202 1 1 1 8 11 173 1 11 1 129 1 12 1 133 1 13 1 137 1 16 11 173 1 17 1 1 1 22 11 173 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 11 177 0 199 11 177 0 200 11 177 0 202 1 1 1 8 11 177 1 11 1 129 1 12 1 133 1 13 1 137 1 16 11 177 1 17 1 1 1 22 11 177 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 11 181 0 8 6 29 0 124] 
#[1 11 185 0 61 11 189 0 77 11 193 0 254 11 197 0 255] 
#[1 3 206 0 8 3 206 0 9 8 53 0 24 3 206 0 124 11 201 0 161] 
#[1 11 205 0 8 11 209 0 124] 
#[0 3 210 0 8 0 9 0 124] 
#[1 8 53 0 24 11 213 0 161] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 11 217 0 144 11 221 0 219 11 221 0 220 11 221 0 221 11 225 1 157 11 229 1 158] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 11 233 0 199 11 233 0 200 11 233 0 202 1 1 1 8 11 233 1 11 1 129 1 12 1 133 1 13 1 137 1 16 11 233 1 17 1 1 1 22 11 233 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 11 237 0 199 11 237 0 200 11 237 0 202 1 1 1 8 11 237 1 11 1 129 1 12 1 133 1 13 1 137 1 16 11 237 1 17 1 1 1 22 11 237 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 11 245 0 203 11 245 0 206 11 245 0 207 11 245 0 208 11 245 0 216 11 245 0 230 11 245 0 231 11 245 0 232 11 245 0 233 11 245 0 234 11 245 0 235 11 245 0 236 11 245 0 237 11 245 0 240 11 245 0 241 11 245 0 243 11 245 0 244 11 245 0 245 11 245 0 250 11 245 0 251 11 245 0 252 11 245 0 253 11 245 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 3 214 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 3 218 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 64 0 66 0 67 0 69 0 70 0 71 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 34 0 4 0 34 0 6 11 249 0 73 0 34 0 127 0 34 1 236] 
#[1 11 253 0 62 12 1 0 64 6 185 0 73 12 5 0 80 12 9 0 82 12 13 0 91 12 17 0 93 12 21 0 94 12 25 0 118 12 45 1 178 12 33 1 218 12 37 1 221 12 41 1 222 12 45 1 228 12 49 1 229] 
#[1 0 193 0 127 12 53 0 144] 
#[1 3 121 0 4 12 57 0 24 12 61 0 27 12 65 1 69 12 69 1 236] 
#[1 12 73 0 2 12 77 0 27 0 193 0 127 12 81 0 144] 
#[1 4 229 0 2 3 193 0 4 4 233 0 23 3 197 0 27 0 193 0 127 3 221 0 131 12 85 0 144 3 205 1 58 3 209 1 59 3 213 1 60 3 217 1 61 3 221 1 65 3 209 1 66 3 221 1 75 3 233 1 236] 
#[1 0 193 0 127 12 89 0 144] 
#[0 12 93 0 128] 
#[1 0 193 0 127 12 97 0 144 12 101 1 184] 
#[1 0 193 0 127 12 105 0 144] 
#[0 3 222 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 3 226 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 3 230 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 3 234 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 3 238 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 8 153 0 1 8 157 0 62 8 161 0 63 12 109 0 74 8 165 1 234] 
#[0 3 242 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 3 246 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 3 250 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 3 254 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 2 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 6 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 10 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 14 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 18 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 22 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 26 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 30 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 34 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 38 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 42 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 46 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 50 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 6 53 0 2 6 57 0 12 12 113 0 80 6 65 1 106 6 69 1 152] 
#[1 7 81 0 2 12 117 0 5 7 89 0 6 2 161 0 12 7 93 0 95 7 97 0 103 8 253 0 123 0 193 0 127 7 101 0 128 7 121 0 131 7 125 0 132 9 1 0 144 12 121 0 145 12 121 0 157 12 121 0 158 12 121 0 159 9 9 0 222 9 13 0 223 9 17 0 226 9 17 0 228 7 121 1 75 7 125 1 76 7 129 1 106 7 133 1 126 7 137 1 127 7 141 1 128 7 141 1 140 7 141 1 142 7 141 1 148 7 141 1 149 7 141 1 150 9 25 1 236] 
#[1 2 149 0 2 7 57 0 4 7 61 0 6 12 125 0 7 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 4 41 0 123 12 129 0 124 0 193 0 127 2 197 0 131 2 201 0 132 7 65 0 144 9 33 0 151 4 53 0 219 4 53 0 220 4 53 0 221 9 37 0 224 9 41 0 225 9 45 0 227 9 45 0 228 9 49 0 229 2 197 1 75 2 201 1 76 2 205 1 106 7 181 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 7 177 1 131 7 181 1 132 2 213 1 133 2 217 1 134 7 181 1 135 7 181 1 136 2 225 1 137 2 225 1 139 7 77 1 236] 
#[1 0 123 0 3 0 123 0 5 1 226 0 6 0 123 0 7 1 226 0 8 1 226 0 12 1 230 0 23 8 53 0 24 1 226 0 41 1 226 0 49 0 123 0 124 9 101 0 161] 
#[0 12 133 0 3] 
#[0 12 137 0 3] 
#[1 0 38 0 1 0 38 0 3 0 38 0 4 0 38 0 5 0 38 0 6 0 38 0 7 0 38 0 24 0 38 0 44 0 38 0 53 0 83 0 99 0 87 0 100 0 91 0 101 0 95 0 102 0 38 0 103 0 38 0 112 0 38 0 124 0 38 0 125 0 99 0 127 9 137 0 144 9 141 1 36 9 145 1 146] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 12 141 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 4 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 85 0 88 0 89 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 101 0 102 0 103 0 105 0 107 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 124 0 125 0 127 0 128 0 129 0 131 0 132 0 133 0 135 0 136 0 137 0 138 0 139 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 12 145 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 12 149 0 199 12 149 0 200 1 1 1 8 12 149 1 11 1 129 1 12 1 133 1 13 1 137 1 16 12 149 1 17 1 1 1 22 12 149 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 12 153 0 2 2 161 0 12 12 157 1 106] 
#[1 8 249 0 6 7 101 0 128 7 121 0 131 7 125 0 132 12 161 0 145 12 161 0 157 12 161 0 158 12 161 0 159 7 121 1 75 7 125 1 76] 
#[0 4 58 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 124 0 125] 
#[0 4 62 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 124 0 125] 
#[1 7 81 0 2 4 66 0 5 4 66 0 8 2 161 0 12 12 185 0 44 12 185 0 53 4 66 0 124 12 173 0 125 7 129 1 106 12 177 1 141 12 181 1 142 12 185 1 174] 
#[0 4 70 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 124 0 125] 
#[0 4 74 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 124 0 125] 
#[0 4 78 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 124 0 125] 
#[0 4 82 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 124 0 125] 
#[0 12 189 0 2] 
#[0 12 193 0 5] 
#[1 4 86 0 5 12 197 0 8 12 201 0 124] 
#[0 4 90 0 5 0 8 0 124] 
#[0 4 94 0 5 0 8 0 124] 
#[0 4 98 0 5 0 8 0 124] 
#[0 4 102 0 5 0 8 0 124] 
#[0 4 106 0 5 0 8 0 124] 
#[0 4 110 0 5 0 8 0 124] 
#[0 4 114 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 12 205 0 7] 
#[0 4 118 0 7 0 124] 
#[1 12 209 0 7 12 213 0 124] 
#[0 4 122 0 7 0 124] 
#[1 4 126 0 15 12 217 0 75 4 126 0 124 12 221 1 109] 
#[1 12 225 0 15 12 229 0 124] 
#[0 4 130 0 15 0 124] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 7 73 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 7 73 1 135 7 73 1 136 2 225 1 137 2 225 1 139] 
#[1 4 134 0 3 4 134 0 4 4 134 0 5 0 127 0 6 4 134 0 7 4 134 0 8 4 134 0 9 4 134 0 10 4 134 0 12 4 134 0 13 4 134 0 15 4 134 0 16 4 134 0 19 4 134 0 20 4 134 0 21 4 134 0 22 4 134 0 24 4 134 0 25 4 134 0 26 4 134 0 27 4 134 0 28 4 134 0 36 4 134 0 38 4 134 0 41 4 134 0 42 4 134 0 44 4 134 0 46 4 134 0 48 4 134 0 49 4 134 0 50 4 134 0 52 4 134 0 54 4 134 0 55 4 134 0 65 4 134 0 85 4 134 0 88 4 134 0 99 4 134 0 100 4 134 0 101 4 134 0 102 4 134 0 103 4 134 0 107 4 134 0 124 4 134 0 125 4 134 0 128 4 134 0 131 4 134 0 132 4 134 0 137 4 134 0 138 7 245 0 242 4 134 1 236 4 134 1 237] 
#[1 4 138 0 3 4 138 0 4 4 138 0 5 0 131 0 6 4 138 0 7 4 138 0 8 4 138 0 9 4 138 0 10 4 138 0 12 4 138 0 13 4 138 0 15 4 138 0 16 4 138 0 19 4 138 0 20 4 138 0 21 4 138 0 22 4 138 0 24 4 138 0 25 4 138 0 26 4 138 0 27 4 138 0 28 4 138 0 36 4 138 0 38 4 138 0 41 4 138 0 42 4 138 0 44 4 138 0 46 4 138 0 48 4 138 0 49 4 138 0 50 4 138 0 52 4 138 0 54 4 138 0 55 4 138 0 65 4 138 0 85 4 138 0 88 4 138 0 99 4 138 0 100 4 138 0 101 4 138 0 102 4 138 0 103 4 138 0 107 4 138 0 124 4 138 0 125 4 138 0 128 4 138 0 131 4 138 0 132 4 138 0 137 4 138 0 138 7 245 0 242 4 138 1 236 4 138 1 237] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 12 233 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 12 237 0 2] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 12 241 0 7 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 12 245 0 124 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 7 181 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 12 249 1 131 7 181 1 132 2 213 1 133 2 217 1 134 7 181 1 135 7 181 1 136 2 225 1 137 2 225 1 139] 
#[1 1 114 0 6 12 253 0 242] 
#[0 4 142 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[1 4 146 0 3 4 146 0 4 4 146 0 5 4 146 0 6 4 146 0 7 4 146 0 8 4 146 0 9 4 146 0 10 4 146 0 12 4 146 0 13 4 146 0 15 4 146 0 16 4 146 0 19 4 146 0 20 4 146 0 21 4 146 0 22 13 1 0 23 4 146 0 24 4 146 0 25 4 146 0 26 4 146 0 27 4 146 0 28 4 146 0 36 4 146 0 38 4 146 0 41 4 146 0 42 4 146 0 44 4 146 0 46 4 146 0 48 4 146 0 49 4 146 0 50 4 146 0 52 4 146 0 54 4 146 0 55 4 146 0 65 4 146 0 85 4 146 0 88 4 146 0 99 4 146 0 100 4 146 0 101 4 146 0 102 4 146 0 103 4 146 0 107 4 146 0 124 4 146 0 125 4 146 0 128 4 146 0 131 4 146 0 132 4 146 0 137 4 146 0 138 4 146 1 236 4 146 1 237] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 13 5 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 7 197 0 2 2 153 0 4 2 157 0 6 2 165 0 86 2 169 0 90 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 13 9 1 115 13 9 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 13 9 1 134 2 225 1 137 2 225 1 139] 
#[1 7 197 0 2 2 153 0 4 2 157 0 6 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 13 13 1 117 13 13 1 118 13 13 1 119 13 13 1 120 13 13 1 121 13 13 1 122 2 249 1 123 2 253 1 124 13 13 1 125 13 13 1 129 13 13 1 130 13 13 1 137 13 13 1 139] 
#[0 13 17 0 6] 
#[1 10 49 0 12 13 21 1 110] 
#[1 0 193 0 127 13 25 0 144] 
#[0 2 74 0 2] 
#[0 13 29 0 2] 
#[1 3 65 0 128 8 1 0 129 13 33 1 46] 
#[0 13 37 0 2] 
#[0 13 41 0 2] 
#[0 13 45 0 2] 
#[1 0 6 0 2 0 6 0 4 4 150 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 13 49 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 13 53 1 48 13 57 1 49 0 6 1 236] 
#[0 4 154 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 13 61 0 8] 
#[1 8 249 0 6 8 61 0 81 8 65 0 106 7 101 0 128 7 121 0 131 7 125 0 132 8 69 0 145 8 69 0 157 8 69 0 158 8 69 0 159 7 121 1 75 7 125 1 76] 
#[0 4 158 0 8] 
#[0 4 162 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 13 65 1 2 4 73 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 13 69 0 199 13 69 0 200 1 1 1 8 13 69 1 11 1 129 1 12 1 133 1 13 1 137 1 16 13 69 1 17 1 1 1 22 13 69 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 4 166 0 8] 
#[1 8 249 0 6 7 101 0 128 7 121 0 131 7 125 0 132 13 73 0 145 13 73 0 157 13 73 0 158 13 73 0 159 7 121 1 75 7 125 1 76] 
#[1 8 249 0 6 7 101 0 128 7 121 0 131 7 125 0 132 13 77 0 145 13 77 0 157 13 77 0 158 13 77 0 159 7 121 1 75 7 125 1 76] 
#[1 6 53 0 2 2 161 0 12 13 85 0 44 13 85 0 53 6 65 1 106 13 81 1 152 13 85 1 174] 
#[1 8 153 0 1 0 135 0 6 13 89 0 57 13 93 0 65 0 139 0 99 0 143 0 100 0 147 0 101 0 151 0 102 4 170 0 103 0 155 0 107 0 159 0 128 0 163 0 131 0 167 0 132 13 101 0 145 13 101 0 157 13 101 0 158 13 101 0 159 7 121 1 75 7 125 1 76 13 105 1 146 13 109 1 153 13 113 1 154 13 117 1 173 8 165 1 234 13 121 1 236] 
#[0 13 125 0 8] 
#[0 4 174 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 4 178 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 4 182 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 4 186 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 4 190 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 4 194 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 4 198 0 8 0 79] 
#[0 4 202 0 5 0 56 0 79 0 124] 
#[1 4 206 0 5 13 129 0 56 4 206 0 124] 
#[1 13 133 0 5 13 137 0 124] 
#[0 4 210 0 5 0 124] 
#[0 4 214 0 5 0 56 0 79 0 124] 
#[0 13 141 0 128 0 131 1 56 1 75] 
#[1 13 145 0 2 13 149 0 27 0 193 0 127 13 153 0 144 13 157 1 236] 
#[0 13 161 0 8] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 13 165 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 13 169 0 2 0 193 0 127 13 173 0 144] 
#[0 13 177 0 2] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 4 125 0 57 0 141 0 62 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 13 181 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 249 0 171 13 185 0 172 13 185 0 173 13 185 0 174 1 37 0 177 4 249 0 181 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 4 253 1 236] 
#[1 4 189 0 4 4 193 0 75 0 193 0 127 13 189 0 144 13 193 1 38 4 205 1 39 13 197 1 236] 
#[0 13 201 0 62] 
#[0 4 218 0 1 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 57 0 62 0 63 0 65 0 74 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 1 236] 
#[0 13 205 0 131 1 65 1 75] 
#[0 13 209 0 8] 
#[0 4 222 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 11 249 0 73] 
#[1 13 213 0 2 2 161 0 12 0 193 0 127 13 217 0 144 13 221 1 106 13 225 1 142 13 229 1 152] 
#[0 4 226 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 230 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 234 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 4 238 0 79] 
#[0 13 233 0 56] 
#[1 13 237 0 5 13 241 0 124] 
#[0 4 242 0 5 0 124] 
#[0 4 246 0 5 0 124] 
#[0 13 245 0 116] 
#[1 0 193 0 127 13 249 0 144 13 249 1 66] 
#[0 13 253 0 8] 
#[1 3 193 0 4 3 197 0 27 14 1 1 60 14 5 1 61] 
#[0 4 250 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 3 193 0 4 0 193 0 127 14 9 0 144 14 9 1 59 14 13 1 61 14 9 1 66] 
#[0 4 254 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 12 149 0 199 12 149 0 200 1 1 1 8 12 149 1 11 1 129 1 12 1 133 1 13 1 137 1 16 12 149 1 17 1 1 1 22 12 149 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 193 0 127 14 17 0 144] 
#[1 2 214 0 3 2 214 0 5 2 214 0 7 8 53 0 24 2 214 0 124 9 101 0 161] 
#[0 14 21 0 125] 
#[0 14 25 0 5] 
#[1 14 29 0 5 14 33 0 124] 
#[0 5 2 0 5 0 124] 
#[0 5 6 0 5 0 124] 
#[1 9 145 0 99 9 145 0 100 9 145 0 101 9 145 0 102 0 193 0 127 9 137 0 144 9 145 1 146] 
#[0 5 10 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[1 3 241 0 4 3 245 0 6 14 37 0 7 4 41 0 123 9 165 0 124 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 14 41 0 227 14 41 0 228 14 45 0 229 7 77 1 236] 
#[1 14 49 0 7 14 53 0 124] 
#[0 5 14 0 7 0 124] 
#[0 5 18 0 7 0 124] 
#[0 14 57 0 7] 
#[0 5 22 0 8 0 124] 
#[0 5 26 0 1 0 2 0 4 0 5 0 6 0 8 0 9 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 3 249 0 144 14 61 0 215 4 5 0 219 4 5 0 220 4 5 0 221 14 61 1 159 14 61 1 160 4 25 1 236] 
#[0 5 30 0 8 0 124] 
#[1 12 173 0 125 14 65 1 141] 
#[1 12 173 0 125 14 69 1 141] 
#[1 3 121 0 4 3 125 0 27 14 73 1 68 14 77 1 69] 
#[1 2 250 0 2 0 171 0 3 2 250 0 6 0 171 0 7 2 250 0 10 2 250 0 11 2 250 0 12 2 250 0 13 2 250 0 14 2 250 0 15 2 250 0 16 2 250 0 17 2 250 0 18 2 250 0 19 2 250 0 21 2 250 0 22 2 250 0 23 0 171 0 24 2 250 0 25 2 250 0 26 2 250 0 27 2 250 0 28 2 250 0 29 2 250 0 30 2 250 0 31 2 250 0 32 2 250 0 33 2 250 0 34 2 250 0 35 2 250 0 36 2 250 0 37 2 250 0 38 2 250 0 39 2 250 0 41 2 250 0 42 2 250 0 43 2 250 0 44 2 250 0 45 2 250 0 46 2 250 0 47 2 250 0 48 2 250 0 49 2 250 0 50 2 250 0 51 2 250 0 52 2 250 0 54 2 250 0 55 2 250 0 85 2 250 0 88 0 171 0 124 2 250 0 135 2 250 0 136 2 250 1 235 2 250 1 236] 
#[1 0 101 0 2 0 23 0 4 4 37 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 14 81 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 9 149 0 199 9 149 0 200 9 97 0 219 9 97 0 220 9 97 0 221 1 1 1 8 9 149 1 11 1 129 1 12 1 133 1 13 1 137 1 16 9 149 1 17 1 1 1 22 9 149 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 23 0 4 4 37 0 6 14 85 0 7 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 9 85 0 123 9 165 0 124 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 4 45 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 9 169 0 152 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 9 173 0 199 9 173 0 200 4 53 0 219 4 53 0 220 4 53 0 221 14 41 0 227 14 41 0 228 14 45 0 229 1 1 1 8 9 173 1 11 1 129 1 12 1 133 1 13 1 137 1 16 9 173 1 17 1 1 1 22 9 173 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 89 1 236] 
#[1 5 34 0 3 5 34 0 7 12 173 0 125 14 89 1 141] 
#[0 5 38 0 3 0 7] 
#[0 5 42 0 3 0 5 0 7 0 124] 
#[0 5 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 50 0 3 0 5 0 7 0 124] 
#[0 5 54 0 20] 
#[1 5 58 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 14 97 0 227 14 97 0 228 14 93 0 229 14 93 1 5 14 97 1 6 7 77 1 236] 
#[0 5 62 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 57 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 1 236] 
#[0 5 66 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 57 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 1 236] 
#[0 5 70 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 57 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 1 236] 
#[0 5 74 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 57 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 1 236] 
#[1 14 105 0 44 14 105 0 53 12 173 0 125 14 101 1 141 14 105 1 174] 
#[1 8 153 0 1 5 78 0 3 5 78 0 4 5 78 0 5 5 78 0 6 5 78 0 7 5 78 0 24 5 78 0 44 5 78 0 53 5 78 0 99 5 78 0 100 5 78 0 101 5 78 0 102 5 78 0 103 5 78 0 112 5 78 0 124 5 78 0 125 5 78 0 127 14 109 1 143 8 165 1 234] 
#[1 0 193 0 127 14 113 0 144] 
#[0 5 82 0 5 0 7 0 124] 
#[0 5 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 14 117 0 7 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 4 97 0 123 9 165 0 124 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 14 121 0 152 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 14 125 0 199 14 125 0 200 1 1 1 8 14 125 1 11 1 129 1 12 1 133 1 13 1 137 1 16 14 125 1 17 1 1 1 22 14 125 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 5 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 94 0 2 0 4 0 6 0 7 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 62 0 70 0 76 0 80 0 84 0 95 0 96 0 109 0 112 0 114 0 117 0 119 0 122 0 123 0 124 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 5 98 0 7 0 124] 
#[0 5 102 0 7 0 124] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 11 105 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 11 105 1 135 11 105 1 136 2 225 1 137 2 225 1 139] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 14 129 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 14 133 0 2 0 193 0 127 14 137 0 144] 
#[1 14 141 0 2 14 145 1 236] 
#[1 2 161 0 12 14 149 1 106] 
#[1 0 101 0 2 0 175 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 14 157 0 199 14 157 0 200 1 1 1 8 14 157 1 11 1 129 1 12 1 133 1 13 14 157 1 15 1 137 1 16 14 157 1 17 14 161 1 18 1 1 1 22 14 157 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 5 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 85 0 88 0 89 0 91 0 93 0 94 0 95 0 96 0 98 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 124 0 125 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 137 0 138 0 139 1 235 1 236 1 237] 
#[0 14 165 0 5] 
#[1 5 110 0 5 3 37 0 8 3 41 0 27 3 45 0 57 3 49 0 81 3 53 0 106 3 57 0 107 3 61 0 127 3 65 0 128 3 69 0 129 14 169 1 19 14 169 1 23 14 169 1 28 14 169 1 32 14 169 1 42 3 93 1 43 3 97 1 44 3 101 1 46 14 169 1 47 14 169 1 153 14 169 1 154 3 117 1 236] 
#[0 5 114 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236] 
#[1 5 118 0 4 10 21 1 236] 
#[0 5 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 14 173 0 5 3 37 0 8 3 41 0 27 3 45 0 57 3 49 0 81 3 53 0 106 3 57 0 107 3 61 0 127 3 65 0 128 3 69 0 129 9 213 1 19 9 213 1 23 9 213 1 28 9 213 1 32 14 177 1 40 9 209 1 41 9 213 1 42 3 93 1 43 3 97 1 44 3 101 1 46 9 213 1 47 9 213 1 153 9 213 1 154 3 117 1 236] 
#[1 0 193 0 127 2 193 0 144 14 185 1 122 2 249 1 123 2 253 1 124 14 185 1 166] 
#[1 0 193 0 127 2 193 0 144 14 197 1 122 2 249 1 123 2 253 1 124 14 193 1 163 14 197 1 164] 
#[1 5 126 0 4 9 233 0 87 14 201 1 167] 
#[0 5 130 0 4] 
#[0 14 205 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 14 209 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 14 213 0 2] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 14 217 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 14 221 0 3] 
#[0 5 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 179 0 2 5 142 0 3 5 142 0 4 5 142 0 5 0 179 0 6 5 142 0 7 5 142 0 8 5 142 0 9 5 142 0 10 5 142 0 11 5 142 0 12 5 142 0 13 5 142 0 14 5 142 0 15 5 142 0 16 5 142 0 17 5 142 0 18 5 142 0 19 5 142 0 21 5 142 0 22 0 179 0 23 5 142 0 24 5 142 0 25 5 142 0 26 5 142 0 27 5 142 0 28 5 142 0 29 5 142 0 30 5 142 0 31 5 142 0 32 5 142 0 33 5 142 0 34 5 142 0 35 5 142 0 36 5 142 0 37 5 142 0 38 5 142 0 39 5 142 0 41 5 142 0 42 5 142 0 43 5 142 0 44 0 179 0 45 5 142 0 46 5 142 0 47 5 142 0 48 5 142 0 49 5 142 0 50 5 142 0 51 5 142 0 52 5 142 0 54 5 142 0 55 5 142 0 85 5 142 0 88 5 142 0 98 5 142 0 124 5 142 0 125 0 179 0 135 0 179 0 136 5 142 0 137 5 142 0 138 5 142 1 235 0 179 1 236 5 142 1 237] 
#[0 10 181 0 53] 
#[0 5 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 14 225 0 199 14 225 0 200 1 1 1 8 14 225 1 11 1 129 1 12 1 133 1 13 1 137 1 16 14 225 1 17 1 1 1 22 14 225 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 14 229 0 3 14 233 0 124] 
#[0 5 150 0 3 0 124] 
#[1 14 237 0 7 6 29 0 124] 
#[0 5 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 14 241 1 111 14 245 1 112 14 245 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 14 245 1 135 14 245 1 136 2 225 1 137 2 225 1 139] 
#[0 14 253 0 2] 
#[0 5 158 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[1 1 98 0 4 1 98 0 139 1 98 0 141 15 1 1 102] 
#[0 5 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 15 5 0 199 15 5 0 200 1 1 1 8 15 5 1 11 1 129 1 12 1 133 1 13 1 137 1 16 15 5 1 17 1 1 1 22 15 5 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 2 70 0 2 4 58 0 125] 
#[1 5 166 0 5 8 53 0 24 5 166 0 124 15 9 0 161] 
#[1 15 13 0 5 15 17 0 124] 
#[0 5 170 0 5 0 124] 
#[0 15 21 0 125] 
#[0 5 174 0 5 0 124] 
#[0 5 178 0 5 0 124] 
#[0 8 49 0 2] 
#[1 6 29 0 124 15 25 0 137 15 29 0 138 15 33 0 164 15 37 0 165] 
#[1 15 41 0 7 6 29 0 124] 
#[0 5 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 15 45 0 199 15 45 0 200 15 45 0 202 1 1 1 8 15 45 1 11 1 129 1 12 1 133 1 13 1 137 1 16 15 45 1 17 1 1 1 22 15 45 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 5 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 15 49 0 199 15 49 0 200 15 49 0 202 1 1 1 8 15 49 1 11 1 129 1 12 1 133 1 13 1 137 1 16 15 49 1 17 1 1 1 22 15 49 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 15 53 0 128 15 57 0 129] 
#[0 5 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 15 61 0 7 6 29 0 124] 
#[0 5 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 5 230 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 5 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 15 65 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 15 65 1 135 15 65 1 136 2 225 1 137 2 225 1 139] 
#[0 5 238 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[0 5 242 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[1 5 246 0 3 5 246 0 5 5 246 0 7 5 246 0 8 5 246 0 9 5 193 0 10 5 246 0 12 5 246 0 13 5 246 0 15 5 246 0 16 5 246 0 19 5 246 0 21 5 246 0 22 5 246 0 25 5 246 0 26 5 193 0 27 5 246 0 36 5 246 0 38 5 246 0 41 5 246 0 42 5 246 0 44 5 246 0 46 5 193 0 48 5 246 0 49 5 246 0 50 5 246 0 52 5 246 0 54 5 246 0 55 5 246 0 85 5 246 0 88 5 246 0 124 5 246 0 125 5 246 0 137 5 246 0 138 5 193 0 186 5 246 1 237] 
#[1 5 250 0 3 5 250 0 5 5 250 0 7 5 250 0 8 5 250 0 9 5 193 0 10 5 250 0 12 5 250 0 13 5 250 0 15 5 250 0 16 5 250 0 19 5 250 0 21 5 250 0 22 5 250 0 25 5 250 0 26 5 193 0 27 5 250 0 36 5 250 0 38 5 250 0 41 5 250 0 42 5 250 0 44 5 250 0 46 5 193 0 48 5 250 0 49 5 250 0 50 5 250 0 52 5 250 0 54 5 250 0 55 5 250 0 85 5 250 0 88 5 250 0 124 5 250 0 125 5 250 0 137 5 250 0 138 5 193 0 186 5 250 1 237] 
#[1 5 254 0 3 5 254 0 5 5 254 0 7 5 254 0 8 5 254 0 9 5 254 0 12 5 254 0 13 5 254 0 15 5 254 0 16 5 254 0 19 5 254 0 21 5 254 0 22 5 254 0 25 5 254 0 26 5 197 0 36 5 201 0 38 5 254 0 41 5 254 0 42 5 254 0 44 5 254 0 46 5 254 0 49 5 254 0 50 5 254 0 52 5 254 0 54 5 254 0 55 5 254 0 85 5 254 0 88 5 254 0 124 5 254 0 125 5 254 0 137 5 254 0 138 5 254 1 237] 
#[1 6 2 0 3 6 2 0 5 6 2 0 7 6 2 0 8 6 2 0 9 6 2 0 12 6 2 0 13 6 2 0 15 6 2 0 16 6 2 0 19 6 2 0 21 6 2 0 22 6 2 0 25 6 2 0 26 5 197 0 36 5 201 0 38 6 2 0 41 6 2 0 42 6 2 0 44 6 2 0 46 6 2 0 49 6 2 0 50 6 2 0 52 6 2 0 54 6 2 0 55 6 2 0 85 6 2 0 88 6 2 0 124 6 2 0 125 6 2 0 137 6 2 0 138 6 2 1 237] 
#[1 6 6 0 3 6 6 0 5 6 6 0 7 6 6 0 8 6 6 0 9 6 6 0 12 6 6 0 13 6 6 0 15 6 6 0 16 6 6 0 19 6 6 0 21 6 6 0 22 6 6 0 25 6 6 0 26 5 197 0 36 5 201 0 38 6 6 0 41 6 6 0 42 6 6 0 44 6 6 0 46 6 6 0 49 6 6 0 50 6 6 0 52 6 6 0 54 6 6 0 55 6 6 0 85 6 6 0 88 6 6 0 124 6 6 0 125 6 6 0 137 6 6 0 138 6 6 1 237] 
#[1 6 10 0 3 6 10 0 5 6 10 0 7 6 10 0 8 6 10 0 9 6 10 0 12 5 205 0 13 6 10 0 15 5 209 0 16 5 213 0 19 6 10 0 21 6 10 0 22 6 10 0 25 6 10 0 26 6 10 0 41 6 10 0 42 6 10 0 44 6 10 0 46 6 10 0 49 6 10 0 50 6 10 0 52 6 10 0 54 6 10 0 55 6 10 0 85 6 10 0 88 6 10 0 124 6 10 0 125 6 10 0 137 6 10 0 138 6 10 1 237] 
#[1 6 14 0 3 6 14 0 5 6 14 0 7 6 14 0 8 6 14 0 9 6 14 0 12 5 205 0 13 6 14 0 15 5 209 0 16 5 213 0 19 6 14 0 21 6 14 0 22 6 14 0 25 6 14 0 26 6 14 0 41 6 14 0 42 6 14 0 44 6 14 0 46 6 14 0 49 6 14 0 50 6 14 0 52 6 14 0 54 6 14 0 55 6 14 0 85 6 14 0 88 6 14 0 124 6 14 0 125 6 14 0 137 6 14 0 138 6 14 1 237] 
#[1 6 18 0 3 6 18 0 5 6 18 0 7 6 18 0 8 6 18 0 9 6 18 0 12 5 205 0 13 6 18 0 15 5 209 0 16 5 213 0 19 6 18 0 21 6 18 0 22 6 18 0 25 6 18 0 26 6 18 0 41 6 18 0 42 6 18 0 44 6 18 0 46 6 18 0 49 6 18 0 50 6 18 0 52 6 18 0 54 6 18 0 55 6 18 0 85 6 18 0 88 6 18 0 124 6 18 0 125 6 18 0 137 6 18 0 138 6 18 1 237] 
#[1 6 22 0 3 6 22 0 5 6 22 0 7 6 22 0 8 6 22 0 9 6 22 0 12 5 205 0 13 6 22 0 15 5 209 0 16 5 213 0 19 6 22 0 21 6 22 0 22 6 22 0 25 6 22 0 26 6 22 0 41 6 22 0 42 6 22 0 44 6 22 0 46 6 22 0 49 6 22 0 50 6 22 0 52 6 22 0 54 6 22 0 55 6 22 0 85 6 22 0 88 6 22 0 124 6 22 0 125 6 22 0 137 6 22 0 138 6 22 1 237] 
#[1 6 26 0 3 6 26 0 5 6 26 0 7 6 26 0 8 6 26 0 9 6 26 0 12 5 205 0 13 6 26 0 15 5 209 0 16 5 213 0 19 6 26 0 21 6 26 0 22 6 26 0 25 6 26 0 26 6 26 0 41 6 26 0 42 6 26 0 44 6 26 0 46 6 26 0 49 6 26 0 50 6 26 0 52 6 26 0 54 6 26 0 55 6 26 0 85 6 26 0 88 6 26 0 124 6 26 0 125 6 26 0 137 6 26 0 138 6 26 1 237] 
#[1 6 30 0 3 6 30 0 5 6 30 0 7 6 30 0 8 6 30 0 9 6 30 0 12 5 205 0 13 6 30 0 15 5 209 0 16 5 213 0 19 6 30 0 21 6 30 0 22 6 30 0 25 6 30 0 26 6 30 0 41 6 30 0 42 6 30 0 44 6 30 0 46 6 30 0 49 6 30 0 50 6 30 0 52 6 30 0 54 6 30 0 55 6 30 0 85 6 30 0 88 6 30 0 124 6 30 0 125 6 30 0 137 6 30 0 138 6 30 1 237] 
#[1 6 34 0 3 6 34 0 5 6 34 0 7 6 34 0 8 6 34 0 9 5 217 0 12 5 221 0 15 5 225 0 21 5 229 0 22 6 34 0 25 6 34 0 26 6 34 0 41 6 34 0 42 6 34 0 44 6 34 0 46 6 34 0 49 6 34 0 50 6 34 0 52 6 34 0 54 6 34 0 55 5 233 0 85 5 237 0 88 6 34 0 124 6 34 0 125 6 34 0 137 6 34 0 138 6 34 1 237] 
#[1 6 38 0 3 6 38 0 5 6 38 0 7 6 38 0 8 6 38 0 9 5 217 0 12 5 221 0 15 5 225 0 21 5 229 0 22 6 38 0 25 6 38 0 26 6 38 0 41 6 38 0 42 6 38 0 44 6 38 0 46 6 38 0 49 6 38 0 50 6 38 0 52 6 38 0 54 6 38 0 55 5 233 0 85 5 237 0 88 6 38 0 124 6 38 0 125 6 38 0 137 6 38 0 138 6 38 1 237] 
#[1 6 42 0 3 6 42 0 5 6 42 0 7 6 42 0 8 6 42 0 9 5 217 0 12 5 221 0 15 5 225 0 21 5 229 0 22 6 42 0 25 6 42 0 26 6 42 0 41 6 42 0 42 6 42 0 44 6 42 0 46 6 42 0 49 6 42 0 50 6 42 0 52 6 42 0 54 6 42 0 55 5 233 0 85 5 237 0 88 6 42 0 124 6 42 0 125 6 42 0 137 6 42 0 138 6 42 1 237] 
#[1 6 46 0 3 6 46 0 5 6 46 0 7 6 46 0 8 6 46 0 9 5 217 0 12 5 221 0 15 5 225 0 21 5 229 0 22 6 46 0 25 6 46 0 26 6 46 0 41 6 46 0 42 6 46 0 44 6 46 0 46 6 46 0 49 6 46 0 50 6 46 0 52 6 46 0 54 6 46 0 55 5 233 0 85 5 237 0 88 6 46 0 124 6 46 0 125 6 46 0 137 6 46 0 138 6 46 1 237] 
#[1 6 50 0 3 6 50 0 5 6 50 0 7 6 50 0 8 6 50 0 9 5 241 0 25 5 245 0 26 6 50 0 41 6 50 0 42 6 50 0 44 6 50 0 46 6 50 0 49 6 50 0 50 6 50 0 52 5 249 0 54 5 253 0 55 6 50 0 124 6 50 0 125 6 50 0 137 6 50 0 138 6 50 1 237] 
#[1 6 54 0 3 6 54 0 5 6 54 0 7 6 54 0 8 6 54 0 9 6 1 0 41 6 54 0 42 6 54 0 44 6 54 0 46 6 54 0 49 6 54 0 50 6 54 0 52 6 54 0 124 6 54 0 125 6 54 0 137 6 54 0 138 6 54 1 237] 
#[1 6 58 0 3 6 58 0 5 6 58 0 7 6 58 0 8 6 58 0 9 6 58 0 42 6 58 0 44 6 58 0 46 6 58 0 49 6 58 0 50 6 5 0 52 6 58 0 124 6 58 0 125 6 58 0 137 6 58 0 138 6 58 1 237] 
#[1 6 62 0 3 6 62 0 5 6 62 0 7 6 62 0 8 6 62 0 9 6 62 0 42 6 62 0 44 6 9 0 49 6 62 0 50 6 62 0 124 6 62 0 125 6 62 0 137 6 62 0 138 6 62 1 237] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 0 246 0 9 0 246 0 42 0 246 0 44 6 9 0 49 0 246 0 50 0 246 0 124 0 246 0 125 0 246 0 137 0 246 0 138 0 246 1 237] 
#[1 6 66 0 3 6 66 0 5 6 66 0 7 6 66 0 8 6 66 0 9 6 13 0 42 6 66 0 44 6 66 0 50 6 66 0 124 6 66 0 125 6 66 0 137 6 66 0 138 6 66 1 237] 
#[1 6 70 0 3 6 70 0 5 6 70 0 7 6 70 0 8 6 70 0 9 6 70 0 44 6 70 0 46 6 9 0 49 6 70 0 124 6 70 0 125 6 70 0 137 6 70 0 138 6 70 1 237] 
#[0 15 69 0 125] 
#[0 6 74 0 3 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 15 77 1 9 15 81 1 10 0 6 1 236] 
#[0 6 82 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 6 86 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 6 90 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[1 6 94 0 3 6 94 0 5 6 94 0 7 6 94 0 8 6 94 0 9 6 94 0 12 5 205 0 13 6 94 0 15 5 209 0 16 5 213 0 19 6 94 0 21 6 94 0 22 6 94 0 25 6 94 0 26 6 94 0 41 6 94 0 42 6 94 0 44 6 94 0 46 6 94 0 49 6 94 0 50 6 94 0 52 6 94 0 54 6 94 0 55 6 94 0 85 6 94 0 88 6 94 0 124 6 94 0 125 6 94 0 137 6 94 0 138 6 94 1 237] 
#[1 0 22 0 139 15 85 1 81 15 89 1 100] 
#[1 6 98 0 4 0 183 0 139 15 93 0 141 15 101 1 78 15 101 1 79 1 201 1 80 15 101 1 98 1 209 1 100 15 105 1 105] 
#[1 6 106 0 4 6 106 0 10 6 106 0 15 15 109 0 23 15 113 0 125 6 106 0 140] 
#[1 6 98 0 4 15 117 0 10 0 126 0 15 15 121 0 140 15 149 1 84 15 129 1 88 15 133 1 89 15 137 1 90 15 133 1 91 15 133 1 92 15 149 1 93 15 153 1 101 15 157 1 105] 
#[0 6 110 0 4 0 10 0 15 0 140] 
#[0 6 114 0 4 0 10 0 15 0 140] 
#[0 6 118 0 140] 
#[1 15 161 0 140 15 165 1 86] 
#[0 15 169 0 15] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 15 173 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 15 173 1 135 15 173 1 136 2 225 1 137 2 225 1 139] 
#[0 15 177 0 3] 
#[1 1 226 0 6 1 226 0 12 0 187 0 15 1 230 0 23 1 226 0 41 1 226 0 49 12 217 0 75 4 126 0 124 12 221 1 109] 
#[0 15 181 0 15] 
#[1 6 53 0 2 2 161 0 12 6 65 1 106 15 185 1 152] 
#[0 15 189 0 4] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 15 193 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 6 122 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 15 197 0 8] 
#[0 15 201 0 8] 
#[0 15 205 0 2] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 15 209 0 9 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 15 213 0 199 15 213 0 200 15 213 0 202 1 1 1 8 15 213 1 11 1 129 1 12 1 133 1 13 1 137 1 16 15 213 1 17 1 1 1 22 15 213 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 15 217 0 144 15 221 0 217 6 145 0 218 15 225 0 219 15 225 0 220 15 225 0 221 15 229 0 239 6 153 1 236] 
#[1 0 202 0 9 0 202 0 10 5 165 0 11 0 202 0 12 0 202 0 13 5 165 0 14 0 202 0 15 0 202 0 16 5 165 0 17 5 165 0 18 0 202 0 19 0 202 0 21 0 202 0 22 5 165 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 5 165 0 29 5 165 0 30 5 165 0 31 5 165 0 32 5 165 0 33 5 165 0 34 5 165 0 35 0 202 0 36 5 145 0 37 0 202 0 38 5 149 0 39 0 202 0 41 0 202 0 42 5 165 0 43 0 202 0 44 0 202 0 46 5 165 0 47 0 202 0 48 0 202 0 49 0 202 0 50 5 165 0 51 0 202 0 52 0 202 0 54 0 202 0 55 0 191 0 85 0 202 0 88 15 237 0 98 0 202 0 124 5 165 0 201 5 165 1 235 5 173 1 236] 
#[1 15 241 0 9 6 29 0 124] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 15 245 0 9 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 15 249 0 199 15 249 0 200 15 249 0 202 1 1 1 8 15 249 1 11 1 129 1 12 1 133 1 13 1 137 1 16 15 249 1 17 1 1 1 22 15 249 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 15 253 0 144 3 253 0 214 4 1 0 215 16 1 0 219 16 1 0 220 16 1 0 221 16 5 0 239 4 1 1 159 4 1 1 160 4 25 1 236] 
#[1 16 9 0 85 16 13 0 98] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 4 125 0 57 0 141 0 62 16 25 0 64 1 177 0 76 0 153 0 80 0 157 0 84 16 25 0 91 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 16 17 0 118 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 16 21 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 16 21 0 181 16 25 0 213 16 29 0 238 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 4 253 1 236] 
#[1 16 33 0 3 6 29 0 124] 
#[1 16 37 0 8 6 29 0 124] 
#[1 16 41 0 3 6 29 0 124] 
#[0 6 126 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 16 45 0 2 1 221 0 4 16 49 0 208] 
#[1 1 221 0 4 16 53 0 208] 
#[1 6 130 0 1 6 130 0 2 6 130 0 4 6 130 0 5 6 130 0 6 6 130 0 8 6 130 0 36 6 130 0 37 6 130 0 38 6 130 0 39 6 130 0 40 6 130 0 53 6 130 0 57 6 130 0 58 6 130 0 59 6 130 0 60 6 130 0 62 6 130 0 63 6 130 0 64 6 130 0 66 6 130 0 67 6 130 0 68 6 130 0 69 6 130 0 70 6 130 0 71 6 130 0 72 6 130 0 73 6 130 0 74 6 130 0 76 11 189 0 77 6 130 0 78 6 130 0 80 6 130 0 83 6 130 0 84 6 130 0 89 6 130 0 91 6 130 0 93 6 130 0 94 6 130 0 95 6 130 0 96 6 130 0 105 6 130 0 109 6 130 0 110 6 130 0 112 6 130 0 113 6 130 0 114 6 130 0 115 6 130 0 116 6 130 0 117 6 130 0 118 6 130 0 119 6 130 0 120 6 130 0 121 6 130 0 122 6 130 0 127 6 130 0 129 6 130 0 131 6 130 0 132 6 130 0 133 6 130 0 135 6 130 0 136 6 130 0 139 16 57 0 255 6 130 1 236 6 130 1 237] 
#[0 6 134 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 6 138 0 8 0 9 0 124] 
#[0 6 142 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 6 137 0 144 16 61 0 218 6 149 0 219 6 149 0 220 6 149 0 221 6 153 1 236] 
#[0 6 146 0 8 0 9 0 124] 
#[1 12 173 0 125 16 65 1 141] 
#[1 12 173 0 125 16 69 1 141] 
#[0 6 150 0 8 0 9 0 124] 
#[0 6 154 0 8 0 9 0 124] 
#[1 16 73 0 3 6 29 0 124] 
#[1 16 77 0 3 6 29 0 124] 
#[0 6 158 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 6 162 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 193 0 127 16 81 0 144] 
#[1 0 193 0 127 16 85 0 144] 
#[1 11 249 0 73 0 193 0 127 16 89 0 144 16 93 1 219 16 97 1 220] 
#[1 0 193 0 127 16 101 0 144] 
#[0 16 105 0 4] 
#[1 0 193 0 127 16 89 0 144 16 109 1 219 16 97 1 220] 
#[1 16 113 0 128 16 117 0 131 16 117 1 75] 
#[1 0 193 0 127 12 97 0 144 16 121 1 184] 
#[1 0 193 0 127 16 89 0 144 16 125 1 219 16 97 1 220] 
#[0 6 166 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 6 170 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 6 174 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 6 178 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 6 182 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 6 186 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 16 129 0 4] 
#[1 0 193 0 127 16 133 0 144] 
#[1 8 169 0 79 16 137 1 62] 
#[1 16 141 0 8 8 169 0 79 16 145 1 62] 
#[0 16 149 0 116] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 16 153 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 16 157 0 2 0 193 0 127 16 161 0 144] 
#[0 16 165 0 2] 
#[1 16 169 0 24 2 158 0 79 2 158 0 124] 
#[1 2 153 0 4 2 161 0 12 16 173 0 75 16 177 1 106 16 181 1 125 16 185 1 162] 
#[0 16 189 0 4] 
#[0 6 190 0 4 0 23] 
#[1 16 193 0 4 16 197 0 23] 
#[1 2 161 0 12 16 201 0 24 16 205 1 106] 
#[1 0 38 0 1 3 129 0 57 0 38 0 62 0 38 0 63 6 177 0 64 16 209 0 68 16 213 0 69 6 185 0 73 3 137 0 80 16 217 0 84 6 201 0 89 0 69 0 91 6 209 0 94 6 213 0 116 2 13 0 118 16 221 0 205 16 225 0 212 0 69 0 213 16 229 0 216 16 221 1 7 16 221 1 21 16 221 1 26 16 221 1 30 16 233 1 35 3 177 1 36 16 237 1 57 16 241 1 151 16 245 1 161 16 249 1 178 16 253 1 183 17 1 1 189 17 5 1 217 17 9 1 236] 
#[1 13 213 0 2 2 161 0 12 0 193 0 127 17 13 0 144 13 221 1 106 13 225 1 142 17 17 1 152] 
#[1 0 195 0 3 0 195 0 5 4 54 0 6 0 195 0 7 4 54 0 8 4 254 0 24 4 54 0 41 4 54 0 49 0 195 0 124] 
#[1 7 81 0 2 4 66 0 5 4 66 0 8 2 161 0 12 12 185 0 44 12 185 0 53 4 66 0 124 17 21 0 125 7 129 1 106 12 177 1 141 12 181 1 142 12 185 1 174] 
#[1 0 199 0 3 0 199 0 5 4 114 0 6 0 199 0 7 4 114 0 8 5 10 0 24 4 114 0 41 4 114 0 49 0 199 0 124] 
#[1 2 254 0 4 2 254 0 6 0 203 0 7 2 254 0 123 2 254 0 124 2 254 0 127 2 254 1 236] 
#[0 17 25 0 20] 
#[0 6 194 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 17 29 0 3] 
#[1 0 130 0 2 0 130 0 6 0 130 0 7 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 130 0 19 0 134 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 39 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 52 0 130 0 54 0 130 0 55 0 130 0 85 0 130 0 88 17 33 0 125 0 130 0 135 0 130 0 136 0 130 1 235 0 130 1 236] 
#[0 17 37 0 7] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 17 41 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 17 45 0 2] 
#[1 6 198 0 5 6 198 0 8 17 53 0 44 17 53 0 53 6 198 0 124 12 173 0 125 17 49 1 141 17 53 1 174] 
#[0 6 202 0 2 0 3 0 5 0 7 0 8 0 12 0 24 0 124 0 125] 
#[0 6 206 0 2 0 3 0 5 0 7 0 8 0 12 0 24 0 124 0 125] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 17 57 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 17 57 1 135 17 57 1 136 2 225 1 137 2 225 1 139] 
#[0 6 210 0 5 0 8 0 124] 
#[0 6 214 0 5 0 8 0 124] 
#[1 7 81 0 2 6 218 0 5 6 218 0 8 2 161 0 12 6 218 0 124 12 173 0 125 7 129 1 106 17 61 1 141 17 65 1 142] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 17 69 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 6 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 85 0 88 0 89 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 101 0 102 0 103 0 105 0 107 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 124 0 125 0 127 0 128 0 129 0 131 0 132 0 133 0 135 0 136 0 137 0 138 0 139 1 236 1 237] 
#[1 7 81 0 2 6 226 0 5 7 89 0 6 2 161 0 12 7 93 0 95 7 97 0 103 7 101 0 128 7 121 0 131 7 125 0 132 7 109 0 145 7 109 0 157 7 109 0 158 7 109 0 159 7 121 1 75 7 125 1 76 7 129 1 106 17 73 1 128 17 73 1 140 17 73 1 142 17 73 1 148 17 73 1 149 17 73 1 150] 
#[1 7 81 0 2 6 230 0 5 7 89 0 6 2 161 0 12 7 93 0 95 7 97 0 103 7 101 0 128 7 121 0 131 7 125 0 132 7 109 0 145 7 109 0 157 7 109 0 158 7 109 0 159 7 121 1 75 7 125 1 76 7 129 1 106 17 77 1 128 17 77 1 140 17 77 1 142 17 77 1 148 17 77 1 149 17 77 1 150] 
#[0 6 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 6 238 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 17 81 0 7 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 17 85 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 17 85 1 132 2 213 1 133 2 217 1 134 17 85 1 135 17 85 1 136 2 225 1 137 2 225 1 139] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 17 89 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 17 89 1 135 17 89 1 136 2 225 1 137 2 225 1 139] 
#[0 6 242 0 15 0 124] 
#[0 6 246 0 2 0 4 0 24 0 75 1 236] 
#[1 0 193 0 127 7 185 0 144 17 93 1 108] 
#[0 17 97 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 17 101 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 6 250 0 3 6 250 0 4 6 250 0 5 0 207 0 6 6 250 0 7 6 250 0 8 6 250 0 9 6 250 0 10 6 250 0 12 6 250 0 13 6 250 0 15 6 250 0 16 6 250 0 19 6 250 0 20 6 250 0 21 6 250 0 22 6 250 0 24 6 250 0 25 6 250 0 26 6 250 0 27 6 250 0 28 6 250 0 36 6 250 0 38 6 250 0 41 6 250 0 42 6 250 0 44 6 250 0 46 6 250 0 48 6 250 0 49 6 250 0 50 6 250 0 52 6 250 0 54 6 250 0 55 6 250 0 65 6 250 0 85 6 250 0 88 6 250 0 99 6 250 0 100 6 250 0 101 6 250 0 102 6 250 0 103 6 250 0 107 6 250 0 124 6 250 0 125 6 250 0 128 6 250 0 131 6 250 0 132 6 250 0 137 6 250 0 138 6 250 1 236 6 250 1 237] 
#[0 17 105 0 7] 
#[1 17 109 0 7 17 113 0 124] 
#[0 17 117 0 6] 
#[1 0 193 0 127 17 121 0 144] 
#[0 17 125 0 3] 
#[1 6 254 0 3 6 254 0 4 6 254 0 5 6 254 0 6 6 254 0 7 6 254 0 8 6 254 0 9 6 254 0 10 6 254 0 12 6 254 0 13 6 254 0 15 6 254 0 16 6 254 0 19 6 254 0 20 6 254 0 21 6 254 0 22 6 254 0 24 6 254 0 25 6 254 0 26 6 254 0 27 6 254 0 28 6 254 0 36 6 254 0 38 0 211 0 41 6 254 0 42 6 254 0 44 6 254 0 46 6 254 0 48 6 254 0 49 6 254 0 50 6 254 0 52 6 254 0 54 6 254 0 55 6 254 0 65 6 254 0 85 6 254 0 88 6 254 0 99 6 254 0 100 6 254 0 101 6 254 0 102 6 254 0 103 6 254 0 107 6 254 0 124 6 254 0 125 6 254 0 128 6 254 0 131 6 254 0 132 6 254 0 137 6 254 0 138 6 254 1 236 6 254 1 237] 
#[1 7 2 0 3 7 2 0 4 7 2 0 5 0 215 0 6 7 2 0 7 7 2 0 8 7 2 0 9 7 2 0 10 7 2 0 12 7 2 0 13 7 2 0 15 7 2 0 16 7 2 0 19 7 2 0 20 7 2 0 21 7 2 0 22 7 2 0 24 7 2 0 25 7 2 0 26 7 2 0 27 7 2 0 28 7 2 0 36 7 2 0 38 7 2 0 41 7 2 0 42 7 2 0 44 7 2 0 46 7 2 0 48 7 2 0 49 7 2 0 50 7 2 0 52 7 2 0 54 7 2 0 55 7 2 0 65 7 2 0 85 7 2 0 88 7 2 0 99 7 2 0 100 7 2 0 101 7 2 0 102 7 2 0 103 7 2 0 107 7 2 0 124 7 2 0 125 7 2 0 128 7 2 0 131 7 2 0 132 7 2 0 137 7 2 0 138 7 245 0 242 7 2 1 236 7 2 1 237] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 17 129 0 7 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 17 133 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 17 133 1 135 17 133 1 136 2 225 1 137 2 225 1 139] 
#[0 7 6 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 87 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[1 7 10 0 3 7 10 0 4 7 10 0 5 7 10 0 6 7 10 0 7 7 10 0 8 7 10 0 9 7 10 0 10 7 10 0 12 7 10 0 13 7 10 0 15 7 10 0 16 7 10 0 19 7 10 0 20 7 10 0 21 7 10 0 22 7 14 0 23 7 10 0 24 7 10 0 25 7 10 0 26 7 10 0 27 7 10 0 28 7 10 0 36 7 10 0 38 7 10 0 41 7 10 0 42 7 10 0 44 7 10 0 46 7 10 0 48 7 10 0 49 7 10 0 50 7 10 0 52 7 10 0 54 7 10 0 55 7 10 0 65 7 10 0 85 7 10 0 87 7 10 0 88 7 10 0 99 7 10 0 100 7 10 0 101 7 10 0 102 7 10 0 103 7 10 0 107 7 10 0 124 7 10 0 125 7 10 0 128 7 10 0 131 7 10 0 132 7 10 0 137 7 10 0 138 7 10 1 236 7 10 1 237] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 17 137 1 2 4 73 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 17 141 0 2] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 17 145 1 2 4 73 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 17 149 0 3] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 17 157 0 227 17 157 0 228 17 157 1 6 17 157 1 20 7 77 1 236] 
#[1 0 6 0 2 0 6 0 4 7 18 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 6 173 0 210 0 61 0 211 6 173 0 212 0 69 0 213 0 6 1 236] 
#[0 17 161 0 5] 
#[0 7 22 0 5] 
#[0 7 26 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 17 165 0 3] 
#[0 7 30 0 3 0 5 0 7 0 8 0 9 0 124] 
#[0 17 169 0 2] 
#[0 17 173 0 2] 
#[0 17 177 0 4] 
#[1 6 53 0 2 2 161 0 12 6 65 1 106 17 181 1 152] 
#[1 8 249 0 6 7 101 0 128 7 121 0 131 7 125 0 132 17 185 0 145 17 185 0 157 17 185 0 158 17 185 0 159 7 121 1 75 7 125 1 76] 
#[1 17 189 0 2 17 193 1 169] 
#[1 8 249 0 6 17 197 0 57 7 101 0 128 7 121 0 131 7 125 0 132 17 201 0 145 17 201 0 157 17 201 0 158 17 201 0 159 7 121 1 75 7 125 1 76 17 205 1 153 17 209 1 154 13 121 1 236] 
#[1 7 81 0 2 2 161 0 12 7 129 1 106 17 213 1 142] 
#[1 8 249 0 6 17 217 0 57 17 221 0 65 17 225 0 107 7 101 0 128 7 121 0 131 7 125 0 132 17 229 0 145 17 229 0 157 17 229 0 158 17 229 0 159 7 121 1 75 7 125 1 76 17 233 1 153 17 237 1 154 13 121 1 236] 
#[0 7 34 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 7 38 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[1 8 249 0 6 18 5 0 99 18 5 0 100 18 5 0 101 18 5 0 102 18 5 0 103 18 5 0 107 7 101 0 128 7 121 0 131 7 125 0 132 17 249 0 145 17 249 0 157 17 249 0 158 17 249 0 159 7 121 1 75 7 125 1 76 18 5 1 144 18 5 1 146 18 5 1 172] 
#[1 8 61 0 81 8 65 0 106] 
#[0 7 42 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 18 9 0 128 0 131 1 56 1 75] 
#[0 7 46 0 8 0 79] 
#[1 18 13 0 5 8 113 0 128 8 113 0 131 8 113 1 56 18 17 1 71 8 113 1 75] 
#[0 7 50 0 79] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 18 21 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 18 25 0 2 0 193 0 127 18 29 0 144] 
#[1 18 33 0 2 18 37 1 236] 
#[1 2 161 0 12 18 41 1 106] 
#[0 7 54 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 18 45 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 18 49 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 18 53 0 2] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 18 57 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 7 58 0 1 0 130 0 2 7 58 0 3 7 58 0 4 7 58 0 5 0 219 0 6 7 58 0 7 0 130 0 23 7 58 0 24 7 58 0 44 0 130 0 45 7 58 0 53 7 58 0 57 7 58 0 62 7 58 0 63 7 58 0 65 7 58 0 74 7 58 0 99 7 58 0 100 7 58 0 101 7 58 0 102 7 58 0 103 7 58 0 107 7 58 0 112 7 58 0 124 7 58 0 125 7 58 0 127 7 58 0 128 7 58 0 131 7 58 0 132 0 130 0 135 0 130 0 136 0 219 1 236] 
#[1 7 62 0 1 5 1 0 2 7 62 0 3 7 62 0 4 7 62 0 5 0 223 0 6 7 62 0 7 5 77 0 23 7 62 0 24 7 62 0 44 5 57 0 45 7 62 0 53 7 62 0 57 7 62 0 62 7 62 0 63 7 62 0 65 7 62 0 74 7 62 0 99 7 62 0 100 7 62 0 101 7 62 0 102 7 62 0 103 7 62 0 107 7 62 0 112 7 62 0 124 7 62 0 125 7 62 0 127 7 62 0 128 7 62 0 131 7 62 0 132 0 213 0 135 0 18 0 136 5 81 0 162 0 253 0 163 5 85 0 175 5 89 0 178 0 227 1 236] 
#[1 4 189 0 4 4 193 0 75 18 61 1 38 4 205 1 39 18 65 1 236] 
#[0 7 66 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 2 161 0 12 9 229 0 75 9 233 0 87 18 69 1 106 9 237 1 165 9 241 1 167] 
#[1 4 189 0 4 4 193 0 75 0 193 0 127 18 73 0 144 18 77 1 38 4 205 1 39 18 81 1 236] 
#[0 7 70 0 8] 
#[0 7 74 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 18 85 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 13 213 0 2 2 161 0 12 13 221 1 106 18 89 1 142 18 93 1 152] 
#[0 18 97 0 2] 
#[0 18 101 0 8] 
#[0 18 105 0 4] 
#[1 0 193 0 127 18 109 0 144 18 109 1 66] 
#[0 7 78 0 79] 
#[1 18 113 0 5 0 193 0 127 8 205 0 128 8 205 0 131 8 217 0 144 8 205 1 56 18 117 1 64 8 217 1 66 8 205 1 75 8 221 1 236] 
#[1 0 193 0 127 18 121 0 128 18 121 0 131 18 125 0 144 18 121 1 56 18 125 1 66 18 121 1 75] 
#[0 7 82 0 79] 
#[0 7 86 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 7 90 0 79] 
#[0 7 94 0 79] 
#[0 7 98 0 79] 
#[0 7 102 0 79] 
#[0 7 106 0 5] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 18 129 0 227 18 129 0 228 7 77 1 236] 
#[0 7 110 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[0 7 114 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[1 18 133 0 5 8 249 0 6 8 253 0 123 0 193 0 127 7 101 0 128 7 121 0 131 7 125 0 132 9 1 0 144 9 5 0 145 9 5 0 157 9 5 0 158 9 5 0 159 18 137 0 222 18 141 0 226 18 141 0 228 7 121 1 75 7 125 1 76 9 25 1 236] 
#[0 7 118 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[0 7 122 0 7 0 124] 
#[0 18 145 0 7] 
#[0 7 126 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[1 3 241 0 4 3 245 0 6 18 149 0 7 4 41 0 123 4 101 0 124 0 193 0 127 9 1 0 144 18 153 0 151 4 53 0 219 4 53 0 220 4 53 0 221 18 157 0 225 9 45 0 227 9 45 0 228 18 161 0 229 7 77 1 236] 
#[0 7 130 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[0 7 134 0 8 0 124] 
#[1 7 138 0 8 8 53 0 24 7 138 0 124 18 165 0 161] 
#[1 7 142 0 8 8 53 0 24 7 142 0 124 18 169 0 161] 
#[1 8 169 0 79 18 173 1 62] 
#[0 2 154 0 79] 
#[1 0 130 0 2 0 130 0 6 0 231 0 7 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 130 0 19 0 134 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 39 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 52 0 130 0 54 0 130 0 55 0 130 0 85 0 130 0 88 0 130 0 124 12 173 0 125 0 130 0 135 0 130 0 136 14 89 1 141 0 130 1 235 0 130 1 236] 
#[1 5 90 0 2 0 235 0 3 5 90 0 6 0 235 0 7 5 90 0 10 5 90 0 11 5 90 0 12 5 90 0 13 5 90 0 14 5 90 0 15 5 90 0 16 5 90 0 17 5 90 0 18 5 90 0 19 5 90 0 21 5 90 0 22 5 90 0 23 0 235 0 24 5 90 0 25 5 90 0 26 5 90 0 27 5 90 0 28 5 90 0 29 5 90 0 30 5 90 0 31 5 90 0 32 5 90 0 33 5 90 0 34 5 90 0 35 5 90 0 36 5 90 0 37 5 90 0 38 5 90 0 39 5 90 0 41 5 90 0 42 5 90 0 43 5 90 0 44 5 90 0 45 5 90 0 46 5 90 0 47 5 90 0 48 5 90 0 49 5 90 0 50 5 90 0 51 5 90 0 52 5 90 0 54 5 90 0 55 5 90 0 85 5 90 0 88 0 235 0 124 5 90 0 135 5 90 0 136 5 90 1 235 5 90 1 236] 
#[0 7 146 0 3 0 7] 
#[0 7 150 0 3] 
#[0 7 154 0 3 0 124] 
#[1 7 158 0 3 7 158 0 5 7 158 0 7 8 53 0 24 7 158 0 124 18 177 0 161] 
#[0 7 162 0 3 0 5 0 7 0 124] 
#[1 7 166 0 3 3 241 0 4 7 166 0 5 3 245 0 6 7 166 0 7 7 166 0 24 7 166 0 44 7 166 0 53 18 193 0 99 18 193 0 100 18 193 0 101 18 193 0 102 18 193 0 103 18 181 0 112 7 166 0 124 7 166 0 125 0 193 0 127 18 197 0 144 18 197 0 219 18 197 0 220 18 197 0 221 18 193 1 144 18 197 1 145 18 193 1 146] 
#[1 7 170 0 3 7 170 0 5 7 170 0 7 8 53 0 24 18 209 0 44 18 209 0 53 7 170 0 124 12 173 0 125 18 201 0 161 18 205 1 141 18 209 1 174] 
#[0 7 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 7 178 0 7 0 124] 
#[0 7 182 0 7 0 124] 
#[0 18 213 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 18 217 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 18 221 0 2] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 18 225 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 2 161 0 12 18 229 1 106] 
#[0 18 233 0 2] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 18 241 1 33 0 6 1 236] 
#[0 7 186 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 7 190 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 7 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 85 0 88 0 89 0 91 0 93 0 94 0 95 0 96 0 98 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 124 0 125 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 137 0 138 0 139 1 235 1 236 1 237] 
#[0 7 198 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236] 
#[0 7 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 85 0 88 0 89 0 91 0 93 0 94 0 95 0 96 0 98 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 124 0 125 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 137 0 138 0 139 1 235 1 236 1 237] 
#[0 18 245 0 5] 
#[0 7 206 0 4 0 87] 
#[0 7 210 0 4 0 87] 
#[0 7 214 0 4 0 124] 
#[1 7 218 0 4 18 249 0 124] 
#[0 7 222 0 4 0 124] 
#[0 7 226 0 4] 
#[0 18 253 0 4] 
#[0 19 1 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 19 5 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 19 9 0 3] 
#[0 7 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 7 234 0 3 0 124] 
#[0 7 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 101 0 2 19 13 0 3 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 19 17 0 123 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 21 0 199 19 21 0 200 1 1 1 8 19 21 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 21 1 17 1 1 1 22 19 21 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 7 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 19 25 0 15 19 29 0 124] 
#[0 7 246 0 15 0 124] 
#[0 7 250 0 15 0 124] 
#[1 0 101 0 2 19 33 0 3 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 10 29 0 123 19 37 0 124 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 19 41 0 176 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 10 37 0 199 10 37 0 200 1 1 1 8 10 37 1 11 1 129 1 12 1 133 1 13 1 137 1 16 10 37 1 17 1 1 1 22 10 37 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 3 178 0 4 3 178 0 139 3 178 0 141 19 45 1 96 11 61 1 97] 
#[0 7 254 0 5 0 124] 
#[0 8 2 0 5 0 124] 
#[0 8 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 19 49 0 5 8 249 0 6 3 41 0 27 3 45 0 57 3 49 0 81 3 53 0 106 10 69 0 123 0 193 0 127 10 73 0 128 8 1 0 129 7 121 0 131 7 125 0 132 10 77 0 144 10 89 0 145 19 53 0 156 10 89 0 157 10 89 0 158 10 89 0 159 19 53 0 160 19 53 1 19 19 53 1 23 19 53 1 28 19 53 1 32 10 101 1 46 7 121 1 75 7 125 1 76 19 53 1 153 19 53 1 154 8 37 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 57 0 199 19 57 0 200 1 1 1 8 19 57 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 57 1 17 1 1 1 22 19 57 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 61 0 199 19 61 0 200 19 61 0 202 1 1 1 8 19 61 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 61 1 17 1 1 1 22 19 61 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 8 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 8 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 19 65 0 137 19 69 0 138] 
#[0 8 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 19 73 0 7 6 29 0 124] 
#[1 19 77 0 7 6 29 0 124] 
#[0 8 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 8 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 8 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 8 34 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 81 0 199 19 81 0 200 1 1 1 8 19 81 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 81 1 17 1 1 1 22 19 81 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 6 0 2 0 6 0 4 8 38 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 6 173 0 210 0 61 0 211 6 173 0 212 0 69 0 213 0 6 1 236] 
#[0 19 85 0 5] 
#[0 8 42 0 5] 
#[0 8 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 0 139 0 140 0 141 1 235 1 236 1 237] 
#[0 19 89 0 139] 
#[0 8 50 0 4 0 139 0 141] 
#[0 8 54 0 4 0 139 0 141] 
#[0 8 58 0 4 0 139 0 141] 
#[0 19 93 0 4] 
#[0 8 62 0 140] 
#[0 19 97 0 140] 
#[1 8 66 0 15 19 101 1 103] 
#[1 8 70 0 4 8 70 0 10 8 70 0 15 8 70 0 24 15 113 0 125 8 70 0 140] 
#[0 8 74 0 4 0 10 0 15 0 24 0 140] 
#[1 19 105 0 10 0 126 0 15 19 109 1 101] 
#[0 8 78 0 4 0 10 0 15 0 140] 
#[1 6 98 0 4 8 82 0 10 8 82 0 15 15 121 0 140 15 149 1 84 19 113 1 89 19 113 1 91 19 113 1 92 15 149 1 93 15 157 1 105] 
#[0 8 86 0 4 0 10 0 15 0 140] 
#[0 8 90 0 4 0 10 0 15 0 140] 
#[1 8 94 0 4 8 94 0 10 8 94 0 15 19 117 0 24 8 94 0 140 19 121 1 94] 
#[0 19 125 0 15] 
#[0 19 129 0 4] 
#[1 8 98 0 4 8 98 0 10 8 98 0 15 15 109 0 23 8 98 0 140] 
#[0 8 102 0 140] 
#[0 8 106 0 4 0 139 0 141] 
#[0 8 110 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 236 1 237] 
#[1 8 114 0 4 8 114 0 8 8 114 0 20 12 173 0 125 19 133 1 141] 
#[1 4 121 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 4 125 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 193 0 127 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 1 1 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 4 133 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 4 133 0 181 19 137 0 182 19 137 0 183 1 1 1 8 1 1 1 22 1 1 1 27 1 1 1 31 19 137 1 34 1 1 1 37 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 4 141 1 236] 
#[0 19 141 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 19 145 1 9 15 81 1 10 0 6 1 236] 
#[0 19 149 0 3] 
#[0 8 118 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 8 122 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 153 0 199 19 153 0 200 19 153 0 202 1 1 1 8 19 153 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 153 1 17 1 1 1 22 19 153 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 19 157 0 3 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 161 0 199 19 161 0 200 19 161 0 202 1 1 1 8 19 161 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 161 1 17 1 1 1 22 19 161 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 19 165 0 9 6 29 0 124] 
#[1 3 206 0 9 8 53 0 24 8 126 0 85 8 126 0 98 3 206 0 124 11 201 0 161] 
#[1 19 169 0 9 11 209 0 124] 
#[1 8 53 0 24 8 130 0 85 8 130 0 98 11 213 0 161] 
#[1 19 173 0 85 19 177 0 98] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 181 0 199 19 181 0 200 19 181 0 202 1 1 1 8 19 181 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 181 1 17 1 1 1 22 19 181 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 185 0 199 19 185 0 200 1 1 1 8 19 185 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 185 1 17 1 1 1 22 19 185 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 19 189 0 9 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 193 0 199 19 193 0 200 19 193 0 202 1 1 1 8 19 193 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 193 1 17 1 1 1 22 19 193 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 19 197 0 3 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 201 0 199 19 201 0 200 19 201 0 202 1 1 1 8 19 201 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 201 1 17 1 1 1 22 19 201 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 19 205 0 9 6 29 0 124] 
#[1 2 186 0 8 8 53 0 24 8 126 0 85 8 126 0 98 2 186 0 124 9 53 0 161] 
#[1 8 53 0 24 8 130 0 85 8 130 0 98 9 65 0 161] 
#[0 8 134 0 85 0 98] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 209 0 199 19 209 0 200 19 209 0 202 1 1 1 8 19 209 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 209 1 17 1 1 1 22 19 209 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 213 0 199 19 213 0 200 1 1 1 8 19 213 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 213 1 17 1 1 1 22 19 213 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 19 225 0 144 19 225 0 219 19 225 0 220 19 225 0 221 19 225 0 239] 
#[1 19 229 0 98 10 21 1 236] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 16 5 0 144 16 5 0 219 16 5 0 220 16 5 0 221 16 5 0 239] 
#[0 19 233 0 98] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 19 237 0 203 19 237 0 206 19 237 0 207 19 237 0 208 19 237 0 216 19 237 0 230 19 237 0 231 19 237 0 232 19 237 0 233 19 237 0 234 19 237 0 235 19 237 0 236 19 237 0 237 19 237 0 240 19 237 0 241 19 237 0 243 19 237 0 244 19 237 0 245 19 237 0 250 19 237 0 252 19 237 0 253 19 237 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 8 138 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 19 241 0 4 19 245 0 246] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 19 249 0 144 20 1 0 219 20 1 0 220 20 1 0 221 20 1 1 0] 
#[0 8 142 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 8 146 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 8 150 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 8 154 0 8 0 9 0 124] 
#[1 8 158 0 8 8 158 0 9 8 53 0 24 8 158 0 124 20 5 0 161] 
#[1 8 53 0 24 20 9 0 161] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 20 13 0 203 20 13 0 206 20 13 0 207 20 13 0 208 20 13 0 216 20 13 0 230 20 13 0 231 20 13 0 232 20 13 0 233 20 13 0 234 20 13 0 235 20 13 0 236 20 13 0 237 20 13 0 240 20 13 0 241 20 13 0 243 20 13 0 244 20 13 0 245 20 13 0 250 20 13 0 252 20 13 0 253 20 13 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 20 17 0 203 20 17 0 206 20 17 0 207 20 17 0 208 20 17 0 216 20 17 0 230 20 17 0 231 20 17 0 232 20 17 0 233 20 17 0 234 20 17 0 235 20 17 0 236 20 17 0 237 20 17 0 240 20 17 0 241 20 17 0 243 20 17 0 244 20 17 0 245 20 17 0 250 20 17 0 252 20 17 0 253 20 17 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 20 21 0 4] 
#[1 20 25 0 4 2 161 0 12 4 193 0 75 20 29 1 39 20 33 1 106 4 209 1 236] 
#[1 8 162 0 8 8 162 0 124 12 173 0 125 20 37 1 141] 
#[1 20 41 0 8 20 45 0 124] 
#[0 8 166 0 8 0 124] 
#[1 7 81 0 2 2 161 0 12 7 129 1 106 20 49 1 142] 
#[1 8 170 0 5 11 253 0 62 20 53 0 64 6 185 0 73 20 57 0 74 12 5 0 80 12 9 0 82 20 61 0 84 6 201 0 89 20 65 0 91 12 21 0 94 12 25 0 118 20 69 0 212 0 69 0 213 20 73 1 161 20 93 1 178 20 77 1 189 20 81 1 218 20 85 1 221 20 89 1 222 20 93 1 228 20 97 1 229 20 101 1 230 20 105 1 231 20 109 1 232] 
#[1 20 113 0 8 20 45 0 124] 
#[0 20 117 0 4] 
#[0 20 121 0 4] 
#[1 20 125 0 4 16 197 0 23] 
#[1 20 129 0 8 20 45 0 124] 
#[1 20 133 0 5 8 249 0 6 7 101 0 128 7 121 0 131 7 125 0 132 20 137 0 145 20 137 0 157 20 137 0 158 20 137 0 159 7 121 1 75 7 125 1 76 20 141 1 179 20 145 1 180 20 149 1 181] 
#[0 20 153 0 8] 
#[0 20 157 0 8] 
#[0 8 174 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 20 161 0 8] 
#[1 3 121 0 4 20 165 0 27 20 169 1 69] 
#[0 20 173 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 20 177 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 20 181 0 2] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 20 185 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 20 189 0 104 0 193 0 127 20 193 0 144 20 197 1 124 20 201 1 190] 
#[1 0 193 0 127 2 193 0 144 20 205 1 122 2 249 1 123 2 253 1 124 20 205 1 164] 
#[1 2 153 0 4 16 173 0 75 20 209 1 125 20 213 1 162] 
#[0 8 178 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 2 153 0 4 20 217 1 125] 
#[1 8 170 0 5 11 253 0 62 20 53 0 64 6 185 0 73 20 57 0 74 12 5 0 80 12 9 0 82 20 61 0 84 6 201 0 89 20 65 0 91 12 21 0 94 12 25 0 118 20 69 0 212 0 69 0 213 20 73 1 161 20 93 1 178 20 77 1 189 20 81 1 218 20 85 1 221 20 89 1 222 20 93 1 228 20 97 1 229 20 221 1 230 20 105 1 231 20 109 1 232] 
#[1 0 38 0 1 0 101 0 2 0 19 0 4 8 182 0 5 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 35 0 62 0 38 0 63 6 177 0 64 1 233 0 66 1 237 0 67 16 209 0 68 0 145 0 70 1 241 0 71 6 185 0 73 20 225 0 74 1 177 0 76 1 245 0 78 6 193 0 80 1 249 0 83 20 229 0 84 6 201 0 89 0 69 0 91 6 209 0 94 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 6 213 0 116 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 21 21 0 203 21 21 0 206 21 21 0 207 21 21 0 208 21 21 0 212 0 69 0 213 21 21 0 216 21 21 0 230 21 21 0 231 21 21 0 232 21 21 0 233 21 21 0 234 21 21 0 235 21 21 0 236 21 21 0 237 21 21 0 240 21 21 0 241 21 21 0 243 21 21 0 244 21 21 0 245 21 21 0 250 21 21 0 252 21 21 0 253 21 21 1 1 21 21 1 7 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 21 21 1 21 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 21 21 1 35 3 177 1 36 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 21 21 1 151 1 213 1 156 21 21 1 161 21 21 1 178 21 21 1 183 21 13 1 185 21 17 1 186 21 21 1 187 21 21 1 188 21 21 1 189 21 21 1 217 7 53 1 236] 
#[1 0 193 0 127 21 37 0 144] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 21 41 0 49 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 21 45 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 21 45 1 135 21 45 1 136 2 225 1 137 2 225 1 139] 
#[0 21 49 0 24] 
#[1 11 253 0 62 12 1 0 64 6 185 0 73 12 5 0 80 12 9 0 82 12 13 0 91 12 21 0 94 12 25 0 118 12 45 1 178 12 33 1 218 12 37 1 221 12 41 1 222 12 45 1 228 12 49 1 229] 
#[1 0 38 0 1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 239 0 62 0 38 0 63 0 145 0 70 1 177 0 76 21 57 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 21 61 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 21 65 0 199 21 65 0 200 21 69 1 7 1 1 1 8 21 65 1 11 1 129 1 12 1 133 1 13 1 137 1 16 21 65 1 17 21 73 1 21 1 1 1 22 21 65 1 25 1 1 1 27 1 1 1 31 1 49 1 34 21 77 1 35 3 177 1 36 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 21 81 1 221 21 85 1 222 7 53 1 236] 
#[1 3 193 0 4 3 197 0 27 0 193 0 127 3 221 0 131 21 89 0 144 3 205 1 58 3 209 1 59 3 213 1 60 3 217 1 61 3 221 1 65 3 209 1 66 3 221 1 75 3 233 1 236] 
#[0 8 186 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 8 190 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 8 194 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 8 198 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 8 202 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 0 243 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 0 247 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 8 222 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 8 226 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 8 230 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 0 251 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 8 185 0 80] 
#[1 13 213 0 2 2 161 0 12 13 221 1 106 18 89 1 142 21 93 1 152] 
#[0 21 97 0 4] 
#[1 2 149 0 2 7 57 0 4 7 61 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 7 65 0 144 4 53 0 219 4 53 0 220 4 53 0 221 18 129 0 227 18 129 0 228 2 197 1 75 2 201 1 76 2 205 1 106 17 57 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 17 57 1 135 17 57 1 136 2 225 1 137 2 225 1 139 7 77 1 236] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 21 101 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 21 101 1 135 21 101 1 136 2 225 1 137 2 225 1 139] 
#[1 8 242 0 4 8 242 0 5 8 242 0 8 8 242 0 124 12 173 0 125 21 105 1 141] 
#[1 21 109 0 97 21 113 0 108] 
#[0 8 246 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 124 0 125] 
#[0 21 117 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 21 121 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 8 250 0 5 0 8 0 124] 
#[1 8 254 0 5 8 254 0 8 8 254 0 124 12 173 0 125 21 125 1 141] 
#[0 9 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 20 0 24 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 128 0 131 0 132] 
#[0 9 6 0 5 0 8 0 124] 
#[0 9 10 0 5 0 8 0 124] 
#[0 21 129 0 3] 
#[0 9 14 0 5 0 8 0 124] 
#[0 9 18 0 5 0 8 0 124] 
#[0 9 22 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 9 26 0 7 0 124] 
#[0 9 30 0 15 0 124] 
#[0 9 34 0 15 0 124] 
#[0 21 133 0 20] 
#[0 21 137 0 3] 
#[1 9 38 0 3 9 38 0 4 9 38 0 5 0 255 0 6 9 38 0 7 9 38 0 8 9 38 0 9 9 38 0 10 9 38 0 12 9 38 0 13 9 38 0 15 9 38 0 16 9 38 0 19 9 38 0 20 9 38 0 21 9 38 0 22 9 38 0 24 9 38 0 25 9 38 0 26 9 38 0 27 9 38 0 28 9 38 0 36 9 38 0 38 9 38 0 41 9 38 0 42 9 38 0 44 9 38 0 46 9 38 0 48 9 38 0 49 9 38 0 50 9 38 0 52 9 38 0 54 9 38 0 55 9 38 0 65 9 38 0 85 9 38 0 88 9 38 0 99 9 38 0 100 9 38 0 101 9 38 0 102 9 38 0 103 9 38 0 107 9 38 0 124 9 38 0 125 9 38 0 128 9 38 0 131 9 38 0 132 9 38 0 137 9 38 0 138 9 38 1 236 9 38 1 237] 
#[1 9 42 0 3 9 42 0 4 9 42 0 5 1 3 0 6 9 42 0 7 9 42 0 8 9 42 0 9 9 42 0 10 9 42 0 12 9 42 0 13 9 42 0 15 9 42 0 16 9 42 0 19 9 42 0 20 9 42 0 21 9 42 0 22 9 42 0 24 9 42 0 25 9 42 0 26 9 42 0 27 9 42 0 28 9 42 0 36 9 42 0 38 9 42 0 41 9 42 0 42 9 42 0 44 9 42 0 46 9 42 0 48 9 42 0 49 9 42 0 50 9 42 0 52 9 42 0 54 9 42 0 55 9 42 0 65 9 42 0 85 9 42 0 88 9 42 0 99 9 42 0 100 9 42 0 101 9 42 0 102 9 42 0 103 9 42 0 107 9 42 0 124 9 42 0 125 9 42 0 128 9 42 0 131 9 42 0 132 9 42 0 137 9 42 0 138 9 42 1 236 9 42 1 237] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 21 141 0 7 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 17 85 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 17 85 1 132 2 213 1 133 2 217 1 134 17 85 1 135 17 85 1 136 2 225 1 137 2 225 1 139] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 21 145 0 7 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 17 133 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 17 133 1 135 17 133 1 136 2 225 1 137 2 225 1 139] 
#[0 9 46 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 21 149 0 20] 
#[0 9 50 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 21 153 0 7] 
#[0 21 157 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 21 161 1 2 4 73 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 21 165 0 3] 
#[0 21 169 0 4] 
#[0 9 54 0 3] 
#[0 21 173 0 3] 
#[0 9 58 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 21 177 0 4] 
#[0 21 181 0 3] 
#[1 3 241 0 4 3 245 0 6 0 193 0 127 21 185 0 144 21 189 0 219 21 189 0 220 21 189 0 221 21 193 0 227 21 193 0 228 21 193 1 6 21 193 1 20 21 197 1 147 21 201 1 155 7 77 1 236] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 21 205 1 9 15 81 1 10 0 6 1 236] 
#[1 21 209 0 4 21 213 0 8] 
#[1 7 81 0 2 2 161 0 12 7 129 1 106 21 217 1 142] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 21 221 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 21 225 0 4 21 229 0 8] 
#[1 8 249 0 6 7 101 0 128 7 121 0 131 7 125 0 132 21 233 0 145 21 233 0 157 21 233 0 158 21 233 0 159 7 121 1 75 7 125 1 76] 
#[1 7 81 0 2 2 161 0 12 7 129 1 106 21 237 1 142] 
#[0 9 62 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 9 66 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[1 21 241 0 4 21 245 0 8] 
#[1 8 249 0 6 7 101 0 128 7 121 0 131 7 125 0 132 21 249 0 145 21 249 0 157 21 249 0 158 21 249 0 159 7 121 1 75 7 125 1 76] 
#[1 17 189 0 2 21 253 1 169] 
#[1 8 249 0 6 22 1 0 57 7 101 0 128 7 121 0 131 7 125 0 132 22 5 0 145 22 5 0 157 22 5 0 158 22 5 0 159 7 121 1 75 7 125 1 76 22 9 1 153 22 13 1 154 13 121 1 236] 
#[1 7 81 0 2 2 161 0 12 7 129 1 106 22 17 1 142] 
#[0 9 70 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 9 74 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 9 78 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132] 
#[0 9 82 0 6 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[1 2 66 0 8 2 66 0 24 2 66 0 44 2 66 0 53 2 66 0 125 22 21 1 45] 
#[0 9 86 0 6 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[0 9 90 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132] 
#[0 9 94 0 6 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[0 9 98 0 5 0 124] 
#[0 9 102 0 8 0 79] 
#[0 9 106 0 5 0 124] 
#[0 22 25 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 22 29 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 22 33 0 2] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 22 37 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 2 161 0 12 22 41 1 106] 
#[0 22 45 0 2] 
#[0 22 49 0 4] 
#[0 22 53 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 22 57 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 22 61 0 3] 
#[0 9 110 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 2 161 0 12 9 229 0 75 9 233 0 87 22 65 1 106 9 237 1 165 9 241 1 167] 
#[1 4 189 0 4 4 193 0 75 22 69 1 38 4 205 1 39 4 209 1 236] 
#[1 4 189 0 4 4 193 0 75 22 73 1 38 4 205 1 39 22 77 1 236] 
#[0 9 114 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 2 161 0 12 9 229 0 75 9 233 0 87 22 81 1 106 9 237 1 165 9 241 1 167] 
#[0 22 85 0 3] 
#[0 22 89 0 8] 
#[0 22 93 0 4] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 22 97 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 9 118 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 22 101 1 9 15 81 1 10 0 6 1 236] 
#[0 9 122 0 5 0 124] 
#[0 9 126 0 79] 
#[0 9 130 0 5 0 124] 
#[0 22 105 0 56] 
#[0 9 134 0 5 0 124] 
#[0 9 138 0 5 0 124] 
#[0 9 142 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[0 22 109 0 5] 
#[0 9 146 0 5 0 124] 
#[0 9 150 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[0 9 154 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[1 3 241 0 4 3 245 0 6 22 113 0 7 4 41 0 123 9 165 0 124 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 14 41 0 227 14 41 0 228 22 117 0 229 7 77 1 236] 
#[0 9 158 0 7 0 124] 
#[0 22 121 0 7] 
#[0 9 162 0 8 0 124] 
#[0 9 166 0 8 0 124] 
#[0 22 125 0 8] 
#[0 9 170 0 3 0 5 0 7 0 124] 
#[0 9 174 0 3 0 5 0 7 0 24 0 44 0 53 0 124 0 125] 
#[0 9 178 0 3 0 5 0 7 0 24 0 44 0 53 0 124 0 125] 
#[0 9 182 0 3 0 5 0 7 0 24 0 44 0 53 0 124 0 125] 
#[0 9 186 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 99 0 100 0 101 0 102 0 103 0 112 0 124 0 125 0 127] 
#[1 9 190 0 3 9 190 0 5 9 190 0 7 8 53 0 24 22 137 0 44 22 137 0 53 9 190 0 124 12 173 0 125 22 129 0 161 22 133 1 141 22 137 1 174] 
#[0 9 194 0 3 0 5 0 7 0 124] 
#[1 9 198 0 3 9 198 0 5 9 198 0 7 8 53 0 24 9 198 0 124 22 141 0 161] 
#[0 9 202 0 3 0 5 0 7 0 124] 
#[1 22 145 0 4 22 149 1 236] 
#[0 22 153 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 22 157 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 22 161 0 3] 
#[0 22 165 0 2] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 22 169 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 9 206 0 5] 
#[0 22 173 0 5] 
#[0 9 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 85 0 88 0 89 0 91 0 93 0 94 0 95 0 96 0 98 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 124 0 125 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 137 0 138 0 139 1 235 1 236 1 237] 
#[1 0 193 0 127 2 193 0 144 22 177 1 122 2 249 1 123 2 253 1 124 22 177 1 164] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 22 181 1 9 15 81 1 10 0 6 1 236] 
#[0 22 185 0 4] 
#[0 22 189 0 3] 
#[0 22 193 0 4] 
#[0 9 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 22 197 0 199 22 197 0 200 1 1 1 8 22 197 1 11 1 129 1 12 1 133 1 13 1 137 1 16 22 197 1 17 1 1 1 22 22 197 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 9 218 0 3 0 124] 
#[0 9 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 87 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 22 201 1 112 22 201 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 22 201 1 135 22 201 1 136 2 225 1 137 2 225 1 139] 
#[0 9 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 22 205 0 3] 
#[1 22 209 0 3 22 213 0 124] 
#[0 22 217 0 139] 
#[0 9 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 9 234 0 5 0 124] 
#[0 9 238 0 5 0 124] 
#[1 6 29 0 124 9 242 0 137 9 242 0 138] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 22 221 0 199 22 221 0 200 22 221 0 202 1 1 1 8 22 221 1 11 1 129 1 12 1 133 1 13 1 137 1 16 22 221 1 17 1 1 1 22 22 221 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 9 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 9 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 9 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 10 2 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 10 6 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 22 225 0 10] 
#[1 0 101 0 2 0 14 0 4 0 126 0 5 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 4 97 0 123 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 22 237 0 152 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 22 237 0 199 22 237 0 200 1 1 1 8 22 237 1 11 1 129 1 12 1 133 1 13 1 137 1 16 22 237 1 17 1 1 1 22 22 237 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 22 237 1 99 1 209 1 100 22 241 1 101 1 213 1 156 1 217 1 236] 
#[0 10 10 0 4 0 10 0 15 0 24 0 140] 
#[0 22 245 0 15] 
#[1 8 66 0 15 22 249 1 103] 
#[0 22 253 0 15] 
#[0 10 14 0 4 0 10 0 15 0 140] 
#[1 6 98 0 4 23 1 0 131 0 15 0 139 23 1 1 75 23 13 1 78 23 13 1 79 1 201 1 80 23 13 1 82 23 13 1 95 1 209 1 100 23 17 1 105] 
#[0 10 18 0 4 0 10 0 15 0 140] 
#[0 10 22 0 4 0 139 0 141] 
#[1 4 97 0 123 23 21 0 152] 
#[0 10 26 0 4 0 8 0 20] 
#[0 10 30 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 85 0 88 0 124 0 125 0 137 0 138 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 23 25 1 9 15 81 1 10 0 6 1 236] 
#[0 23 29 0 5] 
#[1 10 34 0 4 10 34 0 8 10 34 0 20 12 173 0 125 23 33 1 141] 
#[1 23 37 0 3 6 29 0 124] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 23 41 0 203 23 41 0 206 23 41 0 207 23 41 0 208 23 41 0 216 23 41 0 230 23 41 0 231 23 41 0 232 23 41 0 233 23 41 0 234 23 41 0 235 23 41 0 236 23 41 0 237 23 41 0 240 23 41 0 241 23 41 0 243 23 41 0 244 23 41 0 245 23 41 0 250 23 41 0 252 23 41 0 253 23 41 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 23 45 0 3 6 29 0 124] 
#[1 0 101 0 2 23 49 0 3 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 23 53 0 199 23 53 0 200 23 53 0 202 1 1 1 8 23 53 1 11 1 129 1 12 1 133 1 13 1 137 1 16 23 53 1 17 1 1 1 22 23 53 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 23 57 0 9 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 23 61 0 199 23 61 0 200 23 61 0 202 1 1 1 8 23 61 1 11 1 129 1 12 1 133 1 13 1 137 1 16 23 61 1 17 1 1 1 22 23 61 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 23 65 0 199 23 65 0 200 23 65 0 202 1 1 1 8 23 65 1 11 1 129 1 12 1 133 1 13 1 137 1 16 23 65 1 17 1 1 1 22 23 65 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 23 69 0 199 23 69 0 200 1 1 1 8 23 69 1 11 1 129 1 12 1 133 1 13 1 137 1 16 23 69 1 17 1 1 1 22 23 69 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 23 73 0 3 6 29 0 124] 
#[0 23 77 0 3] 
#[1 0 101 0 2 23 81 0 3 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 23 85 0 199 23 85 0 200 23 85 0 202 1 1 1 8 23 85 1 11 1 129 1 12 1 133 1 13 1 137 1 16 23 85 1 17 1 1 1 22 23 85 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 23 89 0 9 6 29 0 124] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 23 93 0 203 23 93 0 206 23 93 0 207 23 93 0 208 23 93 0 216 23 93 0 230 23 93 0 231 23 93 0 232 23 93 0 233 23 93 0 234 23 93 0 235 23 93 0 236 23 93 0 237 23 93 0 240 23 93 0 241 23 93 0 243 23 93 0 244 23 93 0 245 23 93 0 250 23 93 0 252 23 93 0 253 23 93 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 23 97 0 3 6 29 0 124] 
#[1 0 101 0 2 23 101 0 3 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 23 105 0 199 23 105 0 200 23 105 0 202 1 1 1 8 23 105 1 11 1 129 1 12 1 133 1 13 1 137 1 16 23 105 1 17 1 1 1 22 23 105 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 23 109 0 3 6 29 0 124] 
#[0 23 113 0 3] 
#[0 8 126 0 98] 
#[0 8 130 0 98] 
#[0 23 117 0 98] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 23 121 0 199 23 121 0 200 1 1 1 8 23 121 1 11 1 129 1 12 1 133 1 13 1 137 1 16 23 121 1 17 1 1 1 22 23 121 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 23 125 0 199 23 125 0 200 1 1 1 8 23 125 1 11 1 129 1 12 1 133 1 13 1 137 1 16 23 125 1 17 1 1 1 22 23 125 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 10 38 0 1 10 38 0 2 10 38 0 4 10 38 0 5 10 38 0 6 10 38 0 8 10 38 0 36 10 38 0 37 10 38 0 38 10 38 0 39 10 38 0 40 10 38 0 53 10 38 0 57 10 38 0 58 10 38 0 59 10 38 0 60 10 38 0 62 10 38 0 63 10 38 0 64 10 38 0 66 10 38 0 67 10 38 0 68 10 38 0 69 10 38 0 70 10 38 0 71 23 129 0 72 10 38 0 73 10 38 0 74 10 38 0 76 10 38 0 78 10 38 0 80 10 38 0 83 10 38 0 84 10 38 0 89 10 38 0 91 10 38 0 93 10 38 0 94 10 38 0 95 10 38 0 96 10 38 0 105 10 38 0 109 10 38 0 110 10 38 0 112 10 38 0 113 10 38 0 114 10 38 0 115 10 38 0 116 10 38 0 117 10 38 0 118 10 38 0 119 10 38 0 120 10 38 0 121 10 38 0 122 10 38 0 127 10 38 0 129 10 38 0 131 10 38 0 132 10 38 0 133 10 38 0 135 10 38 0 136 10 38 0 139 10 38 1 236 10 38 1 237] 
#[1 23 133 0 5 23 137 0 60 23 141 0 69 23 145 0 247 23 149 0 248 23 153 0 249] 
#[0 10 42 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 10 46 0 3 23 157 1 236] 
#[0 10 50 0 3] 
#[0 23 161 0 3] 
#[0 10 54 0 8 0 9 0 124] 
#[0 10 58 0 8 0 9 0 124] 
#[0 10 62 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 10 66 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 23 165 0 5 8 249 0 6 7 101 0 128 7 121 0 131 7 125 0 132 20 137 0 145 20 137 0 157 20 137 0 158 20 137 0 159 7 121 1 75 7 125 1 76 23 169 1 179 20 145 1 180 20 149 1 181] 
#[1 10 70 0 5 1 7 0 6 23 177 0 65 0 139 0 99 0 143 0 100 0 147 0 101 0 151 0 102 4 170 0 103 4 170 0 107 4 170 0 128 4 170 0 131 4 170 0 132 23 181 1 146 23 201 1 149 23 189 1 173 23 193 1 223 23 197 1 224 23 201 1 225 23 201 1 226 23 201 1 227] 
#[0 23 213 0 4] 
#[1 23 217 0 4 4 193 0 75 23 221 1 39 4 209 1 236] 
#[0 10 74 0 8 0 124] 
#[0 10 78 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 193 0 127 16 89 0 144 23 225 1 220] 
#[0 23 229 0 8] 
#[1 0 34 0 4 0 34 0 6 11 249 0 73 1 11 0 127 16 89 0 144 16 93 1 219 16 97 1 220 0 34 1 236] 
#[1 11 253 0 62 20 53 0 64 6 185 0 73 12 5 0 80 12 9 0 82 20 61 0 84 6 201 0 89 20 65 0 91 12 21 0 94 12 25 0 118 23 233 0 212 0 69 0 213 23 237 1 161 24 1 1 178 23 241 1 189 23 245 1 218 23 249 1 221 23 253 1 222 24 1 1 228 24 5 1 229] 
#[1 0 193 0 127 24 9 0 144] 
#[1 0 42 0 4 0 42 0 6 1 15 0 127 16 89 0 144 16 109 1 219 16 97 1 220 0 42 1 236] 
#[0 10 82 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 10 86 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 10 90 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 10 94 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 10 98 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 10 102 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 10 106 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 10 110 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 24 13 0 5] 
#[1 10 114 0 5 11 253 0 62 20 53 0 64 6 185 0 73 20 57 0 74 12 5 0 80 12 9 0 82 20 61 0 84 6 201 0 89 20 65 0 91 12 21 0 94 12 25 0 118 20 69 0 212 0 69 0 213 20 73 1 161 20 93 1 178 20 77 1 189 20 81 1 218 20 85 1 221 20 89 1 222 20 93 1 228 20 97 1 229 24 17 1 232] 
#[0 10 118 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 10 122 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 8 170 0 5 11 253 0 62 20 53 0 64 6 185 0 73 20 57 0 74 12 5 0 80 12 9 0 82 20 61 0 84 6 201 0 89 20 65 0 91 12 21 0 94 12 25 0 118 20 69 0 212 0 69 0 213 20 73 1 161 20 93 1 178 20 77 1 189 20 81 1 218 20 85 1 221 20 89 1 222 20 93 1 228 20 97 1 229 24 21 1 230 20 105 1 231 20 109 1 232] 
#[1 0 38 0 1 10 126 0 5 16 209 0 68 0 39 0 74 16 217 0 84 6 201 0 89 6 209 0 94 6 213 0 116 24 25 1 36 24 61 1 57 24 61 1 151 24 61 1 161 24 61 1 183 24 61 1 189 24 61 1 203 24 53 1 207 24 57 1 208 24 61 1 209 24 61 1 212 24 61 1 214 24 61 1 215 24 61 1 216 24 61 1 217] 
#[1 8 170 0 5 11 253 0 62 20 53 0 64 6 185 0 73 20 57 0 74 12 5 0 80 12 9 0 82 20 61 0 84 6 201 0 89 20 65 0 91 12 21 0 94 12 25 0 118 20 69 0 212 0 69 0 213 20 73 1 161 20 93 1 178 20 77 1 189 20 81 1 218 20 85 1 221 20 89 1 222 20 93 1 228 20 97 1 229 24 85 1 230 20 105 1 231 20 109 1 232] 
#[0 10 130 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 10 134 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 10 138 0 5 24 89 0 24 10 138 0 124] 
#[0 24 93 0 5] 
#[1 10 142 0 5 24 97 0 124] 
#[0 10 146 0 5 0 124] 
#[0 10 150 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 10 154 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 10 158 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 8 169 0 79 24 101 1 62] 
#[1 24 105 0 8 8 169 0 79 24 109 1 62] 
#[0 24 113 0 4] 
#[0 24 117 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 24 121 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 24 125 0 3] 
#[0 24 129 0 2] 
#[0 1 230 0 8 0 23] 
#[1 10 162 0 8 24 133 0 23] 
#[0 24 137 0 8] 
#[0 10 166 0 4] 
#[0 10 170 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 2 153 0 4 24 141 1 125] 
#[0 10 174 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 24 145 0 5] 
#[1 0 38 0 1 0 38 0 62 0 38 0 63 6 177 0 64 16 209 0 68 6 185 0 73 3 137 0 80 20 61 0 84 6 201 0 89 0 69 0 91 6 209 0 94 6 213 0 116 2 13 0 118 24 149 0 212 0 69 0 213 24 153 0 216 24 157 1 7 24 161 1 21 24 165 1 35 3 177 1 36 24 169 1 151 24 173 1 161 24 177 1 178 24 181 1 183 24 185 1 189 24 189 1 217 17 9 1 236] 
#[1 4 229 0 2 4 233 0 23 0 193 0 127 24 9 0 144] 
#[0 10 178 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 10 182 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 10 186 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 10 190 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 10 194 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 10 198 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 10 202 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 10 206 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 10 210 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 24 193 0 5] 
#[1 0 38 0 1 0 101 0 2 0 19 0 4 10 214 0 5 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 35 0 62 0 38 0 63 6 177 0 64 1 233 0 66 1 237 0 67 16 209 0 68 0 145 0 70 1 241 0 71 6 185 0 73 20 225 0 74 1 177 0 76 1 245 0 78 6 193 0 80 1 249 0 83 20 229 0 84 6 201 0 89 0 69 0 91 6 209 0 94 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 6 213 0 116 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 24 197 0 203 24 197 0 206 24 197 0 207 24 197 0 208 24 197 0 212 0 69 0 213 24 197 0 216 24 197 0 230 24 197 0 231 24 197 0 232 24 197 0 233 24 197 0 234 24 197 0 235 24 197 0 236 24 197 0 237 24 197 0 240 24 197 0 241 24 197 0 243 24 197 0 244 24 197 0 245 24 197 0 250 24 197 0 252 24 197 0 253 24 197 1 1 24 197 1 7 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 24 197 1 21 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 24 197 1 35 3 177 1 36 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 24 197 1 151 1 213 1 156 24 197 1 161 24 197 1 178 24 197 1 183 24 197 1 187 24 197 1 188 24 197 1 189 24 197 1 217 7 53 1 236] 
#[0 10 218 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 10 222 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 10 226 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 10 230 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 10 234 0 4 0 23] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 24 201 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 24 201 1 135 24 201 1 136 2 225 1 137 2 225 1 139] 
#[0 24 205 0 8] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 24 209 0 49 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 24 213 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 24 213 1 135 24 213 1 136 2 225 1 137 2 225 1 139] 
#[1 4 189 0 4 4 193 0 75 0 193 0 127 24 217 0 144 4 201 1 38 4 205 1 39 4 209 1 236] 
#[1 12 73 0 2 12 77 0 27 0 193 0 127 24 221 0 144] 
#[1 0 130 0 2 0 130 0 6 1 19 0 8 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 130 0 19 0 134 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 39 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 52 0 130 0 54 0 130 0 55 0 130 0 85 0 130 0 88 0 130 0 135 0 130 0 136 0 130 1 235 0 130 1 236] 
#[0 24 229 0 8] 
#[0 10 238 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 10 242 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 10 246 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 10 250 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 10 254 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 24 233 0 24 2 158 0 79 2 158 0 124] 
#[0 24 237 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 24 241 1 9 15 81 1 10 0 6 1 236] 
#[0 11 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 11 6 0 4 0 5 0 8 0 124] 
#[0 24 245 0 7] 
#[0 24 249 0 7] 
#[1 11 10 0 5 11 10 0 8 11 10 0 124 12 173 0 125 24 253 1 141] 
#[0 25 1 0 3] 
#[0 11 14 0 5 0 8 0 124] 
#[1 11 18 0 4 11 18 0 5 11 18 0 8 11 18 0 124 12 173 0 125 25 5 1 141] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 25 9 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 25 9 1 135 25 9 1 136 2 225 1 137 2 225 1 139] 
#[0 25 13 0 20] 
#[1 11 22 0 3 11 22 0 4 11 22 0 5 1 23 0 6 11 22 0 7 11 22 0 8 11 22 0 9 11 22 0 10 11 22 0 12 11 22 0 13 11 22 0 15 11 22 0 16 11 22 0 19 11 22 0 20 11 22 0 21 11 22 0 22 11 22 0 24 11 22 0 25 11 22 0 26 11 22 0 27 11 22 0 28 11 22 0 36 11 22 0 38 11 22 0 41 11 22 0 42 11 22 0 44 11 22 0 46 11 22 0 48 11 22 0 49 11 22 0 50 11 22 0 52 11 22 0 54 11 22 0 55 11 22 0 65 11 22 0 85 11 22 0 88 11 22 0 99 11 22 0 100 11 22 0 101 11 22 0 102 11 22 0 103 11 22 0 107 11 22 0 124 11 22 0 125 11 22 0 128 11 22 0 131 11 22 0 132 11 22 0 137 11 22 0 138 11 22 1 236 11 22 1 237] 
#[1 11 26 0 3 11 26 0 4 11 26 0 5 1 27 0 6 11 26 0 7 11 26 0 8 11 26 0 9 11 26 0 10 11 26 0 12 11 26 0 13 11 26 0 15 11 26 0 16 11 26 0 19 11 26 0 20 11 26 0 21 11 26 0 22 11 26 0 24 11 26 0 25 11 26 0 26 11 26 0 27 11 26 0 28 11 26 0 36 11 26 0 38 11 26 0 41 11 26 0 42 11 26 0 44 11 26 0 46 11 26 0 48 11 26 0 49 11 26 0 50 11 26 0 52 11 26 0 54 11 26 0 55 11 26 0 65 11 26 0 85 11 26 0 88 11 26 0 99 11 26 0 100 11 26 0 101 11 26 0 102 11 26 0 103 11 26 0 107 11 26 0 124 11 26 0 125 11 26 0 128 11 26 0 131 11 26 0 132 11 26 0 137 11 26 0 138 11 26 1 236 11 26 1 237] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 25 17 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 25 17 1 135 25 17 1 136 2 225 1 137 2 225 1 139] 
#[0 11 30 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 25 21 0 4] 
#[0 25 25 0 3] 
#[1 25 29 0 4 25 33 1 236] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 25 37 1 9 15 81 1 10 0 6 1 236] 
#[0 25 41 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 25 45 1 9 15 81 1 10 0 6 1 236] 
#[1 25 49 0 4 12 173 0 125 25 53 1 141] 
#[1 2 214 0 3 8 53 0 24 11 34 0 125 9 101 0 161] 
#[1 2 218 0 3 8 53 0 24 11 38 0 125 9 109 0 161] 
#[0 25 57 0 3] 
#[1 12 173 0 125 25 61 1 141] 
#[0 25 65 0 3] 
#[0 25 69 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 25 73 1 9 15 81 1 10 0 6 1 236] 
#[0 11 42 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[1 25 77 0 4 25 81 0 8] 
#[0 25 85 0 3] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 25 89 1 9 15 81 1 10 0 6 1 236] 
#[0 11 46 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[1 7 81 0 2 2 161 0 12 7 129 1 106 25 93 1 142] 
#[1 25 97 0 4 25 101 0 8] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 25 105 1 9 15 81 1 10 0 6 1 236] 
#[0 11 50 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[1 7 81 0 2 2 161 0 12 7 129 1 106 25 109 1 142] 
#[1 25 113 0 4 25 117 0 8] 
#[1 8 249 0 6 7 101 0 128 7 121 0 131 7 125 0 132 25 121 0 145 25 121 0 157 25 121 0 158 25 121 0 159 7 121 1 75 7 125 1 76] 
#[1 7 81 0 2 2 161 0 12 7 129 1 106 25 125 1 142] 
#[0 11 54 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 11 58 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[1 25 129 0 4 25 133 0 8] 
#[1 25 137 0 8 8 53 0 24 25 149 0 44 25 149 0 53 12 173 0 125 25 141 0 161 25 145 1 141 25 149 1 174] 
#[1 25 153 0 4 25 157 1 236] 
#[0 25 161 0 3] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 25 165 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 25 169 0 3] 
#[0 25 173 0 2] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 25 177 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 25 181 1 9 15 81 1 10 0 6 1 236] 
#[0 25 185 0 4] 
#[0 25 189 0 3] 
#[0 25 193 0 4] 
#[1 4 189 0 4 4 193 0 75 25 197 1 38 4 205 1 39 4 209 1 236] 
#[0 11 62 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 11 66 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 2 161 0 12 9 229 0 75 9 233 0 87 25 201 1 106 9 237 1 165 9 241 1 167] 
#[1 4 189 0 4 4 193 0 75 25 205 1 38 4 205 1 39 4 209 1 236] 
#[1 8 114 0 4 8 242 0 8 12 173 0 125 25 209 1 141] 
#[0 11 70 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 25 213 1 9 15 81 1 10 0 6 1 236] 
#[0 25 217 0 3] 
#[0 25 221 0 5] 
#[1 0 193 0 127 25 225 0 144 25 225 1 66] 
#[0 11 74 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[0 11 78 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[0 25 229 0 7] 
#[0 11 82 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[0 11 86 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 64 0 66 0 67 0 70 0 71 0 74 0 76 0 78 0 80 0 83 0 84 0 91 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 11 90 0 3 0 5 0 7 0 124] 
#[1 11 94 0 3 11 94 0 5 11 94 0 7 8 53 0 24 11 94 0 124 25 233 0 161] 
#[1 11 98 0 3 11 98 0 5 11 98 0 7 11 98 0 124 12 173 0 125 25 237 1 141] 
#[0 11 102 0 3 0 5 0 7 0 124] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 25 241 1 33 0 6 1 236] 
#[1 12 173 0 125 25 245 1 141] 
#[0 25 249 0 4] 
#[0 25 253 0 3] 
#[1 26 1 0 4 26 5 1 236] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 26 9 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 26 13 0 3] 
#[0 11 106 0 3 0 5 0 7 0 8 0 9 0 124 0 125 0 137 0 138 1 237] 
#[0 11 110 0 4 0 124] 
#[0 26 17 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 26 21 1 9 15 81 1 10 26 25 1 24 0 6 1 236] 
#[0 26 29 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 26 33 1 9 15 81 1 10 0 6 1 236] 
#[0 11 114 0 3 0 124] 
#[0 11 118 0 15 0 124] 
#[0 11 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 11 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 101 0 2 26 37 0 3 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 19 17 0 123 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 19 21 0 199 19 21 0 200 1 1 1 8 19 21 1 11 1 129 1 12 1 133 1 13 1 137 1 16 19 21 1 17 1 1 1 22 19 21 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 26 41 0 10] 
#[1 6 29 0 124 11 130 0 137 11 130 0 138] 
#[1 11 134 0 15 11 65 0 140 26 45 1 83 26 45 1 84 26 45 1 85 11 81 1 86 11 85 1 87 26 49 1 104] 
#[0 11 138 0 5] 
#[0 11 142 0 5] 
#[1 0 126 0 5 26 53 1 101] 
#[0 26 57 0 5] 
#[0 11 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 0 139 0 140 0 141 1 235 1 236 1 237] 
#[0 26 61 0 15] 
#[0 11 150 0 4 0 139 0 141] 
#[0 11 154 0 4 0 10 0 15 0 140] 
#[0 11 158 0 4 0 10 0 15 0 140] 
#[0 11 162 0 4 0 10 0 15 0 140] 
#[0 11 166 0 4 0 10 0 15 0 140] 
#[0 26 65 0 4] 
#[1 0 22 0 5 26 69 1 100] 
#[0 26 73 0 5] 
#[0 11 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 11 174 0 4 0 8 0 20] 
#[0 26 77 0 8] 
#[0 11 178 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 26 81 0 203 26 81 0 206 26 81 0 207 26 81 0 208 26 81 0 216 26 81 0 230 26 81 0 231 26 81 0 232 26 81 0 233 26 81 0 234 26 81 0 235 26 81 0 236 26 81 0 237 26 81 0 240 26 81 0 241 26 81 0 243 26 81 0 244 26 81 0 245 26 81 0 250 26 81 0 252 26 81 0 253 26 81 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 26 85 0 203 26 85 0 206 26 85 0 207 26 85 0 208 26 85 0 216 26 85 0 230 26 85 0 231 26 85 0 232 26 85 0 233 26 85 0 234 26 85 0 235 26 85 0 236 26 85 0 237 26 85 0 240 26 85 0 241 26 85 0 243 26 85 0 244 26 85 0 245 26 85 0 250 26 85 0 252 26 85 0 253 26 85 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 26 89 0 3 6 29 0 124] 
#[1 0 101 0 2 26 93 0 3 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 26 97 0 199 26 97 0 200 26 97 0 202 1 1 1 8 26 97 1 11 1 129 1 12 1 133 1 13 1 137 1 16 26 97 1 17 1 1 1 22 26 97 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 26 101 0 9 6 29 0 124] 
#[1 26 105 0 3 6 29 0 124] 
#[0 26 109 0 3] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 26 113 0 203 26 113 0 206 26 113 0 207 26 113 0 208 26 113 0 216 26 113 0 230 26 113 0 231 26 113 0 232 26 113 0 233 26 113 0 234 26 113 0 235 26 113 0 236 26 113 0 237 26 113 0 240 26 113 0 241 26 113 0 243 26 113 0 244 26 113 0 245 26 113 0 250 26 113 0 252 26 113 0 253 26 113 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 26 117 0 203 26 117 0 206 26 117 0 207 26 117 0 208 26 117 0 216 26 117 0 230 26 117 0 231 26 117 0 232 26 117 0 233 26 117 0 234 26 117 0 235 26 117 0 236 26 117 0 237 26 117 0 240 26 117 0 241 26 117 0 243 26 117 0 244 26 117 0 245 26 117 0 250 26 117 0 252 26 117 0 253 26 117 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 26 121 0 203 26 121 0 206 26 121 0 207 26 121 0 208 26 121 0 216 26 121 0 230 26 121 0 231 26 121 0 232 26 121 0 233 26 121 0 234 26 121 0 235 26 121 0 236 26 121 0 237 26 121 0 240 26 121 0 241 26 121 0 243 26 121 0 244 26 121 0 245 26 121 0 250 26 121 0 252 26 121 0 253 26 121 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 26 125 0 3 6 29 0 124] 
#[1 0 101 0 2 26 129 0 3 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 26 133 0 199 26 133 0 200 26 133 0 202 1 1 1 8 26 133 1 11 1 129 1 12 1 133 1 13 1 137 1 16 26 133 1 17 1 1 1 22 26 133 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 11 182 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 26 137 0 203 26 137 0 206 26 137 0 207 26 137 0 208 26 137 0 216 26 137 0 230 26 137 0 231 26 137 0 232 26 137 0 233 26 137 0 234 26 137 0 235 26 137 0 236 26 137 0 237 26 137 0 240 26 137 0 241 26 137 0 243 26 137 0 244 26 137 0 245 26 137 0 250 26 137 0 252 26 137 0 253 26 137 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 26 141 0 203 26 141 0 206 26 141 0 207 26 141 0 208 26 141 0 216 26 141 0 230 26 141 0 231 26 141 0 232 26 141 0 233 26 141 0 234 26 141 0 235 26 141 0 236 26 141 0 237 26 141 0 240 26 141 0 241 26 141 0 243 26 141 0 244 26 141 0 245 26 141 0 250 26 141 0 252 26 141 0 253 26 141 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 26 145 0 3 6 29 0 124] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 26 149 0 203 26 149 0 206 26 149 0 207 26 149 0 208 26 149 0 216 26 149 0 230 26 149 0 231 26 149 0 232 26 149 0 233 26 149 0 234 26 149 0 235 26 149 0 236 26 149 0 237 26 149 0 240 26 149 0 241 26 149 0 243 26 149 0 244 26 149 0 245 26 149 0 250 26 149 0 252 26 149 0 253 26 149 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 26 153 0 203 26 153 0 206 26 153 0 207 26 153 0 208 26 153 0 216 26 153 0 230 26 153 0 231 26 153 0 232 26 153 0 233 26 153 0 234 26 153 0 235 26 153 0 236 26 153 0 237 26 153 0 240 26 153 0 241 26 153 0 243 26 153 0 244 26 153 0 245 26 153 0 250 26 153 0 252 26 153 0 253 26 153 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 26 157 0 199 26 157 0 200 1 1 1 8 26 157 1 11 1 129 1 12 1 133 1 13 1 137 1 16 26 157 1 17 1 1 1 22 26 157 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 26 161 0 3] 
#[0 26 165 0 3] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 26 169 0 203 26 169 0 206 26 169 0 207 26 169 0 208 26 169 0 216 26 169 0 230 26 169 0 231 26 169 0 232 26 169 0 233 26 169 0 234 26 169 0 235 26 169 0 236 26 169 0 237 26 169 0 240 26 169 0 241 26 169 0 243 26 169 0 244 26 169 0 245 26 169 0 250 26 169 0 252 26 169 0 253 26 169 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 11 186 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 26 173 0 199 26 173 0 200 26 173 0 202 1 1 1 8 26 173 1 11 1 129 1 12 1 133 1 13 1 137 1 16 26 173 1 17 1 1 1 22 26 173 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 26 177 0 125] 
#[1 26 181 0 5 23 137 0 60 23 141 0 69 26 185 0 248 26 189 0 249] 
#[0 11 190 0 5 0 60 0 69] 
#[1 26 193 0 5 23 137 0 60 26 197 0 247 23 149 0 248] 
#[1 12 173 0 125 26 201 1 141] 
#[1 1 221 0 4 26 205 0 208] 
#[0 11 194 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 26 209 0 5] 
#[1 0 193 0 127 26 213 0 144] 
#[1 17 189 0 2 26 217 1 169] 
#[0 26 221 0 65] 
#[0 11 198 0 5 0 6 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[1 8 249 0 6 18 5 0 99 18 5 0 100 18 5 0 101 18 5 0 102 18 5 0 103 18 5 0 107 7 101 0 128 7 121 0 131 7 125 0 132 26 225 0 145 26 225 0 157 26 225 0 158 26 225 0 159 7 121 1 75 7 125 1 76 18 5 1 144 18 5 1 146 18 5 1 172] 
#[0 26 229 0 5] 
#[1 11 202 0 5 1 7 0 6 23 177 0 65 0 139 0 99 0 143 0 100 0 147 0 101 0 151 0 102 4 170 0 103 4 170 0 107 4 170 0 128 4 170 0 131 4 170 0 132 23 181 1 146 26 233 1 149 23 189 1 173 26 233 1 225 26 233 1 226 26 233 1 227] 
#[0 11 206 0 5 0 6 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[0 11 210 0 5 0 6 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[0 11 214 0 5 0 6 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[1 10 70 0 5 1 7 0 6 23 177 0 65 0 139 0 99 0 143 0 100 0 147 0 101 0 151 0 102 4 170 0 103 4 170 0 107 4 170 0 128 4 170 0 131 4 170 0 132 23 181 1 146 23 201 1 149 23 189 1 173 26 237 1 223 23 197 1 224 23 201 1 225 23 201 1 226 23 201 1 227] 
#[1 10 70 0 5 1 7 0 6 23 177 0 65 0 139 0 99 0 143 0 100 0 147 0 101 0 151 0 102 4 170 0 103 4 170 0 107 4 170 0 128 4 170 0 131 4 170 0 132 23 181 1 146 23 201 1 149 23 189 1 173 26 241 1 223 23 197 1 224 23 201 1 225 23 201 1 226 23 201 1 227] 
#[0 26 245 0 4] 
#[0 11 218 0 8 0 124] 
#[0 11 222 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 11 226 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 11 230 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 11 234 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 11 238 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 11 242 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 11 246 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 11 250 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 11 254 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 24 233 0 24] 
#[0 12 2 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 12 6 0 5 0 62 0 64 0 73 0 74 0 80 0 82 0 84 0 89 0 91 0 94 0 118] 
#[0 26 249 0 5] 
#[1 8 153 0 1 26 253 0 74 8 165 1 234] 
#[0 12 10 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 12 14 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 12 18 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 12 22 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 12 26 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 12 30 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 27 1 0 5] 
#[1 0 38 0 1 12 34 0 5 16 209 0 68 0 39 0 74 16 217 0 84 6 201 0 89 6 209 0 94 6 213 0 116 24 25 1 36 27 5 1 57 27 5 1 151 27 5 1 161 27 5 1 183 27 5 1 189 27 5 1 203 27 5 1 209 27 5 1 212 27 5 1 214 27 5 1 215 27 5 1 216 27 5 1 217] 
#[0 12 38 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 12 42 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 12 46 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 12 50 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 12 54 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 12 58 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 27 9 0 5] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 27 17 0 199 27 17 0 200 1 1 1 8 27 17 1 11 1 129 1 12 1 133 1 13 1 137 1 16 27 17 1 17 1 1 1 22 27 17 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 27 17 1 182 1 217 1 236] 
#[0 12 62 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 12 66 0 5 8 249 0 6 7 101 0 128 7 121 0 131 7 125 0 132 20 137 0 145 20 137 0 157 20 137 0 158 20 137 0 159 7 121 1 75 7 125 1 76 27 21 1 181] 
#[0 27 25 0 8] 
#[0 12 70 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 27 29 0 8] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 27 33 1 9 15 81 1 10 0 6 1 236] 
#[0 27 37 0 4] 
#[0 27 41 0 3] 
#[0 27 45 0 4] 
#[0 27 49 0 131 1 75] 
#[1 0 193 0 127 27 53 0 144] 
#[0 12 74 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 12 78 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 12 82 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 12 86 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 12 90 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 12 94 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 12 98 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 12 102 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 12 106 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 12 110 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 12 114 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 12 118 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 12 122 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 12 126 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 12 130 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 12 134 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236] 
#[0 27 57 0 8] 
#[0 12 138 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 27 61 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 27 61 1 135 27 61 1 136 2 225 1 137 2 225 1 139] 
#[0 27 65 0 8] 
#[1 27 69 0 4 2 161 0 12 4 193 0 75 9 221 1 38 27 73 1 39 20 33 1 106 4 209 1 236] 
#[1 27 77 0 2 2 161 0 12 7 129 1 106 20 49 1 142] 
#[0 12 142 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 12 146 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 193 0 127 20 193 0 144 20 197 1 124 20 201 1 190] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 27 81 1 9 15 81 1 10 0 6 1 236] 
#[0 27 85 0 5] 
#[1 12 173 0 125 27 89 1 141] 
#[1 12 173 0 125 27 93 1 141] 
#[0 12 150 0 5 0 8 0 124] 
#[1 12 154 0 5 12 154 0 8 12 154 0 124 12 173 0 125 27 97 1 141] 
#[0 12 158 0 4 0 5 0 8 0 124] 
#[0 12 162 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[1 2 149 0 2 2 153 0 4 2 157 0 6 2 161 0 12 2 165 0 86 2 169 0 90 2 173 0 95 2 177 0 103 2 181 0 112 2 185 0 117 2 189 0 119 0 193 0 127 2 197 0 131 2 201 0 132 2 193 0 144 2 197 1 75 2 201 1 76 2 205 1 106 27 101 1 113 2 213 1 114 2 217 1 115 2 217 1 116 2 225 1 117 2 225 1 118 2 225 1 119 2 225 1 120 2 225 1 121 2 225 1 122 2 249 1 123 2 253 1 124 2 225 1 125 2 225 1 129 2 225 1 130 2 213 1 133 2 217 1 134 27 101 1 135 27 101 1 136 2 225 1 137 2 225 1 139] 
#[0 12 166 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 26 21 1 9 15 81 1 10 27 105 1 24 0 6 1 236] 
#[0 27 109 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 27 113 1 33 0 6 1 236] 
#[1 12 173 0 125 27 117 1 141] 
#[0 27 121 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 27 125 1 9 15 81 1 10 0 6 1 236] 
#[0 27 129 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 27 133 1 9 15 81 1 10 0 6 1 236] 
#[0 27 137 0 4] 
#[1 27 141 0 4 12 173 0 125 27 145 1 141] 
#[0 12 170 0 3] 
#[1 27 149 0 4 12 173 0 125 27 153 1 141] 
#[0 12 174 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 27 157 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 27 161 1 9 15 81 1 10 0 6 1 236] 
#[0 12 178 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[1 12 182 0 4 12 182 0 8 12 173 0 125 27 165 1 141] 
#[0 27 169 0 5] 
#[1 27 173 0 4 27 177 0 8] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 27 181 1 9 15 81 1 10 0 6 1 236] 
#[0 12 186 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 27 185 0 5] 
#[1 27 189 0 4 27 193 0 8] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 27 197 1 9 15 81 1 10 0 6 1 236] 
#[0 12 190 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[1 7 81 0 2 2 161 0 12 7 129 1 106 27 201 1 142] 
#[1 27 205 0 4 27 209 0 8] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 27 213 1 9 15 81 1 10 0 6 1 236] 
#[0 12 194 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 12 198 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 27 217 0 8] 
#[1 27 221 0 8 8 53 0 24 27 225 0 161] 
#[1 27 229 0 8 8 53 0 24 12 173 0 125 27 233 0 161 27 237 1 141] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 27 241 1 33 0 6 1 236] 
#[1 12 173 0 125 27 245 1 141] 
#[0 27 249 0 4] 
#[0 27 253 0 3] 
#[1 28 1 0 4 28 5 1 236] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 28 9 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 28 13 0 3] 
#[0 28 17 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 26 21 1 9 15 81 1 10 28 21 1 24 0 6 1 236] 
#[0 28 25 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 28 29 1 9 15 81 1 10 0 6 1 236] 
#[0 12 202 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 4 189 0 4 4 193 0 75 28 33 1 38 4 205 1 39 4 209 1 236] 
#[0 12 206 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 10 26 0 4 11 6 0 8] 
#[0 28 37 0 5] 
#[1 10 34 0 4 11 18 0 8 12 173 0 125 28 41 1 141] 
#[0 12 210 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 12 214 0 5 0 124] 
#[0 12 218 0 3 0 5 0 7 0 24 0 44 0 53 0 85 0 98 0 124 0 125] 
#[0 12 222 0 3 0 5 0 7 0 124] 
#[0 12 226 0 3 0 5 0 7 0 124] 
#[0 28 45 0 5] 
#[0 28 49 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 28 53 1 9 15 81 1 10 28 57 1 29 0 6 1 236] 
#[0 28 61 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 28 65 1 33 0 6 1 236] 
#[1 12 173 0 125 28 69 1 141] 
#[0 28 73 0 3] 
#[1 28 77 0 4 28 81 1 236] 
#[0 12 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 12 234 0 5] 
#[0 28 85 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 26 21 1 9 15 81 1 10 28 89 1 24 0 6 1 236] 
#[0 28 93 0 5] 
#[0 12 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 62 0 63 0 65 0 74 0 85 0 88 0 98 0 99 0 100 0 101 0 102 0 103 0 107 0 112 0 124 0 125 0 127 0 128 0 131 0 132 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 11 134 0 15 28 97 1 104] 
#[1 11 134 0 15 28 101 1 104] 
#[0 28 105 0 15] 
#[0 28 109 0 5] 
#[0 12 242 0 4 0 139 0 141] 
#[0 12 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 0 139 0 140 0 141 1 235 1 236 1 237] 
#[1 0 101 0 2 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 28 113 0 199 28 113 0 200 1 1 1 8 28 113 1 11 1 129 1 12 1 133 1 13 1 137 1 16 28 113 1 17 1 1 1 22 28 113 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 28 117 0 5] 
#[0 12 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 12 254 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 2 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 6 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 28 121 0 203 28 121 0 206 28 121 0 207 28 121 0 208 28 121 0 216 28 121 0 230 28 121 0 231 28 121 0 232 28 121 0 233 28 121 0 234 28 121 0 235 28 121 0 236 28 121 0 237 28 121 0 240 28 121 0 241 28 121 0 243 28 121 0 244 28 121 0 245 28 121 0 250 28 121 0 252 28 121 0 253 28 121 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 28 125 0 203 28 125 0 206 28 125 0 207 28 125 0 208 28 125 0 216 28 125 0 230 28 125 0 231 28 125 0 232 28 125 0 233 28 125 0 234 28 125 0 235 28 125 0 236 28 125 0 237 28 125 0 240 28 125 0 241 28 125 0 243 28 125 0 244 28 125 0 245 28 125 0 250 28 125 0 252 28 125 0 253 28 125 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 28 129 0 3 6 29 0 124] 
#[1 0 101 0 2 28 133 0 3 0 14 0 4 0 105 0 6 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 0 141 0 62 0 145 0 70 1 177 0 76 0 153 0 80 0 157 0 84 0 161 0 95 1 173 0 96 0 169 0 109 0 173 0 112 1 177 0 114 0 181 0 117 0 185 0 119 0 189 0 122 0 193 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 28 137 0 199 28 137 0 200 28 137 0 202 1 1 1 8 28 137 1 11 1 129 1 12 1 133 1 13 1 137 1 16 28 137 1 17 1 1 1 22 28 137 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 28 141 0 203 28 141 0 206 28 141 0 207 28 141 0 208 28 141 0 216 28 141 0 230 28 141 0 231 28 141 0 232 28 141 0 233 28 141 0 234 28 141 0 235 28 141 0 236 28 141 0 237 28 141 0 240 28 141 0 241 28 141 0 243 28 141 0 244 28 141 0 245 28 141 0 250 28 141 0 252 28 141 0 253 28 141 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 28 145 0 203 28 145 0 206 28 145 0 207 28 145 0 208 28 145 0 216 28 145 0 230 28 145 0 231 28 145 0 232 28 145 0 233 28 145 0 234 28 145 0 235 28 145 0 236 28 145 0 237 28 145 0 240 28 145 0 241 28 145 0 243 28 145 0 244 28 145 0 245 28 145 0 250 28 145 0 252 28 145 0 253 28 145 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 13 10 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 14 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 18 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 28 149 0 203 28 149 0 206 28 149 0 207 28 149 0 208 28 149 0 216 28 149 0 230 28 149 0 231 28 149 0 232 28 149 0 233 28 149 0 234 28 149 0 235 28 149 0 236 28 149 0 237 28 149 0 240 28 149 0 241 28 149 0 243 28 149 0 244 28 149 0 245 28 149 0 250 28 149 0 252 28 149 0 253 28 149 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 28 153 0 203 28 153 0 206 28 153 0 207 28 153 0 208 28 153 0 216 28 153 0 230 28 153 0 231 28 153 0 232 28 153 0 233 28 153 0 234 28 153 0 235 28 153 0 236 28 153 0 237 28 153 0 240 28 153 0 241 28 153 0 243 28 153 0 244 28 153 0 245 28 153 0 250 28 153 0 252 28 153 0 253 28 153 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 28 157 0 3 6 29 0 124] 
#[0 13 22 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 26 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 28 161 0 203 28 161 0 206 28 161 0 207 28 161 0 208 28 161 0 216 28 161 0 230 28 161 0 231 28 161 0 232 28 161 0 233 28 161 0 234 28 161 0 235 28 161 0 236 28 161 0 237 28 161 0 240 28 161 0 241 28 161 0 243 28 161 0 244 28 161 0 245 28 161 0 250 28 161 0 252 28 161 0 253 28 161 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 13 30 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 34 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 28 165 0 3] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 28 169 0 203 28 169 0 206 28 169 0 207 28 169 0 208 28 169 0 216 28 169 0 230 28 169 0 231 28 169 0 232 28 169 0 233 28 169 0 234 28 169 0 235 28 169 0 236 28 169 0 237 28 169 0 240 28 169 0 241 28 169 0 243 28 169 0 244 28 169 0 245 28 169 0 250 28 169 0 252 28 169 0 253 28 169 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 28 173 0 203 28 173 0 206 28 173 0 207 28 173 0 208 28 173 0 216 28 173 0 230 28 173 0 231 28 173 0 232 28 173 0 233 28 173 0 234 28 173 0 235 28 173 0 236 28 173 0 237 28 173 0 240 28 173 0 241 28 173 0 243 28 173 0 244 28 173 0 245 28 173 0 250 28 173 0 252 28 173 0 253 28 173 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 13 38 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 6 29 0 124 28 177 0 125] 
#[1 0 6 0 2 0 6 0 4 13 42 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 13 42 0 60 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 28 181 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 0 6 1 236] 
#[0 13 46 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 50 0 5 0 60 0 69] 
#[1 28 185 0 5 23 137 0 60 28 189 0 247 23 149 0 248] 
#[0 13 54 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 28 193 0 5 23 137 0 60 26 185 0 248] 
#[0 13 58 0 3] 
#[0 13 62 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 66 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 17 33 0 125] 
#[0 28 197 0 8] 
#[1 17 189 0 2 28 201 1 169] 
#[1 7 81 0 2 2 66 0 8 2 161 0 12 2 66 0 125 28 205 1 45 7 129 1 106 28 209 1 142] 
#[0 13 70 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 74 0 5 0 6 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[0 28 213 0 5] 
#[0 28 217 0 5] 
#[1 10 70 0 5 1 7 0 6 23 177 0 65 0 139 0 99 0 143 0 100 0 147 0 101 0 151 0 102 4 170 0 103 4 170 0 107 4 170 0 128 4 170 0 131 4 170 0 132 23 181 1 146 23 201 1 149 23 189 1 173 28 221 1 223 23 197 1 224 23 201 1 225 23 201 1 226 23 201 1 227] 
#[0 13 78 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 16 209 0 68 28 225 0 69 20 61 0 84 6 201 0 89 6 213 0 116 28 229 1 151 28 233 1 161 17 1 1 189 28 237 1 217] 
#[0 13 82 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 86 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 13 90 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 94 0 5 0 124] 
#[0 13 98 0 5 0 124] 
#[0 13 102 0 5 0 124] 
#[0 13 106 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 110 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 28 241 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 26 21 1 9 15 81 1 10 28 245 1 24 0 6 1 236] 
#[0 28 249 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 28 253 1 9 15 81 1 10 0 6 1 236] 
#[0 29 1 0 3] 
#[0 7 14 0 8 0 23] 
#[0 13 114 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 29 5 0 8] 
#[0 13 118 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 1 31 0 5 1 7 0 6 3 37 0 8 3 41 0 27 3 45 0 57 23 177 0 65 3 49 0 81 0 139 0 99 0 143 0 100 0 147 0 101 0 151 0 102 4 170 0 103 3 53 0 106 1 35 0 107 3 61 0 127 1 39 0 128 3 69 0 129 4 170 0 131 4 170 0 132 9 213 1 19 9 213 1 23 9 213 1 28 9 213 1 32 9 205 1 40 9 209 1 41 9 213 1 42 3 93 1 43 3 97 1 44 3 101 1 46 9 213 1 47 23 181 1 146 23 201 1 149 9 213 1 153 9 213 1 154 23 189 1 173 23 193 1 223 23 197 1 224 23 201 1 225 23 201 1 226 23 201 1 227 3 117 1 236] 
#[0 29 9 0 4] 
#[1 0 78 0 3 3 241 0 4 3 245 0 6 4 41 0 123 0 193 0 127 9 1 0 144 4 53 0 219 4 53 0 220 4 53 0 221 4 85 0 227 4 85 0 228 4 81 0 229 29 13 1 3 4 77 1 4 4 81 1 5 4 85 1 6 7 77 1 236] 
#[0 29 17 0 5] 
#[1 12 210 0 1 1 43 0 2 12 210 0 4 12 210 0 5 1 43 0 6 1 43 0 8 11 170 0 10 11 170 0 11 11 170 0 12 11 170 0 13 11 170 0 14 11 170 0 15 11 170 0 16 11 170 0 17 11 170 0 18 11 170 0 19 11 170 0 21 11 170 0 22 11 170 0 23 11 170 0 24 11 170 0 25 11 170 0 26 11 170 0 27 11 170 0 28 11 170 0 29 11 170 0 30 11 170 0 31 11 170 0 32 11 170 0 33 11 170 0 34 11 170 0 35 1 43 0 36 1 43 0 37 1 43 0 38 1 43 0 39 12 210 0 40 11 170 0 41 11 170 0 42 11 170 0 43 11 170 0 44 11 170 0 45 11 170 0 46 11 170 0 47 11 170 0 48 11 170 0 49 11 170 0 50 11 170 0 51 11 170 0 52 12 210 0 53 11 170 0 54 11 170 0 55 12 210 0 57 12 210 0 58 12 210 0 59 12 210 0 62 12 210 0 63 12 210 0 64 12 210 0 66 12 210 0 67 12 210 0 68 12 210 0 70 12 210 0 71 12 210 0 73 12 210 0 74 12 210 0 76 12 210 0 78 12 210 0 80 12 210 0 83 12 210 0 84 11 170 0 85 11 170 0 88 12 210 0 89 12 210 0 91 12 210 0 93 12 210 0 94 12 210 0 95 12 210 0 96 12 210 0 105 12 210 0 109 12 210 0 110 12 210 0 112 12 210 0 113 12 210 0 114 12 210 0 115 12 210 0 116 12 210 0 117 12 210 0 118 12 210 0 119 12 210 0 120 12 210 0 121 12 210 0 122 11 170 0 124 12 210 0 127 12 210 0 129 12 210 0 131 12 210 0 132 12 210 0 133 1 43 0 135 1 43 0 136 12 210 0 139 11 170 1 235 1 43 1 236 12 210 1 237] 
#[0 13 122 0 5 0 6 0 8 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 128 0 131 0 132] 
#[0 13 126 0 5 0 6 0 8 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 128 0 131 0 132] 
#[0 13 130 0 5 0 8 0 124] 
#[0 13 134 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 65 0 85 0 88 0 99 0 100 0 101 0 102 0 103 0 107 0 124 0 125 0 128 0 131 0 132 0 137 0 138 1 236 1 237] 
#[0 29 21 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 28 53 1 9 15 81 1 10 29 25 1 29 0 6 1 236] 
#[0 29 29 0 5] 
#[0 29 33 0 4] 
#[0 13 138 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 29 37 0 5] 
#[0 13 142 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 29 41 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 29 45 1 9 15 81 1 10 0 6 1 236] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 29 49 1 9 15 81 1 10 0 6 1 236] 
#[0 29 53 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 29 57 1 9 15 81 1 10 0 6 1 236] 
#[0 29 61 0 4] 
#[0 13 146 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 29 65 0 5] 
#[0 13 150 0 4 0 8] 
#[0 13 154 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 29 69 1 9 15 81 1 10 0 6 1 236] 
#[0 13 158 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 29 73 0 5] 
#[0 13 162 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 29 77 1 9 15 81 1 10 0 6 1 236] 
#[0 13 166 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 29 81 0 5] 
#[1 29 85 0 4 29 89 0 8] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 29 93 1 9 15 81 1 10 0 6 1 236] 
#[0 13 170 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 29 97 0 5] 
#[0 13 174 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 13 178 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 29 101 0 8] 
#[0 13 182 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 29 105 0 8] 
#[1 29 109 0 8 8 53 0 24 29 113 0 161] 
#[0 29 117 0 5] 
#[0 29 121 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 28 53 1 9 15 81 1 10 29 125 1 29 0 6 1 236] 
#[0 29 129 0 4] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 29 133 1 33 0 6 1 236] 
#[1 12 173 0 125 29 137 1 141] 
#[0 29 141 0 3] 
#[1 29 145 0 4 29 149 1 236] 
#[0 13 186 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 29 153 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 26 21 1 9 15 81 1 10 29 157 1 24 0 6 1 236] 
#[0 29 161 0 5] 
#[0 13 190 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 194 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 11 174 0 4 12 158 0 8] 
#[0 13 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 29 165 1 33 0 6 1 236] 
#[0 13 202 0 5] 
#[0 29 169 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 28 53 1 9 15 81 1 10 29 173 1 29 0 6 1 236] 
#[0 29 177 0 5] 
#[0 29 181 0 4] 
#[1 29 185 0 4 29 189 1 236] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 29 193 1 33 0 6 1 236] 
#[1 12 173 0 125 29 197 1 141] 
#[0 13 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 29 201 0 5] 
#[0 13 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 29 205 0 15] 
#[0 29 209 0 15] 
#[0 13 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 0 139 0 140 0 141 1 235 1 236 1 237] 
#[0 13 218 0 4 0 139 0 141] 
#[1 0 22 0 5 29 213 1 100] 
#[0 13 222 0 4 0 10 0 15 0 140] 
#[0 13 226 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 230 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 29 217 0 203 29 217 0 206 29 217 0 207 29 217 0 208 29 217 0 216 29 217 0 230 29 217 0 231 29 217 0 232 29 217 0 233 29 217 0 234 29 217 0 235 29 217 0 236 29 217 0 237 29 217 0 240 29 217 0 241 29 217 0 243 29 217 0 244 29 217 0 245 29 217 0 250 29 217 0 252 29 217 0 253 29 217 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 29 221 0 203 29 221 0 206 29 221 0 207 29 221 0 208 29 221 0 216 29 221 0 230 29 221 0 231 29 221 0 232 29 221 0 233 29 221 0 234 29 221 0 235 29 221 0 236 29 221 0 237 29 221 0 240 29 221 0 241 29 221 0 243 29 221 0 244 29 221 0 245 29 221 0 250 29 221 0 252 29 221 0 253 29 221 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[1 29 225 0 3 6 29 0 124] 
#[0 13 234 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 238 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 242 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 13 246 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 29 229 0 203 29 229 0 206 29 229 0 207 29 229 0 208 29 229 0 216 29 229 0 230 29 229 0 231 29 229 0 232 29 229 0 233 29 229 0 234 29 229 0 235 29 229 0 236 29 229 0 237 29 229 0 240 29 229 0 241 29 229 0 243 29 229 0 244 29 229 0 245 29 229 0 250 29 229 0 252 29 229 0 253 29 229 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 13 250 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 29 233 0 203 29 233 0 206 29 233 0 207 29 233 0 208 29 233 0 216 29 233 0 230 29 233 0 231 29 233 0 232 29 233 0 233 29 233 0 234 29 233 0 235 29 233 0 236 29 233 0 237 29 233 0 240 29 233 0 241 29 233 0 243 29 233 0 244 29 233 0 245 29 233 0 250 29 233 0 252 29 233 0 253 29 233 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 13 254 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 14 2 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 14 6 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 14 6 0 60 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 14 6 0 69 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 29 237 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 0 6 1 236] 
#[1 0 6 0 2 0 6 0 4 14 10 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 14 10 0 60 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 6 173 0 210 0 61 0 211 6 173 0 212 0 69 0 213 0 6 1 236] 
#[0 14 14 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 29 241 0 5 23 137 0 60 26 185 0 248] 
#[0 14 18 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 14 22 0 5 0 6 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[0 29 245 0 8] 
#[1 29 249 0 8 12 173 0 125 29 253 1 141] 
#[0 30 1 0 8] 
#[0 14 26 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 14 30 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 30 5 0 5] 
#[1 11 253 0 62 12 5 0 80 0 193 0 127 30 9 0 144 21 81 1 221 21 85 1 222] 
#[0 8 206 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 8 214 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[0 8 238 0 1 0 5 0 68 0 74 0 84 0 89 0 94 0 116] 
#[1 13 186 0 1 1 47 0 2 13 186 0 4 13 186 0 5 1 47 0 6 1 47 0 8 12 230 0 10 12 230 0 11 12 230 0 12 12 230 0 13 12 230 0 14 12 230 0 15 12 230 0 16 12 230 0 17 12 230 0 18 12 230 0 19 12 230 0 21 12 230 0 22 12 230 0 23 12 230 0 24 12 230 0 25 12 230 0 26 12 230 0 27 12 230 0 28 12 230 0 29 12 230 0 30 12 230 0 31 12 230 0 32 12 230 0 33 12 230 0 34 12 230 0 35 1 47 0 36 1 47 0 37 1 47 0 38 1 47 0 39 13 186 0 40 12 230 0 41 12 230 0 42 12 230 0 43 12 230 0 44 12 230 0 45 12 230 0 46 12 230 0 47 12 230 0 48 12 230 0 49 12 230 0 50 12 230 0 51 12 230 0 52 13 186 0 53 12 230 0 54 12 230 0 55 13 186 0 57 13 186 0 58 13 186 0 59 13 186 0 62 13 186 0 63 13 186 0 64 13 186 0 66 13 186 0 67 13 186 0 68 13 186 0 70 13 186 0 71 13 186 0 73 13 186 0 74 13 186 0 76 13 186 0 78 13 186 0 80 13 186 0 83 13 186 0 84 12 230 0 85 12 230 0 88 13 186 0 89 13 186 0 91 13 186 0 93 13 186 0 94 13 186 0 95 13 186 0 96 13 186 0 105 13 186 0 109 13 186 0 110 13 186 0 112 13 186 0 113 13 186 0 114 13 186 0 115 13 186 0 116 13 186 0 117 13 186 0 118 13 186 0 119 13 186 0 120 13 186 0 121 13 186 0 122 12 230 0 124 13 186 0 127 13 186 0 129 13 186 0 131 13 186 0 132 13 186 0 133 1 47 0 135 1 47 0 136 13 186 0 139 12 230 1 235 1 47 1 236 13 186 1 237] 
#[0 30 13 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 26 21 1 9 15 81 1 10 30 17 1 24 0 6 1 236] 
#[0 30 21 0 5] 
#[0 30 25 0 8] 
#[0 14 34 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 1 51 0 5 1 7 0 6 3 37 0 8 3 41 0 27 3 45 0 57 23 177 0 65 3 49 0 81 0 139 0 99 0 143 0 100 0 147 0 101 0 151 0 102 4 170 0 103 3 53 0 106 1 35 0 107 3 61 0 127 1 39 0 128 3 69 0 129 4 170 0 131 4 170 0 132 9 213 1 19 9 213 1 23 9 213 1 28 9 213 1 32 14 177 1 40 9 209 1 41 9 213 1 42 3 93 1 43 3 97 1 44 3 101 1 46 9 213 1 47 23 181 1 146 23 201 1 149 9 213 1 153 9 213 1 154 23 189 1 173 26 237 1 223 23 197 1 224 23 201 1 225 23 201 1 226 23 201 1 227 3 117 1 236] 
#[0 30 29 0 3] 
#[1 13 194 0 1 1 55 0 2 13 194 0 4 13 194 0 5 1 55 0 6 1 55 0 8 12 250 0 10 12 250 0 11 12 250 0 12 12 250 0 13 12 250 0 14 12 250 0 15 12 250 0 16 12 250 0 17 12 250 0 18 12 250 0 19 12 250 0 21 12 250 0 22 12 250 0 23 12 250 0 24 12 250 0 25 12 250 0 26 12 250 0 27 12 250 0 28 12 250 0 29 12 250 0 30 12 250 0 31 12 250 0 32 12 250 0 33 12 250 0 34 12 250 0 35 1 55 0 36 1 55 0 37 1 55 0 38 1 55 0 39 13 194 0 40 12 250 0 41 12 250 0 42 12 250 0 43 12 250 0 44 12 250 0 45 12 250 0 46 12 250 0 47 12 250 0 48 12 250 0 49 12 250 0 50 12 250 0 51 12 250 0 52 13 194 0 53 12 250 0 54 12 250 0 55 13 194 0 57 13 194 0 58 13 194 0 59 13 194 0 62 13 194 0 63 13 194 0 64 13 194 0 66 13 194 0 67 13 194 0 68 13 194 0 70 13 194 0 71 13 194 0 73 13 194 0 74 13 194 0 76 13 194 0 78 13 194 0 80 13 194 0 83 13 194 0 84 12 250 0 85 12 250 0 88 13 194 0 89 13 194 0 91 13 194 0 93 13 194 0 94 13 194 0 95 13 194 0 96 13 194 0 105 13 194 0 109 13 194 0 110 13 194 0 112 13 194 0 113 13 194 0 114 13 194 0 115 13 194 0 116 13 194 0 117 13 194 0 118 13 194 0 119 13 194 0 120 13 194 0 121 13 194 0 122 12 250 0 124 13 194 0 127 13 194 0 129 13 194 0 131 13 194 0 132 13 194 0 133 1 55 0 135 1 55 0 136 13 194 0 139 12 250 1 235 1 55 1 236 13 194 1 237] 
#[0 14 38 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 30 33 0 5] 
#[0 14 42 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 30 37 1 33 0 6 1 236] 
#[0 14 46 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 14 50 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 30 41 0 5] 
#[0 30 45 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 30 49 1 9 15 81 1 10 0 6 1 236] 
#[0 30 53 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 30 57 1 9 15 81 1 10 0 6 1 236] 
#[0 14 54 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 30 61 0 5] 
#[0 14 58 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 30 65 0 5] 
#[0 14 62 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 30 69 1 9 15 81 1 10 0 6 1 236] 
#[0 14 66 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 30 73 0 5] 
#[0 14 70 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 14 74 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 14 78 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 14 82 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 30 77 0 8] 
#[0 14 86 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 30 81 1 33 0 6 1 236] 
#[0 30 85 0 5] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 28 53 1 9 15 81 1 10 30 89 1 29 0 6 1 236] 
#[0 30 93 0 5] 
#[0 30 97 0 4] 
#[1 30 101 0 4 30 105 1 236] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 30 109 1 33 0 6 1 236] 
#[1 12 173 0 125 30 113 1 141] 
#[0 14 90 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 30 117 0 5] 
#[0 14 94 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 30 121 0 5] 
#[0 14 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 30 125 0 5] 
#[0 14 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 30 129 1 33 0 6 1 236] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 30 133 1 33 0 6 1 236] 
#[1 12 173 0 125 30 137 1 141] 
#[0 30 141 0 5] 
#[0 30 145 0 4] 
#[0 14 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 14 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 0 140 1 235 1 236 1 237] 
#[0 14 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 0 139 0 140 0 141 1 235 1 236 1 237] 
#[0 30 149 0 5] 
#[0 14 118 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 14 122 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 101 0 2 0 19 0 4 0 105 0 6 1 225 0 8 0 109 0 36 0 113 0 37 0 117 0 38 0 121 0 39 0 125 0 40 0 129 0 53 0 133 0 57 0 137 0 58 1 229 0 59 0 141 0 62 1 233 0 66 1 237 0 67 0 145 0 70 1 241 0 71 1 177 0 76 1 245 0 78 0 153 0 80 1 249 0 83 0 157 0 84 0 161 0 95 1 173 0 96 1 253 0 105 0 169 0 109 2 1 0 110 0 173 0 112 2 5 0 113 1 177 0 114 2 9 0 115 0 181 0 117 2 13 0 118 0 185 0 119 2 17 0 120 2 21 0 121 0 189 0 122 2 25 0 127 0 197 0 129 1 181 0 131 1 185 0 132 0 209 0 133 0 213 0 135 0 18 0 136 0 15 0 139 0 221 0 144 1 1 0 146 1 1 0 147 1 1 0 148 1 1 0 149 1 1 0 153 0 245 0 154 1 1 0 162 0 253 0 163 1 1 0 166 1 1 0 167 1 1 0 168 1 1 0 169 1 1 0 170 1 41 0 171 1 25 0 172 1 25 0 173 1 25 0 174 1 37 0 177 1 41 0 181 1 49 0 182 1 49 0 183 1 57 0 184 1 57 0 185 1 61 0 187 1 65 0 188 1 69 0 189 1 73 0 190 1 77 0 191 1 81 0 192 1 85 0 193 1 89 0 194 1 93 0 195 1 97 0 196 1 101 0 197 1 105 0 198 2 29 0 199 2 29 0 200 2 29 0 202 30 153 0 203 30 153 0 206 30 153 0 207 30 153 0 208 30 153 0 216 30 153 0 230 30 153 0 231 30 153 0 232 30 153 0 233 30 153 0 234 30 153 0 235 30 153 0 236 30 153 0 237 30 153 0 240 30 153 0 241 30 153 0 243 30 153 0 244 30 153 0 245 30 153 0 250 30 153 0 252 30 153 0 253 30 153 1 1 1 1 1 8 2 29 1 11 1 129 1 12 1 133 1 13 1 137 1 16 2 29 1 17 1 1 1 22 2 29 1 25 1 1 1 27 1 1 1 31 1 49 1 34 1 1 1 37 1 169 1 72 1 173 1 73 1 177 1 74 1 181 1 75 1 185 1 76 1 1 1 77 1 1 1 78 1 1 1 79 1 201 1 80 1 1 1 82 1 209 1 100 1 213 1 156 1 217 1 236] 
#[0 14 126 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 14 130 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 14 134 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 14 134 0 60 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 14 134 0 69 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 6 173 0 210 0 61 0 211 6 173 0 212 0 69 0 213 0 6 1 236] 
#[0 14 138 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 14 142 0 5 0 6 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[0 14 146 0 5 0 6 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[0 30 157 0 8] 
#[0 14 150 0 5 0 6 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[0 14 154 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 82 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 24 225 0 8] 
#[1 14 90 0 1 1 59 0 2 14 90 0 4 14 90 0 5 1 59 0 6 1 59 0 8 13 206 0 10 13 206 0 11 13 206 0 12 13 206 0 13 13 206 0 14 13 206 0 15 13 206 0 16 13 206 0 17 13 206 0 18 13 206 0 19 13 206 0 21 13 206 0 22 13 206 0 23 13 206 0 24 13 206 0 25 13 206 0 26 13 206 0 27 13 206 0 28 13 206 0 29 13 206 0 30 13 206 0 31 13 206 0 32 13 206 0 33 13 206 0 34 13 206 0 35 1 59 0 36 1 59 0 37 1 59 0 38 1 59 0 39 14 90 0 40 13 206 0 41 13 206 0 42 13 206 0 43 13 206 0 44 13 206 0 45 13 206 0 46 13 206 0 47 13 206 0 48 13 206 0 49 13 206 0 50 13 206 0 51 13 206 0 52 14 90 0 53 13 206 0 54 13 206 0 55 14 90 0 57 14 90 0 58 14 90 0 59 14 90 0 62 14 90 0 63 14 90 0 64 14 90 0 66 14 90 0 67 14 90 0 68 14 90 0 70 14 90 0 71 14 90 0 73 14 90 0 74 14 90 0 76 14 90 0 78 14 90 0 80 14 90 0 83 14 90 0 84 13 206 0 85 13 206 0 88 14 90 0 89 14 90 0 91 14 90 0 93 14 90 0 94 14 90 0 95 14 90 0 96 14 90 0 105 14 90 0 109 14 90 0 110 14 90 0 112 14 90 0 113 14 90 0 114 14 90 0 115 14 90 0 116 14 90 0 117 14 90 0 118 14 90 0 119 14 90 0 120 14 90 0 121 14 90 0 122 13 206 0 124 14 90 0 127 14 90 0 129 14 90 0 131 14 90 0 132 14 90 0 133 1 59 0 135 1 59 0 136 14 90 0 139 13 206 1 235 1 59 1 236 14 90 1 237] 
#[0 30 161 0 5] 
#[1 14 94 0 1 1 63 0 2 14 94 0 4 14 94 0 5 1 63 0 6 1 63 0 8 13 210 0 10 13 210 0 11 13 210 0 12 13 210 0 13 13 210 0 14 13 210 0 15 13 210 0 16 13 210 0 17 13 210 0 18 13 210 0 19 13 210 0 21 13 210 0 22 13 210 0 23 13 210 0 24 13 210 0 25 13 210 0 26 13 210 0 27 13 210 0 28 13 210 0 29 13 210 0 30 13 210 0 31 13 210 0 32 13 210 0 33 13 210 0 34 13 210 0 35 1 63 0 36 1 63 0 37 1 63 0 38 1 63 0 39 14 94 0 40 13 210 0 41 13 210 0 42 13 210 0 43 13 210 0 44 13 210 0 45 13 210 0 46 13 210 0 47 13 210 0 48 13 210 0 49 13 210 0 50 13 210 0 51 13 210 0 52 14 94 0 53 13 210 0 54 13 210 0 55 14 94 0 57 14 94 0 58 14 94 0 59 14 94 0 62 14 94 0 63 14 94 0 64 14 94 0 66 14 94 0 67 14 94 0 68 14 94 0 70 14 94 0 71 14 94 0 73 14 94 0 74 14 94 0 76 14 94 0 78 14 94 0 80 14 94 0 83 14 94 0 84 13 210 0 85 13 210 0 88 14 94 0 89 14 94 0 91 14 94 0 93 14 94 0 94 14 94 0 95 14 94 0 96 14 94 0 105 14 94 0 109 14 94 0 110 14 94 0 112 14 94 0 113 14 94 0 114 14 94 0 115 14 94 0 116 14 94 0 117 14 94 0 118 14 94 0 119 14 94 0 120 14 94 0 121 14 94 0 122 13 210 0 124 14 94 0 127 14 94 0 129 14 94 0 131 14 94 0 132 14 94 0 133 1 63 0 135 1 63 0 136 14 94 0 139 13 210 1 235 1 63 1 236 14 94 1 237] 
#[0 14 158 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 27 45 0 4 8 242 0 8 12 173 0 125 21 105 1 141] 
#[0 14 162 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 30 165 0 5] 
#[0 14 166 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 14 170 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 30 169 0 5] 
#[0 14 174 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 30 173 0 5] 
#[0 14 178 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 14 182 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 30 177 0 5] 
#[0 14 186 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 14 190 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 30 181 0 5] 
#[0 14 194 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 30 185 0 5] 
#[0 14 198 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 30 189 1 33 0 6 1 236] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 30 193 1 33 0 6 1 236] 
#[1 12 173 0 125 30 197 1 141] 
#[0 30 201 0 5] 
#[0 30 205 0 4] 
#[0 14 202 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 14 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 14 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 30 209 0 5] 
#[0 30 213 0 5] 
#[0 30 217 0 4] 
#[0 14 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 30 221 1 33 0 6 1 236] 
#[0 14 218 0 4 0 10 0 15 0 140] 
#[0 14 222 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 14 226 0 5 0 6 0 65 0 99 0 100 0 101 0 102 0 103 0 107 0 128 0 131 0 132] 
#[1 14 202 0 1 1 67 0 2 14 202 0 4 14 202 0 5 1 67 0 6 1 67 0 8 14 106 0 10 14 106 0 11 14 106 0 12 14 106 0 13 14 106 0 14 14 106 0 15 14 106 0 16 14 106 0 17 14 106 0 18 14 106 0 19 14 106 0 21 14 106 0 22 14 106 0 23 14 106 0 24 14 106 0 25 14 106 0 26 14 106 0 27 14 106 0 28 14 106 0 29 14 106 0 30 14 106 0 31 14 106 0 32 14 106 0 33 14 106 0 34 14 106 0 35 1 67 0 36 1 67 0 37 1 67 0 38 1 67 0 39 14 202 0 40 14 106 0 41 14 106 0 42 14 106 0 43 14 106 0 44 14 106 0 45 14 106 0 46 14 106 0 47 14 106 0 48 14 106 0 49 14 106 0 50 14 106 0 51 14 106 0 52 14 202 0 53 14 106 0 54 14 106 0 55 14 202 0 57 14 202 0 58 14 202 0 59 14 202 0 62 14 202 0 63 14 202 0 64 14 202 0 66 14 202 0 67 14 202 0 68 14 202 0 70 14 202 0 71 14 202 0 73 14 202 0 74 14 202 0 76 14 202 0 78 14 202 0 80 14 202 0 83 14 202 0 84 14 106 0 85 14 106 0 88 14 202 0 89 14 202 0 91 14 202 0 93 14 202 0 94 14 202 0 95 14 202 0 96 14 202 0 105 14 202 0 109 14 202 0 110 14 202 0 112 14 202 0 113 14 202 0 114 14 202 0 115 14 202 0 116 14 202 0 117 14 202 0 118 14 202 0 119 14 202 0 120 14 202 0 121 14 202 0 122 14 106 0 124 14 202 0 127 14 202 0 129 14 202 0 131 14 202 0 132 14 202 0 133 1 67 0 135 1 67 0 136 14 202 0 139 14 106 1 235 1 67 1 236 14 202 1 237] 
#[0 14 230 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 14 234 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 14 238 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 124 0 127 0 128 0 129 1 236 1 237] 
#[0 14 242 0 5 0 8 0 27 0 57 0 81 0 106 0 107 0 127 0 128 0 129 1 236 1 237] 
#[0 14 246 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 14 250 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 30 225 0 5] 
#[0 30 229 0 5] 
#[0 30 233 0 4] 
#[0 14 254 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 30 237 1 33 0 6 1 236] 
#[0 15 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 15 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 30 241 1 33 0 6 1 236] 
#[0 30 245 0 5] 
#[0 15 10 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 15 14 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[1 0 6 0 2 0 6 0 4 6 78 0 5 0 6 0 6 0 6 0 8 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 53 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 69 0 64 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 80 0 6 0 83 0 6 0 84 0 69 0 91 0 6 0 95 0 6 0 96 0 6 0 105 0 6 0 109 0 6 0 110 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 115 0 6 0 117 0 6 0 118 0 6 0 119 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 127 0 6 0 129 0 6 0 131 0 6 0 132 0 6 0 133 0 6 0 135 0 6 0 136 0 6 0 139 15 73 0 209 2 125 0 210 0 61 0 211 2 125 0 212 0 69 0 213 18 237 1 9 15 81 1 10 30 249 1 33 0 6 1 236] 
#[0 30 253 0 5] 
#[0 31 1 0 5] 
#[0 15 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 31 5 0 5] 
#[0 15 22 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237] 
#[0 15 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 85 0 88 0 98 0 124 0 125 0 135 0 136 0 137 0 138 1 235 1 236 1 237] 
#[0 15 30 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 57 0 58 0 59 0 62 0 63 0 64 0 66 0 67 0 68 0 70 0 71 0 73 0 74 0 76 0 78 0 80 0 83 0 84 0 89 0 91 0 93 0 94 0 95 0 96 0 105 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 127 0 129 0 131 0 132 0 133 0 135 0 136 0 139 1 236 1 237]
	).
]

{ #category : 'private' }
JSParser >> actionsForCurrentToken [
	| actions |
	self splitQuestionDotToken.
	actions := super actionsForCurrentToken.
	self addMandatorySemicolons: actions.
	self addIdentifiers: actions.
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
		and: [ nodeStack isEmpty
				and: [ currentToken value = '#'
						and: [ currentToken startPosition = 1 and: [ scanner stream peek = $! ] ] ] ])
		ifTrue: [  "Handle the #!/program/to/run lines"scanner stream
				upToAny: {Character cr.
						Character lf}.
			scanner comments add: (1 to: scanner position).
			currentToken := nil.
			self getNextToken.
			^ self actionsForCurrentToken ].
	(self addSemicolons: actions)
		ifFalse: [ actions isEmpty
				ifTrue: [ (currentToken ids includes: scanner rightBraceId)
						ifTrue: [ | i scannerState stackItem |
							i := nodeStack size.
							scannerState := nil.
							[ i > 0 and: [ scannerState isNil ] ]
								whileTrue: [ stackItem := nodeStack at: i.
									stackItem = #template ifTrue: [ scannerState := stackItem ].
									i := i - 1 ].
							scannerState notNil
								ifTrue: [ self scope: scannerState.
									self position: currentToken startPosition - 1.
									currentToken := nil.
									self getNextToken.
									self scope: #default.
									(currentToken ids includes: scanner rightBraceId) ifTrue: [ ^ actions ].
									^ self actionsForCurrentToken ] ] ] ].
	^ actions
]

{ #category : 'private' }
JSParser >> addIdentifiers: actions [
	(currentToken ids first ~= scanner identifierId
		and: [ (currentToken ids includes: scanner identifierId)
				and: [ (self keywords includes: currentToken value) not ] ])
		ifTrue: [ self addActionsFor: scanner identifierId to: actions ]
]

{ #category : 'private' }
JSParser >> addMandatorySemicolons: actions [
	(currentToken ids first == scanner semicolonId
		and: [ currentToken ids size > 1 ])
		ifTrue: [ self addActionsFor: scanner mandatory_semicolonId to: actions ]
]

{ #category : 'private' }
JSParser >> addSemicolons: actions [
	| semicolonActions |
	(actions isEmpty and: [ self canInsertSemicolon ])
		ifTrue: [ semicolonActions := OrderedCollection new.
			self addActionsFor: self scanner semicolonId to: semicolonActions.
			semicolonActions notEmpty
				ifTrue: [ currentState
						attributeNamed: #lastInsertedSemicolonPosition
						put: self positionForInsertedSemicolon.
					self
						forkActions: semicolonActions
						inserting: (scanner tokenClass
								value: ';'
								start: nil
								ids: {scanner semicolonId})
						before: currentToken.
					^ true ] ].
	^ false
]

{ #category : 'private' }
JSParser >> canInsertSemicolon [
	^ (currentToken ids first = scanner rightBraceId
		or: [ currentToken ids first = scanner emptySymbolTokenId
				or: [ scanner isNewlineBefore: currentToken startPosition ] ])
		and: [ self lastInsertedSemicolonIsBeforeCurrentPosition ]
]

{ #category : 'private' }
JSParser >> checkEOL [
	| stackTop position |
	(self isEOFToken or: [ currentToken ids includes: scanner semicolonId ])
		ifTrue: [ ^ self ].
	nodeStack isEmpty ifTrue: [ ^ self ].
	stackTop := nodeStack last.
	position := [ stackTop stopPosition ]
			on: Error
			do: [ :ex | currentToken startPosition ].
	(scanner hasNewlineBetween: position and: currentToken startPosition)
		ifTrue: [ currentState
				attributeNamed: #lastInsertedSemicolonPosition
				put: self positionForInsertedSemicolon.
			self position: currentToken startPosition - 1.
			currentToken := currentToken class
					value: ';'
					start: nil
					ids: (Array with: self scanner semicolonId) ]
]

{ #category : 'private' }
JSParser >> checkSemicolon [
	| token |
	currentToken value = ';' ifFalse: [ ^ self ].
	currentToken startPosition ifNotNil: [ ^ self ].
	states size < 2 ifTrue: [ ^ self ].
	nodeStack isEmpty ifTrue: [ ^ self ].
	token := nodeStack last.
	[ token isNil or: [ token isKindOf: SmaCCToken ] ]
		whileFalse: [ (token isKindOf: JSNameExpressionNode)
				ifTrue: [ token := token name ]
				ifFalse: [ (token isKindOf: SmaCCDeferredReduceAction)
						ifTrue: [ token := token arguments at: 1 ifAbsent: [  ] ]
						ifFalse: [ (token isKindOf: SmaCCDeferredChoice)
								ifTrue: [ token := token stacksCollection first
											ifEmpty: [ nil ]
											ifNotEmpty: [ :items | items last ] ]
								ifFalse: [ token := nil ] ] ] ].
	(token notNil and: [ token ids first ~= scanner identifierId ])
		ifTrue: [ self killState ]
]

{ #category : 'private' }
JSParser >> defaultScope [
	^ #jsx
]

{ #category : 'private' }
JSParser >> forkActions: actions inserting: insertedToken before: aToken [
	| state todo nextActions action lastIndex |
	state := currentState.
	lastIndex := states size.
	todo := actions
			collect: [ :each | 
				{each.
					self duplicateState} ]
			as: OrderedCollection.
	[ todo notEmpty ]
		whileTrue: [ action := todo first first.
			[ self restoreState: todo first last.
			currentToken := insertedToken.
			self performAction: action.
			currentToken isNil
				or: [ nextActions := self actionsForCurrentToken.
					nextActions isEmpty
						ifTrue: [ currentToken := nil.
							self killState ]
						ifFalse: [ 2
								to: nextActions size
								do: [ :i | 
									todo
										add: {nextActions at: i.
												self duplicateState} ].
							action := nextActions first ].
					currentToken isNil ] ] whileFalse.
			todo removeFirst ].
	states size
		to: lastIndex + 1
		by: -1
		do: [ :i | 
			self restoreState: (states at: i).
			currentToken := aToken.
			self performParsingStep ].
	self restoreState: state.
	currentToken := aToken
]

{ #category : 'private' }
JSParser >> handleError: anInteger [
	(currentToken value = ';' and: [ currentToken startPosition isNil ])
		ifTrue: [ currentToken := nil.
			self getNextToken ].
	^ super handleError: anInteger
]

{ #category : 'private' }
JSParser >> isJSX [
	^ true
]

{ #category : 'private' }
JSParser >> keywords [
	^ self class keywords
]

{ #category : 'private' }
JSParser >> lastInsertedSemicolonIsBeforeCurrentPosition [
	^ ((currentState attributeNamed: #lastInsertedSemicolonPosition) ifNil: [ -1 ])
		< self positionForInsertedSemicolon
]

{ #category : 'private' }
JSParser >> positionForInsertedSemicolon [
	^ scanner position
		+ ((currentToken ids at: 1 ifAbsent: [  ]) = scanner emptySymbolTokenId
				ifTrue: [ 1 ]
				ifFalse: [ 0 ])
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientBinding2: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientClassDeclaration1: nodes [
	| result |
	result := JSClassExpressionNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result elements.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientClassDeclaration2: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientClassDeclaration3: nodes [
	| result |
	result := JSClassExpressionNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result elements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientClassDeclaration4: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientConstructorDeclaration1: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result constructorToken: (nodes at: 1).
	result signature: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientConstructorDeclaration2: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result modifier: (nodes at: 1).
	result constructorToken: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientDeclaration1: nodes [
	| result |
	result := JSAmbientDeclarationNode new.
	result declareToken: (nodes at: 1).
	result declaration: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientFunctionDeclaration1: nodes [
	| result |
	result := JSEmptyFunctionNode new.
	result functionToken: (nodes at: 1).
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientModuleDeclaration2: nodes [
	| result |
	result := JSAmbientModuleDeclarationNode new.
	result namespaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result elements.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientModuleDeclaration3: nodes [
	| result |
	result := JSAmbientModuleDeclarationNode new.
	result declareToken: (nodes at: 1).
	result namespaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result elements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientNamespaceDeclaration2: nodes [
	| result |
	result := JSNamespaceDeclarationNode new.
	result globalToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result elements.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientNamespaceElement3: nodes [
	| result |
	result := JSExportNamespaceElementNode new.
	result declaration: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientNamespaceElement4: nodes [
	| result |
	result := JSExportNamespaceElementNode new.
	result exportToken: (nodes at: 1).
	result declaration: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration1: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addTokens: (nodes at: 1) to: result modifiers.
	result name: (nodes at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration2: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addTokens: (nodes at: 1) to: result modifiers.
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration3: nodes [
	| result |
	result := JSMethodSignatureNode new.
	result addTokens: (nodes at: 1) to: result modifiers.
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArgumentList3: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArgumentList4: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArguments5: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	self add: (nodes at: 4) to: (result at: 6).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArguments6: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArguments7: nodes [
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
	self add: (nodes at: 5) to: (result at: 6).
	result at: 2 put: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern1: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern2: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result restElement: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern3: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern4: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result commas.
	result restElement: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern5: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result elements.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrayLiteral1: nodes [
	| result |
	result := JSArrayLiteralNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrayLiteral2: nodes [
	| result |
	result := JSArrayLiteralNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrayLiteral3: nodes [
	| result |
	result := JSArrayLiteralNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrayType1: nodes [
	| result |
	result := JSArrayTypeNode new.
	result type: (nodes at: 1).
	result leftBracket: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrayType2: nodes [
	| result |
	result := JSArrayTypeNode new.
	result readonlyToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftBracket: (nodes at: 4).
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrowFormalParameters2: nodes [
	| result |
	result := nodes at: 2.
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrowParameterDeclaration1: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForArrowParameters1: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAsExpression1: nodes [
	| result |
	result := JSAsExpressionNode new.
	result expression: (nodes at: 1).
	result asToken: (nodes at: 3).
	result type: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAssignmentExpression5: nodes [
	| result |
	result := JSAssignmentExpressionNode new.
	result lhs: (nodes at: 1).
	result operator: (nodes at: 2).
	result rhs: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAsyncFunctionExpression2: nodes [
	| result |
	result := JSAsyncFunctionNode new.
	result asyncToken: (nodes at: 1).
	result functionToken: (nodes at: 2).
	result left: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result right: (nodes at: 5).
	result colonToken: ((nodes at: 7) at: 1).
	result type: ((nodes at: 7) at: 2).
	result leftBrace: (nodes at: 8).
	result addNodes: (nodes at: 9) to: result statements.
	result rightBrace: (nodes at: 10).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAsyncFunctionExpression3: nodes [
	| result |
	result := JSAsyncFunctionNode new.
	result asyncToken: (nodes at: 1).
	result functionToken: (nodes at: 2).
	result typeParameters: (nodes at: 4).
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAsyncFunctionExpression4: nodes [
	| result |
	result := JSAsyncFunctionNode new.
	result asyncToken: (nodes at: 1).
	result functionToken: (nodes at: 2).
	result typeParameters: (nodes at: 4).
	result left: (nodes at: 5).
	result restParameter: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result parameters.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result right: (nodes at: 7).
	result colonToken: ((nodes at: 9) at: 1).
	result type: ((nodes at: 9) at: 2).
	result leftBrace: (nodes at: 10).
	result addNodes: (nodes at: 11) to: result statements.
	result rightBrace: (nodes at: 12).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAsyncFunctionExpression5: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAsyncFunctionExpression6: nodes [
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
	result colonToken: ((nodes at: 8) at: 1).
	result type: ((nodes at: 8) at: 2).
	result leftBrace: (nodes at: 9).
	result addNodes: (nodes at: 10) to: result statements.
	result rightBrace: (nodes at: 11).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAsyncFunctionExpression7: nodes [
	| result |
	result := JSAsyncFunctionNode new.
	result asyncToken: (nodes at: 1).
	result functionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 5).
	result left: (nodes at: 6).
	result restParameter: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result parameters.
	result addTokens: ((nodes at: 7) at: 3) to: result commas.
	result right: (nodes at: 8).
	result leftBrace: (nodes at: 9).
	result addNodes: (nodes at: 10) to: result statements.
	result rightBrace: (nodes at: 11).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAsyncFunctionExpression8: nodes [
	| result |
	result := JSAsyncFunctionNode new.
	result asyncToken: (nodes at: 1).
	result functionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 5).
	result left: (nodes at: 6).
	result restParameter: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result parameters.
	result addTokens: ((nodes at: 7) at: 3) to: result commas.
	result right: (nodes at: 8).
	result colonToken: ((nodes at: 10) at: 1).
	result type: ((nodes at: 10) at: 2).
	result leftBrace: (nodes at: 11).
	result addNodes: (nodes at: 12) to: result statements.
	result rightBrace: (nodes at: 13).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAsyncMethod2: nodes [
	| result |
	result := JSAsyncMethodDefinitionNode new.
	result asyncToken: (nodes at: 1).
	result name: (nodes at: 2).
	result left: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result right: (nodes at: 5).
	result colonToken: ((nodes at: 7) at: 1).
	result type: ((nodes at: 7) at: 2).
	result leftBrace: (nodes at: 8).
	result addNodes: (nodes at: 9) to: result statements.
	result rightBrace: (nodes at: 10).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForAwaitExpression1: nodes [
	| result |
	result := JSAwaitExpressionNode new.
	result awaitToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingElement2: nodes [
	| result |
	result := JSVariablePatternDeclarationNode new.
	result pattern: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingElement4: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result addTokens: (nodes at: 3) to: result modifiers.
	result variable: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingElement5: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result addTokens: (nodes at: 3) to: result modifiers.
	result variable: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingElement6: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result addTokens: (nodes at: 3) to: result modifiers.
	result variable: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingElement7: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result addTokens: (nodes at: 3) to: result modifiers.
	result variable: (nodes at: 4).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingElement8: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result addTokens: (nodes at: 3) to: result modifiers.
	result variable: (nodes at: 4).
	result nullableIndicator: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingElement9: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result addTokens: (nodes at: 3) to: result modifiers.
	result variable: (nodes at: 4).
	result nullableIndicator: (nodes at: 5).
	result colonToken: ((nodes at: 6) at: 1).
	result type: ((nodes at: 6) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingElementList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingElementList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: ((nodes at: 3) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingElisionElement1: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingElisionElement2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 2).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingProperty2: nodes [
	| result |
	result := JSBindingPropertyNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result element: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingRestElement1: nodes [
	| result |
	result := JSRestVariableDeclarationNode new.
	result ellipsis: (nodes at: 1).
	result variable: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingRestElement3: nodes [
	| result |
	result := JSRestVariableDeclarationNode new.
	result ellipsis: (nodes at: 1).
	result variable: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBindingRestProperty1: nodes [
	| result |
	result := JSBindingRestPropertyNode new.
	result ellipsis: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBlock1: nodes [
	| result |
	result := JSBlockStatementNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBlock2: nodes [
	| result |
	result := JSBlockStatementNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result statements.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBreakStatement1: nodes [
	| result |
	result := JSBreakStatementNode new.
	result breakToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForBreakStatement2: nodes [
	| result |
	result := JSBreakStatementNode new.
	result breakToken: (nodes at: 1).
	result label: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForCaseBlock1: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForCaseBlock2: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 3).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForCaseBlock3: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 3).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForCaseClause1: nodes [
	| result |
	result := JSCaseClauseNode new.
	result caseToken: (nodes at: 1).
	result caseExpression: (nodes at: 2).
	result colonToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForCaseClause2: nodes [
	| result |
	result := JSCaseClauseNode new.
	result caseToken: (nodes at: 1).
	result caseExpression: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForCatch2: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (nodes at: 1).
	result at: 5 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForCheckEOL1: nodes [
	self checkEOL.
	^ nil
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForCheckSemicolon1: nodes [
	self checkSemicolon.
	^ nil
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration1: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result classToken: (nodes at: 2).
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration2: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result classToken: (nodes at: 2).
	result typeParameters: (nodes at: 4).
	result leftBrace: ((nodes at: 5) at: 1).
	result rightBrace: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result elements.
	result extendsToken: ((nodes at: 5) at: 4).
	result superclass: ((nodes at: 5) at: 5).
	result implementsToken: ((nodes at: 5) at: 6).
	result addNodes: ((nodes at: 5) at: 7) to: result types.
	result addTokens: ((nodes at: 5) at: 8) to: result commas.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration3: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result classToken: (nodes at: 2).
	result name: (nodes at: 3).
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration4: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result classToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 5).
	result leftBrace: ((nodes at: 6) at: 1).
	result rightBrace: ((nodes at: 6) at: 2).
	result addNodes: ((nodes at: 6) at: 3) to: result elements.
	result extendsToken: ((nodes at: 6) at: 4).
	result superclass: ((nodes at: 6) at: 5).
	result implementsToken: ((nodes at: 6) at: 6).
	result addNodes: ((nodes at: 6) at: 7) to: result types.
	result addTokens: ((nodes at: 6) at: 8) to: result commas.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration5: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result abstract: (nodes at: 2).
	result classToken: (nodes at: 3).
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration6: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result abstract: (nodes at: 2).
	result classToken: (nodes at: 3).
	result typeParameters: (nodes at: 5).
	result leftBrace: ((nodes at: 6) at: 1).
	result rightBrace: ((nodes at: 6) at: 2).
	result addNodes: ((nodes at: 6) at: 3) to: result elements.
	result extendsToken: ((nodes at: 6) at: 4).
	result superclass: ((nodes at: 6) at: 5).
	result implementsToken: ((nodes at: 6) at: 6).
	result addNodes: ((nodes at: 6) at: 7) to: result types.
	result addTokens: ((nodes at: 6) at: 8) to: result commas.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration7: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result abstract: (nodes at: 2).
	result classToken: (nodes at: 3).
	result name: (nodes at: 4).
	result leftBrace: ((nodes at: 5) at: 1).
	result rightBrace: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result elements.
	result extendsToken: ((nodes at: 5) at: 4).
	result superclass: ((nodes at: 5) at: 5).
	result implementsToken: ((nodes at: 5) at: 6).
	result addNodes: ((nodes at: 5) at: 7) to: result types.
	result addTokens: ((nodes at: 5) at: 8) to: result commas.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration8: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result abstract: (nodes at: 2).
	result classToken: (nodes at: 3).
	result name: (nodes at: 4).
	result typeParameters: (nodes at: 6).
	result leftBrace: ((nodes at: 7) at: 1).
	result rightBrace: ((nodes at: 7) at: 2).
	result addNodes: ((nodes at: 7) at: 3) to: result elements.
	result extendsToken: ((nodes at: 7) at: 4).
	result superclass: ((nodes at: 7) at: 5).
	result implementsToken: ((nodes at: 7) at: 6).
	result addNodes: ((nodes at: 7) at: 7) to: result types.
	result addTokens: ((nodes at: 7) at: 8) to: result commas.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassElement5: nodes [
	| result |
	result := nodes at: 2.
	result staticToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassElement6: nodes [
	| result |
	result := JSFieldDefinitionNode new.
	result variable: ((nodes at: 1) at: 1).
	result equalToken: ((nodes at: 1) at: 2).
	result value: ((nodes at: 1) at: 3).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassElement7: nodes [
	| result |
	result := JSFieldDefinitionNode new.
	result staticToken: (nodes at: 1).
	result variable: ((nodes at: 2) at: 1).
	result equalToken: ((nodes at: 2) at: 2).
	result value: ((nodes at: 2) at: 3).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassHeritage1: nodes [
	| result |
	result := Array new: 5.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassHeritage4: nodes [
	| result |
	result := Array new: 5.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 2) at: 1).
	result at: 2 put: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassStaticBlock1: nodes [
	| result |
	result := JSClassStaticBlockNode new.
	result staticToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result statements.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForComputedPropertyName1: nodes [
	| result |
	result := JSComputedPropertyNameNode new.
	result leftBrace: (nodes at: 1).
	result expression: (nodes at: 2).
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForConciseBody2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 1).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForConstructorDeclaration1: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result constructorToken: (nodes at: 2).
	result signature: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result statements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForConstructorDeclaration2: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result constructorToken: (nodes at: 3).
	result signature: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForConstructorDeclaration3: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result constructorToken: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForConstructorDeclaration4: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result constructorToken: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForContinueStatement1: nodes [
	| result |
	result := JSContinueStatementNode new.
	result continueToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForContinueStatement2: nodes [
	| result |
	result := JSContinueStatementNode new.
	result continueToken: (nodes at: 1).
	result label: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForCoverInitializedName1: nodes [
	| result |
	result := JSPropertyAssignmentNode new.
	result name: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForDebuggerStatement1: nodes [
	| result |
	result := JSDebuggerStatementNode new.
	result debuggerToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForDecoratorExpression2: nodes [
	| result |
	result := JSDecoratorExpressionNode new.
	result atToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForDefaultClause1: nodes [
	| result |
	result := JSDefaultClauseNode new.
	result defaultToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForDefaultClause2: nodes [
	| result |
	result := JSDefaultClauseNode new.
	result defaultToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForDestructuringLexicalBinding1: nodes [
	| result |
	result := JSVariablePatternDeclarationNode new.
	result pattern: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForDestructuringLexicalBinding2: nodes [
	| result |
	result := JSVariablePatternDeclarationNode new.
	result pattern: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForDoWhileStatement1: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForElementList4: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 2).
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForElementList6: nodes [
	| result |
	result := nodes at: 1.
	self addAll: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForEmptyStatement1: nodes [
	| result |
	result := JSEmptyStatementNode new.
	result semicolon: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForEnumDeclaration1: nodes [
	| result |
	result := JSEnumDeclarationNode new.
	result enumToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForEnumMember1: nodes [
	| result |
	result := JSEnumMemberNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForEnumMember2: nodes [
	| result |
	result := JSEnumMemberNode new.
	result name: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExponentiationExpression2: nodes [
	| result |
	result := JSBinaryExpressionNode new.
	result leftExpression: (nodes at: 1).
	result operator: (nodes at: 2).
	result rightExpression: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportAssignment1: nodes [
	| result |
	result := JSExportAssignmentNode new.
	result exportToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration3: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result statement: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration4: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result declaration: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration5: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result defaultToken: (nodes at: 2).
	result statement: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration6: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 2).
	result typeToken: (nodes at: 3).
	result star: ((nodes at: 4) at: 1).
	result asToken: ((nodes at: 4) at: 2).
	result name: ((nodes at: 4) at: 3).
	result leftBrace: ((nodes at: 4) at: 4).
	result rightBrace: ((nodes at: 4) at: 5).
	result addNodes: ((nodes at: 4) at: 6) to: result specifiers.
	result addTokens: ((nodes at: 4) at: 7) to: result commas.
	result fromToken: ((nodes at: 5) at: 1).
	result from: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportDeclarationElement2: nodes [
	| result |
	result := JSExportDeclarationElementNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result exportToken: (nodes at: 2).
	result declaration: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportDefaultDeclarationElement1: nodes [
	| result |
	result := JSExportDefaultDeclarationElementNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result exportToken: (nodes at: 2).
	result defaultToken: (nodes at: 3).
	result declaration: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportDefaultDeclarationElement3: nodes [
	| result |
	result := JSExportDefaultDeclarationElementNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result exportToken: (nodes at: 2).
	result defaultToken: (nodes at: 3).
	result declaration: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportDefaultImplementationElement1: nodes [
	| result |
	result := JSExportDefaultImplementationElementNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result exportToken: (nodes at: 2).
	result defaultToken: (nodes at: 3).
	result declaration: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportDefaultImplementationElement4: nodes [
	| result |
	result := JSExportDefaultImplementationElementNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result exportToken: (nodes at: 2).
	result defaultToken: (nodes at: 3).
	result declaration: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportFromClause1: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportImplementationElement3: nodes [
	| result |
	result := JSExportImplementationElementNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result exportToken: (nodes at: 2).
	result declaration: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportListDeclaration2: nodes [
	| result |
	result := JSExportListDeclarationNode new.
	result exportToken: (nodes at: 1).
	result typeToken: (nodes at: 3).
	result star: (nodes at: 4).
	result fromToken: ((nodes at: 5) at: 1).
	result from: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportListDeclaration3: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportListDeclaration4: nodes [
	| result |
	result := JSExportListDeclarationNode new.
	result exportToken: (nodes at: 1).
	result typeToken: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result rightBrace: ((nodes at: 4) at: 2).
	result addNodes: ((nodes at: 4) at: 3) to: result specifiers.
	result addTokens: ((nodes at: 4) at: 4) to: result commas.
	result fromToken: ((nodes at: 5) at: 1).
	result from: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportListDeclaration5: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportListDeclaration6: nodes [
	| result |
	result := JSExportListDeclarationNode new.
	result exportToken: (nodes at: 1).
	result typeToken: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result rightBrace: ((nodes at: 4) at: 2).
	result addNodes: ((nodes at: 4) at: 3) to: result specifiers.
	result addTokens: ((nodes at: 4) at: 4) to: result commas.
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportSpecifier1: nodes [
	| result |
	result := JSExportSpecifierNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExportSpecifier2: nodes [
	| result |
	result := JSExportSpecifierNode new.
	result name: (nodes at: 1).
	result asToken: (nodes at: 2).
	result _as: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExpression2: nodes [
	| result |
	result := JSCommaExpressionNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result comma: (nodes at: 2).
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForExpressionStatement1: nodes [
	| result |
	result := JSExpressionStatementNode new.
	result expression: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForFieldDefinition1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	result at: 3 put: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForFieldDefinition2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForInOfStatement1: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForInOfStatement2: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForInOfStatement3: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForInOfStatement4: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForInOfStatement5: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForInOfStatement6: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForInOfStatement7: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForInOfStatement8: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForInOfStatement9: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement10: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement11: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement12: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement13: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement14: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement15: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement16: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement1: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement2: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement3: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement4: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement5: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement6: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement7: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement8: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForForStatement9: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForFormalParameters1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForFormalParameters2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForFormalParameters3: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForFunctionDeclaration5: nodes [
	| result |
	result := JSEmptyFunctionNode new.
	result functionToken: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForFunctionDeclaration6: nodes [
	| result |
	result := JSEmptyFunctionNode new.
	result functionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForGetAccessor1: nodes [
	| result |
	result := JSGetMethodDefinitionNode new.
	result getToken: (nodes at: 2).
	result name: (nodes at: 3).
	result left: (nodes at: 4).
	result right: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForGetAccessor2: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForIdentifier1: nodes [
	| result |
	result := JSNameExpressionNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportAliasDeclaration1: nodes [
	| result |
	result := JSImportAliasDeclarationNode new.
	result importToken: (nodes at: 1).
	result identifier: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result names.
	result addTokens: ((nodes at: 4) at: 2) to: result periodTokens.
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportCall1: nodes [
	| result |
	result := JSImportCallExpressionNode new.
	result importToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportClause1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportClause4: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportClause6: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportDeclaration1: nodes [
	| result |
	result := JSImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result imports.
	result comma: ((nodes at: 2) at: 2).
	result typeToken: ((nodes at: 2) at: 3).
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportDeclaration2: nodes [
	| result |
	result := JSImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result from: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportMeta1: nodes [
	| result |
	result := JSImportMetaNode new.
	result importToken: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result metaToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportSpecifier1: nodes [
	| result |
	result := JSImportSpecifierNode new.
	result binding: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportSpecifier2: nodes [
	| result |
	result := JSImportSpecifierNode new.
	result name: (nodes at: 1).
	result asToken: (nodes at: 2).
	result binding: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportSpecifier3: nodes [
	| result |
	result := JSImportSpecifierNode new.
	result typeToken: (nodes at: 2).
	result binding: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportSpecifier4: nodes [
	| result |
	result := JSImportSpecifierNode new.
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result asToken: (nodes at: 4).
	result binding: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForIndexMemberDeclaration1: nodes [
	| result |
	result := JSIndexMemberDeclarationNode new.
	result signature: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForIndexedAccessType1: nodes [
	| result |
	result := JSIndexedAccessTypeNode new.
	result type: (nodes at: 1).
	result leftBracket: (nodes at: 3).
	result index: (nodes at: 4).
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForInitializer1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForInterfaceDeclaration1: nodes [
	| result |
	result := JSInterfaceDeclarationNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForInterfaceDeclaration3: nodes [
	| result |
	result := JSInterfaceDeclarationNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result type: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForIntersectionType1: nodes [
	| result |
	result := JSIntersectionTypeNode new.
	result leftType: (nodes at: 1).
	result operator: (nodes at: 2).
	result rightType: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXAttribute1: nodes [
	| result |
	result := JSXAttributeNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXAttribute2: nodes [
	| result |
	result := JSXAttributeNode new.
	result name: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXChild1: nodes [
	| result |
	result := JSXTextNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXChild3: nodes [
	| result |
	result := JSXCodeExpressionNode new.
	result leftBrace: (nodes at: 2).
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXChild4: nodes [
	| result |
	result := JSXCodeExpressionNode new.
	result leftBrace: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXClosingElement1: nodes [
	| result |
	result := JSXClosingElementNode new.
	result ltToken: (nodes at: 2).
	result slashToken: (nodes at: 3).
	result gtToken: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXClosingElement2: nodes [
	| result |
	result := JSXClosingElementNode new.
	result ltToken: (nodes at: 2).
	result slashToken: (nodes at: 3).
	result name: (nodes at: 4).
	result gtToken: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXElement2: nodes [
	| result |
	result := JSXElementNode new.
	result openingElement: (nodes at: 1).
	result addNodes: (nodes at: 3) to: result items.
	result closingElement: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXElementName1: nodes [
	| result |
	result := JSXElementNameNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXMemberExpression1: nodes [
	| result |
	result := JSXMemberExpressionNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result identifiers.
	result addTokens: ((nodes at: 1) at: 2) to: result periodTokens.
	result addToken: (nodes at: 2) to: result identifiers.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXNamespacedName1: nodes [
	| result |
	result := JSXNamespacedNameNode new.
	result addToken: (nodes at: 1) to: result identifiers.
	result colonToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result identifiers.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXOpeningElement1: nodes [
	| result |
	result := JSXOpeningElementNode new.
	result ltToken: (nodes at: 2).
	result name: (nodes at: 3).
	result gtToken: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXOpeningElement2: nodes [
	| result |
	result := JSXOpeningElementNode new.
	result ltToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result _attributes.
	result gtToken: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXOpeningElement3: nodes [
	| result |
	result := JSXOpeningElementNode new.
	result ltToken: (nodes at: 2).
	result gtToken: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXSelfClosingElement1: nodes [
	| result |
	result := JSXSelfClosingElementNode new.
	result ltToken: (nodes at: 2).
	result name: (nodes at: 3).
	result slashToken: (nodes at: 4).
	result gtToken: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForJSXSpreadAttribute1: nodes [
	| result |
	result := JSXSpreadAttributeNode new.
	result leftBrace: (nodes at: 2).
	result element: (nodes at: 3).
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForLabelledStatement1: nodes [
	| result |
	result := JSLabelledStatementNode new.
	result label: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result statement: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForLexicalBinding2: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForLexicalBinding3: nodes [
	| result |
	result := JSVariablePatternDeclarationNode new.
	result pattern: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForLexicalDeclaration1: nodes [
	| result |
	result := JSLexicalDeclarationNode new.
	result typeToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result bindings.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForLiteral1: nodes [
	| result |
	result := JSNullLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForLiteral2: nodes [
	| result |
	result := JSBooleanLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForLiteral3: nodes [
	| result |
	result := JSNumericLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForLiteral4: nodes [
	| result |
	result := JSStringLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForLiteralType1: nodes [
	| result |
	result := JSLiteralTypeNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration1: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result accessor: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration2: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result accessor: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration3: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result accessor: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration4: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result staticToken: (nodes at: 3).
	result accessor: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberExpression2: nodes [
	| result |
	result := JSIndexedPropertyExpressionNode new.
	result expression: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result fieldExpression: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberExpression3: nodes [
	| result |
	result := JSNamedPropertyExpressionNode new.
	result expression: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberExpression4: nodes [
	| result |
	result := JSTaggedTemplateLiteralNode new.
	result expression: (nodes at: 1).
	result template: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration10: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result asyncToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration11: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration12: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result asyncToken: (nodes at: 3).
	result name: (nodes at: 4).
	result signature: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration13: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration14: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result asyncToken: (nodes at: 3).
	result name: (nodes at: 4).
	result signature: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration15: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result staticToken: (nodes at: 3).
	result name: (nodes at: 4).
	result signature: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration16: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result staticToken: (nodes at: 3).
	result asyncToken: (nodes at: 4).
	result name: (nodes at: 5).
	result signature: (nodes at: 6).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration1: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result statements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration2: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result asyncToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration3: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration4: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result asyncToken: (nodes at: 3).
	result name: (nodes at: 4).
	result signature: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration5: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration6: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result asyncToken: (nodes at: 3).
	result name: (nodes at: 4).
	result signature: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration7: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result staticToken: (nodes at: 3).
	result name: (nodes at: 4).
	result signature: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration8: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result staticToken: (nodes at: 3).
	result asyncToken: (nodes at: 4).
	result name: (nodes at: 5).
	result signature: (nodes at: 6).
	result leftBrace: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result statements.
	result rightBrace: (nodes at: 9).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration9: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration1: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result addTokens: (nodes at: 2) to: result modifiers.
	result name: (nodes at: 3).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration2: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result addTokens: (nodes at: 2) to: result modifiers.
	result name: (nodes at: 3).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration3: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result addTokens: (nodes at: 2) to: result modifiers.
	result name: (nodes at: 3).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration4: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result addTokens: (nodes at: 2) to: result modifiers.
	result name: (nodes at: 3).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration5: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result addTokens: (nodes at: 2) to: result modifiers.
	result name: (nodes at: 3).
	result nullableIndicator: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration6: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result addTokens: (nodes at: 2) to: result modifiers.
	result name: (nodes at: 3).
	result nullableIndicator: (nodes at: 5).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration7: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result addTokens: (nodes at: 2) to: result modifiers.
	result name: (nodes at: 3).
	result nullableIndicator: (nodes at: 5).
	result colonToken: ((nodes at: 6) at: 1).
	result type: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration8: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result addTokens: (nodes at: 2) to: result modifiers.
	result name: (nodes at: 3).
	result nullableIndicator: (nodes at: 5).
	result colonToken: ((nodes at: 6) at: 1).
	result type: ((nodes at: 6) at: 2).
	result equalToken: ((nodes at: 7) at: 1).
	result value: ((nodes at: 7) at: 2).
	result semicolon: (nodes at: 8).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMethodDefinition8: nodes [
	| result |
	result := JSMethodDefinitionNode new.
	result name: (nodes at: 2).
	result nullableIndicator: (nodes at: 3).
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMethodDefinition9: nodes [
	| result |
	result := JSMethodDefinitionNode new.
	result name: (nodes at: 2).
	result nullableIndicator: (nodes at: 3).
	result left: ((nodes at: 4) at: 1).
	result restParameter: ((nodes at: 4) at: 2).
	result addNodes: ((nodes at: 4) at: 3) to: result parameters.
	result addTokens: ((nodes at: 4) at: 4) to: result commas.
	result right: ((nodes at: 4) at: 5).
	result colonToken: ((nodes at: 4) at: 6).
	result type: ((nodes at: 4) at: 7).
	result typeParameters: ((nodes at: 4) at: 8).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMethodSignature1: nodes [
	| result |
	result := JSMethodSignatureNode new.
	result name: (nodes at: 1).
	result signature: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForMethodSignature2: nodes [
	| result |
	result := JSMethodSignatureNode new.
	result name: (nodes at: 1).
	result nullableIndicator: (nodes at: 2).
	result signature: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForModule1: nodes [
	| result |
	result := JSModuleNode new.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForModule2: nodes [
	| result |
	result := JSModuleNode new.
	result addNodes: (nodes at: 1) to: result items.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForModuleBody1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForModuleItemList1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForModuleItemList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForNameSpaceImport1: nodes [
	| result |
	result := JSNameSpaceImportNode new.
	result star: (nodes at: 1).
	result asToken: (nodes at: 2).
	result import: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForNamedExports1: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForNamedImports1: nodes [
	| result |
	result := JSNamedImportsNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForNamedImports2: nodes [
	| result |
	result := JSNamedImportsNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result specifiers.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForNamespaceName1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForNamespaceName2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForNewExpression2: nodes [
	| result |
	result := JSNewExpressionNode new.
	result newToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForNewTarget1: nodes [
	| result |
	result := JSNewTargetExpressionNode new.
	result newToken: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result targetToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForObjectBindingPattern1: nodes [
	| result |
	result := JSObjectBindingPatternNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForObjectBindingPattern2: nodes [
	| result |
	result := JSObjectBindingPatternNode new.
	result leftBrace: (nodes at: 1).
	result restProperty: (nodes at: 2).
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForObjectBindingPattern3: nodes [
	| result |
	result := JSObjectBindingPatternNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result properties.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForObjectLiteral1: nodes [
	| result |
	result := JSObjectLiteralNode new.
	result leftBrace: (nodes at: 2).
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForObjectLiteral2: nodes [
	| result |
	result := JSObjectLiteralNode new.
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result definitions.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForObjectLiteral3: nodes [
	| result |
	result := JSObjectLiteralNode new.
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result definitions.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result addToken: (nodes at: 4) to: result commas.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForObjectType1: nodes [
	| result |
	result := JSObjectTypeNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForObjectType2: nodes [
	| result |
	result := JSObjectTypeNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result types.
	result addTokens: ((nodes at: 2) at: 2) to: result separators.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForOptionalChain1: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForOptionalChain2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForOptionalExpression1: nodes [
	| result |
	result := JSOptionalExpressionNode new.
	result expression: (nodes at: 1).
	result questionDotToken: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result options.
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForOptionalFirst2: nodes [
	| result |
	result := JSOptionalIndexedNode new.
	result leftBracket: (nodes at: 1).
	result value: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForOptionalFirst3: nodes [
	| result |
	result := JSOptionalNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForOptionalFirst4: nodes [
	| result |
	result := JSOptionalTemplateNode new.
	result template: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForOptionalRest3: nodes [
	| result |
	result := JSOptionalNameNode new.
	result periodToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForParenthesizedExpression1: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPredefinedType1: nodes [
	| result |
	result := JSVoidTypeNode new.
	result voidToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPrefixType2: nodes [
	| result |
	result := JSKeyOfTypeNode new.
	result keyofToken: (nodes at: 1).
	result type: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPrefixType3: nodes [
	| result |
	result := JSInferTypeNode new.
	result inferToken: (nodes at: 1).
	result type: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPrimaryExpression16: nodes [
	| result |
	result := JSPostfixExpressionNode new.
	result expression: (nodes at: 1).
	result operator: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPrimaryExpression1: nodes [
	| result |
	result := JSThisExpressionNode new.
	result thisToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPropertyDefinition3: nodes [
	| result |
	result := JSPropertyAssignmentNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPropertyDefinition5: nodes [
	| result |
	result := JSCopyPropertyNode new.
	result ellipsis: (nodes at: 1).
	result object: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature1: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature2: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature3: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result name: (nodes at: 1).
	result nullableIndicator: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature4: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result name: (nodes at: 1).
	result nullableIndicator: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature5: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result readonlyToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature6: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result readonlyToken: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature7: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result readonlyToken: (nodes at: 1).
	result name: (nodes at: 2).
	result nullableIndicator: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForPropertySignature8: nodes [
	| result |
	result := JSPropertySignatureNode new.
	result readonlyToken: (nodes at: 1).
	result name: (nodes at: 2).
	result nullableIndicator: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForRegularExpressionLiteral1: nodes [
	| result |
	result := JSRegularExpressionLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForReturnStatement1: nodes [
	| result |
	result := JSReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForReturnStatement2: nodes [
	| result |
	result := JSReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result expression: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForScript1: nodes [
	| result |
	result := JSScriptNode new.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForScript2: nodes [
	| result |
	result := JSScriptNode new.
	result addNodes: (nodes at: 1) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSetAccessor1: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSetAccessor2: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSimpleLexicalBinding1: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSimpleVariableDeclaration1: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding10: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addToken: (nodes at: 2) to: result modifiers.
	result variable: (nodes at: 3).
	result nullableIndicator: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding5: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addToken: (nodes at: 2) to: result modifiers.
	result variable: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding6: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addToken: (nodes at: 2) to: result modifiers.
	result variable: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding7: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addToken: (nodes at: 2) to: result modifiers.
	result variable: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding8: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addToken: (nodes at: 2) to: result modifiers.
	result variable: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSingleNameBinding9: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 2).
	result nullableIndicator: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSourceFile1: nodes [
	| result |
	result := JSTSSourceFileNode new.
	result addNodes: (nodes at: 1) to: result elements.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSourceFileElement__element__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSpreadElement1: nodes [
	| result |
	result := JSSpreadExpressionNode new.
	result ellipsis: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForStartJSXText1: nodes [
	^ #jsxText
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForStartStatementListItem1: nodes [
	^ #startExpressionStatement
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForStartTemplateLiteral1: nodes [
	^ #template
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSuperProperty1: nodes [
	| result |
	result := JSSuperIndexedPropertyExpressionNode new.
	result superToken: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSuperProperty2: nodes [
	| result |
	result := JSSuperNamedPropertyExpressionNode new.
	result superToken: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSwitchToDefault1: nodes [
	self scope: #default.
	^ #default
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSwitchToJSX1: nodes [
	self scope: #jsx.
	^ nil
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSwitchToJSXText1: nodes [
	self scope: #jsxText.
	^ nil
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSwitchToJSXTextOrDefault11: nodes [
	^ self switchToJSXTextOrDefault: 1
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForSwitchToJSXTextOrDefault21: nodes [
	^ self switchToJSXTextOrDefault: 2
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTemplateLiteral1: nodes [
	| result |
	result := JSTemplateLiteralNode new.
	result addToken: (nodes at: 1) to: result parts.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTemplateLiteral2: nodes [
	| result |
	result := JSTemplateLiteralNode new.
	result addToken: (nodes at: 2) to: result parts.
	result addNode: (nodes at: 3) to: result expressions.
	result addTokens: ((nodes at: 4) at: 1) to: result parts.
	result addNodes: ((nodes at: 4) at: 2) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTemplateMiddleList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTemplateMiddleList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTemplateSpans2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForThisType1: nodes [
	| result |
	result := JSThisTypeNode new.
	result thisToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForThrowStatement1: nodes [
	| result |
	result := JSThrowStatementNode new.
	result throwToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTryStatement2: nodes [
	| result |
	result := JSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result tryBlock: (nodes at: 2).
	result finallyToken: ((nodes at: 3) at: 1).
	result finallyBlock: ((nodes at: 3) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTupleType1: nodes [
	| result |
	result := JSTupleTypeNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTupleType2: nodes [
	| result |
	result := JSTupleTypeNode new.
	result leftBracket: (nodes at: 1).
	result addToken: (nodes at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTupleType3: nodes [
	| result |
	result := JSTupleTypeNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result types.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTupleType4: nodes [
	| result |
	result := JSTupleTypeNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result types.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTupleType5: nodes [
	| result |
	result := JSTupleTypeNode new.
	result readonlyToken: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTupleType6: nodes [
	| result |
	result := JSTupleTypeNode new.
	result readonlyToken: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result addToken: (nodes at: 3) to: result commas.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTupleType7: nodes [
	| result |
	result := JSTupleTypeNode new.
	result readonlyToken: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result types.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTupleType8: nodes [
	| result |
	result := JSTupleTypeNode new.
	result readonlyToken: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result types.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result addToken: (nodes at: 4) to: result commas.
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeAliasDeclaration2: nodes [
	| result |
	result := JSTypeAliasDeclarationNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result bar: (nodes at: 4).
	result type: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeAliasDeclaration3: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeAliasDeclaration4: nodes [
	| result |
	result := JSTypeAliasDeclarationNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result equalToken: (nodes at: 4).
	result bar: (nodes at: 5).
	result type: (nodes at: 6).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeArguments1: nodes [
	| result |
	result := JSTypeArgumentsNode new.
	result leftAngle: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result arguments.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightAngle: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeCallSignature4: nodes [
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeName1: nodes [
	| result |
	result := JSTypeNameNode new.
	result addNode: (nodes at: 1) to: result names.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeName2: nodes [
	| result |
	result := JSTypeNameNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result names.
	result addTokens: ((nodes at: 1) at: 2) to: result periodTokens.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addNode: (nodes at: 3) to: result names.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeParameter1: nodes [
	| result |
	result := JSTypeParameterNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeParameter2: nodes [
	| result |
	result := JSTypeParameterNode new.
	result name: (nodes at: 1).
	result extendsToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeParameters1: nodes [
	| result |
	result := JSTypeParametersNode new.
	result leftAngle: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result parameters.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightAngle: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeQuery1: nodes [
	| result |
	result := JSTypeQueryNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeQueryExpression1: nodes [
	| result |
	result := JSTypeQueryExpressionNode new.
	result addNode: (nodes at: 1) to: result names.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeQueryExpression2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addNode: (nodes at: 3) to: result names.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeReference1: nodes [
	| result |
	result := JSTypeReferenceNode new.
	result type: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypeReference2: nodes [
	| result |
	result := JSTypeReferenceNode new.
	result type: (nodes at: 1).
	result typeArguments: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForTypedPropertySetParameterList1: nodes [
	| result |
	result := JSTypedParameterNode new.
	result variable: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForUnaryExpression10: nodes [
	| result |
	result := JSCastExpressionNode new.
	result leftAngle: (nodes at: 2).
	result type: (nodes at: 3).
	result rightAngle: (nodes at: 4).
	result expression: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForUnaryExpression5: nodes [
	| result |
	result := JSUnaryExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForUnionType1: nodes [
	| result |
	result := JSUnionTypeNode new.
	result leftType: (nodes at: 1).
	result operator: (nodes at: 2).
	result rightType: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForUpdateExpression2: nodes [
	| result |
	result := JSPostfixExpressionNode new.
	result expression: (nodes at: 1).
	result operator: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForUpdateExpression4: nodes [
	| result |
	result := JSPrefixExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForValidationNotArrowFunction1: nodes [
	| token |
	nodeStack notEmpty
		ifTrue:
			[ token := nodeStack last.
			((token isKindOf: SmaCCToken) and: [ token ids includes: scanner eqGtId ]) ifTrue: [ self killState ] ].
	^ nil
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForVariableStatement1: nodes [
	| result |
	result := JSVariableStatementNode new.
	result varToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result variables.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForWhileStatement1: nodes [
	| result |
	result := JSWhileStatementNode new.
	result whileToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForYieldExpression1: nodes [
	| result |
	result := JSYieldExpressionNode new.
	result yieldToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForYieldExpression2: nodes [
	| result |
	result := JSYieldExpressionNode new.
	result yieldToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForYieldExpression3: nodes [
	| result |
	result := JSYieldExpressionNode new.
	result yieldToken: (nodes at: 1).
	result star: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'private' }
JSParser >> splitQuestionDotToken [
	currentToken ids first = scanner questionDotId
		ifTrue: [ (scanner peekCharacter ifNil: [ $a ]) isDigit
				ifTrue: [ currentToken := scanner tokenClass
							value: '?'
							start: currentToken startPosition
							ids: (Array with: scanner questionId).
					self position: currentToken startPosition ] ]
]

{ #category : 'private' }
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
