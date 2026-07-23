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
#[ 0 10 0 37] 
#[ 0 6 0 10] 
#[ 0 10 0 49] 
#[ 0 10 0 53] 
#[ 0 10 0 61] 
#[ 0 10 0 141] 
#[ 0 26 1 5] 
#[ 0 18 2 9] 
#[ 0 10 2 185] 
#[ 0 6 3 93] 
#[ 0 6 3 109] 
#[ 0 18 3 217] 
#[ 0 190 5 25] 
#[ 0 214 5 25] 
#[ 0 6 0 185] 
#[ 0 6 6 185] 
#[ 2 18 7 233] 
#[ 2 22 7 237] 
#[ 1 142 2 30] 
#[ 0 158 2 186] 
#[ 0 158 9 61] 
#[ 0 6 9 181] 
#[ 0 6 9 185] 
#[ 0 6 9 189] 
#[ 0 6 9 193] 
#[ 0 6 0 237] 
#[ 0 210 3 18] 
#[ 0 226 5 25] 
#[ 3 46 5 9] 
#[ 3 46 5 25] 
#[ 3 58 5 9] 
#[ 3 58 5 25] 
#[ 3 62 5 9] 
#[ 3 62 5 25] 
#[ 0 18 11 101] 
#[ 2 2 2 186] 
#[ 1 142 4 94] 
#[ 1 142 4 98] 
#[ 4 110 10 113] 
#[ 4 158 7 85] 
#[ 4 158 9 181] 
#[ 4 158 9 185] 
#[ 4 158 9 189] 
#[ 4 158 9 193] 
#[ 4 158 13 189] 
#[ 4 158 7 97] 
#[ 0 245 4 158] 
#[ 0 249 4 158] 
#[ 0 158 5 30] 
#[ 5 34 5 81] 
#[ 0 214 5 25 5 34] 
#[ 2 222 5 2] 
#[ 0 18 15 21] 
#[ 3 42 5 150] 
#[ 0 26 6 114] 
#[ 2 2 4 86] 
#[ 0 230 16 105] 
#[ 4 14 4 246] 
#[ 4 74 5 2] 
#[ 2 226 13 25] 
#[ 4 74 7 18] 
#[ 7 22 7 237] 
#[ 1 142 7 26] 
#[ 0 158 5 42] 
#[ 5 98 7 142] 
#[ 0 6 21 217] 
#[ 8 246 8 250] 
#[ 8 254 9 2] 
#[ 9 18 9 22] 
#[ 7 2 9 78] 
#[ 7 6 9 82] 
#[ 4 158 24 89] 
#[ 0 38 0 237] 
#[ 0 42 0 237] 
#[ 0 158 25 141] 
#[ 9 62 11 86] 
#[ 9 90 11 90] 
#[ 10 5 10 134] 
#[ 0 6 4 158 24 89] 
#[ 0 6 3 93 4 158] 
#[ 0 6 4 158] 
#[ 11 158 11 242] 
#[ 13 22 13 74] 
#[ 10 134 15 41] 
#[ 13 62 13 90] 
#[ 14 30 14 42] 
#[ 14 34 14 46] 
#[ 14 182 14 194]
	).
]

{ #category : 'generated-accessing' }
JSParser class >> cacheId [
	^'2026-07-23T06:19:54.957211-05:00'
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
default <abstract>
: abstract
;
default <as>
:   as
;
default <assert>
:	assert
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
default <using>
:	using
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
:	[^xu] | (x <hex>{2,2}) | (u <hex>{4,4}) | (u \{ <hex>{1,6} \})
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
:	[0-9] ([0-9] | _ [0-9])*
;
<decimal_digits>
:	[0-9] ([0-9] | _ [0-9])*
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
:	0 [xX] [0-9A-Fa-f] ([0-9A-Fa-f] | _ [0-9A-Fa-f])* n?
;
<binary_integer>
:	0 [bB] [0-1] ([0-1] | _ [0-1])* n?
;
<octal_integer>
:	0 [oO] [0-7] ([0-7] | _ [0-7])* n?
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
|	<new> 'newToken' OptionalExpression 'expression' Arguments {{NewExpression}}
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
:	<import> 'importToken' <leftParen> 'left' AssignmentExpression 'expression' <comma> 'comma'? <rightParen> 'right' {{ImportCallExpression}}
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
|	UsingDeclaration
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
|	Identifier 'variable' <ts> TypeAnnotation {{VariableDeclaration}}
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
:	DecoratorExpression 'decorator'* <abstract> 'abstract'? <class> 'classToken' Identifier 'name'? (<ts> TypeParameters 'typeParameters')? ClassTail {{ClassExpression}}
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
|	DecoratorExpression 'decorator'* MethodDefinition {{MethodDefinition}}
|	DecoratorExpression 'decorator'* <static> 'staticToken' MethodDefinition {{MethodDefinition}}
|	DecoratorExpression 'decorator'* FieldDefinition <semicolon> 'semicolon' {{FieldDefinition}}
|	DecoratorExpression 'decorator'* <static> 'staticToken' FieldDefinition <semicolon> 'semicolon' {{FieldDefinition}}
|	ClassStaticBlock
|	<semicolon> 'semicolon' {{EmptyStatement}}
;
FieldDefinition
:	ClassElementName 'variable' Initializer
|	ClassElementNameWithSemicolonCheck 'variable'
;
ClassElementNameWithSemicolonCheck
:	PropertyName CheckSemicolon {'1'}
|	<privateIdentifier> 'name' CheckSemicolon {{NameExpression}}
;
CheckSemicolon
:	[self checkSemicolon. nil]
;
ClassElementName
:	PropertyName
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
:	<import> 'importToken' ImportClause FromClause ImportMetadata 'importMetadata'? <semicolon> 'semicolon' {{}}
|	<import> 'importToken' ModuleSpecifier ImportMetadata 'importMetadata'? <semicolon> 'semicolon' {{}}
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

StatementListItem
:	LexicalDeclaration
|	UsingDeclaration
|	ClassDeclaration
|	HoistableDeclaration
|	StartStatementListItem Statement {'2'}
;
StartStatementListItem
:	/* here for ; handling */ [#startExpressionStatement]
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
:	DecoratorExpression 'decorator'* IndexSignature 'signature' <semicolon> 'semicolon' {{}}
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
:	ImplementationScript {{TSSourceFile}}
|	ImplementationModule {{TSSourceFile}}
;
DeclarationSourceFile
:	DeclarationScript {{TSSourceFile}}
|	DeclarationModule {{TSSourceFile}}
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
;
ImportAssertion
:	<assert> 'assertToken' <leftBrace> 'leftBrace' ImportAssertionEntries? <comma> 'comma'? <rightBrace> 'rightBrace' {{}}
;
ImportAssertionEntries
:	ImportAssertionEntry 'entry'
|	ImportAssertionEntries <comma> 'comma' ImportAssertionEntry 'entry'
;
ImportAssertionEntry
:	<identifierName> 'name' <colon> 'colonToken' StringLiteral 'value' {{}}
|	StringLiteral 'name' <colon> 'colonToken' StringLiteral 'value' {{}}
;
ImportMetadata
:	ImportAssertion
|	ImportAttributes
;
ImportAttributes
:	<with> 'withToken' <leftBrace> 'leftBrace' ImportAssertionEntries? <comma> 'comma'? <rightBrace> 'rightBrace' {{}}
;
UsingDeclaration
:	<using> 'typeToken' BindingList <semicolon> 'semicolon' {{LexicalDeclaration}}
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
	#(292 0 #reduceActionForDecoratorExpression__decorator__1: 37296129 false) 
	#(329 0 #reduceActionForStartStatementListItem1: 42324993 true) 
	#(308 0 #reduceActionForModule1: 39100417 false) 
	#(156 0 #reduceActionForValidationNotArrowFunction1: 11888641 true) 
	#(165 0 #reduceActionForStartTemplateLiteral1: 13104129 true) 
	#(358 0 #reduceActionForSwitchToJSX1: 45250561 true) 
	#(306 0 #reduceActionForScript1: 39042049 false) 
	#(450 0 #reduceActionForDecoratorExpression__decorator__1: 61138945 false) 
	#(213 1 #liftFirstValue: 24473602 false) 
	#(213 1 #liftFirstValue: 24473601 false) 
	#(328 1 #liftFirstValue: 42178564 false) 
	#(328 1 #liftFirstValue: 42178561 false) 
	#(207 1 #liftFirstValue: 23975937 false) 
	#(207 1 #liftFirstValue: 23975938 false) 
	#(207 1 #liftFirstValue: 23975940 false) 
	#(207 1 #liftFirstValue: 23975939 false) 
	#(328 1 #liftFirstValue: 42178563 false) 
	#(145 1 #liftFirstValue: 9225217 false) 
	#(308 1 #reduceActionForModule2: 39100418 false) 
	#(309 1 #reduceActionForModuleBody1: 39129089 false) 
	#(310 1 #reduceActionForModuleItemList1: 39159809 false) 
	#(311 1 #liftFirstValue: 39233537 false) 
	#(311 1 #liftFirstValue: 39233538 false) 
	#(311 1 #liftFirstValue: 39233539 false) 
	#(328 1 #liftFirstValue: 42178562 false) 
	#(259 0 #reduceActionForFormalParameters1: 32284673 false) 
	#(332 1 #liftFirstValue: 42503170 false) 
	#(331 1 #liftFirstValue: 42479617 false) 
	#(148 1 #reduceActionForPrimaryExpression1: 9632769 false) 
	#(332 1 #liftFirstValue: 42503169 false) 
	#(281 1 #reduceActionForYieldExpression1: 35312641 false) 
	#(146 1 #reduceActionForIdentifier1: 9337857 false) 
	#(330 1 #reduceActionForIdentifier1: 42409985 false) 
	#(333 1 #liftFirstValue: 42540033 false) 
	#(334 1 #liftFirstValue: 42575873 false) 
	#(335 1 #reduceActionForRegularExpressionLiteral1: 42613761 false) 
	#(164 1 #reduceActionForTemplateLiteral1: 12948481 false) 
	#(359 0 #reduceActionForSwitchToJSXText1: 45291521 true) 
	#(148 1 #liftFirstValue: 9632770 false) 
	#(269 1 #reduceActionForArrowParameterDeclaration1: 33353729 false) 
	#(168 1 #liftFirstValue: 13374465 false) 
	#(148 1 #liftFirstValue: 9632781 false) 
	#(148 1 #liftFirstValue: 9632771 false) 
	#(148 1 #liftFirstValue: 9632772 false) 
	#(148 1 #liftFirstValue: 9632773 false) 
	#(148 1 #liftFirstValue: 9632780 false) 
	#(173 1 #liftFirstValue: 14566401 false) 
	#(168 1 #liftFirstValue: 13374469 false) 
	#(168 1 #liftFirstValue: 13374470 false) 
	#(170 1 #liftFirstValue: 14334977 false) 
	#(170 1 #liftFirstValue: 14334978 false) 
	#(183 1 #liftFirstValue: 16909313 false) 
	#(183 1 #liftFirstValue: 16909314 false) 
	#(174 1 #liftFirstValue: 14656514 false) 
	#(174 1 #liftFirstValue: 14656515 false) 
	#(183 1 #liftFirstValue: 16909315 false) 
	#(184 1 #liftFirstValue: 16991233 false) 
	#(185 1 #liftFirstValue: 17359873 false) 
	#(186 1 #liftFirstValue: 17812481 false) 
	#(187 1 #liftFirstValue: 17982465 false) 
	#(189 1 #liftFirstValue: 18242561 false) 
	#(190 1 #liftFirstValue: 18540545 false) 
	#(191 1 #liftFirstValue: 18925569 false) 
	#(192 1 #liftFirstValue: 19774465 false) 
	#(193 1 #liftFirstValue: 20304897 false) 
	#(194 1 #liftFirstValue: 20468737 false) 
	#(195 1 #liftFirstValue: 20636673 false) 
	#(196 1 #liftFirstValue: 20803585 false) 
	#(199 1 #liftFirstValue: 21301250 false) 
	#(197 1 #liftFirstValue: 20973569 false) 
	#(200 1 #liftFirstValue: 21374977 false) 
	#(200 1 #liftFirstValue: 21374978 false) 
	#(199 1 #liftFirstValue: 21301249 false) 
	#(201 1 #liftFirstValue: 21448705 false) 
	#(202 1 #liftFirstValue: 21676033 false) 
	#(204 1 #liftFirstValue: 23453697 false) 
	#(148 1 #liftFirstValue: 9632774 false) 
	#(202 1 #liftFirstValue: 21676035 false) 
	#(268 1 #reduceActionForArrowParameters1: 33263617 false) 
	#(268 1 #reduceActionForArrowParameters2: 33263618 false) 
	#(202 1 #liftFirstValue: 21676036 false) 
	#(148 1 #liftFirstValue: 9632776 false) 
	#(202 1 #liftFirstValue: 21676034 false) 
	#(148 1 #liftFirstValue: 9632778 false) 
	#(148 1 #liftFirstValue: 9632777 false) 
	#(185 1 #liftFirstValue: 17359881 false) 
	#(148 1 #liftFirstValue: 9632775 false) 
	#(150 1 #reduceActionForLiteral1: 10733569 false) 
	#(150 1 #reduceActionForLiteral2: 10733570 false) 
	#(150 1 #reduceActionForLiteral4: 10733572 false) 
	#(150 1 #reduceActionForLiteral3: 10733571 false) 
	#(148 1 #liftFirstValue: 9632779 false) 
	#(148 1 #liftFirstValue: 9632782 false) 
	#(336 1 #liftFirstValue: 42865665 false) 
	#(360 0 #reduceActionForStartJSXText1: 45340673 true) 
	#(148 1 #liftFirstValue: 9632783 false) 
	#(185 1 #liftFirstValue: 17359883 false) 
	#(230 1 #reduceActionForEmptyStatement1: 26820609 false) 
	#(242 0 #reduceActionForCheckEOL1: 30485505 true) 
	#(205 1 #liftFirstValue: 23605254 false) 
	#(205 1 #liftFirstValue: 23605249 false) 
	#(209 1 #liftFirstValue: 24164353 false) 
	#(205 1 #liftFirstValue: 23605250 false) 
	#(205 1 #liftFirstValue: 23605251 false) 
	#(205 1 #liftFirstValue: 23605252 false) 
	#(205 1 #liftFirstValue: 23605253 false) 
	#(208 1 #liftFirstValue: 24101889 false) 
	#(233 1 #liftFirstValue: 27241473 false) 
	#(233 1 #liftFirstValue: 27241474 false) 
	#(233 1 #liftFirstValue: 27241475 false) 
	#(233 1 #liftFirstValue: 27241476 false) 
	#(205 1 #liftFirstValue: 23605255 false) 
	#(205 1 #liftFirstValue: 23605256 false) 
	#(205 1 #liftFirstValue: 23605257 false) 
	#(205 1 #liftFirstValue: 23605258 false) 
	#(208 1 #liftFirstValue: 24101890 false) 
	#(205 1 #liftFirstValue: 23605259 false) 
	#(205 1 #liftFirstValue: 23605260 false) 
	#(205 1 #liftFirstValue: 23605261 false) 
	#(205 1 #liftFirstValue: 23605262 false) 
	#(205 1 #liftFirstValue: 23605263 false) 
	#(307 1 #reduceActionForModuleBody1: 39070721 false) 
	#(306 1 #reduceActionForScript2: 39042050 false) 
	#(211 1 #reduceActionForModuleItemList1: 24287233 false) 
	#(449 1 #reduceActionForSourceFile1: 61036545 false) 
	#(397 1 #reduceActionForThisType1: 49033217 false) 
	#(379 1 #reduceActionForPredefinedType1: 47010817 false) 
	#(381 1 #reduceActionForTypeName1: 47157249 false) 
	#(382 1 #reduceActionForNamespaceName1: 47263745 false) 
	#(377 1 #reduceActionForLiteralType1: 46848001 false) 
	#(377 1 #reduceActionForLiteralType1: 46848002 false) 
	#(371 1 #liftFirstValue: 46162945 false) 
	#(372 1 #liftFirstValue: 46239746 false) 
	#(373 1 #liftFirstValue: 46316546 false) 
	#(374 1 #liftFirstValue: 46377985 false) 
	#(375 1 #liftFirstValue: 46521354 false) 
	#(375 1 #liftFirstValue: 46521353 false) 
	#(375 1 #liftFirstValue: 46521345 false) 
	#(375 1 #liftFirstValue: 46521346 false) 
	#(375 1 #liftFirstValue: 46521347 false) 
	#(375 1 #liftFirstValue: 46521348 false) 
	#(375 1 #liftFirstValue: 46521349 false) 
	#(375 1 #liftFirstValue: 46521350 false) 
	#(372 1 #liftFirstValue: 46239745 false) 
	#(373 1 #liftFirstValue: 46316545 false) 
	#(371 1 #liftFirstValue: 46162946 false) 
	#(371 1 #liftFirstValue: 46162947 false) 
	#(375 1 #liftFirstValue: 46521351 false) 
	#(375 1 #liftFirstValue: 46521352 false) 
	#(298 1 #reduceActionForEmptyStatement1: 37840905 false) 
	#(298 1 #liftFirstValue: 37840904 false) 
	#(324 1 #reduceActionForExportFromClause1: 41629697 false) 
	#(323 2 #reduceActionForExportDeclaration4: 40836100 false) 
	#(206 1 #liftFirstValue: 23897089 false) 
	#(206 1 #liftFirstValue: 23897091 false) 
	#(323 2 #reduceActionForExportDeclaration3: 40836099 false) 
	#(206 1 #liftFirstValue: 23897090 false) 
	#(324 1 #reduceActionForExportFromClause3: 41629699 false) 
	#(322 1 #liftFirstValue: 40801281 false) 
	#(314 1 #reduceActionForImportClause1: 39603201 false) 
	#(314 1 #reduceActionForImportClause1: 39603202 false) 
	#(314 1 #reduceActionForImportClause1: 39603203 false) 
	#(315 1 #liftFirstValue: 39964673 false) 
	#(321 1 #liftFirstValue: 40759297 false) 
	#(215 1 #reduceActionForArrowParameterDeclaration1: 24603649 false) 
	#(214 1 #reduceActionForNamespaceName1: 24505345 false) 
	#(219 1 #liftFirstValue: 25150465 false) 
	#(219 1 #liftFirstValue: 25150466 false) 
	#(215 1 #liftFirstValue: 24603652 false) 
	#(215 1 #liftFirstValue: 24603653 false) 
	#(292 2 #reduceActionForDecoratorExpression__decorator__2: 37296130 false) 
	#(310 2 #reduceActionForDecoratorExpression__decorator__2: 39159810 false) 
	#(328 2 #liftSecondValue: 42178565 false) 
	#(228 1 #reduceActionForArrowParameterDeclaration1: 26552321 false) 
	#(227 1 #reduceActionForBindingElement2: 26441730 false) 
	#(262 1 #liftFirstValue: 32654337 false) 
	#(227 1 #liftFirstValue: 26441729 false) 
	#(261 1 #liftFirstValue: 32608257 false) 
	#(258 1 #reduceActionForModuleBody1: 32239617 false) 
	#(259 1 #reduceActionForFormalParameters3: 32284675 false) 
	#(259 1 #reduceActionForFormalParameters2: 32284674 false) 
	#(260 1 #reduceActionForNamespaceName1: 32486401 false) 
	#(151 2 #reduceActionForArrayLiteral1: 10915841 false) 
	#(153 1 #reduceActionForModuleItemList1: 11395073 false) 
	#(152 1 #reduceActionForNamespaceName1: 11176963 false) 
	#(152 1 #reduceActionForNamespaceName1: 11176961 false) 
	#(185 2 #reduceActionForUnaryExpression5: 17359877 false) 
	#(184 2 #reduceActionForUpdateExpression4: 16991236 false) 
	#(185 2 #reduceActionForUnaryExpression5: 17359878 false) 
	#(184 2 #reduceActionForUpdateExpression4: 16991237 false) 
	#(185 2 #reduceActionForUnaryExpression5: 17359879 false) 
	#(185 2 #reduceActionForUnaryExpression5: 17359880 false) 
	#(290 2 #reduceActionForAwaitExpression1: 37199873 false) 
	#(293 2 #reduceActionForClassExpression1: 37468161 false) 
	#(185 2 #reduceActionForUnaryExpression5: 17359874 false) 
	#(173 2 #reduceActionForNewExpression2: 14566402 false) 
	#(175 2 #reduceActionForSuperCall1: 15255553 false) 
	#(185 2 #reduceActionForUnaryExpression5: 17359876 false) 
	#(185 2 #reduceActionForUnaryExpression5: 17359875 false) 
	#(281 2 #reduceActionForYieldExpression2: 35312642 false) 
	#(168 2 #reduceActionForMemberExpression4: 13374468 false) 
	#(174 2 #reduceActionForCallExpression1: 14656513 false) 
	#(179 2 #reduceActionForOptionalExpression1: 15937537 false) 
	#(174 2 #reduceActionForMemberExpression4: 14656519 false) 
	#(174 2 #reduceActionForCallExpression1: 14656516 false) 
	#(179 2 #reduceActionForOptionalExpression1: 15937538 false) 
	#(179 2 #reduceActionForOptionalExpression1: 15937539 false) 
	#(203 1 #liftFirstValue: 21880835 false) 
	#(203 1 #liftFirstValue: 21880839 false) 
	#(203 1 #liftFirstValue: 21880840 false) 
	#(203 1 #liftFirstValue: 21880841 false) 
	#(203 1 #liftFirstValue: 21880833 false) 
	#(203 1 #liftFirstValue: 21880834 false) 
	#(203 1 #liftFirstValue: 21880836 false) 
	#(203 1 #liftFirstValue: 21880842 false) 
	#(203 1 #liftFirstValue: 21880843 false) 
	#(203 1 #liftFirstValue: 21880844 false) 
	#(203 1 #liftFirstValue: 21880838 false) 
	#(203 1 #liftFirstValue: 21880837 false) 
	#(184 2 #reduceActionForUpdateExpression2: 16991234 false) 
	#(184 2 #reduceActionForUpdateExpression2: 16991235 false) 
	#(203 1 #liftFirstValue: 21880846 false) 
	#(203 1 #liftFirstValue: 21880848 false) 
	#(203 1 #liftFirstValue: 21880847 false) 
	#(203 1 #liftFirstValue: 21880845 false) 
	#(188 1 #liftFirstValue: 18185218 false) 
	#(188 1 #liftFirstValue: 18185217 false) 
	#(188 1 #liftFirstValue: 18185219 false) 
	#(355 0 #reduceActionForDecoratorExpression__decorator__1: 44936193 false) 
	#(272 2 #reduceActionForArrowFormalParameters2: 33604610 false) 
	#(210 2 #reduceActionForBlock1: 24189953 false) 
	#(257 2 #reduceActionForDebuggerStatement1: 32153601 false) 
	#(218 1 #reduceActionForArrowParameterDeclaration1: 24989697 false) 
	#(217 1 #reduceActionForNamespaceName1: 24853505 false) 
	#(231 2 #reduceActionForExpressionStatement1: 26870785 false) 
	#(211 2 #reduceActionForDecoratorExpression__decorator__2: 24287234 false) 
	#(457 1 #liftFirstValue: 62292993 false) 
	#(457 1 #liftFirstValue: 62292994 false) 
	#(457 1 #liftFirstValue: 62292995 false) 
	#(457 1 #liftFirstValue: 62292996 false) 
	#(457 1 #liftFirstValue: 62292997 false) 
	#(451 1 #liftFirstValue: 61188099 false) 
	#(457 1 #liftFirstValue: 62292999 false) 
	#(457 1 #liftFirstValue: 62292998 false) 
	#(457 1 #liftFirstValue: 62293000 false) 
	#(457 1 #liftFirstValue: 62293001 false) 
	#(457 1 #liftFirstValue: 62293003 false) 
	#(450 2 #reduceActionForDecoratorExpression__decorator__2: 61138946 false) 
	#(451 1 #liftFirstValue: 61188097 false) 
	#(451 1 #liftFirstValue: 61188100 false) 
	#(451 1 #liftFirstValue: 61188101 false) 
	#(451 1 #liftFirstValue: 61188105 false) 
	#(451 1 #liftFirstValue: 61188102 false) 
	#(451 1 #liftFirstValue: 61188106 false) 
	#(451 1 #liftFirstValue: 61188103 false) 
	#(451 1 #liftFirstValue: 61188104 false) 
	#(457 1 #liftFirstValue: 62293002 false) 
	#(451 1 #liftFirstValue: 61188098 false) 
	#(383 2 #reduceActionForObjectType1: 47368193 false) 
	#(147 1 #reduceActionForIdentifier1: 9531393 false) 
	#(160 1 #liftFirstValue: 12553217 false) 
	#(398 1 #reduceActionForPropertySignature1: 49071105 false) 
	#(159 1 #liftFirstValue: 12490753 false) 
	#(159 1 #liftFirstValue: 12490754 false) 
	#(160 1 #reduceActionForIdentifier1: 12553218 false) 
	#(160 1 #reduceActionForIdentifier1: 12553219 false) 
	#(384 1 #reduceActionForModuleBody1: 47450113 false) 
	#(385 1 #reduceActionForNamespaceName1: 47546369 false) 
	#(386 1 #liftFirstValue: 47700993 false) 
	#(386 1 #liftFirstValue: 47700994 false) 
	#(386 1 #liftFirstValue: 47700995 false) 
	#(386 1 #liftFirstValue: 47700996 false) 
	#(386 1 #liftFirstValue: 47700997 false) 
	#(388 2 #reduceActionForTupleType1: 47944705 false) 
	#(390 1 #liftFirstValue: 48200705 false) 
	#(389 1 #reduceActionForNamespaceName1: 48092161 false) 
	#(366 1 #reduceActionForTypeParameter1: 45848577 false) 
	#(365 1 #reduceActionForNamespaceName1: 45735937 false) 
	#(374 2 #reduceActionForPrefixType3: 46377987 false) 
	#(374 2 #reduceActionForPrefixType2: 46377986 false) 
	#(396 1 #reduceActionForTypeQueryExpression1: 48909313 false) 
	#(395 2 #reduceActionForTypeQuery1: 48835585 false) 
	#(380 2 #reduceActionForTypeReference1: 47063041 false) 
	#(305 0 #reduceActionForDecoratorExpression__decorator__1: 38986753 false) 
	#(302 1 #reduceActionForIdentifier1: 38723586 false) 
	#(301 0 #reduceActionForCheckSemicolon1: 38676481 true) 
	#(302 1 #liftFirstValue: 38723585 false) 
	#(298 2 #reduceActionForClassElement4: 37840900 false) 
	#(275 1 #liftFirstValue: 33920002 false) 
	#(275 1 #liftFirstValue: 33920004 false) 
	#(275 1 #liftFirstValue: 33920003 false) 
	#(299 1 #reduceActionForFieldDefinition2: 38426626 false) 
	#(275 1 #liftFirstValue: 33920010 false) 
	#(275 1 #liftFirstValue: 33920011 false) 
	#(431 0 #reduceActionForDecoratorExpression__decorator__1: 57833473 false) 
	#(298 2 #liftSecondValue: 37840897 false) 
	#(298 2 #liftSecondValue: 37840898 false) 
	#(428 1 #liftFirstValue: 57656321 false) 
	#(428 1 #liftFirstValue: 57656322 false) 
	#(428 1 #liftFirstValue: 57656323 false) 
	#(298 2 #liftSecondValue: 37840899 false) 
	#(325 2 #reduceActionForNamedExports1: 41737217 false) 
	#(312 1 #liftFirstValue: 39308289 false) 
	#(327 1 #reduceActionForExportSpecifier1: 42057729 false) 
	#(326 1 #reduceActionForNamespaceName1: 41953281 false) 
	#(312 1 #liftFirstValue: 39308290 false) 
	#(323 3 #reduceActionForExportDeclaration2: 40836098 false) 
	#(206 2 #liftSecondValue: 23897093 false) 
	#(206 2 #liftSecondValue: 23897092 false) 
	#(206 2 #liftSecondValue: 23897094 false) 
	#(317 2 #reduceActionForNamedImports1: 40089601 false) 
	#(319 1 #reduceActionForNamespaceName1: 40372225 false) 
	#(320 1 #reduceActionForImportSpecifier1: 40476673 false) 
	#(313 3 #reduceActionForImportDeclaration3: 39363587 false) 
	#(496 1 #liftFirstValue: 71567361 false) 
	#(496 1 #liftFirstValue: 71567362 false) 
	#(220 2 #reduceActionForObjectBindingPattern1: 25213953 false) 
	#(223 1 #reduceActionForNamespaceName1: 26039297 false) 
	#(226 1 #liftFirstValue: 26328065 false) 
	#(221 2 #reduceActionForArrayBindingPattern1: 25602049 false) 
	#(224 1 #reduceActionForBindingElementList1: 26158081 false) 
	#(225 1 #reduceActionForBindingElisionElement1: 26266625 false) 
	#(215 2 #reduceActionForLexicalBinding2: 24603650 false) 
	#(498 3 #reduceActionForUsingDeclaration1: 71761921 false) 
	#(215 2 #reduceActionForLexicalBinding3: 24603651 false) 
	#(212 3 #reduceActionForUsingDeclaration1: 24384513 false) 
	#(492 2 #reduceActionForDecoratorExpression2: 70964226 false) 
	#(492 2 #reduceActionForDecoratorExpression2: 70964225 false) 
	#(291 3 #reduceActionForClassDeclaration1: 37276673 false) 
	#(229 2 #reduceActionForBindingRestElement1: 26638337 false) 
	#(229 2 #reduceActionForBindingRestElement1: 26638338 false) 
	#(228 2 #reduceActionForLexicalBinding2: 26552322 false) 
	#(149 3 #reduceActionForParenthesizedExpression1: 9998337 false) 
	#(227 2 #reduceActionForLexicalBinding3: 26441731 false) 
	#(272 3 #reduceActionForArrowFormalParameters1: 33604609 false) 
	#(259 2 #reduceActionForFormalParameters4: 32284676 false) 
	#(404 1 #liftFirstValue: 51380228 false) 
	#(404 1 #liftFirstValue: 51380226 false) 
	#(404 1 #liftFirstValue: 51380227 false) 
	#(404 1 #liftFirstValue: 51380225 false) 
	#(401 0 #reduceActionForDecoratorExpression__decorator__1: 49555457 false) 
	#(154 2 #reduceActionForSpreadElement1: 11450369 false) 
	#(151 3 #reduceActionForArrayLiteral3: 10915843 false) 
	#(151 3 #reduceActionForArrayLiteral2: 10915842 false) 
	#(153 2 #reduceActionForDecoratorExpression__decorator__2: 11395074 false) 
	#(152 2 #reduceActionForElementList4: 11176964 false) 
	#(152 2 #reduceActionForElementList4: 11176962 false) 
	#(294 2 #reduceActionForClassTail1: 37548033 false) 
	#(296 1 #reduceActionForModuleBody1: 37721089 false) 
	#(297 1 #reduceActionForModuleItemList1: 37752833 false) 
	#(295 2 #reduceActionForClassHeritage1: 37640193 false) 
	#(293 3 #reduceActionForClassExpression2: 37468162 false) 
	#(295 2 #reduceActionForClassHeritage4: 37640196 false) 
	#(295 2 #reduceActionForClassHeritage2: 37640194 false) 
	#(172 3 #reduceActionForImportMeta1: 14479361 false) 
	#(171 3 #reduceActionForNewTarget1: 14375937 false) 
	#(168 3 #reduceActionForMemberExpression7: 13374471 false) 
	#(168 3 #reduceActionForMemberExpression7: 13374472 false) 
	#(177 2 #reduceActionForArguments1: 15483905 false) 
	#(178 1 #reduceActionForArgumentList1: 15669249 false) 
	#(169 3 #reduceActionForSuperProperty2: 14069762 false) 
	#(281 3 #reduceActionForYieldExpression3: 35312643 false) 
	#(155 3 #reduceActionForObjectLiteral1: 11548673 false) 
	#(158 1 #liftFirstValue: 12241921 false) 
	#(157 1 #reduceActionForNamespaceName1: 12106753 false) 
	#(158 1 #liftFirstValue: 12241922 false) 
	#(158 1 #liftFirstValue: 12241924 false) 
	#(168 3 #reduceActionForMemberExpression3: 13374467 false) 
	#(168 3 #reduceActionForMemberExpression3: 13374473 false) 
	#(182 1 #reduceActionForOptionalFirst3: 16596995 false) 
	#(182 1 #reduceActionForOptionalFirst3: 16596997 false) 
	#(182 1 #reduceActionForOptionalFirst4: 16596996 false) 
	#(182 1 #reduceActionForOptionalFirst1: 16596993 false) 
	#(180 2 #reduceActionForOptionalChain1: 16115713 false) 
	#(181 1 #reduceActionForOptionalFirst4: 16238596 false) 
	#(181 1 #reduceActionForOptionalFirst1: 16238593 false) 
	#(180 2 #reduceActionForOptionalChain2: 16115714 false) 
	#(174 3 #reduceActionForMemberExpression3: 14656518 false) 
	#(174 3 #reduceActionForMemberExpression3: 14656520 false) 
	#(202 3 #reduceActionForAssignmentExpression5: 21676037 false) 
	#(148 3 #reduceActionForPrimaryExpression16: 9632784 false) 
	#(186 3 #reduceActionForExponentiationExpression2: 17812482 false) 
	#(187 3 #reduceActionForExponentiationExpression2: 17982466 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 18242562 false) 
	#(189 3 #reduceActionForExponentiationExpression2: 18242563 false) 
	#(190 3 #reduceActionForExponentiationExpression2: 18540546 false) 
	#(190 3 #reduceActionForExponentiationExpression2: 18540547 false) 
	#(190 3 #reduceActionForExponentiationExpression2: 18540548 false) 
	#(191 3 #reduceActionForExponentiationExpression2: 18925570 false) 
	#(191 3 #reduceActionForExponentiationExpression2: 18925571 false) 
	#(191 3 #reduceActionForExponentiationExpression2: 18925572 false) 
	#(191 3 #reduceActionForExponentiationExpression2: 18925573 false) 
	#(191 3 #reduceActionForExponentiationExpression2: 18925575 false) 
	#(191 3 #reduceActionForExponentiationExpression2: 18925574 false) 
	#(192 3 #reduceActionForExponentiationExpression2: 19774466 false) 
	#(192 3 #reduceActionForExponentiationExpression2: 19774468 false) 
	#(192 3 #reduceActionForExponentiationExpression2: 19774467 false) 
	#(192 3 #reduceActionForExponentiationExpression2: 19774469 false) 
	#(193 3 #reduceActionForExponentiationExpression2: 20304898 false) 
	#(194 3 #reduceActionForExponentiationExpression2: 20468738 false) 
	#(195 3 #reduceActionForExponentiationExpression2: 20636674 false) 
	#(196 3 #reduceActionForExponentiationExpression2: 20803586 false) 
	#(197 3 #reduceActionForExponentiationExpression2: 20973570 false) 
	#(198 3 #reduceActionForExponentiationExpression2: 21143553 false) 
	#(204 3 #reduceActionForExpression2: 23453698 false) 
	#(266 0 #reduceActionForDecoratorExpression__decorator__1: 33154049 false) 
	#(271 1 #liftFirstValue: 33563649 false) 
	#(267 3 #reduceActionForArrowFunction1: 33196033 false) 
	#(270 1 #reduceActionForImportClause1: 33448961 false) 
	#(191 3 #reduceActionForExponentiationExpression2: 18925576 false) 
	#(363 0 #reduceActionForSwitchToDefault1: 45502465 true) 
	#(354 1 #reduceActionForModuleBody1: 44921857 false) 
	#(341 1 #reduceActionForJSXElementName1: 43778049 false) 
	#(341 1 #liftFirstValue: 43778050 false) 
	#(341 1 #liftFirstValue: 43778051 false) 
	#(345 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 44104705 false) 
	#(210 3 #reduceActionForBlock2: 24189954 false) 
	#(241 3 #reduceActionForBreakStatement1: 30377985 false) 
	#(240 3 #reduceActionForContinueStatement1: 30263297 false) 
	#(243 3 #reduceActionForReturnStatement1: 30520321 false) 
	#(252 3 #reduceActionForThrowStatement1: 31537153 false) 
	#(253 3 #reduceActionForTryStatement1: 31633409 false) 
	#(253 3 #reduceActionForTryStatement2: 31633410 false) 
	#(218 2 #reduceActionForLexicalBinding2: 24989698 false) 
	#(216 3 #reduceActionForVariableStatement1: 24758273 false) 
	#(218 2 #reduceActionForLexicalBinding3: 24989699 false) 
	#(218 2 #liftSecondValue: 24989700 false) 
	#(218 2 #liftSecondValue: 24989701 false) 
	#(251 1 #liftFirstValue: 31442945 false) 
	#(250 3 #reduceActionForLabelledStatement1: 31343617 false) 
	#(486 1 #liftFirstValue: 69321729 false) 
	#(475 2 #reduceActionForAmbientDeclaration1: 67226625 false) 
	#(475 2 #reduceActionForAmbientDeclaration1: 67226626 false) 
	#(475 2 #reduceActionForAmbientDeclaration1: 67226627 false) 
	#(475 2 #reduceActionForAmbientDeclaration1: 67226628 false) 
	#(475 2 #reduceActionForAmbientDeclaration1: 67226629 false) 
	#(442 1 #reduceActionForNamespaceName1: 59525121 false) 
	#(378 3 #reduceActionForParenthesizedExpression1: 46922753 false) 
	#(398 2 #reduceActionForPropertySignature5: 49071109 false) 
	#(432 1 #liftFirstValue: 58004481 false) 
	#(432 1 #liftFirstValue: 58004482 false) 
	#(398 2 #reduceActionForPropertySignature2: 49071106 false) 
	#(408 2 #reduceActionForMethodSignature1: 52628481 false) 
	#(398 2 #reduceActionForPropertySignature3: 49071107 false) 
	#(383 3 #reduceActionForObjectType2: 47368194 false) 
	#(384 2 #reduceActionForOptionalChain2: 47450114 false) 
	#(384 2 #reduceActionForOptionalChain2: 47450116 false) 
	#(388 3 #reduceActionForTupleType2: 47944706 false) 
	#(388 3 #reduceActionForTupleType3: 47944707 false) 
	#(366 2 #reduceActionForTypeParameter2: 45848578 false) 
	#(364 3 #reduceActionForTypeParameters1: 45657089 false) 
	#(388 3 #reduceActionForTupleType5: 47944709 false) 
	#(391 3 #reduceActionForUnionType1: 48227329 false) 
	#(392 3 #reduceActionForIntersectionType1: 48348161 false) 
	#(380 3 #reduceActionForTypeReference2: 47063042 false) 
	#(381 3 #reduceActionForTypeName2: 47157250 false) 
	#(382 3 #reduceActionForNamespaceName2: 47263746 false) 
	#(305 1 #reduceActionForModuleBody1: 38986754 false) 
	#(304 1 #reduceActionForModuleBody1: 38930433 false) 
	#(298 3 #reduceActionForClassElement5: 37840901 false) 
	#(300 2 #reduceActionForIdentifier1: 38537218 false) 
	#(300 2 #liftFirstValue: 38537217 false) 
	#(298 3 #reduceActionForClassElement6: 37840902 false) 
	#(299 2 #reduceActionForFieldDefinition1: 38426625 false) 
	#(434 2 #reduceActionForMemberAccessorDeclaration1: 58549249 false) 
	#(434 2 #reduceActionForMemberAccessorDeclaration1: 58549253 false) 
	#(325 3 #reduceActionForNamedExports2: 41737218 false) 
	#(324 3 #reduceActionForExportFromClause2: 41629698 false) 
	#(323 4 #reduceActionForExportDeclaration5: 40836101 false) 
	#(318 2 #reduceActionForFromClause1: 40321025 false) 
	#(323 4 #reduceActionForExportDeclaration1: 40836097 false) 
	#(317 3 #reduceActionForNamedImports2: 40089602 false) 
	#(316 3 #reduceActionForNameSpaceImport1: 40008705 false) 
	#(313 4 #reduceActionForImportDeclaration1: 39363585 false) 
	#(314 3 #reduceActionForImportClause4: 39603204 false) 
	#(314 3 #reduceActionForImportClause4: 39603205 false) 
	#(313 4 #reduceActionForImportDeclaration4: 39363588 false) 
	#(314 3 #reduceActionForImportClause6: 39603206 false) 
	#(314 3 #reduceActionForImportClause6: 39603207 false) 
	#(222 2 #reduceActionForBindingRestProperty1: 25967617 false) 
	#(220 3 #reduceActionForObjectBindingPattern2: 25213954 false) 
	#(220 3 #reduceActionForObjectBindingPattern3: 25213955 false) 
	#(221 3 #reduceActionForArrayBindingPattern3: 25602051 false) 
	#(225 2 #reduceActionForBindingElisionElement2: 26266626 false) 
	#(221 3 #reduceActionForArrayBindingPattern5: 25602053 false) 
	#(221 3 #reduceActionForArrayBindingPattern2: 25602050 false) 
	#(163 2 #reduceActionForFromClause1: 12883969 false) 
	#(214 3 #reduceActionForNamespaceName2: 24505346 false) 
	#(417 3 #reduceActionForSimpleLexicalBinding1: 55796737 false) 
	#(418 3 #reduceActionForDestructuringLexicalBinding1: 55906305 false) 
	#(291 4 #reduceActionForClassDeclaration5: 37276677 false) 
	#(291 4 #reduceActionForClassDeclaration3: 37276675 false) 
	#(263 4 #reduceActionForFunctionDeclaration5: 32690181 false) 
	#(229 3 #reduceActionForBindingRestElement3: 26638339 false) 
	#(259 3 #reduceActionForFormalParameters5: 32284677 false) 
	#(260 3 #reduceActionForNamespaceName2: 32486402 false) 
	#(228 3 #reduceActionForSimpleLexicalBinding1: 26552323 false) 
	#(228 3 #reduceActionForSingleNameBinding9: 26552329 false) 
	#(403 0 #nil 50050052 false) 
	#(228 3 #reduceActionForSingleNameBinding7: 26552327 false) 
	#(151 4 #reduceActionForArrayLiteral4: 10915844 false) 
	#(152 3 #reduceActionForElementList6: 11176966 false) 
	#(152 3 #reduceActionForElementList6: 11176965 false) 
	#(274 1 #reduceActionForImportClause1: 33799169 false) 
	#(273 4 #reduceActionForAsyncArrowFunction1: 33696769 false) 
	#(294 3 #reduceActionForClassTail2: 37548034 false) 
	#(297 2 #reduceActionForDecoratorExpression__decorator__2: 37752834 false) 
	#(294 3 #reduceActionForClassTail3: 37548035 false) 
	#(424 1 #liftFirstValue: 56918017 false) 
	#(423 2 #reduceActionForFromClause1: 56858625 false) 
	#(422 1 #liftFirstValue: 56711169 false) 
	#(425 2 #reduceActionForImplementsClause1: 56960001 false) 
	#(421 1 #reduceActionForNamespaceName1: 56580097 false) 
	#(295 3 #reduceActionForClassHeritage3: 37640195 false) 
	#(176 4 #reduceActionForImportCall1: 15326209 false) 
	#(178 2 #reduceActionForArgumentList2: 15669250 false) 
	#(177 3 #reduceActionForArguments2: 15483906 false) 
	#(169 4 #reduceActionForSuperProperty1: 14069761 false) 
	#(369 1 #reduceActionForNamespaceName1: 46033921 false) 
	#(370 1 #liftFirstValue: 46140417 false) 
	#(158 2 #reduceActionForPropertyDefinition5: 12241925 false) 
	#(162 2 #reduceActionForCoverInitializedName1: 12801025 false) 
	#(155 4 #reduceActionForObjectLiteral2: 11548674 false) 
	#(166 1 #reduceActionForNamespaceName1: 13142017 false) 
	#(164 4 #reduceActionForTemplateLiteral2: 12948482 false) 
	#(168 4 #reduceActionForMemberExpression2: 13374466 false) 
	#(181 2 #reduceActionForOptionalRest3: 16238595 false) 
	#(181 2 #reduceActionForOptionalRest3: 16238597 false) 
	#(174 4 #reduceActionForMemberExpression2: 14656517 false) 
	#(414 4 #reduceActionForAsExpression1: 55142401 false) 
	#(266 1 #reduceActionForModuleBody1: 33154050 false) 
	#(265 1 #reduceActionForModuleBody1: 33113089 false) 
	#(336 4 #reduceActionForJSXElement2: 42865666 false) 
	#(356 1 #reduceActionForJSXChild1: 44956673 false) 
	#(356 1 #liftFirstValue: 44956674 false) 
	#(355 2 #reduceActionForDecoratorExpression__decorator__2: 44936194 false) 
	#(344 2 #reduceActionForFromClause1: 44104705 false) 
	#(361 0 #reduceActionForSwitchToJSXTextOrDefault11: 45369345 true) 
	#(351 1 #reduceActionForJSXElementName1: 44528641 false) 
	#(351 1 #liftFirstValue: 44528642 false) 
	#(348 1 #reduceActionForModuleItemList1: 44231681 false) 
	#(346 1 #reduceActionForModuleBody1: 44215297 false) 
	#(347 1 #liftFirstValue: 44231681 false) 
	#(347 1 #liftFirstValue: 44231682 false) 
	#(350 1 #reduceActionForJSXAttribute1: 44445697 false) 
	#(343 2 #reduceActionForJSXMemberExpression1: 44082177 false) 
	#(345 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 44104706 false) 
	#(338 4 #reduceActionForJSXOpeningElement3: 43199491 false) 
	#(414 4 #reduceActionForAsExpression1: 55142402 false) 
	#(410 3 #reduceActionForArrowFormalParameters1: 53332995 false) 
	#(241 4 #reduceActionForBreakStatement2: 30377986 false) 
	#(240 4 #reduceActionForContinueStatement2: 30263298 false) 
	#(239 1 #liftFirstValue: 30216193 false) 
	#(239 1 #liftFirstValue: 30216194 false) 
	#(238 2 #reduceActionForFromClause1: 30151681 false) 
	#(243 4 #reduceActionForReturnStatement2: 30520322 false) 
	#(254 2 #reduceActionForCatch2: 31804418 false) 
	#(255 2 #reduceActionForFromClause1: 31972353 false) 
	#(253 4 #reduceActionForTryStatement3: 31633411 false) 
	#(217 3 #reduceActionForNamespaceName2: 24853506 false) 
	#(415 2 #reduceActionForSimpleVariableDeclaration1: 55496705 false) 
	#(478 1 #reduceActionForArrowParameterDeclaration1: 68024321 false) 
	#(477 1 #reduceActionForNamespaceName1: 67911681 false) 
	#(488 0 #reduceActionForDecoratorExpression__decorator__1: 69665793 false) 
	#(473 3 #reduceActionForExportListDeclaration5: 66757637 false) 
	#(419 3 #reduceActionForInterfaceDeclaration1: 56339457 false) 
	#(443 0 #reduceActionForDecoratorExpression__decorator__1: 59630593 false) 
	#(469 3 #reduceActionForExportImplementationElement3: 64066563 false) 
	#(469 3 #reduceActionForExportImplementationElement3: 64066562 false) 
	#(469 3 #reduceActionForExportImplementationElement3: 64066561 false) 
	#(469 3 #reduceActionForExportImplementationElement3: 64066564 false) 
	#(469 3 #reduceActionForExportImplementationElement3: 64066570 false) 
	#(469 3 #reduceActionForExportImplementationElement3: 64066566 false) 
	#(470 3 #reduceActionForExportDeclarationElement2: 65331202 false) 
	#(469 3 #reduceActionForExportImplementationElement3: 64066565 false) 
	#(470 3 #reduceActionForExportDeclarationElement2: 65331201 false) 
	#(469 3 #reduceActionForExportImplementationElement3: 64066567 false) 
	#(469 3 #reduceActionForExportImplementationElement3: 64066568 false) 
	#(470 3 #reduceActionForExportDeclarationElement2: 65331204 false) 
	#(470 3 #reduceActionForExportDeclarationElement2: 65331203 false) 
	#(469 3 #reduceActionForExportImplementationElement3: 64066569 false) 
	#(400 3 #reduceActionForCallSignature1: 49308673 false) 
	#(161 3 #reduceActionForComputedPropertyName1: 12680193 false) 
	#(398 3 #reduceActionForPropertySignature6: 49071110 false) 
	#(398 3 #reduceActionForPropertySignature7: 49071111 false) 
	#(399 2 #reduceActionForFromClause1: 49255425 false) 
	#(398 3 #reduceActionForPropertySignature4: 49071108 false) 
	#(408 3 #reduceActionForMethodSignature2: 52628482 false) 
	#(385 3 #reduceActionForNamespaceName2: 47546370 false) 
	#(385 3 #reduceActionForNamespaceName2: 47546371 false) 
	#(388 4 #reduceActionForTupleType4: 47944708 false) 
	#(389 3 #reduceActionForNamespaceName2: 48092162 false) 
	#(367 2 #reduceActionForFromClause1: 45902849 false) 
	#(365 3 #reduceActionForNamespaceName2: 45735938 false) 
	#(388 4 #reduceActionForTupleType6: 47944710 false) 
	#(388 4 #reduceActionForTupleType7: 47944711 false) 
	#(396 3 #reduceActionForTypeQueryExpression2: 48909314 false) 
	#(387 4 #reduceActionForArrayType1: 47808513 false) 
	#(303 4 #reduceActionForClassStaticBlock1: 38807553 false) 
	#(298 4 #reduceActionForClassElement7: 37840903 false) 
	#(434 3 #reduceActionForMemberAccessorDeclaration2: 58549250 false) 
	#(434 3 #reduceActionForMemberAccessorDeclaration2: 58549254 false) 
	#(434 3 #reduceActionForMemberAccessorDeclaration3: 58549251 false) 
	#(434 3 #reduceActionForMemberAccessorDeclaration3: 58549255 false) 
	#(435 3 #reduceActionForIndexMemberDeclaration1: 58825729 false) 
	#(402 1 #liftFirstValue: 49968130 false) 
	#(430 1 #liftFirstValue: 57833474 false) 
	#(430 1 #liftFirstValue: 57833473 false) 
	#(402 1 #liftFirstValue: 49968129 false) 
	#(431 2 #reduceActionForDecoratorExpression__decorator__2: 57833474 false) 
	#(327 3 #reduceActionForExportSpecifier2: 42057730 false) 
	#(325 4 #reduceActionForNamedExports3: 41737219 false) 
	#(326 3 #reduceActionForNamespaceName2: 41953282 false) 
	#(320 3 #reduceActionForImportSpecifier2: 40476674 false) 
	#(317 4 #reduceActionForNamedImports3: 40089603 false) 
	#(319 3 #reduceActionForNamespaceName2: 40372226 false) 
	#(320 3 #reduceActionForImportSpecifier3: 40476675 false) 
	#(313 5 #reduceActionForImportDeclaration2: 39363586 false) 
	#(493 3 #reduceActionForImportAssertion1: 71123969 false) 
	#(494 1 #reduceActionForNamespaceName1: 71266305 false) 
	#(497 3 #reduceActionForImportAttributes1: 71622657 false) 
	#(226 3 #reduceActionForBindingProperty2: 26328066 false) 
	#(220 4 #reduceActionForObjectBindingPattern4: 25213956 false) 
	#(223 3 #reduceActionForNamespaceName2: 26039298 false) 
	#(221 4 #reduceActionForArrayBindingPattern4: 25602052 false) 
	#(221 4 #reduceActionForArrayBindingPattern6: 25602054 false) 
	#(224 3 #reduceActionForBindingElementList2: 26158082 false) 
	#(417 4 #reduceActionForSimpleLexicalBinding2: 55796738 false) 
	#(418 4 #reduceActionForDestructuringLexicalBinding2: 55906306 false) 
	#(291 5 #reduceActionForClassDeclaration7: 37276679 false) 
	#(291 5 #reduceActionForClassDeclaration2: 37276674 false) 
	#(263 5 #reduceActionForFunctionDeclaration6: 32690182 false) 
	#(228 4 #reduceActionForSimpleLexicalBinding2: 26552324 false) 
	#(403 1 #reduceActionForIdentifier1: 50050050 false) 
	#(403 1 #liftFirstValue: 50050049 false) 
	#(403 1 #liftFirstValue: 50050051 false) 
	#(401 2 #reduceActionForDecoratorExpression__decorator__2: 49555458 false) 
	#(227 4 #reduceActionForBindingElement6: 26441734 false) 
	#(228 4 #reduceActionForSingleNameBinding8: 26552328 false) 
	#(228 4 #reduceActionForSingleNameBinding5: 26552325 false) 
	#(228 4 #reduceActionForSingleNameBinding10: 26552330 false) 
	#(289 1 #reduceActionForModuleBody1: 37164033 false) 
	#(294 4 #reduceActionForClassTail4: 37548036 false) 
	#(176 5 #reduceActionForImportCall2: 15326210 false) 
	#(177 4 #reduceActionForArguments3: 15483907 false) 
	#(178 3 #reduceActionForArgumentList3: 15669251 false) 
	#(368 3 #reduceActionForTypeArguments1: 45956097 false) 
	#(177 4 #reduceActionForArguments4: 15483908 false) 
	#(155 5 #reduceActionForObjectLiteral3: 11548675 false) 
	#(157 3 #reduceActionForNamespaceName2: 12106754 false) 
	#(158 3 #reduceActionForPropertyDefinition3: 12241923 false) 
	#(167 2 #reduceActionForTemplateMiddleList1: 13229057 false) 
	#(166 2 #reduceActionForTemplateSpans2: 13142018 false) 
	#(182 3 #reduceActionForOptionalFirst2: 16596994 false) 
	#(181 3 #reduceActionForOptionalFirst2: 16238594 false) 
	#(201 5 #reduceActionForConditionalExpression2: 21448706 false) 
	#(270 3 #reduceActionForConciseBody2: 33448962 false) 
	#(342 3 #reduceActionForJSXNamespacedName1: 43958273 false) 
	#(348 2 #reduceActionForDecoratorExpression__decorator__2: 44231682 false) 
	#(350 2 #reduceActionForJSXAttribute2: 44445698 false) 
	#(338 5 #reduceActionForJSXOpeningElement1: 43199489 false) 
	#(410 4 #reduceActionForTypeCallSignature1: 53332993 false) 
	#(185 5 #reduceActionForUnaryExpression10: 17359882 false) 
	#(410 4 #reduceActionForTypeCallSignature4: 53332996 false) 
	#(232 5 #reduceActionForIfStatement2: 26950658 false) 
	#(245 5 #reduceActionForSwitchStatement1: 30766081 false) 
	#(256 1 #liftFirstValue: 32032769 false) 
	#(256 1 #liftFirstValue: 32032771 false) 
	#(415 3 #reduceActionForSimpleVariableDeclaration2: 55496706 false) 
	#(416 3 #reduceActionForDestructuringVariableDeclaration1: 55602177 false) 
	#(235 5 #reduceActionForWhileStatement1: 27528193 false) 
	#(244 5 #reduceActionForWithStatement1: 30633985 false) 
	#(481 0 #reduceActionForDecoratorExpression__decorator__1: 68464641 false) 
	#(478 2 #reduceActionForAmbientBinding2: 68024322 false) 
	#(476 3 #reduceActionForUsingDeclaration1: 67615747 false) 
	#(490 1 #reduceActionForAmbientNamespaceElement3: 69844995 false) 
	#(490 1 #reduceActionForAmbientNamespaceElement3: 69845001 false) 
	#(490 1 #reduceActionForAmbientNamespaceElement3: 69845007 false) 
	#(490 1 #reduceActionForAmbientNamespaceElement3: 69844993 false) 
	#(490 1 #reduceActionForAmbientNamespaceElement3: 69844997 false) 
	#(490 1 #reduceActionForAmbientNamespaceElement3: 69844999 false) 
	#(490 1 #reduceActionForAmbientNamespaceElement3: 69845003 false) 
	#(490 1 #reduceActionForAmbientNamespaceElement3: 69845005 false) 
	#(488 1 #reduceActionForModuleBody1: 69665794 false) 
	#(489 1 #reduceActionForModuleItemList1: 69718017 false) 
	#(476 3 #reduceActionForUsingDeclaration1: 67615746 false) 
	#(465 0 #reduceActionForDecoratorExpression__decorator__1: 63429633 false) 
	#(476 3 #reduceActionForUsingDeclaration1: 67615745 false) 
	#(436 4 #reduceActionForEnumDeclaration1: 58950657 false) 
	#(439 1 #reduceActionForEnumMember1: 59236353 false) 
	#(437 1 #reduceActionForModuleBody1: 59098113 false) 
	#(438 1 #reduceActionForNamespaceName1: 59144193 false) 
	#(474 4 #reduceActionForExportAssignment1: 67094529 false) 
	#(473 4 #reduceActionForExportListDeclaration1: 66757633 false) 
	#(473 4 #reduceActionForExportListDeclaration3: 66757635 false) 
	#(448 1 #reduceActionForModuleBody1: 60924929 false) 
	#(420 2 #reduceActionForFromClause1: 56495105 false) 
	#(419 4 #reduceActionForInterfaceDeclaration3: 56339459 false) 
	#(419 4 #reduceActionForInterfaceDeclaration2: 56339458 false) 
	#(445 1 #liftFirstValue: 59766785 false) 
	#(445 1 #liftFirstValue: 59766786 false) 
	#(445 1 #liftFirstValue: 59766787 false) 
	#(445 1 #liftFirstValue: 59766788 false) 
	#(445 1 #liftFirstValue: 59766789 false) 
	#(445 1 #liftFirstValue: 59766791 false) 
	#(445 1 #liftFirstValue: 59766790 false) 
	#(445 1 #liftFirstValue: 59766792 false) 
	#(445 1 #liftFirstValue: 59766793 false) 
	#(443 1 #reduceActionForModuleBody1: 59630594 false) 
	#(444 1 #reduceActionForModuleItemList1: 59668481 false) 
	#(445 1 #liftFirstValue: 59766796 false) 
	#(445 1 #liftFirstValue: 59766795 false) 
	#(445 1 #liftFirstValue: 59766794 false) 
	#(442 3 #reduceActionForNamespaceName2: 59525122 false) 
	#(471 4 #reduceActionForExportDefaultImplementationElement1: 65760257 false) 
	#(471 4 #reduceActionForExportDefaultImplementationElement1: 65760258 false) 
	#(471 4 #reduceActionForExportDefaultImplementationElement1: 65760259 false) 
	#(472 4 #reduceActionForExportDefaultDeclarationElement1: 66321409 false) 
	#(472 4 #reduceActionForExportDefaultDeclarationElement1: 66321410 false) 
	#(393 5 #reduceActionForFunctionType1: 48454657 false) 
	#(400 4 #reduceActionForCallSignature2: 49308674 false) 
	#(406 4 #reduceActionForConstructSignature1: 52134913 false) 
	#(398 4 #reduceActionForPropertySignature8: 49071112 false) 
	#(400 4 #reduceActionForCallSignature3: 49308675 false) 
	#(388 5 #reduceActionForTupleType8: 47944712 false) 
	#(387 5 #reduceActionForArrayType2: 47808514 false) 
	#(376 5 #reduceActionForIndexedAccessType1: 46718977 false) 
	#(276 1 #liftFirstValue: 34530305 false) 
	#(426 4 #reduceActionForConstructorDeclaration3: 57038851 false) 
	#(433 4 #reduceActionForMemberFunctionDeclaration9: 58091529 false) 
	#(434 4 #reduceActionForMemberAccessorDeclaration4: 58549252 false) 
	#(434 4 #reduceActionForMemberAccessorDeclaration4: 58549256 false) 
	#(493 4 #reduceActionForImportAssertion2: 71123970 false) 
	#(493 4 #reduceActionForImportAssertion3: 71123971 false) 
	#(497 4 #reduceActionForImportAttributes2: 71622658 false) 
	#(497 4 #reduceActionForImportAttributes3: 71622659 false) 
	#(220 5 #reduceActionForObjectBindingPattern5: 25213957 false) 
	#(221 5 #reduceActionForArrayBindingPattern8: 25602056 false) 
	#(221 5 #reduceActionForArrayBindingPattern7: 25602055 false) 
	#(291 6 #reduceActionForClassDeclaration6: 37276678 false) 
	#(291 6 #reduceActionForClassDeclaration4: 37276676 false) 
	#(323 6 #reduceActionForExportDeclaration6: 40836102 false) 
	#(263 6 #reduceActionForFunctionDeclaration3: 32690179 false) 
	#(227 5 #reduceActionForBindingElement7: 26441735 false) 
	#(227 5 #reduceActionForBindingElement4: 26441732 false) 
	#(227 5 #reduceActionForBindingElement8: 26441736 false) 
	#(228 5 #reduceActionForSingleNameBinding6: 26552326 false) 
	#(274 3 #reduceActionForConciseBody2: 33799170 false) 
	#(421 3 #reduceActionForNamespaceName2: 56580098 false) 
	#(178 4 #reduceActionForArgumentList4: 15669252 false) 
	#(369 3 #reduceActionForNamespaceName2: 46033922 false) 
	#(177 5 #reduceActionForArguments5: 15483909 false) 
	#(177 5 #reduceActionForArguments6: 15483910 false) 
	#(167 3 #reduceActionForTemplateMiddleList2: 13229058 false) 
	#(362 0 #reduceActionForSwitchToJSXTextOrDefault21: 45435905 true) 
	#(357 1 #liftFirstValue: 45189122 false) 
	#(357 1 #liftFirstValue: 45189121 false) 
	#(337 6 #reduceActionForJSXSelfClosingElement1: 43016193 false) 
	#(338 6 #reduceActionForJSXOpeningElement2: 43199490 false) 
	#(353 1 #reduceActionForLiteral4: 44693505 false) 
	#(353 1 #liftFirstValue: 44693507 false) 
	#(353 1 #liftFirstValue: 44693508 false) 
	#(352 2 #reduceActionForFromClause1: 44619777 false) 
	#(264 6 #reduceActionForFunctionDeclaration3: 32902147 false) 
	#(410 5 #reduceActionForTypeCallSignature2: 53332994 false) 
	#(236 6 #reduceActionForForStatement1: 27676673 false) 
	#(236 6 #reduceActionForForStatement13: 27676685 false) 
	#(246 2 #reduceActionForCaseBlock1: 30892033 false) 
	#(247 1 #reduceActionForModuleItemList1: 31076353 false) 
	#(436 5 #reduceActionForEnumDeclaration3: 58950659 false) 
	#(483 1 #liftFirstValue: 68639747 false) 
	#(481 1 #reduceActionForModuleBody1: 68464642 false) 
	#(482 1 #reduceActionForModuleItemList1: 68512769 false) 
	#(483 1 #liftFirstValue: 68639745 false) 
	#(483 1 #liftFirstValue: 68639746 false) 
	#(477 3 #reduceActionForNamespaceName2: 67911682 false) 
	#(479 4 #reduceActionForAmbientFunctionDeclaration1: 68107265 false) 
	#(490 2 #reduceActionForAmbientNamespaceElement4: 69844996 false) 
	#(490 2 #reduceActionForAmbientNamespaceElement4: 69845002 false) 
	#(490 2 #reduceActionForAmbientNamespaceElement4: 69845008 false) 
	#(490 2 #reduceActionForAmbientNamespaceElement4: 69844994 false) 
	#(490 2 #reduceActionForAmbientNamespaceElement4: 69844998 false) 
	#(490 2 #reduceActionForAmbientNamespaceElement4: 69845000 false) 
	#(490 2 #reduceActionForAmbientNamespaceElement4: 69845004 false) 
	#(490 2 #reduceActionForAmbientNamespaceElement4: 69845006 false) 
	#(487 4 #reduceActionForAmbientNamespaceDeclaration2: 69365762 false) 
	#(489 2 #reduceActionForDecoratorExpression__decorator__2: 69718018 false) 
	#(467 1 #liftFirstValue: 63610882 false) 
	#(461 1 #liftFirstValue: 62811138 false) 
	#(461 1 #liftFirstValue: 62811137 false) 
	#(461 1 #liftFirstValue: 62811139 false) 
	#(461 1 #liftFirstValue: 62811141 false) 
	#(467 1 #liftFirstValue: 63610881 false) 
	#(465 1 #reduceActionForModuleBody1: 63429634 false) 
	#(466 1 #reduceActionForModuleItemList1: 63479809 false) 
	#(467 1 #liftFirstValue: 63610883 false) 
	#(467 1 #liftFirstValue: 63610884 false) 
	#(467 1 #liftFirstValue: 63610885 false) 
	#(467 1 #liftFirstValue: 63610886 false) 
	#(461 1 #liftFirstValue: 62811140 false) 
	#(436 5 #reduceActionForEnumDeclaration2: 58950658 false) 
	#(437 2 #reduceActionForOptionalChain2: 59098114 false) 
	#(473 5 #reduceActionForExportListDeclaration6: 66757638 false) 
	#(447 5 #reduceActionForImportAliasDeclaration1: 60789761 false) 
	#(419 5 #reduceActionForInterfaceDeclaration4: 56339460 false) 
	#(491 5 #reduceActionForAmbientModuleDeclaration2: 70617090 false) 
	#(446 2 #reduceActionForAmbientNamespaceElement4: 60047362 false) 
	#(446 2 #reduceActionForAmbientNamespaceElement4: 60047361 false) 
	#(446 2 #reduceActionForAmbientNamespaceElement4: 60047363 false) 
	#(446 2 #reduceActionForAmbientNamespaceElement4: 60047364 false) 
	#(446 2 #reduceActionForAmbientNamespaceElement4: 60047365 false) 
	#(446 2 #reduceActionForAmbientNamespaceElement4: 60047367 false) 
	#(446 2 #reduceActionForAmbientNamespaceElement4: 60047366 false) 
	#(446 2 #reduceActionForAmbientNamespaceElement4: 60047368 false) 
	#(446 2 #reduceActionForAmbientNamespaceElement4: 60047369 false) 
	#(446 2 #reduceActionForAmbientNamespaceElement4: 60047371 false) 
	#(446 2 #reduceActionForAmbientNamespaceElement4: 60047370 false) 
	#(441 5 #reduceActionForNamespaceDeclaration1: 59383809 false) 
	#(444 2 #reduceActionForDecoratorExpression__decorator__2: 59668482 false) 
	#(409 5 #reduceActionForTypeAliasDeclaration1: 52720641 false) 
	#(472 5 #reduceActionForExportDefaultDeclarationElement3: 66321411 false) 
	#(471 5 #reduceActionForExportDefaultImplementationElement4: 65760260 false) 
	#(406 5 #reduceActionForConstructSignature2: 52134914 false) 
	#(406 5 #reduceActionForConstructSignature3: 52134915 false) 
	#(400 5 #reduceActionForCallSignature4: 49308676 false) 
	#(394 6 #reduceActionForConstructorType1: 48634881 false) 
	#(393 6 #reduceActionForFunctionType2: 48454658 false) 
	#(405 1 #liftFirstValue: 51456001 false) 
	#(405 1 #liftFirstValue: 51456002 false) 
	#(275 5 #reduceActionForMethodDefinition9: 33920009 false) 
	#(433 5 #reduceActionForMemberFunctionDeclaration10: 58091530 false) 
	#(427 3 #reduceActionForCallSignature1: 57503745 false) 
	#(433 5 #reduceActionForMemberFunctionDeclaration11: 58091531 false) 
	#(426 5 #reduceActionForConstructorDeclaration4: 57038852 false) 
	#(433 5 #reduceActionForMemberFunctionDeclaration13: 58091533 false) 
	#(429 5 #reduceActionForMemberVariableDeclaration1: 57771009 false) 
	#(263 7 #reduceActionForFunctionDeclaration1: 32690177 false) 
	#(280 1 #reduceActionForModuleBody1: 35280897 false) 
	#(320 5 #reduceActionForImportSpecifier4: 40476676 false) 
	#(495 3 #reduceActionForImportAssertionEntry1: 71395329 false) 
	#(495 3 #reduceActionForImportAssertionEntry1: 71395330 false) 
	#(493 5 #reduceActionForImportAssertion4: 71123972 false) 
	#(494 3 #reduceActionForNamespaceName2: 71266306 false) 
	#(497 5 #reduceActionForImportAttributes4: 71622660 false) 
	#(221 6 #reduceActionForArrayBindingPattern9: 25602057 false) 
	#(291 7 #reduceActionForClassDeclaration8: 37276680 false) 
	#(263 7 #reduceActionForFunctionDeclaration4: 32690180 false) 
	#(227 6 #reduceActionForBindingElement5: 26441733 false) 
	#(227 6 #reduceActionForBindingElement9: 26441737 false) 
	#(264 7 #reduceActionForFunctionDeclaration1: 32902145 false) 
	#(177 6 #reduceActionForArguments7: 15483911 false) 
	#(356 4 #reduceActionForJSXChild3: 44956675 false) 
	#(337 7 #reduceActionForJSXSelfClosingElement2: 43016194 false) 
	#(264 7 #reduceActionForFunctionDeclaration4: 32902148 false) 
	#(234 7 #reduceActionForDoWhileStatement1: 27335681 false) 
	#(236 7 #reduceActionForForStatement2: 27676674 false) 
	#(236 7 #reduceActionForForStatement3: 27676675 false) 
	#(237 7 #reduceActionForForInOfStatement1: 28448769 false) 
	#(237 7 #reduceActionForForInOfStatement4: 28448772 false) 
	#(236 7 #reduceActionForForStatement5: 27676677 false) 
	#(236 7 #reduceActionForForStatement14: 27676686 false) 
	#(236 7 #reduceActionForForStatement15: 27676687 false) 
	#(237 7 #reduceActionForForInOfStatement3: 28448771 false) 
	#(237 7 #reduceActionForForInOfStatement6: 28448774 false) 
	#(232 7 #reduceActionForIfStatement1: 26950657 false) 
	#(249 2 #reduceActionForDefaultClause1: 31255553 false) 
	#(246 3 #reduceActionForCaseBlock2: 30892034 false) 
	#(247 2 #reduceActionForDecoratorExpression__decorator__2: 31076354 false) 
	#(246 3 #reduceActionForCaseBlock3: 30892035 false) 
	#(256 3 #reduceActionForCatchParameter2: 32032770 false) 
	#(254 5 #reduceActionForCatch1: 31804417 false) 
	#(436 6 #reduceActionForEnumDeclaration4: 58950660 false) 
	#(480 5 #reduceActionForAmbientClassDeclaration1: 68254721 false) 
	#(482 2 #reduceActionForDecoratorExpression__decorator__2: 68512770 false) 
	#(491 6 #reduceActionForAmbientModuleDeclaration3: 70617091 false) 
	#(491 6 #reduceActionForAmbientModuleDeclaration1: 70617089 false) 
	#(466 2 #reduceActionForDecoratorExpression__decorator__2: 63479810 false) 
	#(487 5 #reduceActionForNamespaceDeclaration1: 69365761 false) 
	#(440 1 #liftFirstValue: 59341825 false) 
	#(439 3 #reduceActionForEnumMember2: 59236354 false) 
	#(438 3 #reduceActionForNamespaceName2: 59144194 false) 
	#(473 6 #reduceActionForExportListDeclaration2: 66757634 false) 
	#(473 6 #reduceActionForExportListDeclaration4: 66757636 false) 
	#(409 6 #reduceActionForTypeAliasDeclaration2: 52720642 false) 
	#(409 6 #reduceActionForTypeAliasDeclaration3: 52720643 false) 
	#(407 6 #reduceActionForIndexSignature2: 52327426 false) 
	#(407 6 #reduceActionForIndexSignature2: 52327425 false) 
	#(406 6 #reduceActionForConstructSignature4: 52134916 false) 
	#(394 7 #reduceActionForConstructorType2: 48634882 false) 
	#(413 2 #reduceActionForTypedPropertySetParameterList1: 54445057 false) 
	#(275 6 #reduceActionForMethodDefinition7: 33920007 false) 
	#(427 4 #reduceActionForCallSignature2: 57503746 false) 
	#(426 6 #reduceActionForConstructorDeclaration1: 57038849 false) 
	#(433 6 #reduceActionForMemberFunctionDeclaration12: 58091532 false) 
	#(433 6 #reduceActionForMemberFunctionDeclaration1: 58091521 false) 
	#(433 6 #reduceActionForMemberFunctionDeclaration14: 58091534 false) 
	#(433 6 #reduceActionForMemberFunctionDeclaration15: 58091535 false) 
	#(429 6 #reduceActionForMemberVariableDeclaration2: 57771010 false) 
	#(429 6 #reduceActionForMemberVariableDeclaration3: 57771011 false) 
	#(429 6 #reduceActionForMemberVariableDeclaration5: 57771013 false) 
	#(286 8 #reduceActionForAsyncFunctionDeclaration1: 36288513 false) 
	#(285 1 #reduceActionForModuleBody1: 36251649 false) 
	#(277 8 #reduceActionForGeneratorDeclaration1: 34588673 false) 
	#(263 8 #reduceActionForFunctionDeclaration2: 32690178 false) 
	#(287 8 #reduceActionForAsyncFunctionDeclaration1: 36602881 false) 
	#(278 8 #reduceActionForGeneratorDeclaration1: 34825217 false) 
	#(264 8 #reduceActionForFunctionDeclaration2: 32902146 false) 
	#(339 5 #reduceActionForJSXClosingElement1: 43428865 false) 
	#(356 5 #reduceActionForJSXChild4: 44956676 false) 
	#(349 5 #reduceActionForJSXSpreadAttribute1: 44296193 false) 
	#(236 8 #reduceActionForForStatement4: 27676676 false) 
	#(236 8 #reduceActionForForStatement9: 27676681 false) 
	#(237 8 #reduceActionForForInOfStatement2: 28448770 false) 
	#(237 8 #reduceActionForForInOfStatement5: 28448773 false) 
	#(236 8 #reduceActionForForStatement6: 27676678 false) 
	#(236 8 #reduceActionForForStatement7: 27676679 false) 
	#(236 8 #reduceActionForForStatement16: 27676688 false) 
	#(237 8 #reduceActionForForInOfStatement7: 28448775 false) 
	#(237 8 #reduceActionForForInOfStatement9: 28448777 false) 
	#(248 3 #reduceActionForCaseClause1: 31149057 false) 
	#(249 3 #reduceActionForDefaultClause2: 31255554 false) 
	#(246 4 #reduceActionForCaseBlock5: 30892037 false) 
	#(246 4 #reduceActionForCaseBlock4: 30892036 false) 
	#(484 3 #reduceActionForAmbientConstructorDeclaration1: 68752385 false) 
	#(480 6 #reduceActionForAmbientClassDeclaration2: 68254722 false) 
	#(480 6 #reduceActionForAmbientClassDeclaration3: 68254723 false) 
	#(409 7 #reduceActionForTypeAliasDeclaration4: 52720644 false) 
	#(275 7 #reduceActionForMethodDefinition5: 33920005 false) 
	#(275 7 #reduceActionForMethodDefinition1: 33920001 false) 
	#(275 7 #reduceActionForMethodDefinition8: 33920008 false) 
	#(433 7 #reduceActionForMemberFunctionDeclaration2: 58091522 false) 
	#(433 7 #reduceActionForMemberFunctionDeclaration3: 58091523 false) 
	#(426 7 #reduceActionForConstructorDeclaration2: 57038850 false) 
	#(433 7 #reduceActionForMemberFunctionDeclaration16: 58091536 false) 
	#(433 7 #reduceActionForMemberFunctionDeclaration5: 58091525 false) 
	#(429 7 #reduceActionForMemberVariableDeclaration4: 57771012 false) 
	#(429 7 #reduceActionForMemberVariableDeclaration6: 57771014 false) 
	#(429 7 #reduceActionForMemberVariableDeclaration7: 57771015 false) 
	#(282 9 #reduceActionForAsyncGeneratorDeclaration1: 35444737 false) 
	#(286 9 #reduceActionForAsyncFunctionDeclaration5: 36288517 false) 
	#(277 9 #reduceActionForGeneratorDeclaration2: 34588674 false) 
	#(283 9 #reduceActionForAsyncGeneratorDeclaration1: 35720193 false) 
	#(287 9 #reduceActionForAsyncFunctionDeclaration5: 36602885 false) 
	#(278 9 #reduceActionForGeneratorDeclaration2: 34825218 false) 
	#(340 9 #reduceActionForJSXFragment1: 43589633 false) 
	#(339 6 #reduceActionForJSXClosingElement2: 43428866 false) 
	#(236 9 #reduceActionForForStatement10: 27676682 false) 
	#(236 9 #reduceActionForForStatement11: 27676683 false) 
	#(236 9 #reduceActionForForStatement8: 27676680 false) 
	#(237 9 #reduceActionForForInOfStatement8: 28448776 false) 
	#(248 4 #reduceActionForCaseClause2: 31149058 false) 
	#(246 5 #reduceActionForCaseBlock6: 30892038 false) 
	#(484 4 #reduceActionForAmbientConstructorDeclaration2: 68752386 false) 
	#(485 4 #reduceActionForAmbientPropertyMemberDeclaration1: 68973569 false) 
	#(485 4 #reduceActionForAmbientPropertyMemberDeclaration3: 68973571 false) 
	#(480 7 #reduceActionForAmbientClassDeclaration4: 68254724 false) 
	#(468 8 #reduceActionForImportRequireDeclaration1: 63847425 false) 
	#(279 8 #reduceActionForGeneratorMethod1: 35060737 false) 
	#(288 8 #reduceActionForAsyncMethod1: 36917249 false) 
	#(275 8 #reduceActionForMethodDefinition6: 33920006 false) 
	#(411 8 #reduceActionForGetAccessor1: 53696513 false) 
	#(433 8 #reduceActionForMemberFunctionDeclaration4: 58091524 false) 
	#(433 8 #reduceActionForMemberFunctionDeclaration6: 58091526 false) 
	#(433 8 #reduceActionForMemberFunctionDeclaration7: 58091527 false) 
	#(429 8 #reduceActionForMemberVariableDeclaration8: 57771016 false) 
	#(286 10 #reduceActionForAsyncFunctionDeclaration2: 36288514 false) 
	#(282 10 #reduceActionForAsyncGeneratorDeclaration2: 35444738 false) 
	#(286 10 #reduceActionForAsyncFunctionDeclaration3: 36288515 false) 
	#(287 10 #reduceActionForAsyncFunctionDeclaration2: 36602882 false) 
	#(283 10 #reduceActionForAsyncGeneratorDeclaration2: 35720194 false) 
	#(287 10 #reduceActionForAsyncFunctionDeclaration3: 36602883 false) 
	#(353 5 #reduceActionForJSXChild4: 44693506 false) 
	#(236 10 #reduceActionForForStatement12: 27676684 false) 
	#(485 5 #reduceActionForAmbientPropertyMemberDeclaration2: 68973570 false) 
	#(284 9 #reduceActionForAsyncGeneratorMethod1: 35994625 false) 
	#(411 9 #reduceActionForGetAccessor2: 53696514 false) 
	#(412 9 #reduceActionForSetAccessor1: 53941249 false) 
	#(412 9 #reduceActionForSetAccessor1: 53941251 false) 
	#(433 9 #reduceActionForMemberFunctionDeclaration8: 58091528 false) 
	#(286 11 #reduceActionForAsyncFunctionDeclaration6: 36288518 false) 
	#(286 11 #reduceActionForAsyncFunctionDeclaration7: 36288519 false) 
	#(287 11 #reduceActionForAsyncFunctionDeclaration6: 36602886 false) 
	#(287 11 #reduceActionForAsyncFunctionDeclaration7: 36602887 false) 
	#(288 10 #reduceActionForAsyncMethod2: 36917250 false) 
	#(412 10 #reduceActionForSetAccessor2: 53941250 false) 
	#(412 10 #reduceActionForSetAccessor2: 53941252 false) 
	#(286 12 #reduceActionForAsyncFunctionDeclaration4: 36288516 false) 
	#(287 12 #reduceActionForAsyncFunctionDeclaration4: 36602884 false) 
	#(286 13 #reduceActionForAsyncFunctionDeclaration8: 36288520 false) 
	#(287 13 #reduceActionForAsyncFunctionDeclaration8: 36602888 false)
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
	^ #('<at>' '<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<mandatory_semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<ampAmpEq>' '<question>' '<questionDot>' '<questionQuestion>' '<questionQuestionEq>' '<percent>' '<bar>' '<barBar>' '<barBarEq>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<abstract>' '<as>' '<assert>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<global>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<meta>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<override>' '<private>' '<protected>' '<public>' '<readonly>' '<require>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<using>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<privateIdentifier>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'ValidationNotArrowFunction' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'ImportMeta' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'DoWhileStatement' 'WhileStatement' 'ForStatement' 'ForInOfStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionDeclaration' 'FunctionExpression' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorMethod' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorBody' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncMethod' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'DecoratorExpression ''decorator''*' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'FieldDefinition' 'ClassElementNameWithSemicolonCheck' 'CheckSemicolon' 'ClassElementName' 'ClassStaticBlock' 'ClassStaticBlockBody' 'ClassStaticBlockStatementList' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ModuleExportName' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'StatementListItem' 'StartStatementListItem' 'PrivateIdentifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'IndexedAccessType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'BindingModifier*' 'BindingModifier' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'AsExpression' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'ConstructorCallSignature' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' '(BindingModifier ''modifier'' |  <static> ''modifier'')' '(BindingModifier ''modifier'' |  <static> ''modifier'')*' 'NullableIndicator' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'SourceFileElement ''element''*' 'SourceFileElement' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' 'DecoratorExpression' 'ImportAssertion' 'ImportAssertionEntries' 'ImportAssertionEntry' 'ImportMetadata' 'ImportAttributes' 'UsingDeclaration' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : 'generated' }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode nil #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSImportMetaNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #JSDoWhileStatementNode #JSWhileStatementNode #JSForStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSProgramNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSProgramNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #JSGeneratorMethodDefinitionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorMethodDefinitionNode #OrderedCollection #JSAsyncFunctionNode #JSAsyncFunctionNode #JSAsyncMethodDefinitionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #OrderedCollection #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSProgramNode nil #JSProgramNode #JSClassStaticBlockNode #OrderedCollection #OrderedCollection #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #SmaCCToken #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #JSProgramNode #ByteSymbol #JSNameExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSIndexedAccessTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #OrderedCollection #SmaCCToken #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSAsExpressionNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSCallSignatureNode #JSProgramNode #JSMemberVariableDeclarationNode #SmaCCToken #OrderedCollection #SmaCCToken #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #JSProgramNode #JSTSSourceFileNode #JSTSSourceFileNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #JSDecoratorExpressionNode #JSImportAssertionNode #OrderedCollection #JSImportAssertionEntryNode #JSProgramNode #JSImportAttributesNode #JSLexicalDeclarationNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 1 0 10 0 2 0 10 0 4 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 45 0 75 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 19 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 0 65 0 145 0 117 0 207 0 117 0 212 0 77 0 213 0 117 1 7 0 117 1 21 0 117 1 26 0 117 1 30 0 117 1 35 0 101 1 36 0 65 1 52 0 109 1 53 0 113 1 54 0 117 1 55 0 117 1 57 0 117 1 67 0 117 1 72 0 133 1 73 0 117 1 242 0 27 1 244 0 14 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 1 161 0 201 1 161 0 202 1 161 0 204 1 45 1 8 1 161 1 11 1 173 1 12 1 177 1 13 1 181 1 16 1 161 1 17 1 45 1 22 1 161 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 2 77 0 205 2 77 0 208 2 77 0 209 2 77 0 210 2 77 0 216 2 77 0 230 2 77 0 231 2 77 0 232 2 77 0 233 2 77 0 234 2 77 0 235 2 77 0 236 2 77 0 237 2 77 0 240 2 77 0 241 2 77 0 243 2 77 0 244 2 77 0 245 2 77 0 250 2 77 0 252 2 77 0 253 2 77 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 77 1 242 2 5 1 244] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 2 169 0 211 2 181 0 212 0 77 0 213 2 181 1 7 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 173 1 50 2 177 1 51 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244 0 30 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 45 0 75 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 19 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 0 117 0 207 0 117 0 212 0 77 0 213 0 117 1 7 0 117 1 21 0 117 1 26 0 117 1 30 0 117 1 35 0 101 1 36 2 189 1 52 0 109 1 53 0 113 1 54 0 117 1 55 0 117 1 57 0 117 1 67 0 117 1 72 0 133 1 73 0 117 1 242 0 27 1 244 0 14 1 245] 
#[1 0 34 0 1 0 34 0 2 0 34 0 4 0 34 0 6 0 34 0 8 0 34 0 36 0 34 0 37 0 34 0 38 0 34 0 39 0 34 0 40 0 34 0 53 0 34 0 56 0 34 0 59 0 34 0 60 0 34 0 61 0 34 0 64 0 34 0 65 0 34 0 67 0 34 0 68 0 34 0 69 0 34 0 71 0 34 0 72 0 34 0 74 0 34 0 75 0 34 0 77 0 34 0 79 0 34 0 81 0 34 0 84 0 34 0 85 0 34 0 90 0 34 0 92 0 34 0 94 0 34 0 95 0 34 0 96 0 34 0 97 0 34 0 106 0 34 0 110 0 34 0 111 0 34 0 113 0 34 0 114 0 34 0 115 0 34 0 116 0 34 0 117 0 34 0 118 0 34 0 119 0 34 0 120 0 34 0 121 0 34 0 122 0 34 0 123 0 34 0 124 0 34 0 129 0 34 0 131 0 34 0 133 0 34 0 134 0 34 0 135 0 34 0 137 0 34 0 138 0 34 0 141 2 193 1 193 2 197 1 194 0 34 1 244 0 34 1 245] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 3 5 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 3 5 1 137 3 5 1 138 3 21 1 139 3 21 1 141] 
#[1 0 6 0 1 0 6 0 6 3 89 0 8 0 6 0 27 0 6 0 59 0 6 0 82 0 6 0 107 0 43 0 108 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 3 97 1 36 3 101 1 42 3 101 1 47 0 47 1 244] 
#[0 3 113 0 81] 
#[0 0 38 0 4 0 6 0 129 1 244] 
#[1 0 6 0 1 3 117 0 4 3 121 0 27 0 6 0 56 0 37 0 59 0 6 0 64 0 77 0 65 3 125 0 70 0 49 0 81 0 77 0 92 2 57 0 120 3 129 0 206 3 129 0 207 3 129 0 212 0 77 0 213 3 141 0 216 3 129 1 7 3 129 1 21 3 129 1 26 3 129 1 30 3 129 1 35 0 101 1 36 3 149 1 68 3 153 1 69 3 157 1 244] 
#[1 3 161 0 2 3 165 0 27 0 237 0 129 3 169 0 146] 
#[1 3 173 0 4 3 177 0 27 0 237 0 129 3 201 0 133 3 189 0 146 3 185 1 58 3 189 1 59 3 193 1 60 3 197 1 61 3 201 1 65 3 189 1 66 3 201 1 77 3 213 1 244] 
#[0 0 42 0 4 0 6 0 129 1 244] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 3 225 0 146 3 229 0 214 3 233 0 215 3 237 0 219 3 237 0 220 3 237 0 221 3 233 1 161 3 233 1 162 4 1 1 244] 
#[0 0 0 1 245] 
#[0 0 46 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 0 50 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 3 225 0 146 4 5 0 214 3 233 0 215 3 237 0 219 3 237 0 220 3 237 0 221 3 233 1 161 3 233 1 162 4 1 1 244] 
#[0 0 54 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 0 58 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 0 62 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 0 66 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 0 70 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 4 9 0 1 4 13 0 56 4 17 0 64 4 21 1 236] 
#[0 0 74 1 245] 
#[0 0 78 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 45 0 75 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 19 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 4 25 0 207 4 25 0 212 0 77 0 213 4 25 1 7 4 25 1 21 4 25 1 26 4 25 1 30 4 25 1 35 0 101 1 36 4 25 1 55 4 25 1 57 4 25 1 67 4 25 1 72 0 133 1 73 4 25 1 242 0 27 1 244 0 82 1 245] 
#[0 0 86 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 0 90 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 0 94 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 0 98 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 4 29 0 205 4 29 0 208 4 29 0 209 4 29 0 210 4 29 0 216 4 29 0 230 4 29 0 231 4 29 0 232 4 29 0 233 4 29 0 234 4 29 0 235 4 29 0 236 4 29 0 237 4 29 0 240 4 29 0 241 4 29 0 243 4 29 0 244 4 29 0 245 4 29 0 250 4 29 0 252 4 29 0 253 4 29 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 29 1 242 2 5 1 244] 
#[0 0 102 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 4 33 0 75 4 37 0 81] 
#[1 0 145 0 2 0 106 0 3 0 51 0 4 4 41 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 4 45 0 125 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 4 49 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 4 53 0 201 4 53 0 202 4 53 0 204 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 4 73 1 2 4 77 1 3 4 81 1 4 4 85 1 5 4 89 1 6 1 45 1 8 4 53 1 11 1 173 1 12 1 177 1 13 1 181 1 16 4 53 1 17 1 45 1 22 4 53 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 93 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 4 97 0 7 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 4 101 0 125 4 105 0 126 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 4 109 0 152 4 113 0 153 4 117 0 154 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 4 121 0 201 4 121 0 202 1 45 1 8 4 121 1 11 1 173 1 12 1 177 1 13 1 181 1 16 4 121 1 17 1 45 1 22 4 121 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 4 141 0 184 4 141 0 185 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 4 141 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 4 149 0 184 4 149 0 185 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 4 149 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 4 153 0 184 4 153 0 185 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 4 153 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 4 157 0 184 4 157 0 185 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 4 157 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 4 161 0 184 4 161 0 185 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 4 161 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 4 165 0 184 4 165 0 185 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 4 165 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 169 0 2 4 173 0 81 0 237 0 129 4 177 0 146 4 181 1 12 1 177 1 13 1 181 1 16 4 185 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 4 189 0 184 4 189 0 185 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 4 189 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 193 0 4 4 197 0 76 0 237 0 129 4 201 0 146 4 205 1 38 4 209 1 39 4 213 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 4 217 0 184 4 217 0 185 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 4 217 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 4 221 0 2 4 225 0 27 0 237 0 129 4 229 0 146] 
#[1 4 233 0 2 4 237 0 23] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 4 241 0 23 4 129 0 59 0 185 0 64 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 4 245 0 146 4 245 0 148 4 245 0 149 4 245 0 150 4 245 0 151 4 245 0 155 1 33 0 156 4 245 0 164 1 41 0 165 4 245 0 168 4 245 0 169 4 245 0 170 4 245 0 171 4 245 0 172 4 249 0 173 1 69 0 174 1 69 0 175 1 69 0 176 4 253 0 179 5 1 0 183 4 245 1 8 4 245 1 22 4 245 1 27 4 245 1 31 4 245 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 4 245 1 79 4 245 1 80 4 245 1 81 1 245 1 82 4 245 1 84 1 253 1 102 5 5 1 244] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 5 9 0 2 5 13 0 6 5 17 0 23 5 21 0 177 5 25 1 244] 
#[0 0 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 5 29 0 184 5 29 0 185 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 5 29 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 5 33 0 184 5 33 0 185 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 5 33 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 0 145 0 2 0 126 0 3 0 18 0 4 0 126 0 5 0 149 0 6 0 126 0 7 0 126 0 8 0 126 0 9 5 37 0 27 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 126 0 126 0 126 0 127 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 126 0 139 0 126 0 140 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 5 41 0 201 5 41 0 202 1 45 1 8 5 41 1 11 1 173 1 12 1 177 1 13 1 181 1 16 5 41 1 17 1 45 1 22 5 41 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244 0 126 1 245] 
#[0 0 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 76 0 80 0 82 0 86 0 88 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 134 0 86] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 66 0 80 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 108 0 123 0 126 0 127 0 130 0 133 0 134 0 137 0 138 0 139 0 140 0 142 1 243 1 244 1 245] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 66 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 154 0 15 5 45 1 103] 
#[1 0 158 0 2 0 158 0 3 0 158 0 5 0 158 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 162 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 41 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 52 0 158 0 54 0 158 0 55 0 158 0 86 0 158 0 89 0 158 0 99 0 158 0 126 0 158 0 127 0 158 0 137 0 158 0 138 0 158 0 139 0 158 0 140 0 158 1 243 0 158 1 244 0 158 1 245] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 49 0 4] 
#[0 0 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 53 0 138] 
#[1 5 9 0 2 0 190 0 3 0 190 0 4 0 190 0 5 5 57 0 6 0 190 0 7 0 190 0 8 0 190 0 9 0 190 0 10 0 190 0 11 0 190 0 12 0 190 0 13 0 190 0 14 0 190 0 15 0 190 0 16 0 190 0 17 0 190 0 18 0 190 0 19 0 190 0 21 0 190 0 22 5 61 0 23 0 190 0 24 0 190 0 25 0 190 0 26 0 190 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 0 190 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 41 0 190 0 42 0 190 0 43 0 190 0 44 5 65 0 45 0 190 0 46 0 190 0 47 0 190 0 48 0 190 0 49 0 190 0 50 0 190 0 51 0 190 0 52 0 190 0 54 0 190 0 55 0 190 0 86 0 190 0 89 0 190 0 99 0 190 0 126 0 190 0 127 1 1 0 137 0 22 0 138 0 190 0 139 0 190 0 140 5 69 0 164 1 41 0 165 5 73 0 177 5 77 0 180 0 190 1 243 0 55 1 244 0 190 1 245] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 210 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 139 0 140 1 243 1 244 1 245] 
#[1 5 9 0 2 0 214 0 3 0 214 0 4 0 214 0 5 5 81 0 6 0 214 0 7 0 214 0 8 0 214 0 9 0 214 0 10 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 214 0 15 0 214 0 16 0 214 0 17 0 214 0 18 0 214 0 19 0 214 0 21 0 214 0 22 5 85 0 23 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 0 214 0 28 0 214 0 29 0 214 0 30 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 34 0 214 0 35 0 214 0 36 0 214 0 37 0 214 0 38 0 214 0 39 0 214 0 41 0 214 0 42 0 214 0 43 0 214 0 44 5 65 0 45 0 214 0 46 0 214 0 47 0 214 0 48 0 214 0 49 0 214 0 50 0 214 0 51 0 214 0 52 0 214 0 54 0 214 0 55 0 214 0 86 0 214 0 89 0 214 0 99 0 214 0 126 0 214 0 127 1 1 0 137 0 22 0 138 0 214 0 139 0 214 0 140 5 89 0 164 1 41 0 165 5 93 0 177 5 97 0 180 0 214 1 243 0 59 1 244 0 214 1 245] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 0 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 226 0 3 0 226 0 4 0 226 0 5 0 226 0 7 0 226 0 8 0 226 0 9 0 226 0 10 0 226 0 11 0 226 0 12 0 226 0 13 0 226 0 14 0 226 0 15 0 226 0 16 0 226 0 17 0 226 0 18 0 226 0 19 0 226 0 21 0 226 0 22 0 226 0 24 0 226 0 25 0 226 0 26 0 226 0 27 0 226 0 28 0 226 0 29 0 226 0 30 0 226 0 31 0 226 0 32 0 226 0 33 0 226 0 34 0 226 0 35 0 226 0 36 0 226 0 37 0 226 0 38 0 226 0 39 0 226 0 41 0 226 0 42 0 226 0 43 0 226 0 44 5 65 0 45 0 226 0 46 0 226 0 47 0 226 0 48 0 226 0 49 0 226 0 50 0 226 0 51 0 226 0 52 0 226 0 54 0 226 0 55 0 226 0 86 0 226 0 89 0 226 0 99 0 226 0 126 0 226 0 127 0 226 0 139 0 226 0 140 5 101 0 180 0 226 1 243 0 226 1 244 0 226 1 245] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 0 230 0 9 0 230 0 10 5 173 0 11 0 230 0 12 0 230 0 13 5 173 0 14 0 230 0 15 0 230 0 16 5 173 0 17 5 173 0 18 0 230 0 19 0 230 0 21 0 230 0 22 5 173 0 24 0 230 0 25 0 230 0 26 0 230 0 27 0 230 0 28 5 173 0 29 5 173 0 30 5 173 0 31 5 173 0 32 5 173 0 33 5 173 0 34 5 173 0 35 0 230 0 36 5 153 0 37 0 230 0 38 5 157 0 39 0 230 0 41 0 230 0 42 5 173 0 43 0 230 0 44 0 230 0 46 5 173 0 47 0 230 0 48 0 230 0 49 0 230 0 50 5 173 0 51 0 230 0 52 0 230 0 54 0 230 0 55 0 230 0 86 0 230 0 89 0 230 0 126 0 230 0 127 0 230 0 139 0 230 0 140 5 173 0 203 5 173 1 243 5 181 1 244 0 230 1 245] 
#[0 0 234 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[1 0 238 0 3 0 238 0 5 0 238 0 7 0 238 0 8 0 238 0 9 0 238 0 10 0 238 0 12 0 238 0 13 0 238 0 15 0 238 0 16 0 238 0 19 0 238 0 21 0 238 0 22 0 238 0 25 0 238 0 26 0 238 0 27 5 185 0 28 0 238 0 36 0 238 0 38 0 238 0 41 0 238 0 42 0 238 0 44 0 238 0 46 0 238 0 48 0 238 0 49 0 238 0 50 0 238 0 52 0 238 0 54 0 238 0 55 0 238 0 86 0 238 0 89 0 238 0 126 0 238 0 127 0 238 0 139 0 238 0 140 0 238 1 245] 
#[0 0 242 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 0 246 0 9 5 201 0 10 0 246 0 12 0 246 0 13 0 246 0 15 0 246 0 16 0 246 0 19 0 246 0 21 0 246 0 22 0 246 0 25 0 246 0 26 5 201 0 27 0 246 0 36 0 246 0 38 0 246 0 41 0 246 0 42 0 246 0 44 0 246 0 46 5 201 0 48 0 246 0 49 0 246 0 50 0 246 0 52 0 246 0 54 0 246 0 55 0 246 0 86 0 246 0 89 0 246 0 126 0 246 0 127 0 246 0 139 0 246 0 140 5 201 0 188 0 246 1 245] 
#[1 0 250 0 3 0 250 0 5 0 250 0 7 0 250 0 8 0 250 0 9 0 250 0 12 0 250 0 13 0 250 0 15 0 250 0 16 0 250 0 19 0 250 0 21 0 250 0 22 0 250 0 25 0 250 0 26 5 205 0 36 5 209 0 38 0 250 0 41 0 250 0 42 0 250 0 44 0 250 0 46 0 250 0 49 0 250 0 50 0 250 0 52 0 250 0 54 0 250 0 55 0 250 0 86 0 250 0 89 0 250 0 126 0 250 0 127 0 250 0 139 0 250 0 140 0 250 1 245] 
#[1 0 254 0 3 0 254 0 5 0 254 0 7 0 254 0 8 0 254 0 9 0 254 0 12 5 213 0 13 0 254 0 15 5 217 0 16 5 221 0 19 0 254 0 21 0 254 0 22 0 254 0 25 0 254 0 26 0 254 0 41 0 254 0 42 0 254 0 44 0 254 0 46 0 254 0 49 0 254 0 50 0 254 0 52 0 254 0 54 0 254 0 55 0 254 0 86 0 254 0 89 0 254 0 126 0 254 0 127 0 254 0 139 0 254 0 140 0 254 1 245] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 1 2 0 9 5 225 0 12 5 229 0 15 5 233 0 21 5 237 0 22 1 2 0 25 1 2 0 26 1 2 0 41 1 2 0 42 1 2 0 44 1 2 0 46 1 2 0 49 1 2 0 50 1 2 0 52 1 2 0 54 1 2 0 55 5 241 0 86 5 245 0 89 1 2 0 126 1 2 0 127 1 2 0 139 1 2 0 140 1 2 1 245] 
#[1 1 6 0 3 1 6 0 5 1 6 0 7 1 6 0 8 1 6 0 9 5 249 0 25 5 253 0 26 1 6 0 41 1 6 0 42 1 6 0 44 1 6 0 46 1 6 0 49 1 6 0 50 1 6 0 52 6 1 0 54 6 5 0 55 1 6 0 126 1 6 0 127 1 6 0 139 1 6 0 140 1 6 1 245] 
#[1 1 10 0 3 1 10 0 5 1 10 0 7 1 10 0 8 1 10 0 9 6 9 0 41 1 10 0 42 1 10 0 44 1 10 0 46 1 10 0 49 1 10 0 50 1 10 0 52 1 10 0 126 1 10 0 127 1 10 0 139 1 10 0 140 1 10 1 245] 
#[1 1 14 0 3 1 14 0 5 1 14 0 7 1 14 0 8 1 14 0 9 1 14 0 42 1 14 0 44 1 14 0 46 1 14 0 49 1 14 0 50 6 13 0 52 1 14 0 126 1 14 0 127 1 14 0 139 1 14 0 140 1 14 1 245] 
#[1 1 18 0 3 1 18 0 5 1 18 0 7 1 18 0 8 1 18 0 9 1 18 0 42 1 18 0 44 1 22 0 46 6 17 0 49 1 18 0 50 1 18 0 126 1 18 0 127 1 18 0 139 1 18 0 140 1 18 1 245] 
#[1 1 26 0 3 1 26 0 5 1 26 0 7 1 26 0 8 1 26 0 9 6 21 0 42 1 26 0 44 1 26 0 50 1 26 0 126 1 26 0 127 1 26 0 139 1 26 0 140 1 26 1 245] 
#[1 1 30 0 3 1 30 0 5 1 30 0 7 1 30 0 8 1 30 0 9 1 30 0 44 6 25 0 50 1 30 0 126 1 30 0 127 1 30 0 139 1 30 0 140 1 30 1 245] 
#[1 1 34 0 3 1 34 0 5 1 34 0 7 1 34 0 8 1 34 0 9 1 34 0 44 1 38 0 46 1 34 0 126 1 34 0 127 1 34 0 139 1 34 0 140 1 34 1 245] 
#[0 6 29 0 46] 
#[1 1 42 0 3 1 42 0 5 1 42 0 7 1 42 0 8 1 42 0 9 6 33 0 44 1 42 0 126 1 42 0 127 1 42 0 139 1 42 0 140 1 42 1 245] 
#[0 1 46 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 1 50 0 3 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[1 6 37 0 126 0 0 1 245] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 1 58 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 6 41 0 20] 
#[0 1 62 0 20] 
#[0 1 66 0 20] 
#[0 1 70 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 1 78 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 1 90 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 6 45 0 86] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 1 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 1 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 1 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 1 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 1 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 243 1 244 1 245] 
#[1 1 126 0 4 1 126 0 141 1 126 0 143 6 49 1 104] 
#[0 1 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 6 53 0 141] 
#[1 1 134 0 3 1 134 0 5 1 134 0 7 1 134 0 8 1 134 0 9 1 134 0 10 1 134 0 12 1 134 0 13 1 134 0 15 1 134 0 16 1 134 0 19 1 134 0 21 1 134 0 22 1 134 0 25 1 134 0 26 1 134 0 27 1 134 0 28 1 134 0 36 1 134 0 38 1 134 0 41 1 134 0 42 1 134 0 44 1 134 0 46 1 134 0 48 1 134 0 49 1 134 0 50 1 134 0 52 1 134 0 54 1 134 0 55 1 134 0 86 1 134 0 89 1 134 0 126 1 134 0 127 1 134 0 139 1 134 0 140 6 57 1 244 1 134 1 245] 
#[1 6 61 0 2 6 65 0 12 6 69 0 81 6 73 1 108 6 77 1 154] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 81 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 6 85 0 211 2 181 0 212 0 77 0 213 2 181 1 7 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 1 138 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 1 142 0 8 1 142 0 129 6 89 0 242] 
#[1 1 142 0 8 1 142 0 129 6 93 0 242] 
#[0 6 97 0 8] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 6 101 0 205 6 101 0 208 6 101 0 209 6 101 0 210 6 101 0 216 6 101 0 230 6 101 0 231 6 101 0 232 6 101 0 233 6 101 0 234 6 101 0 235 6 101 0 236 6 101 0 237 6 101 0 240 6 101 0 241 6 101 0 243 6 101 0 244 6 101 0 245 6 101 0 250 6 101 0 252 6 101 0 253 6 101 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 6 101 1 242 2 5 1 244] 
#[1 6 105 0 2 6 109 0 60] 
#[0 6 113 0 2] 
#[1 1 142 0 2 1 142 0 4 1 142 0 6 1 142 0 8 1 142 0 36 1 142 0 37 1 142 0 38 1 142 0 39 1 142 0 40 1 142 0 53 1 142 0 59 1 142 0 60 1 142 0 64 1 142 0 71 1 142 0 77 1 142 0 81 1 142 0 85 1 142 0 96 1 142 0 97 1 142 0 110 1 142 0 113 1 142 0 115 1 142 0 118 1 142 0 121 1 142 0 124 1 142 0 129 1 142 0 131 1 142 0 133 1 142 0 134 1 142 0 135 1 142 0 137 1 142 0 138 1 142 0 141 6 117 0 242 1 142 1 244] 
#[0 6 121 0 2] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 6 125 0 201 6 125 0 202 6 125 0 204 1 45 1 8 6 125 1 11 1 173 1 12 1 177 1 13 1 181 1 16 6 125 1 17 1 45 1 22 6 125 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 2 9 0 4 6 129 0 210] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 6 133 0 146 6 137 0 217 6 141 0 218 6 145 0 219 6 145 0 220 6 145 0 221 6 149 1 244] 
#[0 6 153 0 2] 
#[0 6 157 0 2] 
#[1 0 130 0 2 0 130 0 6 0 130 0 8 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 34 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 39 0 130 0 41 0 130 0 42 0 130 0 43 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 49 0 130 0 50 0 130 0 51 0 130 0 52 0 130 0 54 0 130 0 55 0 130 0 86 0 130 0 89 0 130 0 126 6 161 0 127 0 130 0 137 0 130 0 138 0 130 1 243 0 130 1 244] 
#[1 6 165 0 8 6 37 0 126] 
#[0 0 0 1 245] 
#[0 1 146 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 150 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 154 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 158 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 162 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 166 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 170 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 174 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 178 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 182 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 186 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 190 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 194 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 198 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 202 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 206 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 210 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 214 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 218 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 222 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 226 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 230 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 6 169 0 207 6 169 0 212 0 77 0 213 6 169 1 7 6 169 1 21 6 169 1 26 6 169 1 30 6 169 1 35 0 101 1 36 6 169 1 72 0 133 1 73 6 169 1 242 0 39 1 244 1 234 1 245] 
#[0 0 0 1 245] 
#[0 1 238 1 245] 
#[0 1 242 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 71 0 72 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 4 37 0 81] 
#[0 0 0 1 245] 
#[0 0 0 1 245] 
#[1 0 6 0 1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 6 0 56 0 177 0 59 0 181 0 60 2 17 0 61 0 63 0 64 6 173 0 65 2 21 0 67 2 25 0 68 6 177 0 69 0 189 0 71 2 29 0 72 6 181 0 74 0 67 0 75 1 221 0 77 2 33 0 79 6 189 0 81 2 37 0 84 6 193 0 85 6 197 0 90 0 77 0 92 6 201 0 94 6 205 0 95 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 6 209 0 117 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 7 5 0 205 7 5 0 208 7 5 0 209 7 5 0 210 7 5 0 212 0 77 0 213 7 5 0 216 7 5 0 230 7 5 0 231 7 5 0 232 7 5 0 233 7 5 0 234 7 5 0 235 7 5 0 236 7 5 0 237 7 5 0 240 7 5 0 241 7 5 0 243 7 5 0 244 7 5 0 245 7 5 0 250 7 5 0 252 7 5 0 253 7 5 1 1 7 5 1 7 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 7 5 1 21 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 7 5 1 35 6 233 1 36 1 45 1 37 7 5 1 57 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 7 5 1 153 2 1 1 158 7 5 1 163 7 5 1 180 7 5 1 185 7 5 1 191 7 5 1 195 7 5 1 201 7 5 1 212 7 5 1 213 7 5 1 214 7 5 1 215 7 5 1 216 7 5 1 217 7 5 1 218 7 5 1 219 7 5 1 235 7 5 1 242 7 49 1 244 1 246 1 245] 
#[1 2 201 0 2 0 106 0 3 7 53 0 4 7 57 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 4 45 0 125 0 237 0 129 2 249 0 133 2 253 0 134 7 61 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 7 65 1 3 4 81 1 4 4 85 1 5 4 89 1 6 2 249 1 77 2 253 1 78 3 1 1 108 7 69 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 7 69 1 137 7 69 1 138 3 21 1 139 3 21 1 141 7 73 1 244] 
#[1 7 77 0 2 7 81 0 5 7 85 0 6 2 213 0 12 7 89 0 96 7 93 0 104 7 97 0 130 7 117 0 133 7 121 0 134 7 105 0 147 7 105 0 159 7 105 0 160 7 105 0 161 7 117 1 77 7 121 1 78 7 125 1 108 7 129 1 128 7 133 1 129 7 137 1 130 7 137 1 142 7 137 1 144 7 137 1 150 7 137 1 151 7 137 1 152] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 7 161 0 7 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 7 165 0 126 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 7 177 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 7 173 1 133 7 177 1 134 3 9 1 135 3 13 1 136 7 177 1 137 7 177 1 138 3 21 1 139 3 21 1 141] 
#[1 0 237 0 129 7 181 0 146 7 185 1 109 7 189 1 110] 
#[1 7 193 0 2 2 205 0 4 2 209 0 6 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 7 197 1 119 7 197 1 120 7 197 1 121 7 197 1 122 7 197 1 123 7 197 1 124 3 45 1 125 3 49 1 126 7 197 1 127 7 197 1 131 7 197 1 132 7 197 1 139 7 197 1 141] 
#[1 7 193 0 2 2 205 0 4 2 209 0 6 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 7 201 1 119 7 201 1 120 7 201 1 121 7 201 1 122 7 201 1 123 7 201 1 124 3 45 1 125 3 49 1 126 7 201 1 127 7 201 1 131 7 201 1 132 7 201 1 139 7 201 1 141] 
#[1 7 205 0 2 2 213 0 12 7 209 1 108] 
#[1 7 193 0 2 2 205 0 4 7 213 0 6 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 7 217 1 119 7 217 1 120 7 217 1 121 7 217 1 122 7 217 1 123 7 217 1 124 3 45 1 125 3 49 1 126 7 217 1 127 7 217 1 131 7 217 1 132 7 217 1 139 7 217 1 141] 
#[0 1 250 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[1 0 237 0 129 7 221 0 146 7 225 1 140] 
#[0 1 254 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[1 2 2 0 3 2 2 0 4 2 2 0 5 2 2 0 6 2 2 0 7 2 2 0 8 2 2 0 9 2 2 0 10 2 2 0 12 2 2 0 13 2 2 0 15 2 2 0 16 2 2 0 19 2 2 0 20 2 2 0 21 2 2 0 22 2 6 0 23 2 2 0 24 2 2 0 25 2 2 0 26 2 2 0 27 2 2 0 28 2 2 0 36 2 2 0 38 2 2 0 41 2 2 0 42 2 2 0 44 2 2 0 46 2 2 0 48 2 2 0 49 2 2 0 50 2 2 0 52 2 2 0 54 2 2 0 55 2 2 0 66 2 2 0 86 2 2 0 88 2 2 0 89 2 2 0 100 2 2 0 101 2 2 0 102 2 2 0 103 2 2 0 104 2 2 0 108 2 2 0 126 2 2 0 127 2 2 0 130 2 2 0 133 2 2 0 134 2 2 0 139 2 2 0 140 2 2 1 244 2 2 1 245] 
#[0 2 10 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 14 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 7 229 0 2] 
#[0 0 0 1 245] 
#[1 2 18 0 3 2 18 0 4 2 18 0 5 2 18 0 6 2 18 0 7 2 18 0 8 2 18 0 9 2 18 0 10 2 18 0 12 2 18 0 13 2 18 0 15 2 18 0 16 2 18 0 19 2 18 0 20 2 18 0 21 2 18 0 22 2 18 0 24 2 18 0 25 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 36 2 18 0 38 2 18 0 41 2 18 0 42 2 18 0 44 2 18 0 46 2 18 0 48 0 71 0 49 2 18 0 50 2 18 0 52 2 18 0 54 2 18 0 55 2 18 0 66 2 18 0 86 2 18 0 89 2 18 0 100 2 18 0 101 2 18 0 102 2 18 0 103 2 18 0 104 2 18 0 108 2 18 0 126 2 18 0 127 2 18 0 130 2 18 0 133 2 18 0 134 2 18 0 139 2 18 0 140 2 18 1 244 2 18 1 245] 
#[1 2 22 0 3 2 22 0 4 2 22 0 5 2 22 0 6 2 22 0 7 2 22 0 8 2 22 0 9 2 22 0 10 2 22 0 12 2 22 0 13 2 22 0 15 2 22 0 16 2 22 0 19 2 22 0 20 2 22 0 21 2 22 0 22 2 22 0 24 2 22 0 25 2 22 0 26 2 22 0 27 2 22 0 28 2 22 0 36 2 22 0 38 0 75 0 41 2 22 0 42 2 22 0 44 2 22 0 46 2 22 0 48 2 22 0 49 2 22 0 50 2 22 0 52 2 22 0 54 2 22 0 55 2 22 0 66 2 22 0 86 2 22 0 89 2 22 0 100 2 22 0 101 2 22 0 102 2 22 0 103 2 22 0 104 2 22 0 108 2 22 0 126 2 22 0 127 2 22 0 130 2 22 0 133 2 22 0 134 2 22 0 139 2 22 0 140 2 22 1 244 2 22 1 245] 
#[0 2 26 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[1 2 30 0 3 2 30 0 4 2 30 0 5 0 79 0 6 2 30 0 7 2 30 0 8 2 30 0 9 2 30 0 10 2 30 0 12 2 30 0 13 2 30 0 15 2 30 0 16 2 30 0 19 2 30 0 20 2 30 0 21 2 30 0 22 2 30 0 24 2 30 0 25 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 36 2 30 0 38 2 30 0 41 2 30 0 42 2 30 0 44 2 30 0 46 2 30 0 48 2 30 0 49 2 30 0 50 2 30 0 52 2 30 0 54 2 30 0 55 2 30 0 66 2 30 0 86 2 30 0 89 2 30 0 100 2 30 0 101 2 30 0 102 2 30 0 103 2 30 0 104 2 30 0 108 2 30 0 126 2 30 0 127 2 30 0 130 2 30 0 133 2 30 0 134 2 30 0 139 2 30 0 140 7 241 0 242 2 30 1 244 2 30 1 245] 
#[0 2 34 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 38 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 42 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 46 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 50 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[1 1 142 0 3 1 142 0 4 1 142 0 5 1 142 0 6 1 142 0 7 1 142 0 8 1 142 0 9 1 142 0 10 1 142 0 12 1 142 0 13 1 142 0 15 1 142 0 16 1 142 0 19 1 142 0 20 1 142 0 21 1 142 0 22 1 142 0 24 1 142 0 25 1 142 0 26 1 142 0 27 1 142 0 28 1 142 0 36 1 142 0 38 1 142 0 41 1 142 0 42 1 142 0 44 1 142 0 46 1 142 0 48 1 142 0 49 1 142 0 50 1 142 0 52 1 142 0 54 1 142 0 55 1 142 0 66 1 142 0 86 1 142 0 88 1 142 0 89 1 142 0 100 1 142 0 101 1 142 0 102 1 142 0 103 1 142 0 104 1 142 0 108 1 142 0 126 1 142 0 127 1 142 0 130 1 142 0 133 1 142 0 134 1 142 0 139 1 142 0 140 7 245 0 242 1 142 1 244 1 142 1 245] 
#[0 7 249 0 23] 
#[0 2 54 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 58 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 62 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 66 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 70 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 74 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 78 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 82 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 86 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 2 90 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 7 253 0 4] 
#[1 4 9 0 1 8 1 0 6 8 5 0 27 8 9 0 59 8 13 0 82 8 17 0 107 8 21 0 108 7 97 0 130 8 25 0 131 7 117 0 133 7 121 0 134 8 29 0 147 8 29 0 159 8 29 0 160 8 29 0 161 8 33 1 19 8 33 1 23 8 33 1 28 8 33 1 32 8 49 1 43 8 53 1 44 8 57 1 46 7 117 1 77 7 121 1 78 8 33 1 155 8 33 1 156 4 21 1 236 8 69 1 244] 
#[0 0 0 1 245] 
#[0 2 94 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 0 6 0 1 0 6 0 6 0 6 0 59 0 6 0 66 0 6 0 100 0 6 0 101 0 6 0 102 0 6 0 103 0 6 0 104 0 6 0 108 0 6 0 130 0 6 0 133 0 6 0 134 8 73 1 36 8 77 1 170 8 81 1 172 8 81 1 173 8 81 1 177 8 81 1 178 8 97 1 179 0 6 1 244] 
#[1 8 101 0 2 8 105 0 27 0 237 0 129 8 109 0 146 8 113 1 244] 
#[1 8 117 0 5 8 125 0 130 8 125 0 133 8 125 1 56 8 129 1 70 8 133 1 71 8 125 1 77] 
#[1 8 141 0 57 2 98 0 80] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 8 145 0 201 8 145 0 202 1 45 1 8 8 145 1 11 1 173 1 12 1 177 1 13 1 181 1 16 8 145 1 17 1 45 1 22 8 145 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 2 102 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 2 106 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 2 110 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 2 114 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 2 118 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 8 149 0 80 8 153 1 62] 
#[1 8 157 0 8 2 122 0 80] 
#[1 8 161 0 65 6 181 0 74 4 37 0 81 6 197 0 90 6 209 0 117 8 165 1 153 8 169 1 163 8 173 1 180] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 8 181 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 8 185 0 2 0 237 0 129 8 189 0 146] 
#[0 8 193 0 2] 
#[1 8 197 0 5 0 237 0 129 8 201 0 130 8 201 0 133 8 213 0 146 8 201 1 56 8 205 1 63 8 209 1 64 8 213 1 66 8 201 1 77 8 217 1 244] 
#[0 8 221 0 57] 
#[0 2 126 0 5 0 80 0 126] 
#[1 8 149 0 80 8 225 1 62] 
#[1 2 130 0 80 8 229 0 126] 
#[0 2 134 0 80] 
#[0 2 138 0 80] 
#[1 8 233 0 8 8 237 0 58 8 241 0 123 8 249 1 237 8 249 1 240 8 249 1 241] 
#[0 2 142 0 80 0 126] 
#[0 2 146 0 8 0 58 0 123] 
#[0 9 1 0 117] 
#[1 9 5 0 5 8 1 0 6 9 9 0 125 0 237 0 129 7 97 0 130 7 117 0 133 7 121 0 134 8 177 0 146 9 13 0 147 9 13 0 159 9 13 0 160 9 13 0 161 9 17 0 222 9 21 0 223 9 25 0 226 9 25 0 228 7 117 1 77 7 121 1 78 9 33 1 244] 
#[1 3 217 0 4 3 221 0 6 9 37 0 7 4 45 0 125 4 105 0 126 0 237 0 129 8 177 0 146 9 41 0 153 4 57 0 219 4 57 0 220 4 57 0 221 9 45 0 224 9 49 0 225 9 53 0 227 9 53 0 228 9 57 0 229 7 73 1 244] 
#[1 2 150 0 8 9 61 0 24 2 150 0 126 9 65 0 163] 
#[1 9 69 0 8 9 73 0 126] 
#[0 2 154 0 8 0 126] 
#[1 9 61 0 24 9 77 0 163] 
#[0 2 158 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[0 2 162 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[0 2 166 0 8 0 126] 
#[0 2 170 0 8 0 126] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 9 81 0 146 9 85 0 219 9 85 0 220 9 85 0 221] 
#[1 9 89 0 8 9 73 0 126] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 4 129 0 59 0 185 0 64 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 9 93 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 5 1 0 173 9 97 0 174 9 97 0 175 9 97 0 176 1 81 0 179 5 1 0 183 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 5 5 1 244] 
#[0 9 101 0 64] 
#[1 4 193 0 4 4 197 0 76 0 237 0 129 9 105 0 146 9 109 1 38 4 209 1 39 9 113 1 244] 
#[0 2 174 0 1 0 3 0 4 0 5 0 6 0 7 0 24 0 27 0 44 0 53 0 56 0 59 0 64 0 66 0 75 0 82 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 1 244] 
#[0 2 178 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 2 182 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 9 117 0 117] 
#[1 9 121 0 2 2 213 0 12 0 237 0 129 9 125 0 146 9 129 1 108 9 133 1 144 9 137 1 154] 
#[1 0 145 0 2 0 51 0 4 4 41 0 6 9 141 0 7 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 9 145 0 125 4 105 0 126 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 4 49 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 4 109 0 152 9 149 0 153 4 117 0 154 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 4 121 0 201 4 121 0 202 4 57 0 219 4 57 0 220 4 57 0 221 9 45 0 224 9 49 0 225 9 53 0 227 9 53 0 228 9 57 0 229 1 45 1 8 4 121 1 11 1 173 1 12 1 177 1 13 1 181 1 16 4 121 1 17 1 45 1 22 4 121 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 93 1 244] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 9 153 0 146 9 157 0 219 9 157 0 220 9 157 0 221] 
#[1 0 158 0 2 0 83 0 3 0 158 0 6 0 83 0 7 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 162 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 87 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 41 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 52 0 158 0 54 0 158 0 55 0 158 0 86 0 158 0 89 0 83 0 126 0 158 0 137 0 158 0 138 9 161 0 163 0 158 1 243 0 158 1 244] 
#[1 9 165 0 3 6 37 0 126] 
#[1 2 190 0 3 2 190 0 5 2 190 0 7 9 61 0 24 2 190 0 126 9 169 0 163] 
#[0 2 194 0 3 0 126] 
#[0 2 198 0 3 0 5 0 7 0 126] 
#[0 2 202 0 3] 
#[0 9 173 0 3] 
#[0 2 206 0 3] 
#[1 2 210 0 3 9 177 0 126] 
#[0 2 214 0 3] 
#[0 2 218 0 3 0 126] 
#[1 0 6 0 1 6 61 0 2 0 6 0 3 0 6 0 4 0 6 0 6 0 6 0 7 6 65 0 12 0 6 0 24 0 6 0 44 0 6 0 53 6 69 0 81 0 91 0 100 0 95 0 101 0 99 0 102 0 103 0 103 0 6 0 104 0 6 0 113 0 6 0 126 0 6 0 127 0 107 0 129 9 197 0 146 9 201 1 36 6 73 1 108 9 205 1 148 6 77 1 154] 
#[0 2 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 9 209 0 201 9 209 0 202 1 45 1 8 9 209 1 11 1 173 1 12 1 177 1 13 1 181 1 16 9 209 1 17 1 45 1 22 9 209 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 2 226 0 2 0 4 0 6 0 7 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 125 0 126 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[1 9 213 0 7 4 105 0 126 9 217 0 153] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 9 221 0 7 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 4 101 0 125 9 225 0 126 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 9 229 0 154 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 9 233 0 201 9 233 0 202 1 45 1 8 9 233 1 11 1 173 1 12 1 177 1 13 1 181 1 16 9 233 1 17 1 45 1 22 9 233 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 2 230 0 7 0 126] 
#[0 2 234 0 7 0 126] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 4 53 0 201 4 53 0 202 4 53 0 204 1 45 1 8 4 53 1 11 1 173 1 12 1 177 1 13 1 181 1 16 4 53 1 17 1 45 1 22 4 53 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 4 173 0 81] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 0 230 0 9 0 230 0 10 0 230 0 12 0 230 0 13 0 230 0 15 0 230 0 16 0 230 0 19 0 230 0 21 0 230 0 22 0 230 0 25 0 230 0 26 0 230 0 27 0 230 0 28 0 230 0 36 5 153 0 37 0 230 0 38 5 157 0 39 0 230 0 41 0 230 0 42 0 230 0 44 0 230 0 46 0 230 0 48 0 230 0 49 0 230 0 50 0 230 0 52 0 230 0 54 0 230 0 55 0 230 0 86 0 230 0 89 0 230 0 126 0 230 0 127 0 230 0 139 0 230 0 140 5 181 1 244 0 230 1 245] 
#[0 2 238 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[1 9 237 0 12 6 69 0 81] 
#[0 2 242 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[0 2 246 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[0 2 250 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[0 2 254 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[0 3 2 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 4 73 1 2 4 77 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 9 241 0 2 9 245 0 27 0 237 0 129 9 249 0 146 9 253 1 244] 
#[0 0 162 0 20] 
#[0 10 1 0 20] 
#[1 6 61 0 2 2 213 0 12 6 73 1 108 6 77 1 154] 
#[0 3 6 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[1 0 6 0 1 10 5 0 5 0 6 0 6 3 89 0 8 0 6 0 27 0 6 0 59 0 6 0 82 0 6 0 107 0 43 0 108 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 3 97 1 36 10 9 1 40 10 13 1 41 10 17 1 42 10 17 1 47 0 47 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 4 129 0 59 0 185 0 64 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 10 21 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 10 21 0 183 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 5 5 1 244] 
#[1 4 193 0 4 4 197 0 76 10 25 1 38 4 209 1 39 4 213 1 244] 
#[0 3 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 10 29 0 4] 
#[1 10 33 0 76 10 37 0 88 10 41 1 167 10 45 1 169] 
#[0 3 14 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 10 49 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 10 53 0 2 0 237 0 129 10 57 0 146] 
#[0 10 61 0 2] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 10 65 0 201 10 65 0 202 1 45 1 8 10 65 1 11 1 173 1 12 1 177 1 13 1 181 1 16 10 65 1 17 1 45 1 22 10 65 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 10 69 0 93] 
#[0 10 73 0 112] 
#[1 5 9 0 2 0 190 0 3 0 190 0 4 0 190 0 5 5 57 0 6 0 190 0 7 0 190 0 8 0 190 0 9 0 190 0 10 0 190 0 11 0 190 0 12 0 190 0 13 0 190 0 14 0 190 0 15 0 190 0 16 0 190 0 17 0 190 0 18 0 190 0 19 0 190 0 21 0 190 0 22 5 61 0 23 0 190 0 24 0 190 0 25 0 190 0 26 0 190 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 0 190 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 41 0 190 0 42 0 190 0 43 0 190 0 44 5 65 0 45 0 190 0 46 0 190 0 47 0 190 0 48 0 190 0 49 0 190 0 50 0 190 0 51 0 190 0 52 0 190 0 54 0 190 0 55 0 190 0 86 0 190 0 89 0 190 0 99 0 190 0 126 0 190 0 127 1 1 0 137 0 22 0 138 0 190 0 139 0 190 0 140 5 69 0 164 1 41 0 165 10 77 0 177 5 77 0 180 0 190 1 243 0 55 1 244 0 190 1 245] 
#[1 3 18 0 3 3 18 0 4 3 18 0 5 3 18 0 7 3 18 0 8 3 18 0 9 3 18 0 10 3 18 0 11 3 18 0 12 3 18 0 13 3 18 0 14 3 18 0 15 3 18 0 16 3 18 0 17 3 18 0 18 3 18 0 19 3 18 0 21 3 18 0 22 3 18 0 24 3 18 0 25 3 18 0 26 3 18 0 27 3 18 0 28 3 18 0 29 3 18 0 30 3 18 0 31 3 18 0 32 3 18 0 33 3 18 0 34 3 18 0 35 3 18 0 36 3 18 0 37 3 18 0 38 3 18 0 39 3 18 0 41 3 18 0 42 3 18 0 43 3 18 0 44 3 18 0 46 3 18 0 47 3 18 0 48 3 18 0 49 3 18 0 50 3 18 0 51 3 18 0 52 3 18 0 54 3 18 0 55 3 18 0 86 3 18 0 89 3 18 0 99 3 18 0 126 3 18 0 127 3 18 0 139 3 18 0 140 3 18 1 243 0 111 1 244 3 18 1 245] 
#[1 5 9 0 2 5 65 0 45 10 81 0 177 5 101 0 180 0 115 1 244] 
#[0 10 85 1 244] 
#[0 6 69 0 81] 
#[1 0 145 0 2 10 89 0 3 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 10 93 0 125 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 10 97 0 178 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 10 101 0 201 10 101 0 202 1 45 1 8 10 101 1 11 1 173 1 12 1 177 1 13 1 181 1 16 10 101 1 17 1 45 1 22 10 101 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 10 105 0 201 10 105 0 202 10 105 0 204 1 45 1 8 10 105 1 11 1 173 1 12 1 177 1 13 1 181 1 16 10 105 1 17 1 45 1 22 10 105 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 10 109 0 130] 
#[0 3 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 10 113 0 12 10 117 1 112] 
#[0 3 26 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[0 3 30 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 10 121 0 201 10 121 0 202 1 45 1 8 10 121 1 11 1 173 1 12 1 177 1 13 1 181 1 16 10 121 1 17 1 45 1 22 10 121 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 3 34 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 10 125 0 15] 
#[1 10 129 0 5 8 1 0 6 8 5 0 27 8 9 0 59 8 13 0 82 8 17 0 107 10 133 0 125 0 237 0 129 7 97 0 130 10 137 0 131 7 117 0 133 7 121 0 134 10 141 0 146 10 153 0 147 10 145 0 157 10 149 0 158 10 153 0 159 10 153 0 160 10 153 0 161 10 149 0 162 10 149 1 19 10 149 1 23 10 149 1 28 10 149 1 32 10 165 1 46 7 117 1 77 7 121 1 78 10 149 1 155 10 149 1 156 8 69 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 10 169 0 201 10 169 0 202 10 169 0 204 1 45 1 8 10 169 1 11 1 173 1 12 1 177 1 13 1 181 1 16 10 169 1 17 1 45 1 22 10 169 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 10 173 0 201 10 173 0 202 10 173 0 204 1 45 1 8 10 173 1 11 1 173 1 12 1 177 1 13 1 181 1 16 10 173 1 17 1 45 1 22 10 173 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 10 177 0 130 10 181 0 131] 
#[1 5 9 0 2 10 185 0 6 10 189 0 130 10 193 0 131 1 1 0 137 0 22 0 138 10 197 0 164 1 41 0 165 10 201 0 177 10 205 0 182 5 25 1 244] 
#[0 3 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 3 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 119 0 2 3 46 0 3 3 46 0 4 3 46 0 5 10 209 0 6 3 46 0 7 3 46 0 8 3 46 0 9 3 46 0 10 3 46 0 11 3 46 0 12 3 46 0 13 3 46 0 14 3 46 0 15 3 46 0 16 3 46 0 17 3 46 0 18 3 46 0 19 3 46 0 21 3 46 0 22 10 213 0 23 3 46 0 24 3 46 0 25 3 46 0 26 3 46 0 27 3 46 0 28 3 46 0 29 3 46 0 30 3 46 0 31 3 46 0 32 3 46 0 33 3 46 0 34 3 46 0 35 3 46 0 36 3 46 0 37 3 46 0 38 3 46 0 39 3 46 0 41 3 46 0 42 3 46 0 43 3 46 0 44 3 46 0 45 3 46 0 46 3 46 0 47 3 46 0 48 3 46 0 49 3 46 0 50 3 46 0 51 3 46 0 52 3 46 0 54 3 46 0 55 3 46 0 86 3 46 0 89 3 46 0 99 3 46 0 126 3 46 0 127 1 1 0 137 0 22 0 138 3 46 0 139 3 46 0 140 10 217 0 164 1 41 0 165 10 221 0 177 10 225 0 181 3 46 1 243 0 123 1 244 3 46 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 10 229 0 201 10 229 0 202 10 229 0 204 1 45 1 8 10 229 1 11 1 173 1 12 1 177 1 13 1 181 1 16 10 229 1 17 1 45 1 22 10 229 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 10 233 0 130 10 237 0 131] 
#[0 3 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 3 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 127 0 2 3 58 0 3 3 58 0 4 3 58 0 5 10 209 0 6 3 58 0 7 3 58 0 8 3 58 0 9 3 58 0 10 3 58 0 11 3 58 0 12 3 58 0 13 3 58 0 14 3 58 0 15 3 58 0 16 3 58 0 17 3 58 0 18 3 58 0 19 3 58 0 21 3 58 0 22 10 213 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 29 3 58 0 30 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 34 3 58 0 35 3 58 0 36 3 58 0 37 3 58 0 38 3 58 0 39 3 58 0 41 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 46 3 58 0 47 3 58 0 48 3 58 0 49 3 58 0 50 3 58 0 51 3 58 0 52 3 58 0 54 3 58 0 55 3 58 0 86 3 58 0 89 3 58 0 99 3 58 0 126 3 58 0 127 1 1 0 137 0 22 0 138 3 58 0 139 3 58 0 140 10 217 0 164 1 41 0 165 10 221 0 177 10 225 0 181 3 58 1 243 0 131 1 244 3 58 1 245] 
#[1 0 135 0 2 3 62 0 3 3 62 0 4 3 62 0 5 10 209 0 6 3 62 0 7 3 62 0 8 3 62 0 9 3 62 0 10 3 62 0 11 3 62 0 12 3 62 0 13 3 62 0 14 3 62 0 15 3 62 0 16 3 62 0 17 3 62 0 18 3 62 0 19 3 62 0 21 3 62 0 22 10 213 0 23 3 62 0 24 3 62 0 25 3 62 0 26 3 62 0 27 3 62 0 28 3 62 0 29 3 62 0 30 3 62 0 31 3 62 0 32 3 62 0 33 3 62 0 34 3 62 0 35 3 62 0 36 3 62 0 37 3 62 0 38 3 62 0 39 3 62 0 41 3 62 0 42 3 62 0 43 3 62 0 44 3 62 0 45 3 62 0 46 3 62 0 47 3 62 0 48 3 62 0 49 3 62 0 50 3 62 0 51 3 62 0 52 3 62 0 54 3 62 0 55 3 62 0 86 3 62 0 89 3 62 0 99 3 62 0 126 3 62 0 127 1 1 0 137 0 22 0 138 3 62 0 139 3 62 0 140 10 217 0 164 1 41 0 165 10 221 0 177 10 225 0 181 3 62 1 243 0 139 1 244 3 62 1 245] 
#[0 3 66 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 70 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 74 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 78 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 82 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 86 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 90 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 94 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 98 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 102 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 106 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 110 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 114 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[0 3 118 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[0 3 122 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 126 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 130 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 10 241 0 201 10 241 0 202 1 45 1 8 10 241 1 11 1 173 1 12 1 177 1 13 1 181 1 16 10 241 1 17 1 45 1 22 10 241 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 3 134 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[1 10 245 0 53 10 249 0 57] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 10 253 0 186 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[0 3 138 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 129 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 142 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 129 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 3 146 0 2 0 4 0 6 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 129 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 11 1 0 186 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 11 5 0 186 11 5 0 187 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 11 9 0 186 11 9 0 187 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 11 13 0 189 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 11 17 0 189 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 11 21 0 189 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 11 25 0 190 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 11 29 0 190 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 11 33 0 190 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 11 37 0 190 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 11 41 0 190 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 11 45 0 190 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 11 49 0 191 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 11 53 0 191 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 11 57 0 191 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 11 61 0 191 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 11 65 0 192 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 11 69 0 193 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 11 73 0 194 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 11 77 0 195 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 11 81 0 195 11 85 0 196 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 11 89 0 195 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 11 93 0 201 11 93 0 202 1 45 1 8 11 93 1 11 1 173 1 12 1 177 1 13 1 181 1 16 11 93 1 17 1 45 1 22 11 93 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 11 97 0 201 11 97 0 202 1 45 1 8 11 97 1 11 1 173 1 12 1 177 1 13 1 181 1 16 11 97 1 17 1 45 1 22 11 97 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 143 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 11 113 0 201 11 113 0 202 1 45 1 8 11 113 1 11 1 173 1 12 1 177 1 13 11 109 1 14 11 113 1 15 1 181 1 16 11 113 1 17 1 45 1 22 11 113 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 11 117 0 190 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[1 3 150 0 4 3 150 0 141 3 150 0 143 11 121 1 98 11 125 1 99] 
#[1 0 154 0 15 11 129 0 142 11 133 1 85 11 133 1 86 11 133 1 87 11 145 1 88 11 149 1 89 11 153 1 103] 
#[0 11 157 0 57] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 11 161 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 11 165 0 146 2 249 1 77 2 253 1 78 3 1 1 108 7 185 1 109 7 189 1 110 11 169 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 11 169 1 137 11 169 1 138 3 21 1 139 3 21 1 141] 
#[1 6 61 0 2 2 213 0 12 0 237 0 129 11 173 0 146 6 73 1 108 11 177 1 154] 
#[0 11 181 0 2] 
#[0 3 154 0 20] 
#[0 3 158 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 11 185 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 6 169 0 207 6 169 0 212 0 77 0 213 6 169 1 7 6 169 1 21 6 169 1 26 6 169 1 30 6 169 1 35 0 101 1 36 6 169 1 72 0 133 1 73 6 169 1 242 0 39 1 244] 
#[1 11 189 0 8 0 237 0 129 11 193 0 146] 
#[1 11 197 0 8 0 237 0 129 11 201 0 146] 
#[0 3 162 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 11 205 0 122] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 11 209 0 9 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 11 229 0 65 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 11 229 0 92 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 11 213 0 120 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 11 217 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 11 217 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 11 221 0 201 11 221 0 202 11 221 0 204 11 225 0 212 11 229 0 213 11 233 0 238 1 45 1 8 11 221 1 11 1 173 1 12 1 177 1 13 1 181 1 16 11 221 1 17 1 45 1 22 11 221 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 11 237 0 2] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 11 241 0 201 11 241 0 202 11 241 0 204 1 45 1 8 11 241 1 11 1 173 1 12 1 177 1 13 1 181 1 16 11 241 1 17 1 45 1 22 11 241 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 11 245 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 11 249 0 201 11 249 0 202 11 249 0 204 1 45 1 8 11 249 1 11 1 173 1 12 1 177 1 13 1 181 1 16 11 249 1 17 1 45 1 22 11 249 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 11 253 0 201 11 253 0 202 11 253 0 204 1 45 1 8 11 253 1 11 1 173 1 12 1 177 1 13 1 181 1 16 11 253 1 17 1 45 1 22 11 253 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 12 1 0 8 6 37 0 126] 
#[1 12 5 0 63 12 9 0 78 12 13 0 254 12 17 0 255] 
#[1 3 166 0 8 3 166 0 9 9 61 0 24 3 166 0 126 12 21 0 163] 
#[1 12 25 0 8 12 29 0 126] 
#[0 3 170 0 8 0 9 0 126] 
#[1 9 61 0 24 12 33 0 163] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 12 37 0 146 12 41 0 219 12 41 0 220 12 41 0 221 12 45 1 159 12 49 1 160] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 12 53 0 201 12 53 0 202 12 53 0 204 1 45 1 8 12 53 1 11 1 173 1 12 1 177 1 13 1 181 1 16 12 53 1 17 1 45 1 22 12 53 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 12 57 0 201 12 57 0 202 12 57 0 204 1 45 1 8 12 57 1 11 1 173 1 12 1 177 1 13 1 181 1 16 12 57 1 17 1 45 1 22 12 57 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 12 65 0 205 12 65 0 208 12 65 0 209 12 65 0 210 12 65 0 216 12 65 0 230 12 65 0 231 12 65 0 232 12 65 0 233 12 65 0 234 12 65 0 235 12 65 0 236 12 65 0 237 12 65 0 240 12 65 0 241 12 65 0 243 12 65 0 244 12 65 0 245 12 65 0 250 12 65 0 251 12 65 0 252 12 65 0 253 12 65 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 12 65 1 242 2 5 1 244] 
#[0 3 174 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 178 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 70 0 71 0 72 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 38 0 4 0 38 0 6 12 69 0 74 0 38 0 129 0 38 1 244] 
#[1 12 73 0 64 12 77 0 65 6 181 0 74 12 81 0 81 12 85 0 83 12 89 0 92 12 93 0 94 12 97 0 95 12 101 0 120 12 121 1 180 12 109 1 220 12 113 1 223 12 117 1 224 12 121 1 230 12 125 1 231] 
#[1 0 237 0 129 12 129 0 146] 
#[1 3 117 0 4 12 133 0 24 12 137 0 27 12 141 1 69 12 145 1 244] 
#[1 12 149 0 2 12 153 0 27 0 237 0 129 12 157 0 146] 
#[1 4 233 0 2 3 173 0 4 4 237 0 23 3 177 0 27 0 237 0 129 3 201 0 133 12 161 0 146 3 185 1 58 3 189 1 59 3 193 1 60 3 197 1 61 3 201 1 65 3 189 1 66 3 201 1 77 3 213 1 244] 
#[1 0 237 0 129 12 165 0 146] 
#[0 12 169 0 130] 
#[1 0 237 0 129 12 173 0 146 12 177 1 186] 
#[1 0 237 0 129 12 181 0 146] 
#[0 3 182 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 186 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 190 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 194 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 198 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 4 9 0 1 4 13 0 56 4 17 0 64 12 185 0 75 4 21 1 236] 
#[0 3 202 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 206 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 210 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 214 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 218 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 222 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 226 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 230 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 234 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 238 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 242 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 246 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 250 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 3 254 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 4 2 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 4 6 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 4 10 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 6 61 0 2 6 65 0 12 12 189 0 81 6 73 1 108 6 77 1 154] 
#[1 7 77 0 2 12 193 0 5 7 85 0 6 2 213 0 12 7 89 0 96 7 93 0 104 9 9 0 125 0 237 0 129 7 97 0 130 7 117 0 133 7 121 0 134 8 177 0 146 12 197 0 147 12 197 0 159 12 197 0 160 12 197 0 161 9 17 0 222 9 21 0 223 9 25 0 226 9 25 0 228 7 117 1 77 7 121 1 78 7 125 1 108 7 129 1 128 7 133 1 129 7 137 1 130 7 137 1 142 7 137 1 144 7 137 1 150 7 137 1 151 7 137 1 152 9 33 1 244] 
#[1 2 201 0 2 7 53 0 4 7 57 0 6 12 201 0 7 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 4 45 0 125 12 205 0 126 0 237 0 129 2 249 0 133 2 253 0 134 7 61 0 146 9 41 0 153 4 57 0 219 4 57 0 220 4 57 0 221 9 45 0 224 9 49 0 225 9 53 0 227 9 53 0 228 9 57 0 229 2 249 1 77 2 253 1 78 3 1 1 108 7 177 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 7 173 1 133 7 177 1 134 3 9 1 135 3 13 1 136 7 177 1 137 7 177 1 138 3 21 1 139 3 21 1 141 7 73 1 244] 
#[1 0 147 0 3 0 147 0 5 2 2 0 6 0 147 0 7 2 2 0 8 2 2 0 12 2 6 0 23 9 61 0 24 2 2 0 41 2 2 0 49 0 147 0 126 9 161 0 163] 
#[0 12 209 0 3] 
#[0 12 213 0 3] 
#[1 0 6 0 1 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 24 0 6 0 44 0 6 0 53 0 91 0 100 0 95 0 101 0 99 0 102 0 103 0 103 0 6 0 104 0 6 0 113 0 6 0 126 0 6 0 127 0 107 0 129 9 197 0 146 9 201 1 36 9 205 1 148] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 12 217 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 4 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 86 0 89 0 90 0 92 0 94 0 95 0 96 0 97 0 100 0 101 0 102 0 103 0 104 0 106 0 108 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 137 0 138 0 139 0 140 0 141 1 244 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 12 221 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 12 225 0 201 12 225 0 202 1 45 1 8 12 225 1 11 1 173 1 12 1 177 1 13 1 181 1 16 12 225 1 17 1 45 1 22 12 225 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 12 229 0 2 2 213 0 12 12 233 1 108] 
#[1 8 1 0 6 7 97 0 130 7 117 0 133 7 121 0 134 12 237 0 147 12 237 0 159 12 237 0 160 12 237 0 161 7 117 1 77 7 121 1 78] 
#[0 4 18 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 126 0 127] 
#[0 4 22 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 126 0 127] 
#[1 7 77 0 2 4 26 0 5 4 26 0 8 2 213 0 12 13 5 0 44 13 5 0 53 4 26 0 126 12 249 0 127 7 125 1 108 12 253 1 143 13 1 1 144 13 5 1 176] 
#[0 4 30 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 126 0 127] 
#[0 4 34 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 126 0 127] 
#[0 4 38 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 126 0 127] 
#[0 4 42 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 126 0 127] 
#[0 13 9 0 2] 
#[0 13 13 0 5] 
#[1 4 46 0 5 13 17 0 8 13 21 0 126] 
#[0 4 50 0 5 0 8 0 126] 
#[0 4 54 0 5 0 8 0 126] 
#[0 4 58 0 5 0 8 0 126] 
#[0 4 62 0 5 0 8 0 126] 
#[0 4 66 0 5 0 8 0 126] 
#[0 4 70 0 5 0 8 0 126] 
#[0 4 74 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 13 25 0 7] 
#[0 4 78 0 7 0 126] 
#[1 13 29 0 7 13 33 0 126] 
#[0 4 82 0 7 0 126] 
#[1 4 86 0 15 13 37 0 76 4 86 0 126 13 41 1 111] 
#[1 13 45 0 15 13 49 0 126] 
#[0 4 90 0 15 0 126] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 7 69 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 7 69 1 137 7 69 1 138 3 21 1 139 3 21 1 141] 
#[1 4 94 0 3 4 94 0 4 4 94 0 5 0 151 0 6 4 94 0 7 4 94 0 8 4 94 0 9 4 94 0 10 4 94 0 12 4 94 0 13 4 94 0 15 4 94 0 16 4 94 0 19 4 94 0 20 4 94 0 21 4 94 0 22 4 94 0 24 4 94 0 25 4 94 0 26 4 94 0 27 4 94 0 28 4 94 0 36 4 94 0 38 4 94 0 41 4 94 0 42 4 94 0 44 4 94 0 46 4 94 0 48 4 94 0 49 4 94 0 50 4 94 0 52 4 94 0 54 4 94 0 55 4 94 0 66 4 94 0 86 4 94 0 89 4 94 0 100 4 94 0 101 4 94 0 102 4 94 0 103 4 94 0 104 4 94 0 108 4 94 0 126 4 94 0 127 4 94 0 130 4 94 0 133 4 94 0 134 4 94 0 139 4 94 0 140 7 241 0 242 4 94 1 244 4 94 1 245] 
#[1 4 98 0 3 4 98 0 4 4 98 0 5 0 155 0 6 4 98 0 7 4 98 0 8 4 98 0 9 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 15 4 98 0 16 4 98 0 19 4 98 0 20 4 98 0 21 4 98 0 22 4 98 0 24 4 98 0 25 4 98 0 26 4 98 0 27 4 98 0 28 4 98 0 36 4 98 0 38 4 98 0 41 4 98 0 42 4 98 0 44 4 98 0 46 4 98 0 48 4 98 0 49 4 98 0 50 4 98 0 52 4 98 0 54 4 98 0 55 4 98 0 66 4 98 0 86 4 98 0 89 4 98 0 100 4 98 0 101 4 98 0 102 4 98 0 103 4 98 0 104 4 98 0 108 4 98 0 126 4 98 0 127 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 139 4 98 0 140 7 241 0 242 4 98 1 244 4 98 1 245] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 13 53 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 13 57 0 2] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 13 61 0 7 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 13 65 0 126 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 7 177 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 13 69 1 133 7 177 1 134 3 9 1 135 3 13 1 136 7 177 1 137 7 177 1 138 3 21 1 139 3 21 1 141] 
#[1 1 142 0 6 13 73 0 242] 
#[0 4 102 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[1 4 106 0 3 4 106 0 4 4 106 0 5 4 106 0 6 4 106 0 7 4 106 0 8 4 106 0 9 4 106 0 10 4 106 0 12 4 106 0 13 4 106 0 15 4 106 0 16 4 106 0 19 4 106 0 20 4 106 0 21 4 106 0 22 13 77 0 23 4 106 0 24 4 106 0 25 4 106 0 26 4 106 0 27 4 106 0 28 4 106 0 36 4 106 0 38 4 106 0 41 4 106 0 42 4 106 0 44 4 106 0 46 4 106 0 48 4 106 0 49 4 106 0 50 4 106 0 52 4 106 0 54 4 106 0 55 4 106 0 66 4 106 0 86 4 106 0 89 4 106 0 100 4 106 0 101 4 106 0 102 4 106 0 103 4 106 0 104 4 106 0 108 4 106 0 126 4 106 0 127 4 106 0 130 4 106 0 133 4 106 0 134 4 106 0 139 4 106 0 140 4 106 1 244 4 106 1 245] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 13 81 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 7 193 0 2 2 205 0 4 2 209 0 6 2 217 0 87 2 221 0 91 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 13 85 1 117 13 85 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 13 85 1 136 3 21 1 139 3 21 1 141] 
#[1 7 193 0 2 2 205 0 4 2 209 0 6 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 13 89 1 119 13 89 1 120 13 89 1 121 13 89 1 122 13 89 1 123 13 89 1 124 3 45 1 125 3 49 1 126 13 89 1 127 13 89 1 131 13 89 1 132 13 89 1 139 13 89 1 141] 
#[0 13 93 0 6] 
#[1 4 110 0 3 4 110 0 4 4 110 0 5 4 110 0 6 4 110 0 7 4 110 0 8 4 110 0 9 4 110 0 10 0 159 0 12 4 110 0 13 4 110 0 15 4 110 0 16 4 110 0 19 4 110 0 20 4 110 0 21 4 110 0 22 4 110 0 24 4 110 0 25 4 110 0 26 4 110 0 27 4 110 0 28 4 110 0 36 4 110 0 38 4 110 0 41 4 110 0 42 4 110 0 44 4 110 0 46 4 110 0 48 4 110 0 49 4 110 0 50 4 110 0 52 4 110 0 54 4 110 0 55 4 110 0 66 4 110 0 86 4 110 0 88 4 110 0 89 4 110 0 100 4 110 0 101 4 110 0 102 4 110 0 103 4 110 0 104 4 110 0 108 4 110 0 126 4 110 0 127 4 110 0 130 4 110 0 133 4 110 0 134 4 110 0 139 4 110 0 140 13 97 1 112 4 110 1 244 4 110 1 245] 
#[1 0 237 0 129 13 101 0 146] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 4 114 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 13 105 0 211 2 181 0 212 0 77 0 213 2 181 1 7 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 13 109 1 48 13 113 1 49 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 12 225 0 201 12 225 0 202 1 45 1 8 12 225 1 11 1 173 1 12 1 177 1 13 1 181 1 16 12 225 1 17 1 45 1 22 12 225 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 8 1 0 6 7 97 0 130 10 137 0 131 7 117 0 133 7 121 0 134 13 121 0 147 13 121 0 159 13 121 0 160 13 121 0 161 13 121 1 46 7 117 1 77 7 121 1 78] 
#[1 8 1 0 6 13 125 0 27 7 97 0 130 10 137 0 131 7 117 0 133 7 121 0 134 13 129 0 147 13 129 0 159 13 129 0 160 13 129 0 161 13 129 1 46 7 117 1 77 7 121 1 78] 
#[1 8 1 0 6 7 97 0 130 10 137 0 131 7 117 0 133 7 121 0 134 13 133 0 147 13 133 0 159 13 133 0 160 13 133 0 161 13 133 1 46 7 117 1 77 7 121 1 78] 
#[1 8 1 0 6 7 97 0 130 10 137 0 131 7 117 0 133 7 121 0 134 13 137 0 147 13 137 0 159 13 137 0 160 13 137 0 161 13 137 1 46 7 117 1 77 7 121 1 78] 
#[1 8 1 0 6 8 5 0 27 8 9 0 59 8 13 0 82 8 17 0 107 7 97 0 130 8 25 0 131 7 117 0 133 7 121 0 134 8 29 0 147 8 29 0 159 8 29 0 160 8 29 0 161 13 141 1 19 13 141 1 23 13 141 1 28 13 141 1 32 13 145 1 43 8 53 1 44 8 57 1 46 7 117 1 77 7 121 1 78 13 141 1 155 13 141 1 156 8 69 1 244] 
#[1 4 118 0 2 4 122 0 8 4 118 0 24 13 149 1 45] 
#[1 4 126 0 2 4 122 0 8 4 126 0 24 13 153 1 45] 
#[0 4 130 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 4 134 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 4 138 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 4 142 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 13 157 0 8] 
#[0 4 146 0 8] 
#[1 13 161 0 2 9 61 0 24 13 165 0 163] 
#[0 4 150 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 4 154 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 8 1 0 6 13 169 0 82 13 173 0 107 7 97 0 130 7 117 0 133 7 121 0 134 13 177 0 147 13 177 0 159 13 177 0 160 13 177 0 161 7 117 1 77 7 121 1 78] 
#[1 4 9 0 1 0 163 0 6 13 181 0 59 13 185 0 66 0 167 0 100 0 171 0 101 0 175 0 102 0 179 0 103 4 158 0 104 0 183 0 108 0 187 0 130 0 191 0 133 0 195 0 134 13 193 0 147 13 193 0 159 13 193 0 160 13 193 0 161 7 117 1 77 7 121 1 78 13 197 1 148 13 201 1 151 13 205 1 155 13 209 1 156 13 213 1 175 4 21 1 236 13 217 1 244] 
#[0 4 162 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 4 166 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 4 170 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 4 174 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 4 178 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 4 182 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 13 221 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 13 225 0 2 0 237 0 129 13 229 0 146] 
#[1 13 233 0 2 13 237 1 244] 
#[1 2 213 0 12 13 241 1 108] 
#[0 4 186 0 8 0 80] 
#[0 4 190 0 5 0 57 0 80 0 126] 
#[1 4 194 0 5 13 245 0 57 4 194 0 126] 
#[1 13 249 0 5 13 253 0 126] 
#[0 4 198 0 5 0 126] 
#[0 4 202 0 5 0 57 0 80 0 126] 
#[0 14 1 0 130 0 133 1 56 1 77] 
#[0 14 5 0 8] 
#[0 14 9 0 133 1 65 1 77] 
#[0 14 13 0 8] 
#[0 4 206 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 12 69 0 74] 
#[0 4 210 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 4 214 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 4 218 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 2 186 0 3 2 186 0 5 2 186 0 7 9 61 0 24 2 186 0 126 9 161 0 163] 
#[0 14 17 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 14 21 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 14 25 0 2] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 14 29 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 4 222 0 80] 
#[0 14 33 0 57] 
#[1 14 37 0 5 14 41 0 126] 
#[0 4 226 0 5 0 126] 
#[0 4 230 0 5 0 126] 
#[0 14 45 0 117] 
#[1 0 237 0 129 14 49 0 146 14 49 1 66] 
#[1 14 53 0 8 8 237 0 58 8 241 0 123 14 57 1 237 14 57 1 240 14 57 1 241] 
#[1 3 173 0 4 3 177 0 27 14 61 1 60 14 65 1 61] 
#[0 4 234 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 14 69 0 4] 
#[0 14 73 0 4] 
#[0 4 238 0 8] 
#[0 14 77 0 8] 
#[0 4 242 0 8] 
#[1 3 173 0 4 0 237 0 129 14 81 0 146 14 81 1 59 14 85 1 61 14 81 1 66] 
#[0 4 246 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[1 0 237 0 129 14 89 0 146] 
#[0 14 93 0 127] 
#[0 14 97 0 5] 
#[1 14 101 0 5 14 105 0 126] 
#[0 4 250 0 5 0 126] 
#[0 4 254 0 5 0 126] 
#[1 9 205 0 100 9 205 0 101 9 205 0 102 9 205 0 103 0 237 0 129 9 197 0 146 9 205 1 148] 
#[0 5 2 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[1 3 217 0 4 3 221 0 6 14 109 0 7 4 45 0 125 9 225 0 126 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 14 113 0 227 14 113 0 228 14 117 0 229 7 73 1 244] 
#[1 14 121 0 7 14 125 0 126] 
#[0 5 6 0 7 0 126] 
#[0 5 10 0 7 0 126] 
#[0 14 129 0 7] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 14 133 0 201 14 133 0 202 1 45 1 8 14 133 1 11 1 173 1 12 1 177 1 13 1 181 1 16 14 133 1 17 1 45 1 22 14 133 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 5 14 0 8 0 126] 
#[0 5 18 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 3 225 0 146 14 137 0 215 3 237 0 219 3 237 0 220 3 237 0 221 14 137 1 161 14 137 1 162 4 1 1 244] 
#[0 5 22 0 8 0 126] 
#[1 12 249 0 127 14 141 1 143] 
#[1 12 249 0 127 14 145 1 143] 
#[0 5 26 0 1 0 2 0 4 0 5 0 6 0 8 0 9 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 5 30 0 1 0 158 0 2 5 30 0 3 5 30 0 4 5 30 0 5 0 199 0 6 5 30 0 7 0 158 0 23 5 30 0 24 5 30 0 27 5 30 0 44 0 158 0 45 5 30 0 53 5 30 0 56 5 30 0 59 5 30 0 64 5 30 0 66 5 30 0 75 5 30 0 82 5 30 0 100 5 30 0 101 5 30 0 102 5 30 0 103 5 30 0 104 5 30 0 107 5 30 0 108 5 30 0 113 5 30 0 126 5 30 0 127 5 30 0 129 5 30 0 130 5 30 0 131 5 30 0 133 5 30 0 134 0 158 0 137 0 158 0 138 0 199 1 244] 
#[1 5 34 0 1 5 9 0 2 5 34 0 3 5 34 0 4 5 34 0 5 0 203 0 6 5 34 0 7 5 85 0 23 5 34 0 24 5 34 0 27 5 34 0 44 5 65 0 45 5 34 0 53 5 34 0 56 5 34 0 59 5 34 0 64 5 34 0 66 5 34 0 75 5 34 0 82 5 34 0 100 5 34 0 101 5 34 0 102 5 34 0 103 5 34 0 104 5 34 0 107 5 34 0 108 5 34 0 113 5 34 0 126 5 34 0 127 5 34 0 129 5 34 0 130 5 34 0 131 5 34 0 133 5 34 0 134 1 1 0 137 0 22 0 138 5 89 0 164 1 41 0 165 5 93 0 177 5 97 0 180 0 207 1 244] 
#[1 4 193 0 4 4 197 0 76 0 237 0 129 14 149 0 146 14 153 1 38 4 209 1 39 14 157 1 244] 
#[1 4 193 0 4 4 197 0 76 14 161 1 38 4 209 1 39 14 165 1 244] 
#[0 5 38 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 2 213 0 12 10 33 0 76 10 37 0 88 14 169 1 108 10 41 1 167 10 45 1 169] 
#[1 3 117 0 4 3 121 0 27 14 173 1 68 14 177 1 69] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 14 181 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 9 121 0 2 2 213 0 12 9 129 1 108 14 185 1 144 14 189 1 154] 
#[0 14 193 0 2] 
#[0 14 197 0 8] 
#[0 14 201 0 4] 
#[1 2 222 0 2 0 211 0 3 2 222 0 6 0 211 0 7 2 222 0 10 2 222 0 11 2 222 0 12 2 222 0 13 2 222 0 14 2 222 0 15 2 222 0 16 2 222 0 17 2 222 0 18 2 222 0 19 2 222 0 21 2 222 0 22 2 222 0 23 0 211 0 24 2 222 0 25 2 222 0 26 2 222 0 27 2 222 0 28 2 222 0 29 2 222 0 30 2 222 0 31 2 222 0 32 2 222 0 33 2 222 0 34 2 222 0 35 2 222 0 36 2 222 0 37 2 222 0 38 2 222 0 39 2 222 0 41 2 222 0 42 2 222 0 43 2 222 0 44 2 222 0 45 2 222 0 46 2 222 0 47 2 222 0 48 2 222 0 49 2 222 0 50 2 222 0 51 2 222 0 52 2 222 0 54 2 222 0 55 2 222 0 86 2 222 0 89 0 211 0 126 2 222 0 137 2 222 0 138 2 222 1 243 2 222 1 244] 
#[1 0 145 0 2 0 51 0 4 4 41 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 14 205 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 9 209 0 201 9 209 0 202 9 157 0 219 9 157 0 220 9 157 0 221 1 45 1 8 9 209 1 11 1 173 1 12 1 177 1 13 1 181 1 16 9 209 1 17 1 45 1 22 9 209 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 51 0 4 4 41 0 6 14 209 0 7 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 9 145 0 125 9 225 0 126 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 4 49 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 9 229 0 154 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 9 233 0 201 9 233 0 202 4 57 0 219 4 57 0 220 4 57 0 221 14 113 0 227 14 113 0 228 14 117 0 229 1 45 1 8 9 233 1 11 1 173 1 12 1 177 1 13 1 181 1 16 9 233 1 17 1 45 1 22 9 233 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 93 1 244] 
#[1 5 42 0 3 5 42 0 7 12 249 0 127 14 213 1 143] 
#[0 5 46 0 3 0 7] 
#[0 5 50 0 3 0 5 0 7 0 126] 
#[0 5 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 58 0 3 0 5 0 7 0 126] 
#[0 5 62 0 20] 
#[1 5 66 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 14 221 0 227 14 221 0 228 14 217 0 229 14 217 1 5 14 221 1 6 7 73 1 244] 
#[0 5 70 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 59 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 113 0 126 0 127 0 129 0 130 0 133 0 134 1 244] 
#[0 5 74 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 59 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 113 0 126 0 127 0 129 0 130 0 133 0 134 1 244] 
#[0 5 78 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 59 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 113 0 126 0 127 0 129 0 130 0 133 0 134 1 244] 
#[0 5 82 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 59 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 113 0 126 0 127 0 129 0 130 0 133 0 134 1 244] 
#[1 14 229 0 44 14 229 0 53 12 249 0 127 14 225 1 143 14 229 1 176] 
#[1 4 9 0 1 5 86 0 3 5 86 0 4 5 86 0 5 5 86 0 6 5 86 0 7 5 86 0 24 5 86 0 44 5 86 0 53 5 86 0 100 5 86 0 101 5 86 0 102 5 86 0 103 5 86 0 104 5 86 0 113 5 86 0 126 5 86 0 127 5 86 0 129 14 233 1 145 4 21 1 236] 
#[1 0 237 0 129 14 237 0 146] 
#[0 5 90 0 5 0 7 0 126] 
#[0 5 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 14 241 0 7 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 4 101 0 125 9 225 0 126 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 14 245 0 154 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 14 249 0 201 14 249 0 202 1 45 1 8 14 249 1 11 1 173 1 12 1 177 1 13 1 181 1 16 14 249 1 17 1 45 1 22 14 249 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 5 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 102 0 2 0 4 0 6 0 7 0 36 0 37 0 38 0 39 0 40 0 53 0 59 0 60 0 64 0 71 0 77 0 81 0 85 0 96 0 97 0 110 0 113 0 115 0 118 0 121 0 124 0 125 0 126 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 5 106 0 7 0 126] 
#[0 5 110 0 7 0 126] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 11 169 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 11 169 1 137 11 169 1 138 3 21 1 139 3 21 1 141] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 14 253 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 15 1 0 2 0 237 0 129 15 5 0 146] 
#[1 15 9 0 2 15 13 1 244] 
#[1 2 213 0 12 15 17 1 108] 
#[1 0 145 0 2 0 215 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 15 25 0 201 15 25 0 202 1 45 1 8 15 25 1 11 1 173 1 12 1 177 1 13 15 25 1 15 1 181 1 16 15 25 1 17 15 29 1 18 1 45 1 22 15 25 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 5 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 86 0 89 0 90 0 92 0 94 0 95 0 96 0 97 0 99 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0 127 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 139 0 140 0 141 1 243 1 244 1 245] 
#[0 15 33 0 5] 
#[1 0 6 0 1 5 118 0 5 0 6 0 6 3 89 0 8 0 6 0 27 0 6 0 59 0 6 0 82 0 6 0 107 0 43 0 108 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 3 97 1 36 15 37 1 42 15 37 1 47 0 47 1 244] 
#[0 5 122 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244] 
#[1 5 126 0 4 10 85 1 244] 
#[0 5 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 6 0 1 15 41 0 5 0 6 0 6 3 89 0 8 0 6 0 27 0 6 0 59 0 6 0 82 0 6 0 107 0 43 0 108 0 6 0 130 0 6 0 131 0 6 0 133 0 6 0 134 3 97 1 36 15 45 1 40 10 13 1 41 10 17 1 42 10 17 1 47 0 47 1 244] 
#[1 0 237 0 129 2 245 0 146 15 53 1 124 3 45 1 125 3 49 1 126 15 53 1 168] 
#[1 0 237 0 129 2 245 0 146 15 65 1 124 3 45 1 125 3 49 1 126 15 61 1 165 15 65 1 166] 
#[1 5 134 0 4 10 37 0 88 15 69 1 169] 
#[0 5 138 0 4] 
#[0 15 73 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 15 77 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 15 81 0 2] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 15 85 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 15 89 0 3 15 93 0 126] 
#[0 5 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 219 0 2 5 150 0 3 5 150 0 4 5 150 0 5 0 219 0 6 5 150 0 7 5 150 0 8 5 150 0 9 5 150 0 10 5 150 0 11 5 150 0 12 5 150 0 13 5 150 0 14 5 150 0 15 5 150 0 16 5 150 0 17 5 150 0 18 5 150 0 19 5 150 0 21 5 150 0 22 0 219 0 23 5 150 0 24 5 150 0 25 5 150 0 26 5 150 0 27 5 150 0 28 5 150 0 29 5 150 0 30 5 150 0 31 5 150 0 32 5 150 0 33 5 150 0 34 5 150 0 35 5 150 0 36 5 150 0 37 5 150 0 38 5 150 0 39 5 150 0 41 5 150 0 42 5 150 0 43 5 150 0 44 0 219 0 45 5 150 0 46 5 150 0 47 5 150 0 48 5 150 0 49 5 150 0 50 5 150 0 51 5 150 0 52 5 150 0 54 5 150 0 55 5 150 0 86 5 150 0 89 5 150 0 99 5 150 0 126 5 150 0 127 0 219 0 137 0 219 0 138 5 150 0 139 5 150 0 140 5 150 1 243 0 219 1 244 5 150 1 245] 
#[0 5 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 10 245 0 53] 
#[0 5 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 15 97 0 201 15 97 0 202 1 45 1 8 15 97 1 11 1 173 1 12 1 177 1 13 1 181 1 16 15 97 1 17 1 45 1 22 15 97 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 15 101 0 3 15 105 0 126] 
#[0 5 162 0 3 0 126] 
#[1 15 109 0 7 6 37 0 126] 
#[0 5 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 15 113 1 113 15 117 1 114 15 117 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 15 117 1 137 15 117 1 138 3 21 1 139 3 21 1 141] 
#[0 15 125 0 2] 
#[0 5 170 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[1 1 126 0 4 1 126 0 141 1 126 0 143 15 129 1 104] 
#[0 5 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 15 133 0 201 15 133 0 202 1 45 1 8 15 133 1 11 1 173 1 12 1 177 1 13 1 181 1 16 15 133 1 17 1 45 1 22 15 133 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 4 118 0 2] 
#[1 5 178 0 5 9 61 0 24 5 178 0 126 15 137 0 163] 
#[1 15 141 0 5 15 145 0 126] 
#[0 5 182 0 5 0 126] 
#[1 4 126 0 2 15 149 0 127] 
#[0 5 186 0 5 0 126] 
#[0 5 190 0 5 0 126] 
#[0 13 161 0 2] 
#[1 6 37 0 126 15 153 0 139 15 157 0 140 15 161 0 166 15 165 0 167] 
#[1 15 169 0 7 6 37 0 126] 
#[0 5 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 15 173 0 201 15 173 0 202 15 173 0 204 1 45 1 8 15 173 1 11 1 173 1 12 1 177 1 13 1 181 1 16 15 173 1 17 1 45 1 22 15 173 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 5 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 15 177 0 201 15 177 0 202 15 177 0 204 1 45 1 8 15 177 1 11 1 173 1 12 1 177 1 13 1 181 1 16 15 177 1 17 1 45 1 22 15 177 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 15 181 0 130 15 185 0 131] 
#[0 5 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 15 189 0 7 6 37 0 126] 
#[0 5 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 5 242 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 5 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 15 193 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 15 193 1 137 15 193 1 138 3 21 1 139 3 21 1 141] 
#[0 5 250 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[0 5 254 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[1 6 2 0 3 6 2 0 5 6 2 0 7 6 2 0 8 6 2 0 9 5 201 0 10 6 2 0 12 6 2 0 13 6 2 0 15 6 2 0 16 6 2 0 19 6 2 0 21 6 2 0 22 6 2 0 25 6 2 0 26 5 201 0 27 6 2 0 36 6 2 0 38 6 2 0 41 6 2 0 42 6 2 0 44 6 2 0 46 5 201 0 48 6 2 0 49 6 2 0 50 6 2 0 52 6 2 0 54 6 2 0 55 6 2 0 86 6 2 0 89 6 2 0 126 6 2 0 127 6 2 0 139 6 2 0 140 5 201 0 188 6 2 1 245] 
#[1 6 6 0 3 6 6 0 5 6 6 0 7 6 6 0 8 6 6 0 9 5 201 0 10 6 6 0 12 6 6 0 13 6 6 0 15 6 6 0 16 6 6 0 19 6 6 0 21 6 6 0 22 6 6 0 25 6 6 0 26 5 201 0 27 6 6 0 36 6 6 0 38 6 6 0 41 6 6 0 42 6 6 0 44 6 6 0 46 5 201 0 48 6 6 0 49 6 6 0 50 6 6 0 52 6 6 0 54 6 6 0 55 6 6 0 86 6 6 0 89 6 6 0 126 6 6 0 127 6 6 0 139 6 6 0 140 5 201 0 188 6 6 1 245] 
#[1 6 10 0 3 6 10 0 5 6 10 0 7 6 10 0 8 6 10 0 9 6 10 0 12 6 10 0 13 6 10 0 15 6 10 0 16 6 10 0 19 6 10 0 21 6 10 0 22 6 10 0 25 6 10 0 26 5 205 0 36 5 209 0 38 6 10 0 41 6 10 0 42 6 10 0 44 6 10 0 46 6 10 0 49 6 10 0 50 6 10 0 52 6 10 0 54 6 10 0 55 6 10 0 86 6 10 0 89 6 10 0 126 6 10 0 127 6 10 0 139 6 10 0 140 6 10 1 245] 
#[1 6 14 0 3 6 14 0 5 6 14 0 7 6 14 0 8 6 14 0 9 6 14 0 12 6 14 0 13 6 14 0 15 6 14 0 16 6 14 0 19 6 14 0 21 6 14 0 22 6 14 0 25 6 14 0 26 5 205 0 36 5 209 0 38 6 14 0 41 6 14 0 42 6 14 0 44 6 14 0 46 6 14 0 49 6 14 0 50 6 14 0 52 6 14 0 54 6 14 0 55 6 14 0 86 6 14 0 89 6 14 0 126 6 14 0 127 6 14 0 139 6 14 0 140 6 14 1 245] 
#[1 6 18 0 3 6 18 0 5 6 18 0 7 6 18 0 8 6 18 0 9 6 18 0 12 6 18 0 13 6 18 0 15 6 18 0 16 6 18 0 19 6 18 0 21 6 18 0 22 6 18 0 25 6 18 0 26 5 205 0 36 5 209 0 38 6 18 0 41 6 18 0 42 6 18 0 44 6 18 0 46 6 18 0 49 6 18 0 50 6 18 0 52 6 18 0 54 6 18 0 55 6 18 0 86 6 18 0 89 6 18 0 126 6 18 0 127 6 18 0 139 6 18 0 140 6 18 1 245] 
#[1 6 22 0 3 6 22 0 5 6 22 0 7 6 22 0 8 6 22 0 9 6 22 0 12 5 213 0 13 6 22 0 15 5 217 0 16 5 221 0 19 6 22 0 21 6 22 0 22 6 22 0 25 6 22 0 26 6 22 0 41 6 22 0 42 6 22 0 44 6 22 0 46 6 22 0 49 6 22 0 50 6 22 0 52 6 22 0 54 6 22 0 55 6 22 0 86 6 22 0 89 6 22 0 126 6 22 0 127 6 22 0 139 6 22 0 140 6 22 1 245] 
#[1 6 26 0 3 6 26 0 5 6 26 0 7 6 26 0 8 6 26 0 9 6 26 0 12 5 213 0 13 6 26 0 15 5 217 0 16 5 221 0 19 6 26 0 21 6 26 0 22 6 26 0 25 6 26 0 26 6 26 0 41 6 26 0 42 6 26 0 44 6 26 0 46 6 26 0 49 6 26 0 50 6 26 0 52 6 26 0 54 6 26 0 55 6 26 0 86 6 26 0 89 6 26 0 126 6 26 0 127 6 26 0 139 6 26 0 140 6 26 1 245] 
#[1 6 30 0 3 6 30 0 5 6 30 0 7 6 30 0 8 6 30 0 9 6 30 0 12 5 213 0 13 6 30 0 15 5 217 0 16 5 221 0 19 6 30 0 21 6 30 0 22 6 30 0 25 6 30 0 26 6 30 0 41 6 30 0 42 6 30 0 44 6 30 0 46 6 30 0 49 6 30 0 50 6 30 0 52 6 30 0 54 6 30 0 55 6 30 0 86 6 30 0 89 6 30 0 126 6 30 0 127 6 30 0 139 6 30 0 140 6 30 1 245] 
#[1 6 34 0 3 6 34 0 5 6 34 0 7 6 34 0 8 6 34 0 9 6 34 0 12 5 213 0 13 6 34 0 15 5 217 0 16 5 221 0 19 6 34 0 21 6 34 0 22 6 34 0 25 6 34 0 26 6 34 0 41 6 34 0 42 6 34 0 44 6 34 0 46 6 34 0 49 6 34 0 50 6 34 0 52 6 34 0 54 6 34 0 55 6 34 0 86 6 34 0 89 6 34 0 126 6 34 0 127 6 34 0 139 6 34 0 140 6 34 1 245] 
#[1 6 38 0 3 6 38 0 5 6 38 0 7 6 38 0 8 6 38 0 9 6 38 0 12 5 213 0 13 6 38 0 15 5 217 0 16 5 221 0 19 6 38 0 21 6 38 0 22 6 38 0 25 6 38 0 26 6 38 0 41 6 38 0 42 6 38 0 44 6 38 0 46 6 38 0 49 6 38 0 50 6 38 0 52 6 38 0 54 6 38 0 55 6 38 0 86 6 38 0 89 6 38 0 126 6 38 0 127 6 38 0 139 6 38 0 140 6 38 1 245] 
#[1 6 42 0 3 6 42 0 5 6 42 0 7 6 42 0 8 6 42 0 9 6 42 0 12 5 213 0 13 6 42 0 15 5 217 0 16 5 221 0 19 6 42 0 21 6 42 0 22 6 42 0 25 6 42 0 26 6 42 0 41 6 42 0 42 6 42 0 44 6 42 0 46 6 42 0 49 6 42 0 50 6 42 0 52 6 42 0 54 6 42 0 55 6 42 0 86 6 42 0 89 6 42 0 126 6 42 0 127 6 42 0 139 6 42 0 140 6 42 1 245] 
#[1 6 46 0 3 6 46 0 5 6 46 0 7 6 46 0 8 6 46 0 9 5 225 0 12 5 229 0 15 5 233 0 21 5 237 0 22 6 46 0 25 6 46 0 26 6 46 0 41 6 46 0 42 6 46 0 44 6 46 0 46 6 46 0 49 6 46 0 50 6 46 0 52 6 46 0 54 6 46 0 55 5 241 0 86 5 245 0 89 6 46 0 126 6 46 0 127 6 46 0 139 6 46 0 140 6 46 1 245] 
#[1 6 50 0 3 6 50 0 5 6 50 0 7 6 50 0 8 6 50 0 9 5 225 0 12 5 229 0 15 5 233 0 21 5 237 0 22 6 50 0 25 6 50 0 26 6 50 0 41 6 50 0 42 6 50 0 44 6 50 0 46 6 50 0 49 6 50 0 50 6 50 0 52 6 50 0 54 6 50 0 55 5 241 0 86 5 245 0 89 6 50 0 126 6 50 0 127 6 50 0 139 6 50 0 140 6 50 1 245] 
#[1 6 54 0 3 6 54 0 5 6 54 0 7 6 54 0 8 6 54 0 9 5 225 0 12 5 229 0 15 5 233 0 21 5 237 0 22 6 54 0 25 6 54 0 26 6 54 0 41 6 54 0 42 6 54 0 44 6 54 0 46 6 54 0 49 6 54 0 50 6 54 0 52 6 54 0 54 6 54 0 55 5 241 0 86 5 245 0 89 6 54 0 126 6 54 0 127 6 54 0 139 6 54 0 140 6 54 1 245] 
#[1 6 58 0 3 6 58 0 5 6 58 0 7 6 58 0 8 6 58 0 9 5 225 0 12 5 229 0 15 5 233 0 21 5 237 0 22 6 58 0 25 6 58 0 26 6 58 0 41 6 58 0 42 6 58 0 44 6 58 0 46 6 58 0 49 6 58 0 50 6 58 0 52 6 58 0 54 6 58 0 55 5 241 0 86 5 245 0 89 6 58 0 126 6 58 0 127 6 58 0 139 6 58 0 140 6 58 1 245] 
#[1 6 62 0 3 6 62 0 5 6 62 0 7 6 62 0 8 6 62 0 9 5 249 0 25 5 253 0 26 6 62 0 41 6 62 0 42 6 62 0 44 6 62 0 46 6 62 0 49 6 62 0 50 6 62 0 52 6 1 0 54 6 5 0 55 6 62 0 126 6 62 0 127 6 62 0 139 6 62 0 140 6 62 1 245] 
#[1 6 66 0 3 6 66 0 5 6 66 0 7 6 66 0 8 6 66 0 9 6 9 0 41 6 66 0 42 6 66 0 44 6 66 0 46 6 66 0 49 6 66 0 50 6 66 0 52 6 66 0 126 6 66 0 127 6 66 0 139 6 66 0 140 6 66 1 245] 
#[1 6 70 0 3 6 70 0 5 6 70 0 7 6 70 0 8 6 70 0 9 6 70 0 42 6 70 0 44 6 70 0 46 6 70 0 49 6 70 0 50 6 13 0 52 6 70 0 126 6 70 0 127 6 70 0 139 6 70 0 140 6 70 1 245] 
#[1 6 74 0 3 6 74 0 5 6 74 0 7 6 74 0 8 6 74 0 9 6 74 0 42 6 74 0 44 6 17 0 49 6 74 0 50 6 74 0 126 6 74 0 127 6 74 0 139 6 74 0 140 6 74 1 245] 
#[1 1 18 0 3 1 18 0 5 1 18 0 7 1 18 0 8 1 18 0 9 1 18 0 42 1 18 0 44 6 17 0 49 1 18 0 50 1 18 0 126 1 18 0 127 1 18 0 139 1 18 0 140 1 18 1 245] 
#[1 6 78 0 3 6 78 0 5 6 78 0 7 6 78 0 8 6 78 0 9 6 21 0 42 6 78 0 44 6 78 0 50 6 78 0 126 6 78 0 127 6 78 0 139 6 78 0 140 6 78 1 245] 
#[1 6 82 0 3 6 82 0 5 6 82 0 7 6 82 0 8 6 82 0 9 6 82 0 44 6 82 0 46 6 17 0 49 6 82 0 126 6 82 0 127 6 82 0 139 6 82 0 140 6 82 1 245] 
#[0 15 197 0 127] 
#[0 6 86 0 3 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 15 205 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 6 94 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 6 98 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 6 102 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[1 6 106 0 3 6 106 0 5 6 106 0 7 6 106 0 8 6 106 0 9 6 106 0 12 5 213 0 13 6 106 0 15 5 217 0 16 5 221 0 19 6 106 0 21 6 106 0 22 6 106 0 25 6 106 0 26 6 106 0 41 6 106 0 42 6 106 0 44 6 106 0 46 6 106 0 49 6 106 0 50 6 106 0 52 6 106 0 54 6 106 0 55 6 106 0 86 6 106 0 89 6 106 0 126 6 106 0 127 6 106 0 139 6 106 0 140 6 106 1 245] 
#[1 0 26 0 141 15 213 1 83 15 217 1 102] 
#[1 6 110 0 4 0 223 0 141 15 221 0 143 15 229 1 80 15 229 1 81 1 245 1 82 15 229 1 100 1 253 1 102 15 233 1 107] 
#[1 6 118 0 4 6 118 0 10 6 118 0 15 15 237 0 23 15 241 0 127 6 118 0 142] 
#[1 6 110 0 4 15 245 0 10 0 154 0 15 15 249 0 142 16 21 1 86 16 1 1 90 16 5 1 91 16 9 1 92 16 5 1 93 16 5 1 94 16 21 1 95 16 25 1 103 16 29 1 107] 
#[0 6 122 0 4 0 10 0 15 0 142] 
#[0 6 126 0 4 0 10 0 15 0 142] 
#[0 6 130 0 142] 
#[1 16 33 0 142 16 37 1 88] 
#[0 16 41 0 15] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 16 45 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 16 45 1 137 16 45 1 138 3 21 1 139 3 21 1 141] 
#[0 16 49 0 3] 
#[1 2 2 0 6 2 2 0 12 0 227 0 15 2 6 0 23 2 2 0 41 2 2 0 49 13 37 0 76 4 86 0 126 13 41 1 111] 
#[0 16 53 0 15] 
#[1 6 61 0 2 2 213 0 12 6 73 1 108 16 57 1 154] 
#[0 16 61 0 4] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 16 65 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 6 134 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 6 138 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 16 69 0 8] 
#[0 6 142 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 16 73 0 8] 
#[0 16 77 0 2] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 16 81 0 9 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 16 85 0 201 16 85 0 202 16 85 0 204 1 45 1 8 16 85 1 11 1 173 1 12 1 177 1 13 1 181 1 16 16 85 1 17 1 45 1 22 16 85 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 16 89 0 146 16 93 0 217 6 141 0 218 16 97 0 219 16 97 0 220 16 97 0 221 16 101 0 239 6 149 1 244] 
#[1 0 230 0 9 0 230 0 10 5 173 0 11 0 230 0 12 0 230 0 13 5 173 0 14 0 230 0 15 0 230 0 16 5 173 0 17 5 173 0 18 0 230 0 19 0 230 0 21 0 230 0 22 5 173 0 24 0 230 0 25 0 230 0 26 0 230 0 27 0 230 0 28 5 173 0 29 5 173 0 30 5 173 0 31 5 173 0 32 5 173 0 33 5 173 0 34 5 173 0 35 0 230 0 36 5 153 0 37 0 230 0 38 5 157 0 39 0 230 0 41 0 230 0 42 5 173 0 43 0 230 0 44 0 230 0 46 5 173 0 47 0 230 0 48 0 230 0 49 0 230 0 50 5 173 0 51 0 230 0 52 0 230 0 54 0 230 0 55 0 231 0 86 0 230 0 89 16 109 0 99 0 230 0 126 5 173 0 203 5 173 1 243 5 181 1 244] 
#[1 16 113 0 9 6 37 0 126] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 16 117 0 9 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 16 121 0 201 16 121 0 202 16 121 0 204 1 45 1 8 16 121 1 11 1 173 1 12 1 177 1 13 1 181 1 16 16 121 1 17 1 45 1 22 16 121 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 16 125 0 146 4 5 0 214 3 233 0 215 16 129 0 219 16 129 0 220 16 129 0 221 16 133 0 239 3 233 1 161 3 233 1 162 4 1 1 244] 
#[1 16 137 0 86 16 141 0 99] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 4 129 0 59 0 185 0 64 16 153 0 65 1 221 0 77 0 197 0 81 0 201 0 85 16 153 0 92 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 16 145 0 120 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 16 149 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 16 149 0 183 16 153 0 213 16 157 0 238 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 5 5 1 244] 
#[1 16 161 0 3 6 37 0 126] 
#[0 6 146 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 16 165 0 8 6 37 0 126] 
#[1 16 169 0 3 6 37 0 126] 
#[0 6 150 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 16 173 0 2 2 9 0 4 16 177 0 210] 
#[1 2 9 0 4 16 181 0 210] 
#[1 6 154 0 1 6 154 0 2 6 154 0 4 6 154 0 5 6 154 0 6 6 154 0 8 6 154 0 36 6 154 0 37 6 154 0 38 6 154 0 39 6 154 0 40 6 154 0 53 6 154 0 56 6 154 0 59 6 154 0 60 6 154 0 61 6 154 0 62 6 154 0 64 6 154 0 65 6 154 0 67 6 154 0 68 6 154 0 69 6 154 0 70 6 154 0 71 6 154 0 72 6 154 0 73 6 154 0 74 6 154 0 75 6 154 0 77 12 9 0 78 6 154 0 79 6 154 0 81 6 154 0 84 6 154 0 85 6 154 0 90 6 154 0 92 6 154 0 94 6 154 0 95 6 154 0 96 6 154 0 97 6 154 0 106 6 154 0 110 6 154 0 111 6 154 0 113 6 154 0 114 6 154 0 115 6 154 0 116 6 154 0 117 6 154 0 118 6 154 0 119 6 154 0 120 6 154 0 121 6 154 0 122 6 154 0 123 6 154 0 124 6 154 0 129 6 154 0 131 6 154 0 133 6 154 0 134 6 154 0 135 6 154 0 137 6 154 0 138 6 154 0 141 16 185 0 255 6 154 1 244 6 154 1 245] 
#[0 6 158 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 6 162 0 8 0 9 0 126] 
#[0 6 166 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 6 133 0 146 16 189 0 218 6 145 0 219 6 145 0 220 6 145 0 221 6 149 1 244] 
#[0 6 170 0 8 0 9 0 126] 
#[1 12 249 0 127 16 193 1 143] 
#[1 12 249 0 127 16 197 1 143] 
#[0 6 174 0 8 0 9 0 126] 
#[0 6 178 0 8 0 9 0 126] 
#[1 16 201 0 3 6 37 0 126] 
#[1 16 205 0 3 6 37 0 126] 
#[0 6 182 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 6 186 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 237 0 129 16 209 0 146] 
#[1 0 237 0 129 16 213 0 146] 
#[1 12 69 0 74 0 237 0 129 16 217 0 146 16 221 1 221 16 225 1 222] 
#[1 0 237 0 129 16 229 0 146] 
#[0 16 233 0 4] 
#[1 0 237 0 129 16 217 0 146 16 237 1 221 16 225 1 222] 
#[1 16 241 0 130 16 245 0 133 16 245 1 77] 
#[1 0 237 0 129 12 173 0 146 16 249 1 186] 
#[1 0 237 0 129 16 217 0 146 16 253 1 221 16 225 1 222] 
#[0 6 190 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 6 194 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 6 198 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 6 202 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 6 206 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 6 210 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 17 1 0 4] 
#[1 0 237 0 129 17 5 0 146] 
#[1 8 149 0 80 17 9 1 62] 
#[1 17 13 0 8 8 149 0 80 17 17 1 62] 
#[0 17 21 0 117] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 17 25 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 17 29 0 2 0 237 0 129 17 33 0 146] 
#[0 17 37 0 2] 
#[1 17 41 0 24 2 126 0 80 2 126 0 126] 
#[1 2 205 0 4 2 213 0 12 17 45 0 76 17 49 1 108 17 53 1 127 17 57 1 164] 
#[0 17 61 0 4] 
#[0 6 214 0 4 0 23] 
#[1 17 65 0 4 17 69 0 23] 
#[1 2 213 0 12 17 73 0 24 17 77 1 108] 
#[1 0 6 0 1 0 6 0 56 0 37 0 59 0 6 0 64 6 173 0 65 17 81 0 69 17 85 0 70 6 181 0 74 0 49 0 81 17 89 0 85 6 197 0 90 0 77 0 92 6 205 0 95 6 209 0 117 2 57 0 120 17 93 0 207 17 97 0 212 0 77 0 213 17 101 0 216 17 93 1 7 17 93 1 21 17 93 1 26 17 93 1 30 17 105 1 35 0 101 1 36 17 109 1 57 17 113 1 153 17 117 1 163 17 121 1 180 17 125 1 185 17 129 1 191 17 133 1 219 2 185 1 244] 
#[1 9 121 0 2 2 213 0 12 0 237 0 129 17 137 0 146 9 129 1 108 9 133 1 144 17 141 1 154] 
#[1 0 235 0 3 0 235 0 5 4 14 0 6 0 235 0 7 4 14 0 8 4 246 0 24 4 14 0 41 4 14 0 49 0 235 0 126] 
#[1 7 77 0 2 4 26 0 5 4 26 0 8 2 213 0 12 13 5 0 44 13 5 0 53 4 26 0 126 17 145 0 127 7 125 1 108 12 253 1 143 13 1 1 144 13 5 1 176] 
#[1 0 239 0 3 0 239 0 5 4 74 0 6 0 239 0 7 4 74 0 8 5 2 0 24 4 74 0 41 4 74 0 49 0 239 0 126] 
#[1 2 226 0 4 2 226 0 6 0 243 0 7 2 226 0 125 2 226 0 126 2 226 0 129 2 226 1 244] 
#[0 17 149 0 20] 
#[0 6 218 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 17 153 0 3] 
#[1 0 158 0 2 0 158 0 6 0 158 0 7 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 162 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 41 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 52 0 158 0 54 0 158 0 55 0 158 0 86 0 158 0 89 17 157 0 127 0 158 0 137 0 158 0 138 0 158 1 243 0 158 1 244] 
#[0 17 161 0 7] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 17 165 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 17 169 0 2] 
#[1 6 222 0 5 6 222 0 8 17 177 0 44 17 177 0 53 6 222 0 126 12 249 0 127 17 173 1 143 17 177 1 176] 
#[0 6 226 0 2 0 3 0 5 0 7 0 8 0 12 0 24 0 126 0 127] 
#[0 6 230 0 2 0 3 0 5 0 7 0 8 0 12 0 24 0 126 0 127] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 17 181 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 17 181 1 137 17 181 1 138 3 21 1 139 3 21 1 141] 
#[0 6 234 0 5 0 8 0 126] 
#[0 6 238 0 5 0 8 0 126] 
#[1 7 77 0 2 6 242 0 5 6 242 0 8 2 213 0 12 6 242 0 126 12 249 0 127 7 125 1 108 17 185 1 143 17 189 1 144] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 17 193 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 6 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 86 0 89 0 90 0 92 0 94 0 95 0 96 0 97 0 100 0 101 0 102 0 103 0 104 0 106 0 108 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 135 0 137 0 138 0 139 0 140 0 141 1 244 1 245] 
#[1 7 77 0 2 6 250 0 5 7 85 0 6 2 213 0 12 7 89 0 96 7 93 0 104 7 97 0 130 7 117 0 133 7 121 0 134 7 105 0 147 7 105 0 159 7 105 0 160 7 105 0 161 7 117 1 77 7 121 1 78 7 125 1 108 17 197 1 130 17 197 1 142 17 197 1 144 17 197 1 150 17 197 1 151 17 197 1 152] 
#[1 7 77 0 2 6 254 0 5 7 85 0 6 2 213 0 12 7 89 0 96 7 93 0 104 7 97 0 130 7 117 0 133 7 121 0 134 7 105 0 147 7 105 0 159 7 105 0 160 7 105 0 161 7 117 1 77 7 121 1 78 7 125 1 108 17 201 1 130 17 201 1 142 17 201 1 144 17 201 1 150 17 201 1 151 17 201 1 152] 
#[0 7 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 7 6 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 17 205 0 7 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 17 209 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 17 209 1 134 3 9 1 135 3 13 1 136 17 209 1 137 17 209 1 138 3 21 1 139 3 21 1 141] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 17 213 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 17 213 1 137 17 213 1 138 3 21 1 139 3 21 1 141] 
#[0 7 10 0 15 0 126] 
#[0 7 14 0 2 0 4 0 24 0 76 1 244] 
#[1 0 237 0 129 7 181 0 146 17 217 1 110] 
#[0 17 221 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 17 225 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 7 18 0 3 7 18 0 4 7 18 0 5 0 247 0 6 7 18 0 7 7 18 0 8 7 18 0 9 7 18 0 10 7 18 0 12 7 18 0 13 7 18 0 15 7 18 0 16 7 18 0 19 7 18 0 20 7 18 0 21 7 18 0 22 7 18 0 24 7 18 0 25 7 18 0 26 7 18 0 27 7 18 0 28 7 18 0 36 7 18 0 38 7 18 0 41 7 18 0 42 7 18 0 44 7 18 0 46 7 18 0 48 7 18 0 49 7 18 0 50 7 18 0 52 7 18 0 54 7 18 0 55 7 18 0 66 7 18 0 86 7 18 0 89 7 18 0 100 7 18 0 101 7 18 0 102 7 18 0 103 7 18 0 104 7 18 0 108 7 18 0 126 7 18 0 127 7 18 0 130 7 18 0 133 7 18 0 134 7 18 0 139 7 18 0 140 7 18 1 244 7 18 1 245] 
#[0 17 229 0 7] 
#[1 17 233 0 7 17 237 0 126] 
#[0 17 241 0 6] 
#[1 0 237 0 129 17 245 0 146] 
#[0 17 249 0 3] 
#[1 7 22 0 3 7 22 0 4 7 22 0 5 7 22 0 6 7 22 0 7 7 22 0 8 7 22 0 9 7 22 0 10 7 22 0 12 7 22 0 13 7 22 0 15 7 22 0 16 7 22 0 19 7 22 0 20 7 22 0 21 7 22 0 22 7 22 0 24 7 22 0 25 7 22 0 26 7 22 0 27 7 22 0 28 7 22 0 36 7 22 0 38 0 251 0 41 7 22 0 42 7 22 0 44 7 22 0 46 7 22 0 48 7 22 0 49 7 22 0 50 7 22 0 52 7 22 0 54 7 22 0 55 7 22 0 66 7 22 0 86 7 22 0 89 7 22 0 100 7 22 0 101 7 22 0 102 7 22 0 103 7 22 0 104 7 22 0 108 7 22 0 126 7 22 0 127 7 22 0 130 7 22 0 133 7 22 0 134 7 22 0 139 7 22 0 140 7 22 1 244 7 22 1 245] 
#[1 7 26 0 3 7 26 0 4 7 26 0 5 0 255 0 6 7 26 0 7 7 26 0 8 7 26 0 9 7 26 0 10 7 26 0 12 7 26 0 13 7 26 0 15 7 26 0 16 7 26 0 19 7 26 0 20 7 26 0 21 7 26 0 22 7 26 0 24 7 26 0 25 7 26 0 26 7 26 0 27 7 26 0 28 7 26 0 36 7 26 0 38 7 26 0 41 7 26 0 42 7 26 0 44 7 26 0 46 7 26 0 48 7 26 0 49 7 26 0 50 7 26 0 52 7 26 0 54 7 26 0 55 7 26 0 66 7 26 0 86 7 26 0 89 7 26 0 100 7 26 0 101 7 26 0 102 7 26 0 103 7 26 0 104 7 26 0 108 7 26 0 126 7 26 0 127 7 26 0 130 7 26 0 133 7 26 0 134 7 26 0 139 7 26 0 140 7 241 0 242 7 26 1 244 7 26 1 245] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 17 253 0 7 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 18 1 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 18 1 1 137 18 1 1 138 3 21 1 139 3 21 1 141] 
#[0 7 30 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 88 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[1 7 34 0 3 7 34 0 4 7 34 0 5 7 34 0 6 7 34 0 7 7 34 0 8 7 34 0 9 7 34 0 10 7 34 0 12 7 34 0 13 7 34 0 15 7 34 0 16 7 34 0 19 7 34 0 20 7 34 0 21 7 34 0 22 7 38 0 23 7 34 0 24 7 34 0 25 7 34 0 26 7 34 0 27 7 34 0 28 7 34 0 36 7 34 0 38 7 34 0 41 7 34 0 42 7 34 0 44 7 34 0 46 7 34 0 48 7 34 0 49 7 34 0 50 7 34 0 52 7 34 0 54 7 34 0 55 7 34 0 66 7 34 0 86 7 34 0 88 7 34 0 89 7 34 0 100 7 34 0 101 7 34 0 102 7 34 0 103 7 34 0 104 7 34 0 108 7 34 0 126 7 34 0 127 7 34 0 130 7 34 0 133 7 34 0 134 7 34 0 139 7 34 0 140 7 34 1 244 7 34 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 7 42 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 6 169 0 207 6 169 0 212 0 77 0 213 6 169 1 7 6 169 1 21 6 169 1 26 6 169 1 30 6 169 1 35 0 101 1 36 6 169 1 72 0 133 1 73 6 169 1 242 0 39 1 244] 
#[0 18 5 0 5] 
#[0 7 46 0 5] 
#[0 4 126 0 2] 
#[0 18 9 0 2] 
#[1 8 1 0 6 7 97 0 130 10 137 0 131 7 117 0 133 7 121 0 134 18 13 0 147 18 13 0 159 18 13 0 160 18 13 0 161 18 13 1 46 7 117 1 77 7 121 1 78] 
#[0 18 17 0 2] 
#[0 18 21 0 2] 
#[0 18 25 0 2] 
#[0 7 50 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 18 29 0 8] 
#[0 7 54 0 8] 
#[0 7 58 0 8] 
#[0 7 62 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 18 33 1 2 4 77 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 7 66 0 8] 
#[1 8 1 0 6 7 97 0 130 7 117 0 133 7 121 0 134 18 37 0 147 18 37 0 159 18 37 0 160 18 37 0 161 7 117 1 77 7 121 1 78] 
#[1 8 1 0 6 7 97 0 130 7 117 0 133 7 121 0 134 18 41 0 147 18 41 0 159 18 41 0 160 18 41 0 161 7 117 1 77 7 121 1 78] 
#[1 6 61 0 2 2 213 0 12 18 49 0 44 18 49 0 53 6 73 1 108 18 45 1 154 18 49 1 176] 
#[1 8 1 0 6 7 97 0 130 7 117 0 133 7 121 0 134 18 53 0 147 18 53 0 159 18 53 0 160 18 53 0 161 7 117 1 77 7 121 1 78] 
#[1 18 57 0 2 18 61 1 171] 
#[1 8 1 0 6 18 65 0 59 7 97 0 130 7 117 0 133 7 121 0 134 18 69 0 147 18 69 0 159 18 69 0 160 18 69 0 161 7 117 1 77 7 121 1 78 18 73 1 155 18 77 1 156 13 217 1 244] 
#[1 7 77 0 2 2 213 0 12 7 125 1 108 18 81 1 144] 
#[1 8 1 0 6 18 85 0 59 18 89 0 66 18 93 0 108 7 97 0 130 7 117 0 133 7 121 0 134 18 97 0 147 18 97 0 159 18 97 0 160 18 97 0 161 7 117 1 77 7 121 1 78 18 101 1 155 18 105 1 156 13 217 1 244] 
#[0 18 109 0 8] 
#[0 7 70 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 7 74 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 8 1 0 6 18 133 0 100 18 133 0 101 18 133 0 102 18 133 0 103 18 133 0 104 18 133 0 108 7 97 0 130 7 117 0 133 7 121 0 134 18 121 0 147 18 121 0 159 18 121 0 160 18 121 0 161 7 117 1 77 7 121 1 78 18 133 1 146 18 133 1 148 18 133 1 174] 
#[1 13 169 0 82 13 173 0 107] 
#[0 18 137 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 18 141 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 18 145 0 2] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 18 149 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 2 213 0 12 18 153 1 108] 
#[0 18 157 0 2] 
#[0 18 161 0 130 0 133 1 56 1 77] 
#[0 7 78 0 8 0 80] 
#[1 18 165 0 5 8 125 0 130 8 125 0 133 8 125 1 56 18 169 1 71 8 125 1 77] 
#[0 7 82 0 80] 
#[0 7 86 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 7 90 0 8 0 58 0 123] 
#[0 7 94 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 18 173 0 4] 
#[0 18 177 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 18 181 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 18 185 0 3] 
#[1 0 237 0 129 18 189 0 146 18 189 1 66] 
#[0 7 98 0 80] 
#[1 18 193 0 5 0 237 0 129 8 201 0 130 8 201 0 133 8 213 0 146 8 201 1 56 18 197 1 64 8 213 1 66 8 201 1 77 8 217 1 244] 
#[1 0 237 0 129 18 201 0 130 18 201 0 133 18 205 0 146 18 201 1 56 18 205 1 66 18 201 1 77] 
#[0 7 102 0 80] 
#[0 7 106 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 18 209 0 8] 
#[0 7 110 0 80] 
#[0 7 114 0 80] 
#[1 18 213 0 5 18 217 0 126 18 221 0 130 18 225 0 133 18 225 1 77 18 229 1 238 18 233 1 239] 
#[1 18 237 0 5 18 241 0 126 18 221 0 130 18 225 0 133 18 225 1 77 18 245 1 238 18 233 1 239] 
#[0 7 118 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 7 122 0 80] 
#[0 7 126 0 80] 
#[0 7 130 0 5] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 18 249 0 227 18 249 0 228 7 73 1 244] 
#[0 7 134 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[0 7 138 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[1 18 253 0 5 8 1 0 6 9 9 0 125 0 237 0 129 7 97 0 130 7 117 0 133 7 121 0 134 8 177 0 146 9 13 0 147 9 13 0 159 9 13 0 160 9 13 0 161 19 1 0 222 19 5 0 226 19 5 0 228 7 117 1 77 7 121 1 78 9 33 1 244] 
#[0 7 142 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[0 7 146 0 7 0 126] 
#[0 19 9 0 7] 
#[0 7 150 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[1 3 217 0 4 3 221 0 6 19 13 0 7 4 45 0 125 4 105 0 126 0 237 0 129 8 177 0 146 19 17 0 153 4 57 0 219 4 57 0 220 4 57 0 221 19 21 0 225 9 53 0 227 9 53 0 228 19 25 0 229 7 73 1 244] 
#[0 7 154 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[0 7 158 0 3 0 5 0 7 0 8 0 9 0 126] 
#[0 7 162 0 8 0 126] 
#[1 7 166 0 8 9 61 0 24 7 166 0 126 19 29 0 163] 
#[1 7 170 0 8 9 61 0 24 7 170 0 126 19 33 0 163] 
#[1 4 193 0 4 4 197 0 76 19 37 1 38 4 209 1 39 19 41 1 244] 
#[0 7 174 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 2 213 0 12 10 33 0 76 10 37 0 88 19 45 1 108 10 41 1 167 10 45 1 169] 
#[0 7 178 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 2 213 0 12 10 33 0 76 10 37 0 88 19 49 1 108 10 41 1 167 10 45 1 169] 
#[1 4 193 0 4 4 197 0 76 19 53 1 38 4 209 1 39 4 213 1 244] 
#[1 8 149 0 80 19 57 1 62] 
#[0 2 122 0 80] 
#[0 19 61 0 3] 
#[0 19 65 0 8] 
#[0 19 69 0 4] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 19 73 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 7 182 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 77 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 0 158 0 2 0 158 0 6 1 3 0 7 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 162 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 41 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 52 0 158 0 54 0 158 0 55 0 158 0 86 0 158 0 89 0 158 0 126 12 249 0 127 0 158 0 137 0 158 0 138 14 213 1 143 0 158 1 243 0 158 1 244] 
#[1 5 98 0 2 1 7 0 3 5 98 0 6 1 7 0 7 5 98 0 10 5 98 0 11 5 98 0 12 5 98 0 13 5 98 0 14 5 98 0 15 5 98 0 16 5 98 0 17 5 98 0 18 5 98 0 19 5 98 0 21 5 98 0 22 5 98 0 23 1 7 0 24 5 98 0 25 5 98 0 26 5 98 0 27 5 98 0 28 5 98 0 29 5 98 0 30 5 98 0 31 5 98 0 32 5 98 0 33 5 98 0 34 5 98 0 35 5 98 0 36 5 98 0 37 5 98 0 38 5 98 0 39 5 98 0 41 5 98 0 42 5 98 0 43 5 98 0 44 5 98 0 45 5 98 0 46 5 98 0 47 5 98 0 48 5 98 0 49 5 98 0 50 5 98 0 51 5 98 0 52 5 98 0 54 5 98 0 55 5 98 0 86 5 98 0 89 1 7 0 126 5 98 0 137 5 98 0 138 5 98 1 243 5 98 1 244] 
#[0 7 186 0 3 0 7] 
#[0 7 190 0 3] 
#[0 7 194 0 3 0 126] 
#[1 7 198 0 3 7 198 0 5 7 198 0 7 9 61 0 24 7 198 0 126 19 81 0 163] 
#[0 7 202 0 3 0 5 0 7 0 126] 
#[1 7 206 0 3 3 217 0 4 7 206 0 5 3 221 0 6 7 206 0 7 7 206 0 24 7 206 0 44 7 206 0 53 19 97 0 100 19 97 0 101 19 97 0 102 19 97 0 103 19 97 0 104 19 85 0 113 7 206 0 126 7 206 0 127 0 237 0 129 19 101 0 146 19 101 0 219 19 101 0 220 19 101 0 221 19 97 1 146 19 101 1 147 19 97 1 148] 
#[1 7 210 0 3 7 210 0 5 7 210 0 7 9 61 0 24 19 113 0 44 19 113 0 53 7 210 0 126 12 249 0 127 19 105 0 163 19 109 1 143 19 113 1 176] 
#[0 7 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 7 218 0 7 0 126] 
#[0 7 222 0 7 0 126] 
#[0 19 117 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 19 121 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 19 125 0 2] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 19 129 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 2 213 0 12 19 133 1 108] 
#[0 19 137 0 2] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 19 145 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 7 226 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 7 230 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 7 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 86 0 89 0 90 0 92 0 94 0 95 0 96 0 97 0 99 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0 127 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 139 0 140 0 141 1 243 1 244 1 245] 
#[0 7 238 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244] 
#[0 7 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 86 0 89 0 90 0 92 0 94 0 95 0 96 0 97 0 99 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0 127 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 139 0 140 0 141 1 243 1 244 1 245] 
#[0 19 149 0 5] 
#[0 7 246 0 4 0 88] 
#[0 7 250 0 4 0 88] 
#[0 7 254 0 4 0 126] 
#[1 8 2 0 4 19 153 0 126] 
#[0 8 6 0 4 0 126] 
#[0 8 10 0 4] 
#[0 19 157 0 4] 
#[0 19 161 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 19 165 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 19 169 0 3] 
#[0 8 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 19 173 0 3] 
#[0 8 18 0 3 0 126] 
#[0 8 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 145 0 2 19 177 0 3 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 19 181 0 125 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 19 185 0 201 19 185 0 202 1 45 1 8 19 185 1 11 1 173 1 12 1 177 1 13 1 181 1 16 19 185 1 17 1 45 1 22 19 185 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 8 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 19 189 0 15 19 193 0 126] 
#[0 8 30 0 15 0 126] 
#[0 8 34 0 15 0 126] 
#[1 0 145 0 2 19 197 0 3 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 10 93 0 125 19 201 0 126 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 19 205 0 178 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 10 101 0 201 10 101 0 202 1 45 1 8 10 101 1 11 1 173 1 12 1 177 1 13 1 181 1 16 10 101 1 17 1 45 1 22 10 101 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 3 150 0 4 3 150 0 141 3 150 0 143 19 209 1 98 11 125 1 99] 
#[0 8 38 0 5 0 126] 
#[0 8 42 0 5 0 126] 
#[0 8 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 19 213 0 5 8 1 0 6 8 5 0 27 8 9 0 59 8 13 0 82 8 17 0 107 10 133 0 125 0 237 0 129 7 97 0 130 10 137 0 131 7 117 0 133 7 121 0 134 10 141 0 146 10 153 0 147 19 217 0 158 10 153 0 159 10 153 0 160 10 153 0 161 19 217 0 162 19 217 1 19 19 217 1 23 19 217 1 28 19 217 1 32 10 165 1 46 7 117 1 77 7 121 1 78 19 217 1 155 19 217 1 156 8 69 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 19 221 0 201 19 221 0 202 1 45 1 8 19 221 1 11 1 173 1 12 1 177 1 13 1 181 1 16 19 221 1 17 1 45 1 22 19 221 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 19 225 0 201 19 225 0 202 19 225 0 204 1 45 1 8 19 225 1 11 1 173 1 12 1 177 1 13 1 181 1 16 19 225 1 17 1 45 1 22 19 225 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 8 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 8 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 19 229 0 139 19 233 0 140] 
#[0 8 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 19 237 0 7 6 37 0 126] 
#[1 19 241 0 7 6 37 0 126] 
#[0 8 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 8 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 8 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 8 74 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 244 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 19 245 0 201 19 245 0 202 1 45 1 8 19 245 1 11 1 173 1 12 1 177 1 13 1 181 1 16 19 245 1 17 1 45 1 22 19 245 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 8 78 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 6 169 0 207 6 169 0 212 0 77 0 213 6 169 1 7 6 169 1 21 6 169 1 26 6 169 1 30 6 169 1 35 0 101 1 36 6 169 1 72 0 133 1 73 6 169 1 242 0 39 1 244] 
#[0 19 249 0 5] 
#[0 8 82 0 5] 
#[0 8 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 243 1 244 1 245] 
#[0 19 253 0 141] 
#[0 8 90 0 4 0 141 0 143] 
#[0 8 94 0 4 0 141 0 143] 
#[0 8 98 0 4 0 141 0 143] 
#[0 20 1 0 4] 
#[0 8 102 0 142] 
#[0 20 5 0 142] 
#[1 8 106 0 15 20 9 1 105] 
#[1 8 110 0 4 8 110 0 10 8 110 0 15 8 110 0 24 15 241 0 127 8 110 0 142] 
#[0 8 114 0 4 0 10 0 15 0 24 0 142] 
#[1 20 13 0 10 0 154 0 15 20 17 1 103] 
#[0 8 118 0 4 0 10 0 15 0 142] 
#[1 6 110 0 4 8 122 0 10 8 122 0 15 15 249 0 142 16 21 1 86 20 21 1 91 20 21 1 93 20 21 1 94 16 21 1 95 16 29 1 107] 
#[0 8 126 0 4 0 10 0 15 0 142] 
#[0 8 130 0 4 0 10 0 15 0 142] 
#[1 8 134 0 4 8 134 0 10 8 134 0 15 20 25 0 24 8 134 0 142 20 29 1 96] 
#[0 20 33 0 15] 
#[0 20 37 0 4] 
#[1 8 138 0 4 8 138 0 10 8 138 0 15 15 237 0 23 8 138 0 142] 
#[0 8 142 0 142] 
#[0 8 146 0 4 0 141 0 143] 
#[0 8 150 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 244 1 245] 
#[1 8 154 0 4 8 154 0 8 8 154 0 20 12 249 0 127 20 41 1 143] 
#[1 4 125 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 4 129 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 237 0 129 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 45 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 4 137 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 4 137 0 183 20 45 0 184 20 45 0 185 1 45 1 8 1 45 1 22 1 45 1 27 1 45 1 31 20 45 1 34 1 45 1 37 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 4 145 1 244] 
#[0 20 49 0 4] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 20 53 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 20 57 0 3] 
#[0 8 158 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 8 162 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 20 61 0 201 20 61 0 202 20 61 0 204 1 45 1 8 20 61 1 11 1 173 1 12 1 177 1 13 1 181 1 16 20 61 1 17 1 45 1 22 20 61 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 20 65 0 3 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 20 69 0 201 20 69 0 202 20 69 0 204 1 45 1 8 20 69 1 11 1 173 1 12 1 177 1 13 1 181 1 16 20 69 1 17 1 45 1 22 20 69 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 20 73 0 9 6 37 0 126] 
#[1 3 166 0 9 9 61 0 24 8 166 0 86 8 166 0 99 3 166 0 126 12 21 0 163] 
#[1 20 77 0 9 12 29 0 126] 
#[1 9 61 0 24 8 170 0 86 8 170 0 99 12 33 0 163] 
#[1 20 81 0 86 20 85 0 99] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 20 89 0 201 20 89 0 202 20 89 0 204 1 45 1 8 20 89 1 11 1 173 1 12 1 177 1 13 1 181 1 16 20 89 1 17 1 45 1 22 20 89 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 20 93 0 201 20 93 0 202 1 45 1 8 20 93 1 11 1 173 1 12 1 177 1 13 1 181 1 16 20 93 1 17 1 45 1 22 20 93 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 20 97 0 9 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 20 101 0 201 20 101 0 202 20 101 0 204 1 45 1 8 20 101 1 11 1 173 1 12 1 177 1 13 1 181 1 16 20 101 1 17 1 45 1 22 20 101 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 20 105 0 3 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 20 109 0 201 20 109 0 202 20 109 0 204 1 45 1 8 20 109 1 11 1 173 1 12 1 177 1 13 1 181 1 16 20 109 1 17 1 45 1 22 20 109 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 20 113 0 9 6 37 0 126] 
#[1 2 150 0 8 9 61 0 24 8 166 0 86 8 166 0 99 2 150 0 126 9 65 0 163] 
#[1 9 61 0 24 8 170 0 86 8 170 0 99 9 77 0 163] 
#[0 8 174 0 86 0 99] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 20 117 0 201 20 117 0 202 20 117 0 204 1 45 1 8 20 117 1 11 1 173 1 12 1 177 1 13 1 181 1 16 20 117 1 17 1 45 1 22 20 117 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 20 121 0 201 20 121 0 202 1 45 1 8 20 121 1 11 1 173 1 12 1 177 1 13 1 181 1 16 20 121 1 17 1 45 1 22 20 121 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 20 133 0 146 20 133 0 219 20 133 0 220 20 133 0 221 20 133 0 239] 
#[1 20 137 0 99 10 85 1 244] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 16 133 0 146 16 133 0 219 16 133 0 220 16 133 0 221 16 133 0 239] 
#[0 20 141 0 99] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 20 145 0 205 20 145 0 208 20 145 0 209 20 145 0 210 20 145 0 216 20 145 0 230 20 145 0 231 20 145 0 232 20 145 0 233 20 145 0 234 20 145 0 235 20 145 0 236 20 145 0 237 20 145 0 240 20 145 0 241 20 145 0 243 20 145 0 244 20 145 0 245 20 145 0 250 20 145 0 252 20 145 0 253 20 145 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 20 145 1 242 2 5 1 244] 
#[0 8 178 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 20 149 0 4 20 153 0 246] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 20 157 0 146 20 165 0 219 20 165 0 220 20 165 0 221 20 165 1 0] 
#[0 8 182 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 8 186 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 8 190 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 8 194 0 8 0 9 0 126] 
#[1 8 198 0 8 8 198 0 9 9 61 0 24 8 198 0 126 20 169 0 163] 
#[1 9 61 0 24 20 173 0 163] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 20 177 0 205 20 177 0 208 20 177 0 209 20 177 0 210 20 177 0 216 20 177 0 230 20 177 0 231 20 177 0 232 20 177 0 233 20 177 0 234 20 177 0 235 20 177 0 236 20 177 0 237 20 177 0 240 20 177 0 241 20 177 0 243 20 177 0 244 20 177 0 245 20 177 0 250 20 177 0 252 20 177 0 253 20 177 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 20 177 1 242 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 20 181 0 205 20 181 0 208 20 181 0 209 20 181 0 210 20 181 0 216 20 181 0 230 20 181 0 231 20 181 0 232 20 181 0 233 20 181 0 234 20 181 0 235 20 181 0 236 20 181 0 237 20 181 0 240 20 181 0 241 20 181 0 243 20 181 0 244 20 181 0 245 20 181 0 250 20 181 0 252 20 181 0 253 20 181 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 20 181 1 242 2 5 1 244] 
#[0 20 185 0 4] 
#[1 20 189 0 4 2 213 0 12 4 197 0 76 20 193 1 39 20 197 1 108 4 213 1 244] 
#[1 8 202 0 8 8 202 0 126 12 249 0 127 20 201 1 143] 
#[1 20 205 0 8 20 209 0 126] 
#[0 8 206 0 8 0 126] 
#[1 7 77 0 2 2 213 0 12 7 125 1 108 20 213 1 144] 
#[1 8 210 0 5 12 73 0 64 20 217 0 65 6 181 0 74 20 221 0 75 12 81 0 81 12 85 0 83 20 225 0 85 6 197 0 90 20 229 0 92 12 97 0 95 12 101 0 120 20 233 0 212 0 77 0 213 20 237 1 163 21 1 1 180 20 241 1 191 20 245 1 220 20 249 1 223 20 253 1 224 21 1 1 230 21 5 1 231 21 9 1 232 21 13 1 233 21 17 1 234] 
#[1 21 21 0 8 20 209 0 126] 
#[0 21 25 0 4] 
#[0 21 29 0 4] 
#[1 21 33 0 4 17 69 0 23] 
#[1 21 37 0 8 20 209 0 126] 
#[1 21 41 0 5 8 1 0 6 7 97 0 130 7 117 0 133 7 121 0 134 21 45 0 147 21 45 0 159 21 45 0 160 21 45 0 161 7 117 1 77 7 121 1 78 21 49 1 181 21 53 1 182 21 57 1 183] 
#[0 21 61 0 8] 
#[0 21 65 0 8] 
#[0 8 214 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 21 69 0 8] 
#[1 3 117 0 4 21 73 0 27 21 77 1 69] 
#[0 21 81 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 21 85 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 21 89 0 2] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 21 93 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 21 97 0 105 0 237 0 129 21 101 0 146 21 105 1 126 21 109 1 192] 
#[1 0 237 0 129 2 245 0 146 21 113 1 124 3 45 1 125 3 49 1 126 21 113 1 166] 
#[1 2 205 0 4 17 45 0 76 21 117 1 127 21 121 1 164] 
#[0 8 218 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 2 205 0 4 21 125 1 127] 
#[1 8 210 0 5 12 73 0 64 20 217 0 65 6 181 0 74 20 221 0 75 12 81 0 81 12 85 0 83 20 225 0 85 6 197 0 90 20 229 0 92 12 97 0 95 12 101 0 120 20 233 0 212 0 77 0 213 20 237 1 163 21 1 1 180 20 241 1 191 20 245 1 220 20 249 1 223 20 253 1 224 21 1 1 230 21 5 1 231 21 129 1 232 21 13 1 233 21 17 1 234] 
#[1 0 6 0 1 0 145 0 2 0 35 0 4 8 222 0 5 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 6 0 56 0 177 0 59 0 181 0 60 2 17 0 61 0 63 0 64 6 173 0 65 2 21 0 67 2 25 0 68 17 81 0 69 0 189 0 71 2 29 0 72 6 181 0 74 21 133 0 75 1 221 0 77 2 33 0 79 6 189 0 81 2 37 0 84 21 137 0 85 6 197 0 90 0 77 0 92 6 205 0 95 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 6 209 0 117 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 21 185 0 205 21 185 0 208 21 185 0 209 21 185 0 210 21 185 0 212 0 77 0 213 21 185 0 216 21 185 0 230 21 185 0 231 21 185 0 232 21 185 0 233 21 185 0 234 21 185 0 235 21 185 0 236 21 185 0 237 21 185 0 240 21 185 0 241 21 185 0 243 21 185 0 244 21 185 0 245 21 185 0 250 21 185 0 252 21 185 0 253 21 185 1 1 21 185 1 7 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 21 185 1 21 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 21 185 1 35 0 101 1 36 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 21 185 1 153 2 1 1 158 21 185 1 163 21 185 1 180 21 185 1 185 21 177 1 187 21 181 1 188 21 185 1 189 21 185 1 190 21 185 1 191 21 185 1 219 21 185 1 242 7 49 1 244] 
#[1 0 237 0 129 21 201 0 146] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 21 205 0 49 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 21 209 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 21 209 1 137 21 209 1 138 3 21 1 139 3 21 1 141] 
#[0 21 213 0 24] 
#[1 12 73 0 64 12 77 0 65 6 181 0 74 12 81 0 81 12 85 0 83 12 89 0 92 12 97 0 95 12 101 0 120 12 121 1 180 12 109 1 220 12 113 1 223 12 117 1 224 12 121 1 230 12 125 1 231] 
#[1 0 6 0 1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 6 0 56 0 177 0 59 0 181 0 60 1 11 0 64 0 189 0 71 1 221 0 77 21 221 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 21 225 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 21 229 0 201 21 229 0 202 21 233 1 7 1 45 1 8 21 229 1 11 1 173 1 12 1 177 1 13 1 181 1 16 21 229 1 17 21 237 1 21 1 45 1 22 21 229 1 25 1 45 1 27 1 45 1 31 1 93 1 34 21 241 1 35 0 101 1 36 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 21 245 1 223 21 249 1 224 7 49 1 244] 
#[1 3 173 0 4 3 177 0 27 0 237 0 129 3 201 0 133 21 253 0 146 3 185 1 58 3 189 1 59 3 193 1 60 3 197 1 61 3 201 1 65 3 189 1 66 3 201 1 77 3 213 1 244] 
#[0 8 226 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 8 230 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 8 234 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 8 238 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 8 242 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 15 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 19 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 9 6 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 9 10 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 9 14 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 1 23 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 9 121 0 2 2 213 0 12 9 129 1 108 14 185 1 144 22 1 1 154] 
#[0 22 5 0 4] 
#[1 2 201 0 2 7 53 0 4 7 57 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 7 61 0 146 4 57 0 219 4 57 0 220 4 57 0 221 18 249 0 227 18 249 0 228 2 249 1 77 2 253 1 78 3 1 1 108 17 181 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 17 181 1 137 17 181 1 138 3 21 1 139 3 21 1 141 7 73 1 244] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 22 9 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 22 9 1 137 22 9 1 138 3 21 1 139 3 21 1 141] 
#[1 9 26 0 4 9 26 0 5 9 26 0 8 9 26 0 126 12 249 0 127 22 13 1 143] 
#[1 22 17 0 98 22 21 0 109] 
#[0 9 30 0 2 0 5 0 8 0 12 0 24 0 44 0 53 0 126 0 127] 
#[0 22 25 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 22 29 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 9 34 0 5 0 8 0 126] 
#[1 9 38 0 5 9 38 0 8 9 38 0 126 12 249 0 127 22 33 1 143] 
#[0 9 42 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 20 0 24 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 130 0 133 0 134] 
#[0 9 46 0 5 0 8 0 126] 
#[0 9 50 0 5 0 8 0 126] 
#[0 22 37 0 3] 
#[0 9 54 0 5 0 8 0 126] 
#[0 9 58 0 5 0 8 0 126] 
#[0 9 62 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 9 66 0 7 0 126] 
#[0 9 70 0 15 0 126] 
#[0 9 74 0 15 0 126] 
#[0 22 41 0 20] 
#[0 22 45 0 3] 
#[1 9 78 0 3 9 78 0 4 9 78 0 5 1 27 0 6 9 78 0 7 9 78 0 8 9 78 0 9 9 78 0 10 9 78 0 12 9 78 0 13 9 78 0 15 9 78 0 16 9 78 0 19 9 78 0 20 9 78 0 21 9 78 0 22 9 78 0 24 9 78 0 25 9 78 0 26 9 78 0 27 9 78 0 28 9 78 0 36 9 78 0 38 9 78 0 41 9 78 0 42 9 78 0 44 9 78 0 46 9 78 0 48 9 78 0 49 9 78 0 50 9 78 0 52 9 78 0 54 9 78 0 55 9 78 0 66 9 78 0 86 9 78 0 89 9 78 0 100 9 78 0 101 9 78 0 102 9 78 0 103 9 78 0 104 9 78 0 108 9 78 0 126 9 78 0 127 9 78 0 130 9 78 0 133 9 78 0 134 9 78 0 139 9 78 0 140 9 78 1 244 9 78 1 245] 
#[1 9 82 0 3 9 82 0 4 9 82 0 5 1 31 0 6 9 82 0 7 9 82 0 8 9 82 0 9 9 82 0 10 9 82 0 12 9 82 0 13 9 82 0 15 9 82 0 16 9 82 0 19 9 82 0 20 9 82 0 21 9 82 0 22 9 82 0 24 9 82 0 25 9 82 0 26 9 82 0 27 9 82 0 28 9 82 0 36 9 82 0 38 9 82 0 41 9 82 0 42 9 82 0 44 9 82 0 46 9 82 0 48 9 82 0 49 9 82 0 50 9 82 0 52 9 82 0 54 9 82 0 55 9 82 0 66 9 82 0 86 9 82 0 89 9 82 0 100 9 82 0 101 9 82 0 102 9 82 0 103 9 82 0 104 9 82 0 108 9 82 0 126 9 82 0 127 9 82 0 130 9 82 0 133 9 82 0 134 9 82 0 139 9 82 0 140 9 82 1 244 9 82 1 245] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 22 49 0 7 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 17 209 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 17 209 1 134 3 9 1 135 3 13 1 136 17 209 1 137 17 209 1 138 3 21 1 139 3 21 1 141] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 22 53 0 7 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 18 1 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 18 1 1 137 18 1 1 138 3 21 1 139 3 21 1 141] 
#[0 9 86 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 22 57 0 20] 
#[0 9 90 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 22 61 0 7] 
#[0 9 94 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 22 65 1 2 4 77 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 22 69 0 2] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 22 73 1 2 4 77 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 22 77 0 3] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 22 85 0 227 22 85 0 228 22 85 1 6 22 85 1 20 7 73 1 244] 
#[0 9 98 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 22 89 0 3] 
#[0 22 93 0 2] 
#[0 22 97 0 2] 
#[0 22 101 0 4] 
#[1 6 61 0 2 2 213 0 12 6 73 1 108 22 105 1 154] 
#[1 7 77 0 2 2 213 0 12 7 125 1 108 22 109 1 144] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 22 113 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[1 22 117 0 4 22 121 0 8] 
#[1 8 1 0 6 7 97 0 130 7 117 0 133 7 121 0 134 22 125 0 147 22 125 0 159 22 125 0 160 22 125 0 161 7 117 1 77 7 121 1 78] 
#[1 7 77 0 2 2 213 0 12 7 125 1 108 22 129 1 144] 
#[0 9 102 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 9 106 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 22 133 0 4 22 137 0 8] 
#[1 8 1 0 6 7 97 0 130 7 117 0 133 7 121 0 134 22 141 0 147 22 141 0 159 22 141 0 160 22 141 0 161 7 117 1 77 7 121 1 78] 
#[1 18 57 0 2 22 145 1 171] 
#[1 8 1 0 6 22 149 0 59 7 97 0 130 7 117 0 133 7 121 0 134 22 153 0 147 22 153 0 159 22 153 0 160 22 153 0 161 7 117 1 77 7 121 1 78 22 157 1 155 22 161 1 156 13 217 1 244] 
#[1 7 77 0 2 2 213 0 12 7 125 1 108 22 165 1 144] 
#[0 9 110 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 9 114 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 9 118 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 9 122 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 100 0 101 0 102 0 103 0 104 0 108 0 113 0 126 0 127 0 129 0 130 0 133 0 134] 
#[0 9 126 0 6 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[1 4 122 0 8 4 122 0 24 4 122 0 44 4 122 0 53 4 122 0 127 22 169 1 45] 
#[0 9 130 0 6 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[0 9 134 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 100 0 101 0 102 0 103 0 104 0 108 0 113 0 126 0 127 0 129 0 130 0 133 0 134] 
#[0 9 138 0 6 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[1 22 173 0 4 22 177 1 244] 
#[0 22 181 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 22 185 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 22 189 0 3] 
#[0 22 193 0 2] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 22 197 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 9 142 0 5 0 126] 
#[0 9 146 0 8 0 80] 
#[0 9 150 0 5 0 126] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 22 201 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 22 205 0 4] 
#[0 22 209 0 3] 
#[0 22 213 0 4] 
#[0 9 154 0 5 0 126] 
#[0 9 158 0 80] 
#[0 9 162 0 5 0 126] 
#[0 22 217 0 57] 
#[0 9 166 0 5 0 126] 
#[0 9 170 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 9 174 0 8] 
#[0 22 221 0 5] 
#[0 22 225 0 127] 
#[0 22 229 0 127] 
#[1 22 233 0 5 22 237 0 126] 
#[0 9 178 0 5 0 126] 
#[0 9 182 0 8] 
#[0 22 241 0 5] 
#[1 22 245 0 5 22 249 0 126] 
#[0 9 186 0 5 0 126] 
#[0 9 190 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[0 22 253 0 5] 
#[0 9 194 0 5 0 126] 
#[0 9 198 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[0 9 202 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[1 3 217 0 4 3 221 0 6 23 1 0 7 4 45 0 125 9 225 0 126 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 14 113 0 227 14 113 0 228 23 5 0 229 7 73 1 244] 
#[0 9 206 0 7 0 126] 
#[0 23 9 0 7] 
#[0 9 210 0 8 0 126] 
#[0 9 214 0 8 0 126] 
#[0 9 218 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 2 213 0 12 10 33 0 76 10 37 0 88 23 13 1 108 10 41 1 167 10 45 1 169] 
#[1 4 193 0 4 4 197 0 76 23 17 1 38 4 209 1 39 4 213 1 244] 
#[1 4 193 0 4 4 197 0 76 23 21 1 38 4 209 1 39 4 213 1 244] 
#[0 9 222 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 23 25 0 8] 
#[1 8 154 0 4 9 26 0 8 12 249 0 127 23 29 1 143] 
#[0 9 226 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 23 33 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 23 37 0 3] 
#[0 23 41 0 5] 
#[0 9 230 0 3 0 5 0 7 0 126] 
#[0 9 234 0 3 0 5 0 7 0 24 0 44 0 53 0 126 0 127] 
#[0 9 238 0 3 0 5 0 7 0 24 0 44 0 53 0 126 0 127] 
#[0 9 242 0 3 0 5 0 7 0 24 0 44 0 53 0 126 0 127] 
#[0 9 246 0 3 0 4 0 5 0 6 0 7 0 24 0 44 0 53 0 100 0 101 0 102 0 103 0 104 0 113 0 126 0 127 0 129] 
#[1 9 250 0 3 9 250 0 5 9 250 0 7 9 61 0 24 23 53 0 44 23 53 0 53 9 250 0 126 12 249 0 127 23 45 0 163 23 49 1 143 23 53 1 176] 
#[0 9 254 0 3 0 5 0 7 0 126] 
#[1 10 2 0 3 10 2 0 5 10 2 0 7 9 61 0 24 10 2 0 126 23 57 0 163] 
#[0 10 6 0 3 0 5 0 7 0 126] 
#[1 23 61 0 4 23 65 1 244] 
#[0 23 69 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 23 73 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 23 77 0 3] 
#[0 23 81 0 2] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 23 85 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 10 10 0 5] 
#[0 23 89 0 5] 
#[0 10 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 86 0 89 0 90 0 92 0 94 0 95 0 96 0 97 0 99 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0 127 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 139 0 140 0 141 1 243 1 244 1 245] 
#[1 0 237 0 129 2 245 0 146 23 93 1 124 3 45 1 125 3 49 1 126 23 93 1 166] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 23 97 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 23 101 0 4] 
#[0 23 105 0 3] 
#[0 23 109 0 4] 
#[0 10 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 10 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 23 113 0 201 23 113 0 202 1 45 1 8 23 113 1 11 1 173 1 12 1 177 1 13 1 181 1 16 23 113 1 17 1 45 1 22 23 113 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 10 26 0 3 0 126] 
#[0 10 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 88 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 23 117 1 114 23 117 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 23 117 1 137 23 117 1 138 3 21 1 139 3 21 1 141] 
#[0 10 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 23 121 0 3] 
#[1 23 125 0 3 23 129 0 126] 
#[0 23 133 0 141] 
#[0 10 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 10 42 0 5 0 126] 
#[0 10 46 0 5 0 126] 
#[1 6 37 0 126 10 50 0 139 10 50 0 140] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 23 137 0 201 23 137 0 202 23 137 0 204 1 45 1 8 23 137 1 11 1 173 1 12 1 177 1 13 1 181 1 16 23 137 1 17 1 45 1 22 23 137 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 10 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 10 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 10 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 10 66 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 10 70 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 23 141 0 10] 
#[1 0 145 0 2 0 18 0 4 0 154 0 5 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 4 101 0 125 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 23 153 0 154 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 23 153 0 201 23 153 0 202 1 45 1 8 23 153 1 11 1 173 1 12 1 177 1 13 1 181 1 16 23 153 1 17 1 45 1 22 23 153 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 23 153 1 101 1 253 1 102 23 157 1 103 2 1 1 158 2 5 1 244] 
#[0 10 74 0 4 0 10 0 15 0 24 0 142] 
#[0 23 161 0 15] 
#[1 8 106 0 15 23 165 1 105] 
#[0 23 169 0 15] 
#[0 10 78 0 4 0 10 0 15 0 142] 
#[1 6 110 0 4 23 173 0 133 0 31 0 141 23 173 1 77 23 185 1 80 23 185 1 81 1 245 1 82 23 185 1 84 23 185 1 97 1 253 1 102 23 189 1 107] 
#[0 10 82 0 4 0 10 0 15 0 142] 
#[0 10 86 0 4 0 141 0 143] 
#[1 4 101 0 125 23 193 0 154] 
#[0 10 90 0 4 0 8 0 20] 
#[0 10 94 0 3 0 5 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 21 0 22 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 86 0 89 0 126 0 127 0 139 0 140 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 23 197 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 23 201 0 5] 
#[1 10 98 0 4 10 98 0 8 10 98 0 20 12 249 0 127 23 205 1 143] 
#[1 23 209 0 3 6 37 0 126] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 23 213 0 205 23 213 0 208 23 213 0 209 23 213 0 210 23 213 0 216 23 213 0 230 23 213 0 231 23 213 0 232 23 213 0 233 23 213 0 234 23 213 0 235 23 213 0 236 23 213 0 237 23 213 0 240 23 213 0 241 23 213 0 243 23 213 0 244 23 213 0 245 23 213 0 250 23 213 0 252 23 213 0 253 23 213 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 23 213 1 242 2 5 1 244] 
#[1 23 217 0 3 6 37 0 126] 
#[1 0 145 0 2 23 221 0 3 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 23 225 0 201 23 225 0 202 23 225 0 204 1 45 1 8 23 225 1 11 1 173 1 12 1 177 1 13 1 181 1 16 23 225 1 17 1 45 1 22 23 225 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 23 229 0 9 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 23 233 0 201 23 233 0 202 23 233 0 204 1 45 1 8 23 233 1 11 1 173 1 12 1 177 1 13 1 181 1 16 23 233 1 17 1 45 1 22 23 233 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 23 237 0 201 23 237 0 202 23 237 0 204 1 45 1 8 23 237 1 11 1 173 1 12 1 177 1 13 1 181 1 16 23 237 1 17 1 45 1 22 23 237 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 23 241 0 201 23 241 0 202 1 45 1 8 23 241 1 11 1 173 1 12 1 177 1 13 1 181 1 16 23 241 1 17 1 45 1 22 23 241 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 23 245 0 3 6 37 0 126] 
#[0 23 249 0 3] 
#[1 0 145 0 2 23 253 0 3 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 24 1 0 201 24 1 0 202 24 1 0 204 1 45 1 8 24 1 1 11 1 173 1 12 1 177 1 13 1 181 1 16 24 1 1 17 1 45 1 22 24 1 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 24 5 0 9 6 37 0 126] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 24 9 0 205 24 9 0 208 24 9 0 209 24 9 0 210 24 9 0 216 24 9 0 230 24 9 0 231 24 9 0 232 24 9 0 233 24 9 0 234 24 9 0 235 24 9 0 236 24 9 0 237 24 9 0 240 24 9 0 241 24 9 0 243 24 9 0 244 24 9 0 245 24 9 0 250 24 9 0 252 24 9 0 253 24 9 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 24 9 1 242 2 5 1 244] 
#[1 24 13 0 3 6 37 0 126] 
#[1 0 145 0 2 24 17 0 3 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 24 21 0 201 24 21 0 202 24 21 0 204 1 45 1 8 24 21 1 11 1 173 1 12 1 177 1 13 1 181 1 16 24 21 1 17 1 45 1 22 24 21 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 24 25 0 3 6 37 0 126] 
#[0 24 29 0 3] 
#[0 8 166 0 99] 
#[0 8 170 0 99] 
#[0 24 33 0 99] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 24 37 0 201 24 37 0 202 1 45 1 8 24 37 1 11 1 173 1 12 1 177 1 13 1 181 1 16 24 37 1 17 1 45 1 22 24 37 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 24 41 0 201 24 41 0 202 1 45 1 8 24 41 1 11 1 173 1 12 1 177 1 13 1 181 1 16 24 41 1 17 1 45 1 22 24 41 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 10 102 0 1 10 102 0 2 10 102 0 4 10 102 0 5 10 102 0 6 10 102 0 8 10 102 0 36 10 102 0 37 10 102 0 38 10 102 0 39 10 102 0 40 10 102 0 53 10 102 0 56 10 102 0 59 10 102 0 60 10 102 0 61 10 102 0 62 10 102 0 64 10 102 0 65 10 102 0 67 10 102 0 68 10 102 0 69 10 102 0 70 10 102 0 71 10 102 0 72 24 45 0 73 10 102 0 74 10 102 0 75 10 102 0 77 10 102 0 79 10 102 0 81 10 102 0 84 10 102 0 85 10 102 0 90 10 102 0 92 10 102 0 94 10 102 0 95 10 102 0 96 10 102 0 97 10 102 0 106 10 102 0 110 10 102 0 111 10 102 0 113 10 102 0 114 10 102 0 115 10 102 0 116 10 102 0 117 10 102 0 118 10 102 0 119 10 102 0 120 10 102 0 121 10 102 0 122 10 102 0 123 10 102 0 124 10 102 0 129 10 102 0 131 10 102 0 133 10 102 0 134 10 102 0 135 10 102 0 137 10 102 0 138 10 102 0 141 10 102 1 244 10 102 1 245] 
#[1 24 49 0 5 24 53 0 62 24 57 0 70 24 61 0 247 24 65 0 248 24 69 0 249] 
#[0 10 106 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 10 110 0 3 24 73 1 244] 
#[0 10 114 0 3] 
#[0 24 77 0 3] 
#[0 10 118 0 8 0 9 0 126] 
#[0 10 122 0 8 0 9 0 126] 
#[0 10 126 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 10 130 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 24 81 0 5 8 1 0 6 7 97 0 130 7 117 0 133 7 121 0 134 21 45 0 147 21 45 0 159 21 45 0 160 21 45 0 161 7 117 1 77 7 121 1 78 24 85 1 181 21 53 1 182 21 57 1 183] 
#[1 10 134 0 5 1 35 0 6 24 93 0 66 0 167 0 100 0 171 0 101 0 175 0 102 0 179 0 103 4 158 0 104 4 158 0 108 4 158 0 130 4 158 0 133 4 158 0 134 24 97 1 148 24 117 1 151 24 105 1 175 24 109 1 225 24 113 1 226 24 117 1 227 24 117 1 228 24 117 1 229] 
#[0 24 129 0 4] 
#[1 24 133 0 4 4 197 0 76 24 137 1 39 4 213 1 244] 
#[0 10 138 0 8 0 126] 
#[0 10 142 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 237 0 129 16 217 0 146 24 141 1 222] 
#[0 24 145 0 8] 
#[1 0 38 0 4 0 38 0 6 12 69 0 74 1 39 0 129 16 217 0 146 16 221 1 221 16 225 1 222 0 38 1 244] 
#[1 12 73 0 64 20 217 0 65 6 181 0 74 12 81 0 81 12 85 0 83 20 225 0 85 6 197 0 90 20 229 0 92 12 97 0 95 12 101 0 120 24 149 0 212 0 77 0 213 24 153 1 163 24 173 1 180 24 157 1 191 24 161 1 220 24 165 1 223 24 169 1 224 24 173 1 230 24 177 1 231] 
#[1 0 237 0 129 24 181 0 146] 
#[1 0 42 0 4 0 42 0 6 1 43 0 129 16 217 0 146 16 237 1 221 16 225 1 222 0 42 1 244] 
#[0 10 146 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 10 150 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 10 154 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 10 158 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 10 162 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 10 166 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 10 170 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 10 174 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 24 185 0 5] 
#[1 10 178 0 5 12 73 0 64 20 217 0 65 6 181 0 74 20 221 0 75 12 81 0 81 12 85 0 83 20 225 0 85 6 197 0 90 20 229 0 92 12 97 0 95 12 101 0 120 20 233 0 212 0 77 0 213 20 237 1 163 21 1 1 180 20 241 1 191 20 245 1 220 20 249 1 223 20 253 1 224 21 1 1 230 21 5 1 231 24 189 1 234] 
#[0 10 182 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 10 186 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 8 210 0 5 12 73 0 64 20 217 0 65 6 181 0 74 20 221 0 75 12 81 0 81 12 85 0 83 20 225 0 85 6 197 0 90 20 229 0 92 12 97 0 95 12 101 0 120 20 233 0 212 0 77 0 213 20 237 1 163 21 1 1 180 20 241 1 191 20 245 1 220 20 249 1 223 20 253 1 224 21 1 1 230 21 5 1 231 24 193 1 232 21 13 1 233 21 17 1 234] 
#[1 0 6 0 1 10 190 0 5 17 81 0 69 0 67 0 75 17 89 0 85 6 197 0 90 6 205 0 95 6 209 0 117 24 197 1 36 24 233 1 57 24 233 1 153 24 233 1 163 24 233 1 185 24 233 1 191 24 233 1 205 24 225 1 209 24 229 1 210 24 233 1 211 24 233 1 214 24 233 1 216 24 233 1 217 24 233 1 218 24 233 1 219] 
#[1 8 210 0 5 12 73 0 64 20 217 0 65 6 181 0 74 20 221 0 75 12 81 0 81 12 85 0 83 20 225 0 85 6 197 0 90 20 229 0 92 12 97 0 95 12 101 0 120 20 233 0 212 0 77 0 213 20 237 1 163 21 1 1 180 20 241 1 191 20 245 1 220 20 249 1 223 20 253 1 224 21 1 1 230 21 5 1 231 25 1 1 232 21 13 1 233 21 17 1 234] 
#[0 10 194 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 10 198 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 10 202 0 5 25 5 0 24 10 202 0 126] 
#[0 25 9 0 5] 
#[1 10 206 0 5 25 13 0 126] 
#[0 10 210 0 5 0 126] 
#[0 10 214 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 10 218 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 10 222 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 8 149 0 80 25 17 1 62] 
#[1 25 21 0 8 8 149 0 80 25 25 1 62] 
#[0 25 29 0 4] 
#[0 25 33 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 25 37 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 25 41 0 3] 
#[0 25 45 0 2] 
#[0 2 6 0 8 0 23] 
#[1 10 226 0 8 25 49 0 23] 
#[0 25 53 0 8] 
#[0 10 230 0 4] 
#[0 10 234 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 2 205 0 4 25 57 1 127] 
#[0 10 238 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 25 61 0 5] 
#[1 0 6 0 1 0 6 0 56 0 6 0 64 6 173 0 65 17 81 0 69 6 181 0 74 0 49 0 81 20 225 0 85 6 197 0 90 0 77 0 92 6 205 0 95 6 209 0 117 2 57 0 120 25 65 0 212 0 77 0 213 25 69 0 216 25 73 1 7 25 77 1 21 25 81 1 35 0 101 1 36 25 85 1 153 25 89 1 163 25 93 1 180 25 97 1 185 25 101 1 191 25 105 1 219 2 185 1 244] 
#[1 4 233 0 2 4 237 0 23 0 237 0 129 24 181 0 146] 
#[0 10 242 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 10 246 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 10 250 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 10 254 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 11 2 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 11 6 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 11 10 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 11 14 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 11 18 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 25 109 0 5] 
#[1 0 6 0 1 0 145 0 2 0 35 0 4 11 22 0 5 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 6 0 56 0 177 0 59 0 181 0 60 2 17 0 61 0 63 0 64 6 173 0 65 2 21 0 67 2 25 0 68 17 81 0 69 0 189 0 71 2 29 0 72 6 181 0 74 21 133 0 75 1 221 0 77 2 33 0 79 6 189 0 81 2 37 0 84 21 137 0 85 6 197 0 90 0 77 0 92 6 205 0 95 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 6 209 0 117 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 25 113 0 205 25 113 0 208 25 113 0 209 25 113 0 210 25 113 0 212 0 77 0 213 25 113 0 216 25 113 0 230 25 113 0 231 25 113 0 232 25 113 0 233 25 113 0 234 25 113 0 235 25 113 0 236 25 113 0 237 25 113 0 240 25 113 0 241 25 113 0 243 25 113 0 244 25 113 0 245 25 113 0 250 25 113 0 252 25 113 0 253 25 113 1 1 25 113 1 7 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 25 113 1 21 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 25 113 1 35 0 101 1 36 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 25 113 1 153 2 1 1 158 25 113 1 163 25 113 1 180 25 113 1 185 25 113 1 189 25 113 1 190 25 113 1 191 25 113 1 219 25 113 1 242 7 49 1 244] 
#[0 11 26 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 11 30 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 11 34 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 11 38 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 11 42 0 4 0 23] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 25 117 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 25 117 1 137 25 117 1 138 3 21 1 139 3 21 1 141] 
#[0 25 121 0 8] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 25 125 0 49 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 25 129 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 25 129 1 137 25 129 1 138 3 21 1 139 3 21 1 141] 
#[1 4 193 0 4 4 197 0 76 0 237 0 129 25 133 0 146 4 205 1 38 4 209 1 39 4 213 1 244] 
#[1 12 149 0 2 12 153 0 27 0 237 0 129 25 137 0 146] 
#[1 0 158 0 2 0 158 0 6 1 47 0 8 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 162 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 41 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 52 0 158 0 54 0 158 0 55 0 158 0 86 0 158 0 89 0 158 0 137 0 158 0 138 0 158 1 243 0 158 1 244] 
#[0 25 145 0 8] 
#[0 11 46 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 11 50 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 11 54 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 11 58 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 11 62 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 25 149 0 24 2 126 0 80 2 126 0 126] 
#[0 25 153 0 4] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 25 157 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 11 66 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 11 70 0 4 0 5 0 8 0 126] 
#[0 25 161 0 7] 
#[0 25 165 0 7] 
#[1 11 74 0 5 11 74 0 8 11 74 0 126 12 249 0 127 25 169 1 143] 
#[0 25 173 0 3] 
#[0 11 78 0 5 0 8 0 126] 
#[1 11 82 0 4 11 82 0 5 11 82 0 8 11 82 0 126 12 249 0 127 25 177 1 143] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 25 181 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 25 181 1 137 25 181 1 138 3 21 1 139 3 21 1 141] 
#[0 25 185 0 20] 
#[1 11 86 0 3 11 86 0 4 11 86 0 5 1 51 0 6 11 86 0 7 11 86 0 8 11 86 0 9 11 86 0 10 11 86 0 12 11 86 0 13 11 86 0 15 11 86 0 16 11 86 0 19 11 86 0 20 11 86 0 21 11 86 0 22 11 86 0 24 11 86 0 25 11 86 0 26 11 86 0 27 11 86 0 28 11 86 0 36 11 86 0 38 11 86 0 41 11 86 0 42 11 86 0 44 11 86 0 46 11 86 0 48 11 86 0 49 11 86 0 50 11 86 0 52 11 86 0 54 11 86 0 55 11 86 0 66 11 86 0 86 11 86 0 89 11 86 0 100 11 86 0 101 11 86 0 102 11 86 0 103 11 86 0 104 11 86 0 108 11 86 0 126 11 86 0 127 11 86 0 130 11 86 0 133 11 86 0 134 11 86 0 139 11 86 0 140 11 86 1 244 11 86 1 245] 
#[1 11 90 0 3 11 90 0 4 11 90 0 5 1 55 0 6 11 90 0 7 11 90 0 8 11 90 0 9 11 90 0 10 11 90 0 12 11 90 0 13 11 90 0 15 11 90 0 16 11 90 0 19 11 90 0 20 11 90 0 21 11 90 0 22 11 90 0 24 11 90 0 25 11 90 0 26 11 90 0 27 11 90 0 28 11 90 0 36 11 90 0 38 11 90 0 41 11 90 0 42 11 90 0 44 11 90 0 46 11 90 0 48 11 90 0 49 11 90 0 50 11 90 0 52 11 90 0 54 11 90 0 55 11 90 0 66 11 90 0 86 11 90 0 89 11 90 0 100 11 90 0 101 11 90 0 102 11 90 0 103 11 90 0 104 11 90 0 108 11 90 0 126 11 90 0 127 11 90 0 130 11 90 0 133 11 90 0 134 11 90 0 139 11 90 0 140 11 90 1 244 11 90 1 245] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 25 189 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 25 189 1 137 25 189 1 138 3 21 1 139 3 21 1 141] 
#[0 11 94 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 25 193 0 3] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 25 197 1 2 4 77 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 25 201 0 3] 
#[0 25 205 0 4] 
#[0 11 98 0 3] 
#[0 25 209 0 3] 
#[0 25 213 0 4] 
#[0 25 217 0 3] 
#[1 3 217 0 4 3 221 0 6 0 237 0 129 25 221 0 146 25 225 0 219 25 225 0 220 25 225 0 221 25 229 0 227 25 229 0 228 25 229 1 6 25 229 1 20 25 233 1 149 25 237 1 157 7 73 1 244] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 25 241 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 25 245 0 4 25 249 0 8] 
#[1 25 253 0 4 26 1 0 8] 
#[0 26 5 0 3] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 26 9 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 11 102 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 7 77 0 2 2 213 0 12 7 125 1 108 26 13 1 144] 
#[1 26 17 0 4 26 21 0 8] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 26 25 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 11 106 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 7 77 0 2 2 213 0 12 7 125 1 108 26 29 1 144] 
#[1 26 33 0 4 26 37 0 8] 
#[1 8 1 0 6 7 97 0 130 7 117 0 133 7 121 0 134 26 41 0 147 26 41 0 159 26 41 0 160 26 41 0 161 7 117 1 77 7 121 1 78] 
#[1 7 77 0 2 2 213 0 12 7 125 1 108 26 45 1 144] 
#[0 11 110 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 11 114 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 26 49 0 4 26 53 0 8] 
#[1 26 57 0 8 9 61 0 24 26 69 0 44 26 69 0 53 12 249 0 127 26 61 0 163 26 65 1 143 26 69 1 176] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 26 73 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 12 249 0 127 26 77 1 143] 
#[0 26 81 0 4] 
#[0 26 85 0 3] 
#[1 26 89 0 4 26 93 1 244] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 26 97 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 26 101 0 3] 
#[0 26 105 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 26 109 1 9 15 209 1 10 2 181 1 21 26 113 1 24 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 26 117 0 4] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 26 121 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 0 237 0 129 26 125 0 146 26 125 1 66] 
#[0 11 118 0 8] 
#[0 26 129 0 133 1 77] 
#[0 26 133 0 133 1 77] 
#[0 11 122 0 8] 
#[1 26 137 0 5 18 221 0 130 18 225 0 133 18 225 1 77 26 141 1 239] 
#[0 11 126 0 8] 
#[0 11 130 0 8] 
#[1 26 145 0 5 18 221 0 130 18 225 0 133 18 225 1 77 26 141 1 239] 
#[0 11 134 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[0 11 138 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[0 26 149 0 7] 
#[0 11 142 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[1 4 193 0 4 4 197 0 76 26 153 1 38 4 209 1 39 4 213 1 244] 
#[0 11 146 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 11 150 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 11 154 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 75 0 77 0 79 0 81 0 84 0 85 0 92 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 10 90 0 4 11 70 0 8] 
#[0 26 157 0 5] 
#[1 10 98 0 4 11 82 0 8 12 249 0 127 26 161 1 143] 
#[0 11 158 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 11 162 0 3 0 5 0 7 0 126] 
#[1 11 166 0 3 11 166 0 5 11 166 0 7 9 61 0 24 11 166 0 126 26 165 0 163] 
#[1 11 170 0 3 11 170 0 5 11 170 0 7 11 170 0 126 12 249 0 127 26 169 1 143] 
#[0 11 174 0 3 0 5 0 7 0 126] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 26 173 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 12 249 0 127 26 177 1 143] 
#[0 26 181 0 4] 
#[0 26 185 0 3] 
#[1 26 189 0 4 26 193 1 244] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 26 197 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 26 201 0 3] 
#[0 11 178 0 3 0 5 0 7 0 8 0 9 0 126 0 127 0 139 0 140 1 245] 
#[0 11 182 0 4 0 126] 
#[0 26 205 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 26 109 1 9 15 209 1 10 2 181 1 21 26 209 1 24 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 26 213 0 4] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 26 217 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 11 186 0 3 0 126] 
#[0 11 190 0 15 0 126] 
#[0 11 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 11 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 145 0 2 26 221 0 3 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 19 181 0 125 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 19 185 0 201 19 185 0 202 1 45 1 8 19 185 1 11 1 173 1 12 1 177 1 13 1 181 1 16 19 185 1 17 1 45 1 22 19 185 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 26 225 0 10] 
#[1 6 37 0 126 11 202 0 139 11 202 0 140] 
#[1 11 206 0 15 11 129 0 142 26 229 1 85 26 229 1 86 26 229 1 87 11 145 1 88 11 149 1 89 26 233 1 106] 
#[0 11 210 0 5] 
#[0 11 214 0 5] 
#[1 0 154 0 5 26 237 1 103] 
#[0 26 241 0 5] 
#[0 11 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 243 1 244 1 245] 
#[0 26 245 0 15] 
#[0 11 222 0 4 0 141 0 143] 
#[0 11 226 0 4 0 10 0 15 0 142] 
#[0 11 230 0 4 0 10 0 15 0 142] 
#[0 11 234 0 4 0 10 0 15 0 142] 
#[0 11 238 0 4 0 10 0 15 0 142] 
#[0 26 249 0 4] 
#[1 0 26 0 5 26 253 1 102] 
#[0 27 1 0 5] 
#[0 11 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 11 246 0 4 0 8 0 20] 
#[0 27 5 0 8] 
#[0 11 250 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 27 9 0 205 27 9 0 208 27 9 0 209 27 9 0 210 27 9 0 216 27 9 0 230 27 9 0 231 27 9 0 232 27 9 0 233 27 9 0 234 27 9 0 235 27 9 0 236 27 9 0 237 27 9 0 240 27 9 0 241 27 9 0 243 27 9 0 244 27 9 0 245 27 9 0 250 27 9 0 252 27 9 0 253 27 9 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 27 9 1 242 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 27 13 0 205 27 13 0 208 27 13 0 209 27 13 0 210 27 13 0 216 27 13 0 230 27 13 0 231 27 13 0 232 27 13 0 233 27 13 0 234 27 13 0 235 27 13 0 236 27 13 0 237 27 13 0 240 27 13 0 241 27 13 0 243 27 13 0 244 27 13 0 245 27 13 0 250 27 13 0 252 27 13 0 253 27 13 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 27 13 1 242 2 5 1 244] 
#[1 27 17 0 3 6 37 0 126] 
#[1 0 145 0 2 27 21 0 3 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 27 25 0 201 27 25 0 202 27 25 0 204 1 45 1 8 27 25 1 11 1 173 1 12 1 177 1 13 1 181 1 16 27 25 1 17 1 45 1 22 27 25 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 27 29 0 9 6 37 0 126] 
#[1 27 33 0 3 6 37 0 126] 
#[0 27 37 0 3] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 27 41 0 205 27 41 0 208 27 41 0 209 27 41 0 210 27 41 0 216 27 41 0 230 27 41 0 231 27 41 0 232 27 41 0 233 27 41 0 234 27 41 0 235 27 41 0 236 27 41 0 237 27 41 0 240 27 41 0 241 27 41 0 243 27 41 0 244 27 41 0 245 27 41 0 250 27 41 0 252 27 41 0 253 27 41 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 27 41 1 242 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 27 45 0 205 27 45 0 208 27 45 0 209 27 45 0 210 27 45 0 216 27 45 0 230 27 45 0 231 27 45 0 232 27 45 0 233 27 45 0 234 27 45 0 235 27 45 0 236 27 45 0 237 27 45 0 240 27 45 0 241 27 45 0 243 27 45 0 244 27 45 0 245 27 45 0 250 27 45 0 252 27 45 0 253 27 45 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 27 45 1 242 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 27 49 0 205 27 49 0 208 27 49 0 209 27 49 0 210 27 49 0 216 27 49 0 230 27 49 0 231 27 49 0 232 27 49 0 233 27 49 0 234 27 49 0 235 27 49 0 236 27 49 0 237 27 49 0 240 27 49 0 241 27 49 0 243 27 49 0 244 27 49 0 245 27 49 0 250 27 49 0 252 27 49 0 253 27 49 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 27 49 1 242 2 5 1 244] 
#[1 27 53 0 3 6 37 0 126] 
#[1 0 145 0 2 27 57 0 3 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 27 61 0 201 27 61 0 202 27 61 0 204 1 45 1 8 27 61 1 11 1 173 1 12 1 177 1 13 1 181 1 16 27 61 1 17 1 45 1 22 27 61 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 11 254 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 27 65 0 205 27 65 0 208 27 65 0 209 27 65 0 210 27 65 0 216 27 65 0 230 27 65 0 231 27 65 0 232 27 65 0 233 27 65 0 234 27 65 0 235 27 65 0 236 27 65 0 237 27 65 0 240 27 65 0 241 27 65 0 243 27 65 0 244 27 65 0 245 27 65 0 250 27 65 0 252 27 65 0 253 27 65 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 27 65 1 242 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 27 69 0 205 27 69 0 208 27 69 0 209 27 69 0 210 27 69 0 216 27 69 0 230 27 69 0 231 27 69 0 232 27 69 0 233 27 69 0 234 27 69 0 235 27 69 0 236 27 69 0 237 27 69 0 240 27 69 0 241 27 69 0 243 27 69 0 244 27 69 0 245 27 69 0 250 27 69 0 252 27 69 0 253 27 69 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 27 69 1 242 2 5 1 244] 
#[1 27 73 0 3 6 37 0 126] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 27 77 0 205 27 77 0 208 27 77 0 209 27 77 0 210 27 77 0 216 27 77 0 230 27 77 0 231 27 77 0 232 27 77 0 233 27 77 0 234 27 77 0 235 27 77 0 236 27 77 0 237 27 77 0 240 27 77 0 241 27 77 0 243 27 77 0 244 27 77 0 245 27 77 0 250 27 77 0 252 27 77 0 253 27 77 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 27 77 1 242 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 27 81 0 205 27 81 0 208 27 81 0 209 27 81 0 210 27 81 0 216 27 81 0 230 27 81 0 231 27 81 0 232 27 81 0 233 27 81 0 234 27 81 0 235 27 81 0 236 27 81 0 237 27 81 0 240 27 81 0 241 27 81 0 243 27 81 0 244 27 81 0 245 27 81 0 250 27 81 0 252 27 81 0 253 27 81 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 27 81 1 242 2 5 1 244] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 27 85 0 201 27 85 0 202 1 45 1 8 27 85 1 11 1 173 1 12 1 177 1 13 1 181 1 16 27 85 1 17 1 45 1 22 27 85 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 27 89 0 3] 
#[0 27 93 0 3] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 27 97 0 205 27 97 0 208 27 97 0 209 27 97 0 210 27 97 0 216 27 97 0 230 27 97 0 231 27 97 0 232 27 97 0 233 27 97 0 234 27 97 0 235 27 97 0 236 27 97 0 237 27 97 0 240 27 97 0 241 27 97 0 243 27 97 0 244 27 97 0 245 27 97 0 250 27 97 0 252 27 97 0 253 27 97 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 27 97 1 242 2 5 1 244] 
#[0 12 2 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 27 101 0 201 27 101 0 202 27 101 0 204 1 45 1 8 27 101 1 11 1 173 1 12 1 177 1 13 1 181 1 16 27 101 1 17 1 45 1 22 27 101 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 27 105 0 127] 
#[1 27 109 0 5 24 53 0 62 24 57 0 70 27 113 0 248 27 117 0 249] 
#[0 12 6 0 5 0 62 0 70] 
#[1 27 121 0 5 24 53 0 62 27 125 0 247 24 65 0 248] 
#[1 12 249 0 127 27 129 1 143] 
#[1 2 9 0 4 27 133 0 210] 
#[0 12 10 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 27 137 0 5] 
#[1 0 237 0 129 27 141 0 146] 
#[1 18 57 0 2 27 145 1 171] 
#[0 27 149 0 66] 
#[0 12 14 0 5 0 6 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[1 8 1 0 6 18 133 0 100 18 133 0 101 18 133 0 102 18 133 0 103 18 133 0 104 18 133 0 108 7 97 0 130 7 117 0 133 7 121 0 134 27 153 0 147 27 153 0 159 27 153 0 160 27 153 0 161 7 117 1 77 7 121 1 78 18 133 1 146 18 133 1 148 18 133 1 174] 
#[0 27 157 0 5] 
#[1 12 18 0 5 1 35 0 6 24 93 0 66 0 167 0 100 0 171 0 101 0 175 0 102 0 179 0 103 4 158 0 104 4 158 0 108 4 158 0 130 4 158 0 133 4 158 0 134 24 97 1 148 27 161 1 151 24 105 1 175 27 161 1 227 27 161 1 228 27 161 1 229] 
#[0 12 22 0 5 0 6 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[0 12 26 0 5 0 6 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[0 12 30 0 5 0 6 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[1 10 134 0 5 1 35 0 6 24 93 0 66 0 167 0 100 0 171 0 101 0 175 0 102 0 179 0 103 4 158 0 104 4 158 0 108 4 158 0 130 4 158 0 133 4 158 0 134 24 97 1 148 24 117 1 151 24 105 1 175 27 165 1 225 24 113 1 226 24 117 1 227 24 117 1 228 24 117 1 229] 
#[1 10 134 0 5 1 35 0 6 24 93 0 66 0 167 0 100 0 171 0 101 0 175 0 102 0 179 0 103 4 158 0 104 4 158 0 108 4 158 0 130 4 158 0 133 4 158 0 134 24 97 1 148 24 117 1 151 24 105 1 175 27 169 1 225 24 113 1 226 24 117 1 227 24 117 1 228 24 117 1 229] 
#[0 27 173 0 4] 
#[0 12 34 0 8 0 126] 
#[0 12 38 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 12 42 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 12 46 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 12 50 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 12 54 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 12 58 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 12 62 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 12 66 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 12 70 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 25 149 0 24] 
#[0 12 74 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 12 78 0 5 0 64 0 65 0 74 0 75 0 81 0 83 0 85 0 90 0 92 0 95 0 120] 
#[0 27 177 0 5] 
#[1 4 9 0 1 27 181 0 75 4 21 1 236] 
#[0 12 82 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 12 86 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 12 90 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 12 94 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 12 98 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 12 102 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 27 185 0 5] 
#[1 0 6 0 1 12 106 0 5 17 81 0 69 0 67 0 75 17 89 0 85 6 197 0 90 6 205 0 95 6 209 0 117 24 197 1 36 27 189 1 57 27 189 1 153 27 189 1 163 27 189 1 185 27 189 1 191 27 189 1 205 27 189 1 211 27 189 1 214 27 189 1 216 27 189 1 217 27 189 1 218 27 189 1 219] 
#[0 12 110 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 12 114 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 12 118 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 12 122 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 12 126 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 12 130 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 27 193 0 5] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 27 201 0 201 27 201 0 202 1 45 1 8 27 201 1 11 1 173 1 12 1 177 1 13 1 181 1 16 27 201 1 17 1 45 1 22 27 201 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 27 201 1 184 2 5 1 244] 
#[0 12 134 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 12 138 0 5 8 1 0 6 7 97 0 130 7 117 0 133 7 121 0 134 21 45 0 147 21 45 0 159 21 45 0 160 21 45 0 161 7 117 1 77 7 121 1 78 27 205 1 183] 
#[0 27 209 0 8] 
#[0 12 142 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 27 213 0 8] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 27 217 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 27 221 0 4] 
#[0 27 225 0 3] 
#[0 27 229 0 4] 
#[0 27 233 0 133 1 77] 
#[1 0 237 0 129 27 237 0 146] 
#[0 12 146 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 12 150 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 12 154 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 12 158 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 12 162 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 12 166 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 12 170 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 12 174 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 12 178 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 12 182 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 12 186 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 12 190 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 12 194 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 12 198 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 12 202 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 12 206 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244] 
#[0 27 241 0 8] 
#[0 12 210 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 27 245 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 27 245 1 137 27 245 1 138 3 21 1 139 3 21 1 141] 
#[0 27 249 0 8] 
#[1 27 253 0 4 2 213 0 12 4 197 0 76 10 25 1 38 28 1 1 39 20 197 1 108 4 213 1 244] 
#[1 28 5 0 2 2 213 0 12 7 125 1 108 20 213 1 144] 
#[0 12 214 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 12 218 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 237 0 129 21 101 0 146 21 105 1 126 21 109 1 192] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 9 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 28 13 0 5] 
#[1 12 249 0 127 28 17 1 143] 
#[1 12 249 0 127 28 21 1 143] 
#[0 12 222 0 5 0 8 0 126] 
#[1 12 226 0 5 12 226 0 8 12 226 0 126 12 249 0 127 28 25 1 143] 
#[0 12 230 0 4 0 5 0 8 0 126] 
#[0 12 234 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[1 2 201 0 2 2 205 0 4 2 209 0 6 2 213 0 12 2 217 0 87 2 221 0 91 2 225 0 96 2 229 0 104 2 233 0 113 2 237 0 118 2 241 0 121 0 237 0 129 2 249 0 133 2 253 0 134 2 245 0 146 2 249 1 77 2 253 1 78 3 1 1 108 28 29 1 115 3 9 1 116 3 13 1 117 3 13 1 118 3 21 1 119 3 21 1 120 3 21 1 121 3 21 1 122 3 21 1 123 3 21 1 124 3 45 1 125 3 49 1 126 3 21 1 127 3 21 1 131 3 21 1 132 3 9 1 135 3 13 1 136 28 29 1 137 28 29 1 138 3 21 1 139 3 21 1 141] 
#[0 12 238 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[0 28 33 0 4] 
#[0 28 37 0 3] 
#[1 28 41 0 4 28 45 1 244] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 49 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 28 53 0 4] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 57 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 28 61 0 4 12 249 0 127 28 65 1 143] 
#[1 2 186 0 3 9 61 0 24 12 242 0 127 9 161 0 163] 
#[1 2 190 0 3 9 61 0 24 12 246 0 127 9 169 0 163] 
#[0 28 69 0 3] 
#[1 12 249 0 127 28 73 1 143] 
#[0 28 77 0 3] 
#[0 28 81 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 85 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 12 250 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 89 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 12 254 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 13 2 0 4 13 2 0 8 12 249 0 127 28 93 1 143] 
#[0 28 97 0 5] 
#[1 28 101 0 4 28 105 0 8] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 109 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 13 6 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 28 113 0 5] 
#[1 28 117 0 4 28 121 0 8] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 125 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 13 10 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 7 77 0 2 2 213 0 12 7 125 1 108 28 129 1 144] 
#[1 28 133 0 4 28 137 0 8] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 13 14 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 13 18 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 28 145 0 8] 
#[1 28 149 0 8 9 61 0 24 28 153 0 163] 
#[1 28 157 0 8 9 61 0 24 12 249 0 127 28 161 0 163 28 165 1 143] 
#[0 28 169 0 5] 
#[0 28 173 0 4] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 177 1 9 15 209 1 10 2 181 1 21 2 181 1 26 28 181 1 29 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 28 185 0 4] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 28 189 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 12 249 0 127 28 193 1 143] 
#[0 28 197 0 3] 
#[1 28 201 0 4 28 205 1 244] 
#[0 13 22 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 26 0 5] 
#[0 28 209 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 26 109 1 9 15 209 1 10 2 181 1 21 28 213 1 24 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 28 217 0 5] 
#[0 13 30 0 5 0 126] 
#[0 13 34 0 5 0 126] 
#[0 13 38 0 5 0 126] 
#[0 13 42 0 8] 
#[0 13 46 0 5 0 126] 
#[0 13 50 0 8] 
#[0 13 54 0 3 0 5 0 7 0 24 0 44 0 53 0 86 0 99 0 126 0 127] 
#[0 13 58 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 62 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 11 246 0 4 12 230 0 8] 
#[0 13 66 0 3 0 5 0 7 0 126] 
#[0 13 70 0 3 0 5 0 7 0 126] 
#[0 28 221 0 5] 
#[0 28 225 0 4] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 177 1 9 15 209 1 10 2 181 1 21 2 181 1 26 28 229 1 29 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 28 233 0 4] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 28 237 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 12 249 0 127 28 241 1 143] 
#[0 28 245 0 3] 
#[1 28 249 0 4 28 253 1 244] 
#[0 13 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 29 1 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 26 109 1 9 15 209 1 10 2 181 1 21 29 5 1 24 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 29 9 0 5] 
#[0 13 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 64 0 66 0 75 0 82 0 86 0 89 0 99 0 100 0 101 0 102 0 103 0 104 0 107 0 108 0 113 0 126 0 127 0 129 0 130 0 131 0 133 0 134 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 11 206 0 15 29 13 1 106] 
#[1 11 206 0 15 29 17 1 106] 
#[0 29 21 0 15] 
#[0 29 25 0 5] 
#[0 13 82 0 4 0 141 0 143] 
#[0 13 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 243 1 244 1 245] 
#[1 0 145 0 2 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 29 29 0 201 29 29 0 202 1 45 1 8 29 29 1 11 1 173 1 12 1 177 1 13 1 181 1 16 29 29 1 17 1 45 1 22 29 29 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[0 29 33 0 5] 
#[0 13 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 13 94 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 98 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 102 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 29 37 0 205 29 37 0 208 29 37 0 209 29 37 0 210 29 37 0 216 29 37 0 230 29 37 0 231 29 37 0 232 29 37 0 233 29 37 0 234 29 37 0 235 29 37 0 236 29 37 0 237 29 37 0 240 29 37 0 241 29 37 0 243 29 37 0 244 29 37 0 245 29 37 0 250 29 37 0 252 29 37 0 253 29 37 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 29 37 1 242 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 29 41 0 205 29 41 0 208 29 41 0 209 29 41 0 210 29 41 0 216 29 41 0 230 29 41 0 231 29 41 0 232 29 41 0 233 29 41 0 234 29 41 0 235 29 41 0 236 29 41 0 237 29 41 0 240 29 41 0 241 29 41 0 243 29 41 0 244 29 41 0 245 29 41 0 250 29 41 0 252 29 41 0 253 29 41 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 29 41 1 242 2 5 1 244] 
#[1 29 45 0 3 6 37 0 126] 
#[1 0 145 0 2 29 49 0 3 0 18 0 4 0 149 0 6 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 0 185 0 64 0 189 0 71 1 221 0 77 0 197 0 81 0 201 0 85 0 205 0 96 1 217 0 97 0 213 0 110 0 217 0 113 1 221 0 115 0 225 0 118 0 229 0 121 0 233 0 124 0 237 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 29 53 0 201 29 53 0 202 29 53 0 204 1 45 1 8 29 53 1 11 1 173 1 12 1 177 1 13 1 181 1 16 29 53 1 17 1 45 1 22 29 53 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 29 57 0 205 29 57 0 208 29 57 0 209 29 57 0 210 29 57 0 216 29 57 0 230 29 57 0 231 29 57 0 232 29 57 0 233 29 57 0 234 29 57 0 235 29 57 0 236 29 57 0 237 29 57 0 240 29 57 0 241 29 57 0 243 29 57 0 244 29 57 0 245 29 57 0 250 29 57 0 252 29 57 0 253 29 57 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 29 57 1 242 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 29 61 0 205 29 61 0 208 29 61 0 209 29 61 0 210 29 61 0 216 29 61 0 230 29 61 0 231 29 61 0 232 29 61 0 233 29 61 0 234 29 61 0 235 29 61 0 236 29 61 0 237 29 61 0 240 29 61 0 241 29 61 0 243 29 61 0 244 29 61 0 245 29 61 0 250 29 61 0 252 29 61 0 253 29 61 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 29 61 1 242 2 5 1 244] 
#[0 13 106 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 110 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 114 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 29 65 0 205 29 65 0 208 29 65 0 209 29 65 0 210 29 65 0 216 29 65 0 230 29 65 0 231 29 65 0 232 29 65 0 233 29 65 0 234 29 65 0 235 29 65 0 236 29 65 0 237 29 65 0 240 29 65 0 241 29 65 0 243 29 65 0 244 29 65 0 245 29 65 0 250 29 65 0 252 29 65 0 253 29 65 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 29 65 1 242 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 29 69 0 205 29 69 0 208 29 69 0 209 29 69 0 210 29 69 0 216 29 69 0 230 29 69 0 231 29 69 0 232 29 69 0 233 29 69 0 234 29 69 0 235 29 69 0 236 29 69 0 237 29 69 0 240 29 69 0 241 29 69 0 243 29 69 0 244 29 69 0 245 29 69 0 250 29 69 0 252 29 69 0 253 29 69 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 29 69 1 242 2 5 1 244] 
#[1 29 73 0 3 6 37 0 126] 
#[0 13 118 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 122 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 29 77 0 205 29 77 0 208 29 77 0 209 29 77 0 210 29 77 0 216 29 77 0 230 29 77 0 231 29 77 0 232 29 77 0 233 29 77 0 234 29 77 0 235 29 77 0 236 29 77 0 237 29 77 0 240 29 77 0 241 29 77 0 243 29 77 0 244 29 77 0 245 29 77 0 250 29 77 0 252 29 77 0 253 29 77 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 29 77 1 242 2 5 1 244] 
#[0 13 126 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 130 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 29 81 0 3] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 29 85 0 205 29 85 0 208 29 85 0 209 29 85 0 210 29 85 0 216 29 85 0 230 29 85 0 231 29 85 0 232 29 85 0 233 29 85 0 234 29 85 0 235 29 85 0 236 29 85 0 237 29 85 0 240 29 85 0 241 29 85 0 243 29 85 0 244 29 85 0 245 29 85 0 250 29 85 0 252 29 85 0 253 29 85 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 29 85 1 242 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 29 89 0 205 29 89 0 208 29 89 0 209 29 89 0 210 29 89 0 216 29 89 0 230 29 89 0 231 29 89 0 232 29 89 0 233 29 89 0 234 29 89 0 235 29 89 0 236 29 89 0 237 29 89 0 240 29 89 0 241 29 89 0 243 29 89 0 244 29 89 0 245 29 89 0 250 29 89 0 252 29 89 0 253 29 89 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 29 89 1 242 2 5 1 244] 
#[0 13 134 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 6 37 0 126 29 93 0 127] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 13 138 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 13 138 0 62 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 29 97 0 211 2 181 0 212 0 77 0 213 2 181 1 7 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 13 142 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 146 0 5 0 62 0 70] 
#[1 29 101 0 5 24 53 0 62 29 105 0 247 24 65 0 248] 
#[0 13 150 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 29 109 0 5 24 53 0 62 27 113 0 248] 
#[0 13 154 0 3] 
#[0 13 158 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 162 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 17 157 0 127] 
#[0 29 113 0 8] 
#[1 18 57 0 2 29 117 1 171] 
#[1 7 77 0 2 4 122 0 8 2 213 0 12 4 122 0 127 29 121 1 45 7 125 1 108 29 125 1 144] 
#[0 13 166 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 170 0 5 0 6 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[0 29 129 0 5] 
#[0 29 133 0 5] 
#[1 10 134 0 5 1 35 0 6 24 93 0 66 0 167 0 100 0 171 0 101 0 175 0 102 0 179 0 103 4 158 0 104 4 158 0 108 4 158 0 130 4 158 0 133 4 158 0 134 24 97 1 148 24 117 1 151 24 105 1 175 29 137 1 225 24 113 1 226 24 117 1 227 24 117 1 228 24 117 1 229] 
#[0 13 174 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 17 81 0 69 29 141 0 70 20 225 0 85 6 197 0 90 6 209 0 117 29 145 1 153 29 149 1 163 17 129 1 191 29 153 1 219] 
#[0 13 178 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 182 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 13 186 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 190 0 5 0 126] 
#[0 13 194 0 5 0 126] 
#[0 13 198 0 5 0 126] 
#[0 13 202 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 13 206 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 29 157 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 26 109 1 9 15 209 1 10 2 181 1 21 29 161 1 24 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 29 165 0 4] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 29 169 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 29 173 0 3] 
#[0 7 38 0 8 0 23] 
#[0 13 210 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 29 177 0 8] 
#[0 13 214 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 6 0 1 1 59 0 5 1 63 0 6 3 89 0 8 0 6 0 27 0 6 0 59 24 93 0 66 0 6 0 82 0 167 0 100 0 171 0 101 0 175 0 102 0 179 0 103 4 158 0 104 0 6 0 107 1 67 0 108 1 71 0 130 0 6 0 131 1 71 0 133 1 71 0 134 3 97 1 36 10 9 1 40 10 13 1 41 10 17 1 42 10 17 1 47 24 97 1 148 24 117 1 151 24 105 1 175 24 109 1 225 24 113 1 226 24 117 1 227 24 117 1 228 24 117 1 229 0 47 1 244] 
#[0 29 181 0 4] 
#[1 0 106 0 3 3 217 0 4 3 221 0 6 4 45 0 125 0 237 0 129 8 177 0 146 4 57 0 219 4 57 0 220 4 57 0 221 4 89 0 227 4 89 0 228 4 85 0 229 29 185 1 3 4 81 1 4 4 85 1 5 4 89 1 6 7 73 1 244] 
#[0 29 189 0 5] 
#[1 11 158 0 1 1 75 0 2 11 158 0 4 11 158 0 5 1 75 0 6 1 75 0 8 11 242 0 10 11 242 0 11 11 242 0 12 11 242 0 13 11 242 0 14 11 242 0 15 11 242 0 16 11 242 0 17 11 242 0 18 11 242 0 19 11 242 0 21 11 242 0 22 11 242 0 23 11 242 0 24 11 242 0 25 11 242 0 26 11 242 0 27 11 242 0 28 11 242 0 29 11 242 0 30 11 242 0 31 11 242 0 32 11 242 0 33 11 242 0 34 11 242 0 35 1 75 0 36 1 75 0 37 1 75 0 38 1 75 0 39 11 158 0 40 11 242 0 41 11 242 0 42 11 242 0 43 11 242 0 44 11 242 0 45 11 242 0 46 11 242 0 47 11 242 0 48 11 242 0 49 11 242 0 50 11 242 0 51 11 242 0 52 11 158 0 53 11 242 0 54 11 242 0 55 11 158 0 56 11 158 0 59 11 158 0 60 11 158 0 61 11 158 0 64 11 158 0 65 11 158 0 67 11 158 0 68 11 158 0 69 11 158 0 71 11 158 0 72 11 158 0 74 11 158 0 75 11 158 0 77 11 158 0 79 11 158 0 81 11 158 0 84 11 158 0 85 11 242 0 86 11 242 0 89 11 158 0 90 11 158 0 92 11 158 0 94 11 158 0 95 11 158 0 96 11 158 0 97 11 158 0 106 11 158 0 110 11 158 0 111 11 158 0 113 11 158 0 114 11 158 0 115 11 158 0 116 11 158 0 117 11 158 0 118 11 158 0 119 11 158 0 120 11 158 0 121 11 158 0 122 11 158 0 123 11 158 0 124 11 242 0 126 11 158 0 129 11 158 0 131 11 158 0 133 11 158 0 134 11 158 0 135 1 75 0 137 1 75 0 138 11 158 0 141 11 242 1 243 1 75 1 244 11 158 1 245] 
#[0 13 218 0 5 0 6 0 8 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 130 0 133 0 134] 
#[0 13 222 0 5 0 6 0 8 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 130 0 133 0 134] 
#[0 13 226 0 5 0 8 0 126] 
#[0 13 230 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 36 0 38 0 41 0 42 0 44 0 46 0 48 0 49 0 50 0 52 0 54 0 55 0 66 0 86 0 89 0 100 0 101 0 102 0 103 0 104 0 108 0 126 0 127 0 130 0 133 0 134 0 139 0 140 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 26 109 1 9 15 209 1 10 2 181 1 21 29 193 1 24 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 29 197 0 4] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 29 201 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 12 249 0 127 29 205 1 143] 
#[0 29 209 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 29 213 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 29 217 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 29 221 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 29 225 0 4] 
#[1 29 229 0 4 12 249 0 127 29 233 1 143] 
#[0 13 234 0 3] 
#[1 29 237 0 4 12 249 0 127 29 241 1 143] 
#[0 13 238 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 29 245 0 5] 
#[0 29 249 0 5] 
#[0 13 242 0 4 0 8] 
#[0 13 246 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 29 253 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 13 250 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 30 1 0 5] 
#[0 13 254 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 30 5 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 14 2 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 30 9 0 5] 
#[1 30 13 0 4 30 17 0 8] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 30 21 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 14 6 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 30 25 0 5] 
#[0 14 10 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 14 14 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 30 29 0 8] 
#[0 14 18 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 30 33 0 8] 
#[1 30 37 0 8 9 61 0 24 30 41 0 163] 
#[0 14 22 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 30 45 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 14 26 0 5] 
#[0 30 49 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 177 1 9 15 209 1 10 2 181 1 21 2 181 1 26 30 53 1 29 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 30 57 0 5] 
#[0 30 61 0 4] 
#[1 30 65 0 4 30 69 1 244] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 30 73 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 12 249 0 127 30 77 1 143] 
#[0 14 30 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 30 81 0 5] 
#[0 14 34 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 14 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 30 85 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 30 89 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 177 1 9 15 209 1 10 2 181 1 21 2 181 1 26 30 93 1 29 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 30 97 0 5] 
#[0 30 101 0 4] 
#[1 30 105 0 4 30 109 1 244] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 30 113 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 12 249 0 127 30 117 1 143] 
#[0 14 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 30 121 0 5] 
#[0 14 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 30 125 0 15] 
#[0 30 129 0 15] 
#[0 14 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 243 1 244 1 245] 
#[0 14 54 0 4 0 141 0 143] 
#[1 0 26 0 5 30 133 1 102] 
#[0 14 58 0 4 0 10 0 15 0 142] 
#[0 14 62 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 14 66 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 30 137 0 205 30 137 0 208 30 137 0 209 30 137 0 210 30 137 0 216 30 137 0 230 30 137 0 231 30 137 0 232 30 137 0 233 30 137 0 234 30 137 0 235 30 137 0 236 30 137 0 237 30 137 0 240 30 137 0 241 30 137 0 243 30 137 0 244 30 137 0 245 30 137 0 250 30 137 0 252 30 137 0 253 30 137 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 30 137 1 242 2 5 1 244] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 30 141 0 205 30 141 0 208 30 141 0 209 30 141 0 210 30 141 0 216 30 141 0 230 30 141 0 231 30 141 0 232 30 141 0 233 30 141 0 234 30 141 0 235 30 141 0 236 30 141 0 237 30 141 0 240 30 141 0 241 30 141 0 243 30 141 0 244 30 141 0 245 30 141 0 250 30 141 0 252 30 141 0 253 30 141 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 30 141 1 242 2 5 1 244] 
#[1 30 145 0 3 6 37 0 126] 
#[0 14 70 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 14 74 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 14 78 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 14 82 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 30 149 0 205 30 149 0 208 30 149 0 209 30 149 0 210 30 149 0 216 30 149 0 230 30 149 0 231 30 149 0 232 30 149 0 233 30 149 0 234 30 149 0 235 30 149 0 236 30 149 0 237 30 149 0 240 30 149 0 241 30 149 0 243 30 149 0 244 30 149 0 245 30 149 0 250 30 149 0 252 30 149 0 253 30 149 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 30 149 1 242 2 5 1 244] 
#[0 14 86 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 30 153 0 205 30 153 0 208 30 153 0 209 30 153 0 210 30 153 0 216 30 153 0 230 30 153 0 231 30 153 0 232 30 153 0 233 30 153 0 234 30 153 0 235 30 153 0 236 30 153 0 237 30 153 0 240 30 153 0 241 30 153 0 243 30 153 0 244 30 153 0 245 30 153 0 250 30 153 0 252 30 153 0 253 30 153 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 30 153 1 242 2 5 1 244] 
#[0 14 90 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 14 94 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 14 98 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 14 98 0 62 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 14 98 0 70 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 30 157 0 211 2 181 0 212 0 77 0 213 2 181 1 7 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 14 102 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 14 102 0 62 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 6 169 0 207 6 169 0 212 0 77 0 213 6 169 1 7 6 169 1 21 6 169 1 26 6 169 1 30 6 169 1 35 0 101 1 36 6 169 1 72 0 133 1 73 6 169 1 242 0 39 1 244] 
#[0 14 106 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 30 161 0 5 24 53 0 62 27 113 0 248] 
#[0 14 110 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 14 114 0 5 0 6 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[0 30 165 0 8] 
#[1 30 169 0 8 12 249 0 127 30 173 1 143] 
#[0 30 177 0 8] 
#[0 14 118 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 14 122 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 30 181 0 5] 
#[1 12 73 0 64 12 81 0 81 0 237 0 129 30 185 0 146 21 245 1 223 21 249 1 224] 
#[0 8 250 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 9 2 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[0 9 18 0 1 0 5 0 69 0 75 0 85 0 90 0 95 0 117] 
#[1 13 22 0 1 1 79 0 2 13 22 0 4 13 22 0 5 1 79 0 6 1 79 0 8 13 74 0 10 13 74 0 11 13 74 0 12 13 74 0 13 13 74 0 14 13 74 0 15 13 74 0 16 13 74 0 17 13 74 0 18 13 74 0 19 13 74 0 21 13 74 0 22 13 74 0 23 13 74 0 24 13 74 0 25 13 74 0 26 13 74 0 27 13 74 0 28 13 74 0 29 13 74 0 30 13 74 0 31 13 74 0 32 13 74 0 33 13 74 0 34 13 74 0 35 1 79 0 36 1 79 0 37 1 79 0 38 1 79 0 39 13 22 0 40 13 74 0 41 13 74 0 42 13 74 0 43 13 74 0 44 13 74 0 45 13 74 0 46 13 74 0 47 13 74 0 48 13 74 0 49 13 74 0 50 13 74 0 51 13 74 0 52 13 22 0 53 13 74 0 54 13 74 0 55 13 22 0 56 13 22 0 59 13 22 0 60 13 22 0 61 13 22 0 64 13 22 0 65 13 22 0 67 13 22 0 68 13 22 0 69 13 22 0 71 13 22 0 72 13 22 0 74 13 22 0 75 13 22 0 77 13 22 0 79 13 22 0 81 13 22 0 84 13 22 0 85 13 74 0 86 13 74 0 89 13 22 0 90 13 22 0 92 13 22 0 94 13 22 0 95 13 22 0 96 13 22 0 97 13 22 0 106 13 22 0 110 13 22 0 111 13 22 0 113 13 22 0 114 13 22 0 115 13 22 0 116 13 22 0 117 13 22 0 118 13 22 0 119 13 22 0 120 13 22 0 121 13 22 0 122 13 22 0 123 13 22 0 124 13 74 0 126 13 22 0 129 13 22 0 131 13 22 0 133 13 22 0 134 13 22 0 135 1 79 0 137 1 79 0 138 13 22 0 141 13 74 1 243 1 79 1 244 13 22 1 245] 
#[0 30 189 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 26 109 1 9 15 209 1 10 2 181 1 21 30 193 1 24 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 30 197 0 5] 
#[0 30 201 0 8] 
#[0 14 126 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 6 0 1 1 83 0 5 1 63 0 6 3 89 0 8 0 6 0 27 0 6 0 59 24 93 0 66 0 6 0 82 0 167 0 100 0 171 0 101 0 175 0 102 0 179 0 103 4 158 0 104 0 6 0 107 1 67 0 108 1 71 0 130 0 6 0 131 1 71 0 133 1 71 0 134 3 97 1 36 15 45 1 40 10 13 1 41 10 17 1 42 10 17 1 47 24 97 1 148 24 117 1 151 24 105 1 175 27 165 1 225 24 113 1 226 24 117 1 227 24 117 1 228 24 117 1 229 0 47 1 244] 
#[0 30 205 0 3] 
#[1 13 62 0 1 1 87 0 2 13 62 0 4 13 62 0 5 1 87 0 6 1 87 0 8 13 90 0 10 13 90 0 11 13 90 0 12 13 90 0 13 13 90 0 14 13 90 0 15 13 90 0 16 13 90 0 17 13 90 0 18 13 90 0 19 13 90 0 21 13 90 0 22 13 90 0 23 13 90 0 24 13 90 0 25 13 90 0 26 13 90 0 27 13 90 0 28 13 90 0 29 13 90 0 30 13 90 0 31 13 90 0 32 13 90 0 33 13 90 0 34 13 90 0 35 1 87 0 36 1 87 0 37 1 87 0 38 1 87 0 39 13 62 0 40 13 90 0 41 13 90 0 42 13 90 0 43 13 90 0 44 13 90 0 45 13 90 0 46 13 90 0 47 13 90 0 48 13 90 0 49 13 90 0 50 13 90 0 51 13 90 0 52 13 62 0 53 13 90 0 54 13 90 0 55 13 62 0 56 13 62 0 59 13 62 0 60 13 62 0 61 13 62 0 64 13 62 0 65 13 62 0 67 13 62 0 68 13 62 0 69 13 62 0 71 13 62 0 72 13 62 0 74 13 62 0 75 13 62 0 77 13 62 0 79 13 62 0 81 13 62 0 84 13 62 0 85 13 90 0 86 13 90 0 89 13 62 0 90 13 62 0 92 13 62 0 94 13 62 0 95 13 62 0 96 13 62 0 97 13 62 0 106 13 62 0 110 13 62 0 111 13 62 0 113 13 62 0 114 13 62 0 115 13 62 0 116 13 62 0 117 13 62 0 118 13 62 0 119 13 62 0 120 13 62 0 121 13 62 0 122 13 62 0 123 13 62 0 124 13 90 0 126 13 62 0 129 13 62 0 131 13 62 0 133 13 62 0 134 13 62 0 135 1 87 0 137 1 87 0 138 13 62 0 141 13 90 1 243 1 87 1 244 13 62 1 245] 
#[0 30 209 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 28 177 1 9 15 209 1 10 2 181 1 21 2 181 1 26 30 213 1 29 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 30 217 0 5] 
#[0 30 221 0 4] 
#[0 14 130 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 30 225 0 5] 
#[0 14 134 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 30 229 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 30 233 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 30 237 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 30 241 0 4] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 30 245 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 30 249 0 4] 
#[0 14 138 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 14 142 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 30 253 0 5] 
#[0 14 146 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 31 1 0 5] 
#[0 14 150 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 31 5 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 14 154 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 31 9 0 5] 
#[0 14 158 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 14 162 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 14 166 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 14 170 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 31 13 0 8] 
#[0 31 17 0 5] 
#[0 14 174 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 31 21 0 5] 
#[0 14 178 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 31 25 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 31 29 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 12 249 0 127 31 33 1 143] 
#[0 31 37 0 5] 
#[0 31 41 0 4] 
#[0 14 182 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 31 45 0 5] 
#[0 14 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 31 49 0 5] 
#[0 14 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 31 53 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 31 57 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[1 12 249 0 127 31 61 1 143] 
#[0 31 65 0 5] 
#[0 31 69 0 4] 
#[0 14 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 14 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 0 142 1 243 1 244 1 245] 
#[0 14 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 243 1 244 1 245] 
#[0 31 73 0 5] 
#[0 14 206 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 14 210 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 145 0 2 0 35 0 4 0 149 0 6 2 13 0 8 0 153 0 36 0 157 0 37 0 161 0 38 0 165 0 39 0 169 0 40 0 173 0 53 0 177 0 59 0 181 0 60 2 17 0 61 0 185 0 64 2 21 0 67 2 25 0 68 0 189 0 71 2 29 0 72 1 221 0 77 2 33 0 79 0 197 0 81 2 37 0 84 0 201 0 85 0 205 0 96 1 217 0 97 2 41 0 106 0 213 0 110 2 45 0 111 0 217 0 113 2 49 0 114 1 221 0 115 2 53 0 116 0 225 0 118 0 61 0 119 2 57 0 120 0 229 0 121 2 61 0 122 2 65 0 123 0 233 0 124 2 69 0 129 0 241 0 131 1 225 0 133 1 229 0 134 0 253 0 135 1 1 0 137 0 22 0 138 0 31 0 141 1 9 0 146 1 45 0 148 1 45 0 149 1 45 0 150 1 45 0 151 1 45 0 155 1 33 0 156 1 45 0 164 1 41 0 165 1 45 0 168 1 45 0 169 1 45 0 170 1 45 0 171 1 45 0 172 1 85 0 173 1 69 0 174 1 69 0 175 1 69 0 176 1 81 0 179 1 85 0 183 1 93 0 184 1 93 0 185 1 101 0 186 1 101 0 187 1 105 0 189 1 109 0 190 1 113 0 191 1 117 0 192 1 121 0 193 1 125 0 194 1 129 0 195 1 133 0 196 1 137 0 197 1 141 0 198 1 145 0 199 1 149 0 200 2 73 0 201 2 73 0 202 2 73 0 204 31 77 0 205 31 77 0 208 31 77 0 209 31 77 0 210 31 77 0 216 31 77 0 230 31 77 0 231 31 77 0 232 31 77 0 233 31 77 0 234 31 77 0 235 31 77 0 236 31 77 0 237 31 77 0 240 31 77 0 241 31 77 0 243 31 77 0 244 31 77 0 245 31 77 0 250 31 77 0 252 31 77 0 253 31 77 1 1 1 45 1 8 2 73 1 11 1 173 1 12 1 177 1 13 1 181 1 16 2 73 1 17 1 45 1 22 2 73 1 25 1 45 1 27 1 45 1 31 1 93 1 34 1 45 1 37 1 213 1 74 1 217 1 75 1 221 1 76 1 225 1 77 1 229 1 78 1 45 1 79 1 45 1 80 1 45 1 81 1 245 1 82 1 45 1 84 1 253 1 102 2 1 1 158 31 77 1 242 2 5 1 244] 
#[0 14 214 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 14 218 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 14 222 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 14 222 0 62 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 14 222 0 70 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 6 169 0 207 6 169 0 212 0 77 0 213 6 169 1 7 6 169 1 21 6 169 1 26 6 169 1 30 6 169 1 35 0 101 1 36 6 169 1 72 0 133 1 73 6 169 1 242 0 39 1 244] 
#[0 14 226 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 14 230 0 5 0 6 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[0 14 234 0 5 0 6 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[0 31 81 0 8] 
#[0 14 238 0 5 0 6 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[0 14 242 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 83 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 25 141 0 8] 
#[1 14 30 0 1 1 91 0 2 14 30 0 4 14 30 0 5 1 91 0 6 1 91 0 8 14 42 0 10 14 42 0 11 14 42 0 12 14 42 0 13 14 42 0 14 14 42 0 15 14 42 0 16 14 42 0 17 14 42 0 18 14 42 0 19 14 42 0 21 14 42 0 22 14 42 0 23 14 42 0 24 14 42 0 25 14 42 0 26 14 42 0 27 14 42 0 28 14 42 0 29 14 42 0 30 14 42 0 31 14 42 0 32 14 42 0 33 14 42 0 34 14 42 0 35 1 91 0 36 1 91 0 37 1 91 0 38 1 91 0 39 14 30 0 40 14 42 0 41 14 42 0 42 14 42 0 43 14 42 0 44 14 42 0 45 14 42 0 46 14 42 0 47 14 42 0 48 14 42 0 49 14 42 0 50 14 42 0 51 14 42 0 52 14 30 0 53 14 42 0 54 14 42 0 55 14 30 0 56 14 30 0 59 14 30 0 60 14 30 0 61 14 30 0 64 14 30 0 65 14 30 0 67 14 30 0 68 14 30 0 69 14 30 0 71 14 30 0 72 14 30 0 74 14 30 0 75 14 30 0 77 14 30 0 79 14 30 0 81 14 30 0 84 14 30 0 85 14 42 0 86 14 42 0 89 14 30 0 90 14 30 0 92 14 30 0 94 14 30 0 95 14 30 0 96 14 30 0 97 14 30 0 106 14 30 0 110 14 30 0 111 14 30 0 113 14 30 0 114 14 30 0 115 14 30 0 116 14 30 0 117 14 30 0 118 14 30 0 119 14 30 0 120 14 30 0 121 14 30 0 122 14 30 0 123 14 30 0 124 14 42 0 126 14 30 0 129 14 30 0 131 14 30 0 133 14 30 0 134 14 30 0 135 1 91 0 137 1 91 0 138 14 30 0 141 14 42 1 243 1 91 1 244 14 30 1 245] 
#[0 31 85 0 5] 
#[1 14 34 0 1 1 95 0 2 14 34 0 4 14 34 0 5 1 95 0 6 1 95 0 8 14 46 0 10 14 46 0 11 14 46 0 12 14 46 0 13 14 46 0 14 14 46 0 15 14 46 0 16 14 46 0 17 14 46 0 18 14 46 0 19 14 46 0 21 14 46 0 22 14 46 0 23 14 46 0 24 14 46 0 25 14 46 0 26 14 46 0 27 14 46 0 28 14 46 0 29 14 46 0 30 14 46 0 31 14 46 0 32 14 46 0 33 14 46 0 34 14 46 0 35 1 95 0 36 1 95 0 37 1 95 0 38 1 95 0 39 14 34 0 40 14 46 0 41 14 46 0 42 14 46 0 43 14 46 0 44 14 46 0 45 14 46 0 46 14 46 0 47 14 46 0 48 14 46 0 49 14 46 0 50 14 46 0 51 14 46 0 52 14 34 0 53 14 46 0 54 14 46 0 55 14 34 0 56 14 34 0 59 14 34 0 60 14 34 0 61 14 34 0 64 14 34 0 65 14 34 0 67 14 34 0 68 14 34 0 69 14 34 0 71 14 34 0 72 14 34 0 74 14 34 0 75 14 34 0 77 14 34 0 79 14 34 0 81 14 34 0 84 14 34 0 85 14 46 0 86 14 46 0 89 14 34 0 90 14 34 0 92 14 34 0 94 14 34 0 95 14 34 0 96 14 34 0 97 14 34 0 106 14 34 0 110 14 34 0 111 14 34 0 113 14 34 0 114 14 34 0 115 14 34 0 116 14 34 0 117 14 34 0 118 14 34 0 119 14 34 0 120 14 34 0 121 14 34 0 122 14 34 0 123 14 34 0 124 14 46 0 126 14 34 0 129 14 34 0 131 14 34 0 133 14 34 0 134 14 34 0 135 1 95 0 137 1 95 0 138 14 34 0 141 14 46 1 243 1 95 1 244 14 34 1 245] 
#[0 14 246 0 1 0 2 0 4 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 64 0 65 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 27 229 0 4 9 26 0 8 12 249 0 127 22 13 1 143] 
#[0 14 250 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 31 89 0 5] 
#[0 14 254 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 31 93 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 15 2 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 15 6 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 31 97 0 5] 
#[0 31 101 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 31 105 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 31 109 0 5] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 31 113 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 15 10 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 15 14 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 31 117 0 5] 
#[0 15 18 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 15 22 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 15 26 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 15 30 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 31 121 0 5] 
#[0 31 125 0 5] 
#[0 31 129 0 4] 
#[0 15 34 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 31 133 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 15 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 15 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 31 137 0 5] 
#[0 31 141 0 5] 
#[0 31 145 0 4] 
#[0 15 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 31 149 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 15 50 0 4 0 10 0 15 0 142] 
#[0 15 54 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 15 58 0 5 0 6 0 66 0 100 0 101 0 102 0 103 0 104 0 108 0 130 0 133 0 134] 
#[1 14 182 0 1 1 99 0 2 14 182 0 4 14 182 0 5 1 99 0 6 1 99 0 8 14 194 0 10 14 194 0 11 14 194 0 12 14 194 0 13 14 194 0 14 14 194 0 15 14 194 0 16 14 194 0 17 14 194 0 18 14 194 0 19 14 194 0 21 14 194 0 22 14 194 0 23 14 194 0 24 14 194 0 25 14 194 0 26 14 194 0 27 14 194 0 28 14 194 0 29 14 194 0 30 14 194 0 31 14 194 0 32 14 194 0 33 14 194 0 34 14 194 0 35 1 99 0 36 1 99 0 37 1 99 0 38 1 99 0 39 14 182 0 40 14 194 0 41 14 194 0 42 14 194 0 43 14 194 0 44 14 194 0 45 14 194 0 46 14 194 0 47 14 194 0 48 14 194 0 49 14 194 0 50 14 194 0 51 14 194 0 52 14 182 0 53 14 194 0 54 14 194 0 55 14 182 0 56 14 182 0 59 14 182 0 60 14 182 0 61 14 182 0 64 14 182 0 65 14 182 0 67 14 182 0 68 14 182 0 69 14 182 0 71 14 182 0 72 14 182 0 74 14 182 0 75 14 182 0 77 14 182 0 79 14 182 0 81 14 182 0 84 14 182 0 85 14 194 0 86 14 194 0 89 14 182 0 90 14 182 0 92 14 182 0 94 14 182 0 95 14 182 0 96 14 182 0 97 14 182 0 106 14 182 0 110 14 182 0 111 14 182 0 113 14 182 0 114 14 182 0 115 14 182 0 116 14 182 0 117 14 182 0 118 14 182 0 119 14 182 0 120 14 182 0 121 14 182 0 122 14 182 0 123 14 182 0 124 14 194 0 126 14 182 0 129 14 182 0 131 14 182 0 133 14 182 0 134 14 182 0 135 1 99 0 137 1 99 0 138 14 182 0 141 14 194 1 243 1 99 1 244 14 182 1 245] 
#[0 15 62 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 31 153 0 5] 
#[0 15 66 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 15 70 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 31 157 0 5] 
#[0 15 74 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 31 161 0 5] 
#[0 15 78 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 15 82 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 15 86 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 31 165 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 31 169 0 5] 
#[0 15 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 15 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[1 0 6 0 1 0 10 0 2 0 10 0 4 6 90 0 5 0 10 0 6 0 10 0 8 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 53 0 6 0 56 0 7 0 59 0 10 0 60 0 10 0 61 0 11 0 64 0 77 0 65 0 10 0 67 0 10 0 68 0 10 0 71 0 10 0 72 0 10 0 77 0 10 0 79 0 15 0 81 0 10 0 84 0 10 0 85 0 77 0 92 0 10 0 96 0 10 0 97 0 10 0 106 0 10 0 110 0 10 0 111 0 10 0 113 0 10 0 114 0 10 0 115 0 10 0 116 0 10 0 118 0 23 0 119 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 123 0 10 0 124 0 10 0 129 0 10 0 131 0 10 0 133 0 10 0 134 0 10 0 135 0 10 0 137 0 10 0 138 0 10 0 141 2 181 0 207 15 201 0 211 2 181 0 212 0 77 0 213 2 181 1 7 19 141 1 9 15 209 1 10 2 181 1 21 2 181 1 26 2 181 1 30 31 173 1 33 2 181 1 35 0 101 1 36 2 181 1 72 0 133 1 73 2 181 1 242 0 39 1 244] 
#[0 31 177 0 5] 
#[0 15 98 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 15 102 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 15 106 0 1 0 5 0 6 0 8 0 27 0 59 0 82 0 107 0 108 0 126 0 130 0 131 0 133 0 134 1 244 1 245] 
#[0 31 181 0 5] 
#[0 15 110 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 31 185 0 5] 
#[0 15 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245] 
#[0 15 118 0 1 0 2 0 4 0 5 0 6 0 8 0 36 0 37 0 38 0 39 0 40 0 53 0 56 0 59 0 60 0 61 0 62 0 64 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 79 0 81 0 84 0 85 0 90 0 92 0 94 0 95 0 96 0 97 0 106 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 129 0 131 0 133 0 134 0 135 0 137 0 138 0 141 1 244 1 245] 
#[0 15 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 54 0 55 0 86 0 89 0 99 0 126 0 127 0 137 0 138 0 139 0 140 1 243 1 244 1 245]
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
		ifTrue: [  "Handle the #!/program/to/run lines"
			scanner stream
				upToAny: {Character cr.
						Character lf}.
			self position: scanner stream position.
			scanner comments add: (1 to: self position).
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
JSParser >> reduceActionForAsyncFunctionDeclaration1: nodes [
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
JSParser >> reduceActionForAsyncFunctionDeclaration2: nodes [
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
JSParser >> reduceActionForAsyncFunctionDeclaration3: nodes [
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
JSParser >> reduceActionForAsyncFunctionDeclaration4: nodes [
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
JSParser >> reduceActionForAsyncFunctionDeclaration5: nodes [
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
JSParser >> reduceActionForAsyncFunctionDeclaration6: nodes [
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
JSParser >> reduceActionForAsyncFunctionDeclaration7: nodes [
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
JSParser >> reduceActionForAsyncFunctionDeclaration8: nodes [
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
JSParser >> reduceActionForAsyncGeneratorDeclaration1: nodes [
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
JSParser >> reduceActionForAsyncGeneratorDeclaration2: nodes [
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
	result semicolon: (nodes at: 3).
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
JSParser >> reduceActionForCatchParameter2: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 1).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
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
JSParser >> reduceActionForClassElement4: nodes [
	| result |
	result := nodes at: 2.
	result addFirstNodes: (nodes at: 1) to: result decorators.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassElement5: nodes [
	| result |
	result := nodes at: 3.
	result addFirstNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassElement6: nodes [
	| result |
	result := JSFieldDefinitionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result variable: ((nodes at: 2) at: 1).
	result equalToken: ((nodes at: 2) at: 2).
	result value: ((nodes at: 2) at: 3).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForClassElement7: nodes [
	| result |
	result := JSFieldDefinitionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result variable: ((nodes at: 3) at: 1).
	result equalToken: ((nodes at: 3) at: 2).
	result value: ((nodes at: 3) at: 3).
	result semicolon: (nodes at: 4).
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
	result semicolon: (nodes at: 3).
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
JSParser >> reduceActionForDecoratorExpression__decorator__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForDecoratorExpression__decorator__2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
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
JSParser >> reduceActionForFromClause1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForFunctionDeclaration1: nodes [
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
JSParser >> reduceActionForFunctionDeclaration2: nodes [
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
JSParser >> reduceActionForFunctionDeclaration3: nodes [
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
JSParser >> reduceActionForFunctionDeclaration4: nodes [
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
JSParser >> reduceActionForGeneratorDeclaration1: nodes [
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
JSParser >> reduceActionForGeneratorDeclaration2: nodes [
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
JSParser >> reduceActionForImportAssertion1: nodes [
	| result |
	result := JSImportAssertionNode new.
	result assertToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportAssertion2: nodes [
	| result |
	result := JSImportAssertionNode new.
	result assertToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addToken: (nodes at: 3) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportAssertion3: nodes [
	| result |
	result := JSImportAssertionNode new.
	result assertToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result entries.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportAssertion4: nodes [
	| result |
	result := JSImportAssertionNode new.
	result assertToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result entries.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result addToken: (nodes at: 4) to: result commas.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportAssertionEntry1: nodes [
	| result |
	result := JSImportAssertionEntryNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportAttributes1: nodes [
	| result |
	result := JSImportAttributesNode new.
	result withToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportAttributes2: nodes [
	| result |
	result := JSImportAttributesNode new.
	result withToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addToken: (nodes at: 3) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportAttributes3: nodes [
	| result |
	result := JSImportAttributesNode new.
	result withToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result entries.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportAttributes4: nodes [
	| result |
	result := JSImportAttributesNode new.
	result withToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result entries.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result addToken: (nodes at: 4) to: result commas.
	result rightBrace: (nodes at: 5).
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
JSParser >> reduceActionForImportCall2: nodes [
	| result |
	result := JSImportCallExpressionNode new.
	result importToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result comma: (nodes at: 4).
	result right: (nodes at: 5).
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
	result addNodes: ((nodes at: 2) at: 1) to: result imports.
	result comma: ((nodes at: 2) at: 2).
	result typeToken: ((nodes at: 2) at: 3).
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	result importMetadata: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportDeclaration3: nodes [
	| result |
	result := JSImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result from: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JSParser >> reduceActionForImportDeclaration4: nodes [
	| result |
	result := JSImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result from: (nodes at: 2).
	result importMetadata: (nodes at: 3).
	result semicolon: (nodes at: 4).
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
	result addNodes: (nodes at: 1) to: result decorators.
	result signature: (nodes at: 2).
	result semicolon: (nodes at: 3).
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
	result semicolon: (nodes at: 3).
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
JSParser >> reduceActionForUsingDeclaration1: nodes [
	| result |
	result := JSLexicalDeclarationNode new.
	result typeToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result bindings.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result semicolon: (nodes at: 3).
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
