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
#[ 0 22 0 205] 
#[ 0 14 1 197] 
#[ 0 30 0 34 0 38 0 42] 
#[ 0 14 4 37] 
#[ 1 214 1 218] 
#[ 1 222 1 226] 
#[ 1 230 1 234] 
#[ 1 242 1 246] 
#[ 1 250 1 254] 
#[ 1 250 1 254 2 2] 
#[ 2 26 2 30] 
#[ 2 46 2 50] 
#[ 2 98 2 102] 
#[ 2 106 2 110] 
#[ 2 114 2 118] 
#[ 2 122 2 126] 
#[ 2 130 7 237] 
#[ 2 158 8 157] 
#[ 2 162 8 161] 
#[ 1 110 2 170] 
#[ 0 134 3 70] 
#[ 0 134 9 101] 
#[ 2 130 9 169] 
#[ 2 130 9 173] 
#[ 2 130 9 177] 
#[ 0 185 2 130] 
#[ 0 14 11 105] 
#[ 3 150 4 54] 
#[ 4 106 4 110] 
#[ 4 114 4 118] 
#[ 4 134 4 138] 
#[ 2 142 3 70] 
#[ 1 110 4 238] 
#[ 1 110 4 242] 
#[ 4 254 10 137] 
#[ 3 106 5 58] 
#[ 0 14 14 165] 
#[ 2 130 8 29] 
#[ 2 130 8 37] 
#[ 0 189 2 130] 
#[ 0 193 2 130] 
#[ 0 22 6 146] 
#[ 2 142 4 230] 
#[ 0 202 16 53] 
#[ 5 194 6 222] 
#[ 0 134 16 241] 
#[ 0 134 7 14] 
#[ 5 117 7 18] 
#[ 5 61 7 18] 
#[ 4 162 5 46] 
#[ 7 66 8 161] 
#[ 1 110 7 70] 
#[ 0 134 5 82] 
#[ 5 134 7 138] 
#[ 0 46 0 185] 
#[ 0 50 0 185] 
#[ 10 106 15 1] 
#[ 11 118 11 226] 
#[ 12 58 12 158] 
#[ 12 78 12 162] 
#[ 12 238 13 70] 
#[ 12 242 13 74] 
#[ 3 90 17 185] 
#[ 13 130 13 186]
	).
]

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2020-09-21T14:23:08.861414-05:00'
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
	DecoratorExpression #TS 
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
<questionDot> <question> <ts> <eqGt>;

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
: 	\`\`\? [a-zA-Z_]+ [^\`]+ \`
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
:	<abstract> 'abstract'?  <class> 'classToken' Identifier 'name'? ClassTail {{ClassExpression}}	##
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
:	<ts> DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? TSIdentifierOrBindingPattern 'variable' TypeAnnotation Initializer? {{VariableDeclaration}}
|	<ts> DecoratorExpression 'decorator'* AccessibilityModifier 'modifier' TSIdentifierOrBindingPattern 'variable' Initializer? {{VariableDeclaration}}
|	<ts> DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? TSIdentifierOrBindingPattern 'variable' <question> 'questionMarkToken' TypeAnnotation? {{VariableDeclaration}}	##
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
ClassDeclaration
:	<ts> DecoratorExpression 'decorator'* <abstract> 'abstract'?  <class> 'classToken' Identifier 'name'? TypeParameters 'typeParameters' ClassTail {{ClassExpression}} 	##
|	<ts> DecoratorExpression 'decorator' DecoratorExpression 'decorator'* <abstract> 'abstract'?  <class> 'classToken' Identifier 'name'? ClassTail {{ClassExpression}} 	##
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
:	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <constructor> 'constructorToken' <leftParen> 'leftParen' FormalParameters <rightParen> 'rightParen' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}   ## changed ParameterList
|	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <constructor> 'constructorToken' <leftParen> 'leftParen' FormalParameters <rightParen> 'rightParen' <semicolon> 'semicolon' {{}}   ## changed ParameterList
;
PropertyMemberDeclaration
:	MemberVariableDeclaration
|	MemberFunctionDeclaration
|	MemberAccessorDeclaration
;
MemberVariableDeclaration
:	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' TypeAnnotation? Initializer? <semicolon> 'semicolon' {{}}
;
MemberFunctionDeclaration
:	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' CallSignature 'signature' <leftBrace> 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}
|	DecoratorExpression 'decorator'* AccessibilityModifier 'modifier'? <static> 'staticToken'? PropertyName 'name' CallSignature 'signature' <semicolon> 'semicolon' {{}}
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
;

DecoratorExpression
:	<at> 'atToken' CallExpression 'expression' {{DecoratorExpression}}
|	<at> 'atToken' Identifier 'expression' {{DecoratorExpression}}
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
	#(200 0 #reduceActionForStartStatementListItem1: 23258113 true ) 
	#(285 0 #reduceActionForModule1: 36512769 false ) 
	#(144 0 #reduceActionForValidationNotArrowFunction1: 11379713 true ) 
	#(153 0 #reduceActionForStartTemplateLiteral1: 12595201 true ) 
	#(331 0 #reduceActionForSwitchToJSX1: 41779201 true ) 
	#(283 0 #reduceActionForScript1: 36454401 false ) 
	#(418 0 #reduceActionForImplementationScript1: 57222145 false ) 
	#(426 0 #reduceActionForImplementationScript1: 58162177 false ) 
	#(429 0 #reduceActionForImplementationScript1: 58603521 false ) 
	#(422 0 #reduceActionForImplementationScript1: 57764865 false ) 
	#(202 1 #liftFirstValue: 23430146 false ) 
	#(202 1 #liftFirstValue: 23430145 false ) 
	#(288 1 #liftFirstValue: 36645891 false ) 
	#(199 1 #liftFirstValue: 23160834 false ) 
	#(133 1 #liftFirstValue: 8716289 false ) 
	#(285 1 #reduceActionForModule2: 36512770 false ) 
	#(286 1 #reduceActionForModuleBody1: 36541441 false ) 
	#(287 1 #reduceActionForModuleItemList1: 36572161 false ) 
	#(288 1 #liftFirstValue: 36645889 false ) 
	#(288 1 #liftFirstValue: 36645890 false ) 
	#(246 0 #reduceActionForFormalParameters1: 31418369 false ) 
	#(305 1 #liftFirstValue: 39117826 false ) 
	#(304 1 #liftFirstValue: 39094273 false ) 
	#(136 1 #reduceActionForPrimaryExpression1: 9123841 false ) 
	#(305 1 #liftFirstValue: 39117825 false ) 
	#(266 1 #reduceActionForYieldExpression1: 34007041 false ) 
	#(134 1 #reduceActionForIdentifier1: 8828929 false ) 
	#(306 1 #liftFirstValue: 39154689 false ) 
	#(307 1 #liftFirstValue: 39190529 false ) 
	#(308 1 #reduceActionForRegularExpressionLiteral1: 39228417 false ) 
	#(152 1 #reduceActionForTemplateLiteral1: 12439553 false ) 
	#(332 0 #reduceActionForSwitchToJSXText1: 41820161 true ) 
	#(136 1 #liftFirstValue: 9123842 false ) 
	#(254 1 #reduceActionForArrowParameterDeclaration1: 32064513 false ) 
	#(156 1 #liftFirstValue: 12865537 false ) 
	#(136 1 #liftFirstValue: 9123853 false ) 
	#(136 1 #liftFirstValue: 9123843 false ) 
	#(136 1 #liftFirstValue: 9123844 false ) 
	#(136 1 #liftFirstValue: 9123845 false ) 
	#(136 1 #liftFirstValue: 9123852 false ) 
	#(160 1 #liftFirstValue: 13763585 false ) 
	#(156 1 #liftFirstValue: 12865541 false ) 
	#(156 1 #liftFirstValue: 12865542 false ) 
	#(158 1 #liftFirstValue: 13632513 false ) 
	#(170 1 #liftFirstValue: 15855617 false ) 
	#(170 1 #liftFirstValue: 15855618 false ) 
	#(161 1 #liftFirstValue: 13853698 false ) 
	#(161 1 #liftFirstValue: 13853699 false ) 
	#(170 1 #liftFirstValue: 15855619 false ) 
	#(171 1 #liftFirstValue: 15937537 false ) 
	#(172 1 #liftFirstValue: 16306177 false ) 
	#(173 1 #liftFirstValue: 16758785 false ) 
	#(174 1 #liftFirstValue: 16928769 false ) 
	#(176 1 #liftFirstValue: 17188865 false ) 
	#(177 1 #liftFirstValue: 17486849 false ) 
	#(178 1 #liftFirstValue: 17871873 false ) 
	#(179 1 #liftFirstValue: 18610177 false ) 
	#(180 1 #liftFirstValue: 19140609 false ) 
	#(181 1 #liftFirstValue: 19304449 false ) 
	#(182 1 #liftFirstValue: 19472385 false ) 
	#(183 1 #liftFirstValue: 19639297 false ) 
	#(186 1 #liftFirstValue: 20136962 false ) 
	#(184 1 #liftFirstValue: 19809281 false ) 
	#(187 1 #liftFirstValue: 20210689 false ) 
	#(187 1 #liftFirstValue: 20210690 false ) 
	#(186 1 #liftFirstValue: 20136961 false ) 
	#(188 1 #liftFirstValue: 20284417 false ) 
	#(189 1 #liftFirstValue: 20511745 false ) 
	#(191 1 #liftFirstValue: 22239233 false ) 
	#(136 1 #liftFirstValue: 9123846 false ) 
	#(189 1 #liftFirstValue: 20511747 false ) 
	#(253 1 #reduceActionForArrowParameters1: 31974401 false ) 
	#(253 1 #reduceActionForArrowParameters2: 31974402 false ) 
	#(189 1 #liftFirstValue: 20511748 false ) 
	#(136 1 #liftFirstValue: 9123848 false ) 
	#(189 1 #liftFirstValue: 20511746 false ) 
	#(136 1 #liftFirstValue: 9123850 false ) 
	#(136 1 #liftFirstValue: 9123849 false ) 
	#(172 1 #liftFirstValue: 16306185 false ) 
	#(136 1 #liftFirstValue: 9123847 false ) 
	#(138 1 #reduceActionForLiteral1: 10224641 false ) 
	#(138 1 #reduceActionForLiteral2: 10224642 false ) 
	#(138 1 #reduceActionForLiteral4: 10224644 false ) 
	#(138 1 #reduceActionForLiteral3: 10224643 false ) 
	#(136 1 #liftFirstValue: 9123851 false ) 
	#(136 1 #liftFirstValue: 9123854 false ) 
	#(309 1 #liftFirstValue: 39480321 false ) 
	#(333 0 #reduceActionForStartJSXText1: 41869313 true ) 
	#(136 1 #liftFirstValue: 9123855 false ) 
	#(219 1 #reduceActionForEmptyStatement1: 25777153 false ) 
	#(227 0 #reduceActionForCheckEOL1: 29265921 true ) 
	#(192 1 #liftFirstValue: 22390790 false ) 
	#(192 1 #liftFirstValue: 22390785 false ) 
	#(196 1 #liftFirstValue: 22940673 false ) 
	#(192 1 #liftFirstValue: 22390786 false ) 
	#(192 1 #liftFirstValue: 22390787 false ) 
	#(192 1 #liftFirstValue: 22390788 false ) 
	#(192 1 #liftFirstValue: 22390789 false ) 
	#(195 1 #liftFirstValue: 22878209 false ) 
	#(192 1 #liftFirstValue: 22390791 false ) 
	#(192 1 #liftFirstValue: 22390792 false ) 
	#(192 1 #liftFirstValue: 22390793 false ) 
	#(192 1 #liftFirstValue: 22390794 false ) 
	#(195 1 #liftFirstValue: 22878210 false ) 
	#(192 1 #liftFirstValue: 22390795 false ) 
	#(192 1 #liftFirstValue: 22390796 false ) 
	#(192 1 #liftFirstValue: 22390797 false ) 
	#(192 1 #liftFirstValue: 22390798 false ) 
	#(284 1 #reduceActionForModuleBody1: 36483073 false ) 
	#(198 1 #reduceActionForModuleItemList1: 23063553 false ) 
	#(283 1 #reduceActionForScript2: 36454402 false ) 
	#(421 1 #liftFirstValue: 57504769 false ) 
	#(421 1 #liftFirstValue: 57504770 false ) 
	#(421 1 #liftFirstValue: 57504771 false ) 
	#(421 1 #liftFirstValue: 57504772 false ) 
	#(421 1 #liftFirstValue: 57504773 false ) 
	#(428 1 #liftFirstValue: 58361858 false ) 
	#(431 1 #liftFirstValue: 58784770 false ) 
	#(421 1 #liftFirstValue: 57504775 false ) 
	#(425 1 #liftFirstValue: 58022914 false ) 
	#(421 1 #liftFirstValue: 57504774 false ) 
	#(425 1 #liftFirstValue: 58022913 false ) 
	#(421 1 #liftFirstValue: 57504776 false ) 
	#(421 1 #liftFirstValue: 57504777 false ) 
	#(425 1 #liftFirstValue: 58022915 false ) 
	#(421 1 #liftFirstValue: 57504779 false ) 
	#(428 1 #liftFirstValue: 58361859 false ) 
	#(425 1 #liftFirstValue: 58022917 false ) 
	#(415 1 #reduceActionForSourceFile1: 56981505 false ) 
	#(415 1 #reduceActionForSourceFile1: 56981506 false ) 
	#(416 1 #reduceActionForModuleBody1: 57081857 false ) 
	#(418 1 #reduceActionForModuleBody1: 57222146 false ) 
	#(419 1 #reduceActionForModuleItemList1: 57278465 false ) 
	#(428 1 #liftFirstValue: 58361857 false ) 
	#(420 1 #liftFirstValue: 57421825 false ) 
	#(417 1 #reduceActionForModuleBody1: 57156609 false ) 
	#(422 1 #reduceActionForModuleBody1: 57764866 false ) 
	#(423 1 #reduceActionForModuleItemList1: 57815041 false ) 
	#(424 1 #liftFirstValue: 57946113 false ) 
	#(431 1 #liftFirstValue: 58784769 false ) 
	#(416 1 #reduceActionForModuleBody1: 57081858 false ) 
	#(426 1 #reduceActionForModuleBody1: 58162178 false ) 
	#(427 1 #reduceActionForModuleItemList1: 58218497 false ) 
	#(417 1 #reduceActionForModuleBody1: 57156610 false ) 
	#(429 1 #reduceActionForModuleBody1: 58603522 false ) 
	#(430 1 #reduceActionForModuleItemList1: 58653697 false ) 
	#(428 1 #liftFirstValue: 58361860 false ) 
	#(428 1 #liftFirstValue: 58361861 false ) 
	#(431 1 #liftFirstValue: 58784771 false ) 
	#(428 1 #liftFirstValue: 58361862 false ) 
	#(431 1 #liftFirstValue: 58784772 false ) 
	#(428 1 #liftFirstValue: 58361863 false ) 
	#(431 1 #liftFirstValue: 58784773 false ) 
	#(428 1 #liftFirstValue: 58361864 false ) 
	#(431 1 #liftFirstValue: 58784774 false ) 
	#(421 1 #liftFirstValue: 57504778 false ) 
	#(425 1 #liftFirstValue: 58022916 false ) 
	#(420 1 #liftFirstValue: 57421826 false ) 
	#(424 1 #liftFirstValue: 57946114 false ) 
	#(373 0 #reduceActionForImplementationScript1: 45824001 false ) 
	#(369 1 #reduceActionForThisType1: 45350913 false ) 
	#(351 1 #reduceActionForPredefinedType1: 43389953 false ) 
	#(353 1 #reduceActionForTypeName1: 43536385 false ) 
	#(354 1 #reduceActionForNamespaceName1: 43642881 false ) 
	#(349 1 #reduceActionForLiteralType1: 43227137 false ) 
	#(349 1 #reduceActionForLiteralType1: 43227138 false ) 
	#(344 1 #liftFirstValue: 42691585 false ) 
	#(345 1 #liftFirstValue: 42768386 false ) 
	#(346 1 #liftFirstValue: 42845186 false ) 
	#(347 1 #liftFirstValue: 42906625 false ) 
	#(348 1 #liftFirstValue: 43049993 false ) 
	#(348 1 #liftFirstValue: 43049985 false ) 
	#(348 1 #liftFirstValue: 43049986 false ) 
	#(348 1 #liftFirstValue: 43049987 false ) 
	#(348 1 #liftFirstValue: 43049988 false ) 
	#(348 1 #liftFirstValue: 43049989 false ) 
	#(348 1 #liftFirstValue: 43049990 false ) 
	#(345 1 #liftFirstValue: 42768385 false ) 
	#(346 1 #liftFirstValue: 42845185 false ) 
	#(344 1 #liftFirstValue: 42691586 false ) 
	#(344 1 #liftFirstValue: 42691587 false ) 
	#(348 1 #liftFirstValue: 43049991 false ) 
	#(348 1 #liftFirstValue: 43049992 false ) 
	#(300 1 #reduceActionForExportFromClause1: 38544385 false ) 
	#(299 2 #reduceActionForExportDeclaration4: 37860356 false ) 
	#(193 1 #liftFirstValue: 22673409 false ) 
	#(193 1 #liftFirstValue: 22673411 false ) 
	#(299 2 #reduceActionForExportDeclaration3: 37860355 false ) 
	#(194 1 #liftFirstValue: 22752257 false ) 
	#(194 1 #liftFirstValue: 22752258 false ) 
	#(194 1 #liftFirstValue: 22752260 false ) 
	#(194 1 #liftFirstValue: 22752259 false ) 
	#(193 1 #liftFirstValue: 22673410 false ) 
	#(300 1 #reduceActionForExportFromClause3: 38544387 false ) 
	#(298 1 #liftFirstValue: 37825537 false ) 
	#(290 1 #reduceActionForImportClause1: 36892673 false ) 
	#(290 1 #reduceActionForImportClause1: 36892674 false ) 
	#(290 1 #reduceActionForImportClause1: 36892675 false ) 
	#(291 1 #liftFirstValue: 37145601 false ) 
	#(297 1 #liftFirstValue: 37783553 false ) 
	#(199 2 #liftSecondValue: 23160833 false ) 
	#(204 1 #reduceActionForArrowParameterDeclaration1: 23560193 false ) 
	#(203 1 #reduceActionForNamespaceName1: 23461889 false ) 
	#(208 1 #liftFirstValue: 24107009 false ) 
	#(208 1 #liftFirstValue: 24107010 false ) 
	#(204 1 #liftFirstValue: 23560196 false ) 
	#(204 1 #liftFirstValue: 23560197 false ) 
	#(287 2 #reduceActionForModuleItemList2: 36572162 false ) 
	#(217 1 #reduceActionForArrowParameterDeclaration1: 25508865 false ) 
	#(216 1 #reduceActionForBindingElement2: 25398274 false ) 
	#(249 1 #liftFirstValue: 31788033 false ) 
	#(216 1 #liftFirstValue: 25398273 false ) 
	#(248 1 #liftFirstValue: 31741953 false ) 
	#(245 1 #reduceActionForModuleBody1: 31373313 false ) 
	#(246 1 #reduceActionForFormalParameters3: 31418371 false ) 
	#(246 1 #reduceActionForFormalParameters2: 31418370 false ) 
	#(247 1 #reduceActionForNamespaceName1: 31620097 false ) 
	#(139 2 #reduceActionForArrayLiteral1: 10406913 false ) 
	#(141 1 #reduceActionForModuleItemList1: 10886145 false ) 
	#(140 1 #reduceActionForNamespaceName1: 10668035 false ) 
	#(140 1 #reduceActionForNamespaceName1: 10668033 false ) 
	#(172 2 #reduceActionForUnaryExpression5: 16306181 false ) 
	#(171 2 #reduceActionForUpdateExpression4: 15937540 false ) 
	#(172 2 #reduceActionForUnaryExpression5: 16306182 false ) 
	#(171 2 #reduceActionForUpdateExpression4: 15937541 false ) 
	#(172 2 #reduceActionForUnaryExpression5: 16306183 false ) 
	#(172 2 #reduceActionForUnaryExpression5: 16306184 false ) 
	#(275 2 #reduceActionForAwaitExpression1: 35733505 false ) 
	#(277 2 #reduceActionForClassExpression1: 35931137 false ) 
	#(172 2 #reduceActionForUnaryExpression5: 16306178 false ) 
	#(160 2 #reduceActionForNewExpression2: 13763586 false ) 
	#(162 2 #reduceActionForSuperCall1: 14337025 false ) 
	#(172 2 #reduceActionForUnaryExpression5: 16306180 false ) 
	#(172 2 #reduceActionForUnaryExpression5: 16306179 false ) 
	#(266 2 #reduceActionForYieldExpression2: 34007042 false ) 
	#(156 2 #reduceActionForMemberExpression4: 12865540 false ) 
	#(161 2 #reduceActionForCallExpression1: 13853697 false ) 
	#(166 2 #reduceActionForOptionalExpression1: 15001601 false ) 
	#(161 2 #reduceActionForMemberExpression4: 13853703 false ) 
	#(161 2 #reduceActionForCallExpression1: 13853700 false ) 
	#(166 2 #reduceActionForOptionalExpression1: 15001602 false ) 
	#(166 2 #reduceActionForOptionalExpression1: 15001603 false ) 
	#(190 1 #liftFirstValue: 20716547 false ) 
	#(190 1 #liftFirstValue: 20716551 false ) 
	#(190 1 #liftFirstValue: 20716552 false ) 
	#(190 1 #liftFirstValue: 20716553 false ) 
	#(190 1 #liftFirstValue: 20716545 false ) 
	#(190 1 #liftFirstValue: 20716546 false ) 
	#(190 1 #liftFirstValue: 20716548 false ) 
	#(190 1 #liftFirstValue: 20716554 false ) 
	#(190 1 #liftFirstValue: 20716555 false ) 
	#(190 1 #liftFirstValue: 20716556 false ) 
	#(190 1 #liftFirstValue: 20716550 false ) 
	#(190 1 #liftFirstValue: 20716549 false ) 
	#(171 2 #reduceActionForUpdateExpression2: 15937538 false ) 
	#(171 2 #reduceActionForUpdateExpression2: 15937539 false ) 
	#(190 1 #liftFirstValue: 20716557 false ) 
	#(175 1 #liftFirstValue: 17131522 false ) 
	#(175 1 #liftFirstValue: 17131521 false ) 
	#(175 1 #liftFirstValue: 17131523 false ) 
	#(328 0 #reduceActionForImplementationScript1: 41464833 false ) 
	#(257 2 #reduceActionForArrowFormalParameters2: 32315394 false ) 
	#(197 2 #reduceActionForBlock1: 22966273 false ) 
	#(242 2 #reduceActionForDebuggerStatement1: 30864385 false ) 
	#(207 1 #reduceActionForArrowParameterDeclaration1: 23946241 false ) 
	#(206 1 #reduceActionForNamespaceName1: 23810049 false ) 
	#(220 2 #reduceActionForExpressionStatement1: 25827329 false ) 
	#(198 2 #reduceActionForModuleItemList2: 23063554 false ) 
	#(276 2 #reduceActionForClassExpression1: 35810305 false ) 
	#(450 1 #liftFirstValue: 63494145 false ) 
	#(439 2 #reduceActionForAmbientDeclaration1: 61422593 false ) 
	#(439 2 #reduceActionForAmbientDeclaration1: 61422594 false ) 
	#(439 2 #reduceActionForAmbientDeclaration1: 61422595 false ) 
	#(439 2 #reduceActionForAmbientDeclaration1: 61422596 false ) 
	#(439 2 #reduceActionForAmbientDeclaration1: 61422597 false ) 
	#(433 2 #reduceActionForExportImplementationElement2: 59239426 false ) 
	#(433 2 #reduceActionForExportImplementationElement2: 59239425 false ) 
	#(433 2 #reduceActionForExportImplementationElement2: 59239427 false ) 
	#(433 2 #reduceActionForExportImplementationElement2: 59239428 false ) 
	#(433 2 #reduceActionForExportImplementationElement2: 59239429 false ) 
	#(433 2 #reduceActionForExportImplementationElement2: 59239435 false ) 
	#(433 2 #reduceActionForExportImplementationElement2: 59239431 false ) 
	#(434 2 #reduceActionForExportDeclarationElement2: 59981826 false ) 
	#(433 2 #reduceActionForExportImplementationElement2: 59239430 false ) 
	#(434 2 #reduceActionForExportDeclarationElement2: 59981825 false ) 
	#(433 2 #reduceActionForExportImplementationElement2: 59239432 false ) 
	#(433 2 #reduceActionForExportImplementationElement2: 59239433 false ) 
	#(434 2 #reduceActionForExportDeclarationElement2: 59981828 false ) 
	#(433 2 #reduceActionForExportImplementationElement2: 59239434 false ) 
	#(434 2 #reduceActionForExportDeclarationElement2: 59981827 false ) 
	#(408 1 #reduceActionForNamespaceName1: 55470081 false ) 
	#(419 2 #reduceActionForModuleItemList2: 57278466 false ) 
	#(423 2 #reduceActionForModuleItemList2: 57815042 false ) 
	#(427 2 #reduceActionForModuleItemList2: 58218498 false ) 
	#(430 2 #reduceActionForModuleItemList2: 58653698 false ) 
	#(355 2 #reduceActionForObjectType1: 43747329 false ) 
	#(135 1 #reduceActionForIdentifier1: 9022465 false ) 
	#(148 1 #liftFirstValue: 12044289 false ) 
	#(370 1 #reduceActionForPropertySignature1: 45388801 false ) 
	#(147 1 #liftFirstValue: 11981825 false ) 
	#(147 1 #liftFirstValue: 11981826 false ) 
	#(148 1 #reduceActionForIdentifier1: 12044290 false ) 
	#(148 1 #reduceActionForIdentifier1: 12044291 false ) 
	#(356 1 #reduceActionForModuleBody1: 43829249 false ) 
	#(357 1 #reduceActionForNamespaceName1: 43925505 false ) 
	#(358 1 #liftFirstValue: 44080129 false ) 
	#(358 1 #liftFirstValue: 44080130 false ) 
	#(358 1 #liftFirstValue: 44080131 false ) 
	#(358 1 #liftFirstValue: 44080132 false ) 
	#(358 1 #liftFirstValue: 44080133 false ) 
	#(362 1 #liftFirstValue: 44518401 false ) 
	#(361 1 #reduceActionForNamespaceName1: 44409857 false ) 
	#(339 1 #reduceActionForTypeParameter1: 42377217 false ) 
	#(338 1 #reduceActionForNamespaceName1: 42264577 false ) 
	#(347 2 #reduceActionForPrefixType3: 42906627 false ) 
	#(347 2 #reduceActionForPrefixType2: 42906626 false ) 
	#(368 1 #reduceActionForTypeQueryExpression1: 45227009 false ) 
	#(367 2 #reduceActionForTypeQuery1: 45153281 false ) 
	#(352 2 #reduceActionForTypeReference1: 43442177 false ) 
	#(301 2 #reduceActionForNamedExports1: 38651905 false ) 
	#(303 1 #reduceActionForExportSpecifier1: 38972417 false ) 
	#(302 1 #reduceActionForNamespaceName1: 38867969 false ) 
	#(299 3 #reduceActionForExportDeclaration2: 37860354 false ) 
	#(193 2 #liftSecondValue: 22673413 false ) 
	#(193 2 #liftSecondValue: 22673412 false ) 
	#(193 2 #liftSecondValue: 22673414 false ) 
	#(293 2 #reduceActionForNamedImports1: 37270529 false ) 
	#(295 1 #reduceActionForNamespaceName1: 37553153 false ) 
	#(296 1 #reduceActionForImportSpecifier1: 37657601 false ) 
	#(289 3 #reduceActionForImportDeclaration2: 36720642 false ) 
	#(209 2 #reduceActionForObjectBindingPattern1: 24170497 false ) 
	#(212 1 #reduceActionForNamespaceName1: 24995841 false ) 
	#(215 1 #liftFirstValue: 25284609 false ) 
	#(210 2 #reduceActionForArrayBindingPattern1: 24558593 false ) 
	#(213 1 #reduceActionForBindingElementList1: 25114625 false ) 
	#(214 1 #reduceActionForBindingElisionElement1: 25223169 false ) 
	#(204 2 #reduceActionForLexicalBinding2: 23560194 false ) 
	#(201 3 #reduceActionForLexicalDeclaration1: 23341057 false ) 
	#(204 2 #reduceActionForLexicalBinding3: 23560195 false ) 
	#(218 2 #reduceActionForBindingRestElement1: 25594881 false ) 
	#(218 2 #reduceActionForBindingRestElement1: 25594882 false ) 
	#(217 2 #reduceActionForLexicalBinding2: 25508866 false ) 
	#(137 3 #reduceActionForParenthesizedExpression1: 9489409 false ) 
	#(216 2 #reduceActionForLexicalBinding3: 25398275 false ) 
	#(257 3 #reduceActionForArrowFormalParameters1: 32315393 false ) 
	#(246 2 #reduceActionForFormalParameters4: 31418372 false ) 
	#(375 1 #liftFirstValue: 47678466 false ) 
	#(375 1 #liftFirstValue: 47678467 false ) 
	#(375 1 #liftFirstValue: 47678465 false ) 
	#(374 0 #nil 46334980 false ) 
	#(142 2 #reduceActionForSpreadElement1: 10941441 false ) 
	#(139 3 #reduceActionForArrayLiteral3: 10406915 false ) 
	#(139 3 #reduceActionForArrayLiteral2: 10406914 false ) 
	#(141 2 #reduceActionForModuleItemList2: 10886146 false ) 
	#(140 2 #reduceActionForElementList4: 10668036 false ) 
	#(140 2 #reduceActionForElementList4: 10668034 false ) 
	#(278 2 #reduceActionForClassTail1: 36011009 false ) 
	#(282 1 #reduceActionForEmptyStatement1: 36303875 false ) 
	#(282 1 #liftFirstValue: 36303873 false ) 
	#(260 1 #liftFirstValue: 32630786 false ) 
	#(260 1 #liftFirstValue: 32630788 false ) 
	#(260 1 #liftFirstValue: 32630787 false ) 
	#(280 1 #reduceActionForModuleBody1: 36184065 false ) 
	#(281 1 #reduceActionForModuleItemList1: 36215809 false ) 
	#(260 1 #liftFirstValue: 32630792 false ) 
	#(260 1 #liftFirstValue: 32630793 false ) 
	#(279 2 #reduceActionForClassHeritage1: 36103169 false ) 
	#(277 3 #reduceActionForClassExpression2: 35931138 false ) 
	#(279 2 #reduceActionForClassHeritage2: 36103170 false ) 
	#(159 3 #reduceActionForNewTarget1: 13660161 false ) 
	#(156 3 #reduceActionForMemberExpression7: 12865543 false ) 
	#(164 2 #reduceActionForArguments1: 14547969 false ) 
	#(165 1 #reduceActionForArgumentList1: 14733313 false ) 
	#(157 3 #reduceActionForSuperProperty2: 13367298 false ) 
	#(266 3 #reduceActionForYieldExpression3: 34007043 false ) 
	#(143 3 #reduceActionForObjectLiteral1: 11039745 false ) 
	#(146 1 #liftFirstValue: 11732993 false ) 
	#(145 1 #reduceActionForNamespaceName1: 11597825 false ) 
	#(146 1 #liftFirstValue: 11732994 false ) 
	#(146 1 #liftFirstValue: 11732996 false ) 
	#(156 3 #reduceActionForMemberExpression3: 12865539 false ) 
	#(169 1 #reduceActionForOptionalFirst3: 15590403 false ) 
	#(169 1 #reduceActionForOptionalFirst4: 15590404 false ) 
	#(169 1 #reduceActionForOptionalFirst1: 15590401 false ) 
	#(167 2 #reduceActionForOptionalChain1: 15179777 false ) 
	#(168 1 #reduceActionForOptionalFirst4: 15302660 false ) 
	#(168 1 #reduceActionForOptionalFirst1: 15302657 false ) 
	#(167 2 #reduceActionForOptionalChain2: 15179778 false ) 
	#(161 3 #reduceActionForMemberExpression3: 13853702 false ) 
	#(189 3 #reduceActionForAssignmentExpression5: 20511749 false ) 
	#(173 3 #reduceActionForExponentiationExpression2: 16758786 false ) 
	#(174 3 #reduceActionForExponentiationExpression2: 16928770 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 17188866 false ) 
	#(176 3 #reduceActionForExponentiationExpression2: 17188867 false ) 
	#(177 3 #reduceActionForExponentiationExpression2: 17486850 false ) 
	#(177 3 #reduceActionForExponentiationExpression2: 17486851 false ) 
	#(177 3 #reduceActionForExponentiationExpression2: 17486852 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 17871874 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 17871875 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 17871876 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 17871877 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 17871879 false ) 
	#(178 3 #reduceActionForExponentiationExpression2: 17871878 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 18610178 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 18610180 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 18610179 false ) 
	#(179 3 #reduceActionForExponentiationExpression2: 18610181 false ) 
	#(180 3 #reduceActionForExponentiationExpression2: 19140610 false ) 
	#(181 3 #reduceActionForExponentiationExpression2: 19304450 false ) 
	#(182 3 #reduceActionForExponentiationExpression2: 19472386 false ) 
	#(183 3 #reduceActionForExponentiationExpression2: 19639298 false ) 
	#(184 3 #reduceActionForExponentiationExpression2: 19809282 false ) 
	#(185 3 #reduceActionForExponentiationExpression2: 19979265 false ) 
	#(191 3 #reduceActionForExpression2: 22239234 false ) 
	#(251 0 #reduceActionForImplementationScript1: 31864833 false ) 
	#(256 1 #liftFirstValue: 32274433 false ) 
	#(252 3 #reduceActionForArrowFunction1: 31906817 false ) 
	#(255 1 #reduceActionForConciseBody1: 32159745 false ) 
	#(336 0 #reduceActionForSwitchToDefault1: 42031105 true ) 
	#(327 1 #reduceActionForModuleBody1: 41450497 false ) 
	#(314 1 #reduceActionForJSXElementName1: 40306689 false ) 
	#(314 1 #liftFirstValue: 40306690 false ) 
	#(314 1 #liftFirstValue: 40306691 false ) 
	#(318 1 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___1: 40633345 false ) 
	#(197 3 #reduceActionForBlock2: 22966274 false ) 
	#(226 3 #reduceActionForBreakStatement1: 29158401 false ) 
	#(225 3 #reduceActionForContinueStatement1: 29043713 false ) 
	#(228 3 #reduceActionForReturnStatement1: 29300737 false ) 
	#(237 3 #reduceActionForThrowStatement1: 30317569 false ) 
	#(238 3 #reduceActionForTryStatement1: 30413825 false ) 
	#(238 3 #reduceActionForTryStatement2: 30413826 false ) 
	#(207 2 #reduceActionForLexicalBinding2: 23946242 false ) 
	#(205 3 #reduceActionForVariableStatement1: 23714817 false ) 
	#(207 2 #reduceActionForLexicalBinding3: 23946243 false ) 
	#(207 2 #liftSecondValue: 23946244 false ) 
	#(207 2 #liftSecondValue: 23946245 false ) 
	#(236 1 #liftFirstValue: 30223361 false ) 
	#(235 3 #reduceActionForLabelledStatement1: 30124033 false ) 
	#(276 3 #reduceActionForClassExpression2: 35810306 false ) 
	#(276 3 #reduceActionForClassDeclaration3: 35810307 false ) 
	#(442 1 #reduceActionForArrowParameterDeclaration1: 62220289 false ) 
	#(441 1 #reduceActionForNamespaceName1: 62107649 false ) 
	#(435 3 #reduceActionForExportDefaultImplementationElement1: 60275713 false ) 
	#(435 3 #reduceActionForExportDefaultImplementationElement1: 60275714 false ) 
	#(435 3 #reduceActionForExportDefaultImplementationElement1: 60275715 false ) 
	#(436 3 #reduceActionForExportDefaultDeclarationElement1: 60701697 false ) 
	#(436 3 #reduceActionForExportDefaultDeclarationElement1: 60701698 false ) 
	#(437 3 #reduceActionForExportListDeclaration3: 61036547 false ) 
	#(389 3 #reduceActionForInterfaceDeclaration1: 52110337 false ) 
	#(409 0 #reduceActionForImplementationScript1: 55575553 false ) 
	#(456 2 #reduceActionForDecoratorExpression2: 64841730 false ) 
	#(456 2 #reduceActionForDecoratorExpression2: 64841729 false ) 
	#(373 2 #reduceActionForModuleItemList2: 45824002 false ) 
	#(350 3 #reduceActionForParenthesizedExpression1: 43301889 false ) 
	#(370 2 #reduceActionForPropertySignature3: 45388803 false ) 
	#(370 2 #reduceActionForPropertySignature2: 45388802 false ) 
	#(379 2 #reduceActionForMethodSignature1: 48913409 false ) 
	#(355 3 #reduceActionForObjectType2: 43747330 false ) 
	#(356 2 #reduceActionForOptionalChain2: 43829250 false ) 
	#(356 2 #reduceActionForOptionalChain2: 43829252 false ) 
	#(360 3 #reduceActionForTupleType1: 44295169 false ) 
	#(339 2 #reduceActionForTypeParameter2: 42377218 false ) 
	#(337 3 #reduceActionForTypeParameters1: 42185729 false ) 
	#(363 3 #reduceActionForUnionType1: 44545025 false ) 
	#(364 3 #reduceActionForIntersectionType1: 44665857 false ) 
	#(352 3 #reduceActionForTypeReference2: 43442178 false ) 
	#(353 3 #reduceActionForTypeName2: 43536386 false ) 
	#(354 3 #reduceActionForNamespaceName2: 43642882 false ) 
	#(301 3 #reduceActionForNamedExports2: 38651906 false ) 
	#(300 3 #reduceActionForExportFromClause2: 38544386 false ) 
	#(299 4 #reduceActionForExportDeclaration5: 37860357 false ) 
	#(294 2 #reduceActionForFromClause1: 37501953 false ) 
	#(299 4 #reduceActionForExportDeclaration1: 37860353 false ) 
	#(293 3 #reduceActionForNamedImports2: 37270530 false ) 
	#(292 3 #reduceActionForNameSpaceImport1: 37189633 false ) 
	#(289 4 #reduceActionForImportDeclaration1: 36720641 false ) 
	#(290 3 #reduceActionForImportClause4: 36892676 false ) 
	#(290 3 #reduceActionForImportClause4: 36892677 false ) 
	#(211 2 #reduceActionForBindingRestProperty1: 24924161 false ) 
	#(209 3 #reduceActionForObjectBindingPattern2: 24170498 false ) 
	#(209 3 #reduceActionForObjectBindingPattern3: 24170499 false ) 
	#(210 3 #reduceActionForArrayBindingPattern3: 24558595 false ) 
	#(214 2 #reduceActionForBindingElisionElement2: 25223170 false ) 
	#(210 3 #reduceActionForArrayBindingPattern5: 24558597 false ) 
	#(210 3 #reduceActionForArrayBindingPattern2: 24558594 false ) 
	#(151 2 #reduceActionForFromClause1: 12375041 false ) 
	#(203 3 #reduceActionForNamespaceName2: 23461890 false ) 
	#(387 3 #reduceActionForSimpleLexicalBinding1: 51567617 false ) 
	#(388 3 #reduceActionForDestructuringLexicalBinding1: 51677185 false ) 
	#(218 3 #reduceActionForBindingRestElement3: 25594883 false ) 
	#(246 3 #reduceActionForFormalParameters5: 31418373 false ) 
	#(247 3 #reduceActionForNamespaceName2: 31620098 false ) 
	#(217 3 #reduceActionForSingleNameBinding9: 25508873 false ) 
	#(217 3 #reduceActionForSimpleLexicalBinding1: 25508867 false ) 
	#(374 1 #reduceActionForIdentifier1: 46334978 false ) 
	#(374 1 #liftFirstValue: 46334977 false ) 
	#(374 1 #liftFirstValue: 46334979 false ) 
	#(217 3 #reduceActionForSingleNameBinding7: 25508871 false ) 
	#(139 4 #reduceActionForArrayLiteral4: 10406916 false ) 
	#(140 3 #reduceActionForElementList6: 10668038 false ) 
	#(140 3 #reduceActionForElementList6: 10668037 false ) 
	#(259 1 #reduceActionForConciseBody1: 32509953 false ) 
	#(258 4 #reduceActionForAsyncArrowFunction1: 32407553 false ) 
	#(282 2 #reduceActionForClassElement2: 36303874 false ) 
	#(278 3 #reduceActionForClassTail2: 36011010 false ) 
	#(281 2 #reduceActionForModuleItemList2: 36215810 false ) 
	#(282 2 #liftSecondValue: 36303876 false ) 
	#(282 2 #liftSecondValue: 36303877 false ) 
	#(397 1 #liftFirstValue: 53796865 false ) 
	#(397 1 #liftFirstValue: 53796866 false ) 
	#(397 1 #liftFirstValue: 53796867 false ) 
	#(282 2 #liftSecondValue: 36303878 false ) 
	#(278 3 #reduceActionForClassTail3: 36011011 false ) 
	#(394 1 #liftFirstValue: 53020673 false ) 
	#(393 2 #reduceActionForFromClause1: 52961281 false ) 
	#(392 1 #liftFirstValue: 52482049 false ) 
	#(395 2 #reduceActionForImplementsClause1: 53062657 false ) 
	#(391 1 #reduceActionForNamespaceName1: 52350977 false ) 
	#(279 3 #reduceActionForClassHeritage3: 36103171 false ) 
	#(163 4 #reduceActionForImportCall1: 14407681 false ) 
	#(165 2 #reduceActionForArgumentList2: 14733314 false ) 
	#(164 3 #reduceActionForArguments2: 14547970 false ) 
	#(157 4 #reduceActionForSuperProperty1: 13367297 false ) 
	#(342 1 #reduceActionForNamespaceName1: 42562561 false ) 
	#(343 1 #liftFirstValue: 42669057 false ) 
	#(146 2 #reduceActionForPropertyDefinition5: 11732997 false ) 
	#(150 2 #reduceActionForCoverInitializedName1: 12292097 false ) 
	#(143 4 #reduceActionForObjectLiteral2: 11039746 false ) 
	#(154 1 #reduceActionForNamespaceName1: 12633089 false ) 
	#(152 4 #reduceActionForTemplateLiteral2: 12439554 false ) 
	#(156 4 #reduceActionForMemberExpression2: 12865538 false ) 
	#(168 2 #reduceActionForOptionalRest3: 15302659 false ) 
	#(161 4 #reduceActionForCallExpression5: 13853701 false ) 
	#(172 4 #reduceActionForUnaryExpression11: 16306187 false ) 
	#(251 1 #reduceActionForModuleBody1: 31864834 false ) 
	#(250 1 #reduceActionForModuleBody1: 31823873 false ) 
	#(309 4 #reduceActionForJSXElement2: 39480322 false ) 
	#(329 1 #reduceActionForJSXChild1: 41485313 false ) 
	#(329 1 #liftFirstValue: 41485314 false ) 
	#(328 2 #reduceActionForModuleItemList2: 41464834 false ) 
	#(317 2 #reduceActionForFromClause1: 40633345 false ) 
	#(334 0 #reduceActionForSwitchToJSXTextOrDefault11: 41897985 true ) 
	#(324 1 #reduceActionForJSXElementName1: 41057281 false ) 
	#(324 1 #liftFirstValue: 41057282 false ) 
	#(321 1 #reduceActionForModuleItemList1: 40760321 false ) 
	#(319 1 #reduceActionForModuleBody1: 40743937 false ) 
	#(320 1 #liftFirstValue: 40760321 false ) 
	#(320 1 #liftFirstValue: 40760322 false ) 
	#(323 1 #reduceActionForJSXAttribute1: 40974337 false ) 
	#(316 2 #reduceActionForJSXMemberExpression1: 40610817 false ) 
	#(318 2 #reduceActionFor__JSXIdentifier___identifier___period___periodToken___2: 40633346 false ) 
	#(226 4 #reduceActionForBreakStatement2: 29158402 false ) 
	#(225 4 #reduceActionForContinueStatement2: 29043714 false ) 
	#(224 1 #liftFirstValue: 28996609 false ) 
	#(224 1 #liftFirstValue: 28996610 false ) 
	#(223 2 #reduceActionForFromClause1: 28932097 false ) 
	#(228 4 #reduceActionForReturnStatement2: 29300738 false ) 
	#(239 2 #reduceActionForCatch2: 30584834 false ) 
	#(240 2 #reduceActionForFromClause1: 30752769 false ) 
	#(238 4 #reduceActionForTryStatement3: 30413827 false ) 
	#(206 3 #reduceActionForNamespaceName2: 23810050 false ) 
	#(385 2 #reduceActionForSimpleVariableDeclaration1: 51267585 false ) 
	#(276 4 #reduceActionForClassDeclaration4: 35810308 false ) 
	#(442 2 #reduceActionForAmbientBinding2: 62220290 false ) 
	#(440 3 #reduceActionForLexicalDeclaration1: 61811715 false ) 
	#(440 3 #reduceActionForLexicalDeclaration1: 61811714 false ) 
	#(452 0 #reduceActionForImplementationScript1: 63714305 false ) 
	#(440 3 #reduceActionForLexicalDeclaration1: 61811713 false ) 
	#(402 4 #reduceActionForEnumDeclaration1: 54895617 false ) 
	#(405 1 #reduceActionForEnumMember1: 55181313 false ) 
	#(403 1 #reduceActionForModuleBody1: 55043073 false ) 
	#(404 1 #reduceActionForNamespaceName1: 55089153 false ) 
	#(438 4 #reduceActionForExportAssignment1: 61290497 false ) 
	#(437 4 #reduceActionForExportListDeclaration1: 61036545 false ) 
	#(436 4 #reduceActionForExportDefaultDeclarationElement3: 60701699 false ) 
	#(435 4 #reduceActionForExportDefaultImplementationElement4: 60275716 false ) 
	#(437 4 #reduceActionForExportListDeclaration2: 61036546 false ) 
	#(414 1 #reduceActionForModuleBody1: 56869889 false ) 
	#(390 2 #reduceActionForFromClause1: 52265985 false ) 
	#(389 4 #reduceActionForInterfaceDeclaration3: 52110339 false ) 
	#(389 4 #reduceActionForInterfaceDeclaration2: 52110338 false ) 
	#(411 1 #liftFirstValue: 55711745 false ) 
	#(411 1 #liftFirstValue: 55711746 false ) 
	#(411 1 #liftFirstValue: 55711747 false ) 
	#(411 1 #liftFirstValue: 55711748 false ) 
	#(411 1 #liftFirstValue: 55711749 false ) 
	#(411 1 #liftFirstValue: 55711751 false ) 
	#(411 1 #liftFirstValue: 55711750 false ) 
	#(411 1 #liftFirstValue: 55711752 false ) 
	#(411 1 #liftFirstValue: 55711753 false ) 
	#(409 1 #reduceActionForModuleBody1: 55575554 false ) 
	#(410 1 #reduceActionForModuleItemList1: 55613441 false ) 
	#(411 1 #liftFirstValue: 55711756 false ) 
	#(411 1 #liftFirstValue: 55711755 false ) 
	#(411 1 #liftFirstValue: 55711754 false ) 
	#(408 3 #reduceActionForNamespaceName2: 55470082 false ) 
	#(243 4 #reduceActionForFunctionDeclaration5: 30950405 false ) 
	#(372 3 #reduceActionForCallSignature1: 45611009 false ) 
	#(149 3 #reduceActionForComputedPropertyName1: 12171265 false ) 
	#(370 3 #reduceActionForPropertySignature4: 45388804 false ) 
	#(379 3 #reduceActionForMethodSignature2: 48913410 false ) 
	#(371 2 #reduceActionForFromClause1: 45557761 false ) 
	#(357 3 #reduceActionForNamespaceName2: 43925506 false ) 
	#(357 3 #reduceActionForNamespaceName2: 43925507 false ) 
	#(360 4 #reduceActionForTupleType2: 44295170 false ) 
	#(361 3 #reduceActionForNamespaceName2: 44409858 false ) 
	#(340 2 #reduceActionForFromClause1: 42431489 false ) 
	#(338 3 #reduceActionForNamespaceName2: 42264578 false ) 
	#(368 3 #reduceActionForTypeQueryExpression2: 45227010 false ) 
	#(359 4 #reduceActionForArrayType1: 44187649 false ) 
	#(303 3 #reduceActionForExportSpecifier2: 38972418 false ) 
	#(301 4 #reduceActionForNamedExports3: 38651907 false ) 
	#(302 3 #reduceActionForNamespaceName2: 38867970 false ) 
	#(296 3 #reduceActionForImportSpecifier2: 37657602 false ) 
	#(293 4 #reduceActionForNamedImports3: 37270531 false ) 
	#(295 3 #reduceActionForNamespaceName2: 37553154 false ) 
	#(215 3 #reduceActionForBindingProperty2: 25284610 false ) 
	#(209 4 #reduceActionForObjectBindingPattern4: 24170500 false ) 
	#(212 3 #reduceActionForNamespaceName2: 24995842 false ) 
	#(210 4 #reduceActionForArrayBindingPattern4: 24558596 false ) 
	#(210 4 #reduceActionForArrayBindingPattern6: 24558598 false ) 
	#(213 3 #reduceActionForBindingElementList2: 25114626 false ) 
	#(387 4 #reduceActionForSimpleLexicalBinding2: 51567618 false ) 
	#(388 4 #reduceActionForDestructuringLexicalBinding2: 51677186 false ) 
	#(217 4 #reduceActionForSimpleLexicalBinding2: 25508868 false ) 
	#(216 4 #reduceActionForBindingElement10: 25398282 false ) 
	#(216 4 #reduceActionForBindingElement4: 25398276 false ) 
	#(216 4 #reduceActionForBindingElement8: 25398280 false ) 
	#(217 4 #reduceActionForSingleNameBinding10: 25508874 false ) 
	#(217 4 #reduceActionForSingleNameBinding8: 25508872 false ) 
	#(217 4 #reduceActionForSingleNameBinding5: 25508869 false ) 
	#(274 1 #reduceActionForModuleBody1: 35697665 false ) 
	#(400 2 #reduceActionForMemberAccessorDeclaration1: 54528001 false ) 
	#(400 2 #reduceActionForMemberAccessorDeclaration1: 54528005 false ) 
	#(401 2 #reduceActionForIndexMemberDeclaration1: 54804481 false ) 
	#(278 4 #reduceActionForClassTail4: 36011012 false ) 
	#(164 4 #reduceActionForArguments3: 14547971 false ) 
	#(165 3 #reduceActionForArgumentList3: 14733315 false ) 
	#(341 3 #reduceActionForTypeArguments1: 42484737 false ) 
	#(164 4 #reduceActionForArguments4: 14547972 false ) 
	#(143 5 #reduceActionForObjectLiteral3: 11039747 false ) 
	#(145 3 #reduceActionForNamespaceName2: 11597826 false ) 
	#(146 3 #reduceActionForPropertyDefinition3: 11732995 false ) 
	#(155 2 #reduceActionForTemplateMiddleList1: 12720129 false ) 
	#(154 2 #reduceActionForTemplateSpans2: 12633090 false ) 
	#(169 3 #reduceActionForOptionalFirst2: 15590402 false ) 
	#(168 3 #reduceActionForOptionalFirst2: 15302658 false ) 
	#(188 5 #reduceActionForConditionalExpression2: 20284418 false ) 
	#(255 3 #reduceActionForConciseBody2: 32159746 false ) 
	#(315 3 #reduceActionForJSXNamespacedName1: 40486913 false ) 
	#(321 2 #reduceActionForModuleItemList2: 40760322 false ) 
	#(323 2 #reduceActionForJSXAttribute2: 40974338 false ) 
	#(311 5 #reduceActionForJSXOpeningElement1: 39814145 false ) 
	#(381 4 #reduceActionForTypeCallSignature1: 49356801 false ) 
	#(172 5 #reduceActionForUnaryExpression10: 16306186 false ) 
	#(381 4 #reduceActionForTypeCallSignature3: 49356803 false ) 
	#(221 5 #reduceActionForIfStatement2: 25907202 false ) 
	#(230 5 #reduceActionForSwitchStatement1: 29546497 false ) 
	#(241 1 #liftFirstValue: 30813185 false ) 
	#(241 1 #liftFirstValue: 30813186 false ) 
	#(385 3 #reduceActionForSimpleVariableDeclaration2: 51267586 false ) 
	#(386 3 #reduceActionForDestructuringVariableDeclaration1: 51373057 false ) 
	#(222 5 #reduceActionForIterationStatement2: 26198018 false ) 
	#(229 5 #reduceActionForWithStatement1: 29414401 false ) 
	#(402 5 #reduceActionForEnumDeclaration3: 54895619 false ) 
	#(445 0 #reduceActionForImplementationScript1: 62656513 false ) 
	#(441 3 #reduceActionForNamespaceName2: 62107650 false ) 
	#(443 4 #reduceActionForAmbientFunctionDeclaration1: 62303233 false ) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 63893507 false ) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 63893513 false ) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 63893519 false ) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 63893505 false ) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 63893509 false ) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 63893511 false ) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 63893515 false ) 
	#(454 1 #reduceActionForAmbientNamespaceElement3: 63893517 false ) 
	#(452 1 #reduceActionForModuleBody1: 63714306 false ) 
	#(453 1 #reduceActionForModuleItemList1: 63766529 false ) 
	#(402 5 #reduceActionForEnumDeclaration2: 54895618 false ) 
	#(403 2 #reduceActionForOptionalChain2: 55043074 false ) 
	#(413 5 #reduceActionForImportAliasDeclaration1: 56734721 false ) 
	#(389 5 #reduceActionForInterfaceDeclaration4: 52110340 false ) 
	#(412 2 #reduceActionForExportNamespaceElement2: 55992322 false ) 
	#(412 2 #reduceActionForExportNamespaceElement2: 55992321 false ) 
	#(412 2 #reduceActionForExportNamespaceElement2: 55992323 false ) 
	#(412 2 #reduceActionForExportNamespaceElement2: 55992324 false ) 
	#(412 2 #reduceActionForExportNamespaceElement2: 55992325 false ) 
	#(412 2 #reduceActionForExportNamespaceElement2: 55992327 false ) 
	#(412 2 #reduceActionForExportNamespaceElement2: 55992326 false ) 
	#(412 2 #reduceActionForExportNamespaceElement2: 55992328 false ) 
	#(412 2 #reduceActionForExportNamespaceElement2: 55992329 false ) 
	#(412 2 #reduceActionForExportNamespaceElement2: 55992331 false ) 
	#(412 2 #reduceActionForExportNamespaceElement2: 55992330 false ) 
	#(407 5 #reduceActionForNamespaceDeclaration1: 55328769 false ) 
	#(410 2 #reduceActionForModuleItemList2: 55613442 false ) 
	#(380 5 #reduceActionForTypeAliasDeclaration1: 49018881 false ) 
	#(243 5 #reduceActionForFunctionDeclaration6: 30950406 false ) 
	#(276 5 #reduceActionForClassDeclaration5: 35810309 false ) 
	#(276 5 #reduceActionForClassDeclaration9: 35810313 false ) 
	#(365 5 #reduceActionForFunctionType1: 44772353 false ) 
	#(372 4 #reduceActionForCallSignature2: 45611010 false ) 
	#(377 4 #reduceActionForConstructSignature1: 48419841 false ) 
	#(372 4 #reduceActionForCallSignature3: 45611011 false ) 
	#(209 5 #reduceActionForObjectBindingPattern5: 24170501 false ) 
	#(210 5 #reduceActionForArrayBindingPattern8: 24558600 false ) 
	#(210 5 #reduceActionForArrayBindingPattern7: 24558599 false ) 
	#(216 5 #reduceActionForBindingElement11: 25398283 false ) 
	#(216 5 #reduceActionForBindingElement5: 25398277 false ) 
	#(216 5 #reduceActionForBindingElement12: 25398284 false ) 
	#(216 5 #reduceActionForBindingElement9: 25398281 false ) 
	#(216 5 #reduceActionForBindingElement6: 25398278 false ) 
	#(217 5 #reduceActionForSingleNameBinding6: 25508870 false ) 
	#(259 3 #reduceActionForConciseBody2: 32509954 false ) 
	#(261 1 #liftFirstValue: 33228801 false ) 
	#(400 3 #reduceActionForMemberAccessorDeclaration2: 54528002 false ) 
	#(400 3 #reduceActionForMemberAccessorDeclaration2: 54528006 false ) 
	#(398 3 #reduceActionForMemberVariableDeclaration1: 53911553 false ) 
	#(400 3 #reduceActionForMemberAccessorDeclaration3: 54528003 false ) 
	#(400 3 #reduceActionForMemberAccessorDeclaration3: 54528007 false ) 
	#(391 3 #reduceActionForNamespaceName2: 52350978 false ) 
	#(165 4 #reduceActionForArgumentList4: 14733316 false ) 
	#(342 3 #reduceActionForNamespaceName2: 42562562 false ) 
	#(164 5 #reduceActionForArguments5: 14547973 false ) 
	#(155 3 #reduceActionForTemplateMiddleList2: 12720130 false ) 
	#(330 1 #liftFirstValue: 41717762 false ) 
	#(330 1 #liftFirstValue: 41717761 false ) 
	#(310 6 #reduceActionForJSXSelfClosingElement1: 39630849 false ) 
	#(311 6 #reduceActionForJSXOpeningElement2: 39814146 false ) 
	#(326 1 #reduceActionForLiteral4: 41222145 false ) 
	#(326 1 #liftFirstValue: 41222147 false ) 
	#(326 1 #liftFirstValue: 41222148 false ) 
	#(325 2 #reduceActionForFromClause1: 41148417 false ) 
	#(244 6 #reduceActionForFunctionExpression3: 31162371 false ) 
	#(381 5 #reduceActionForTypeCallSignature2: 49356802 false ) 
	#(222 6 #reduceActionForIterationStatement3: 26198019 false ) 
	#(222 6 #reduceActionForIterationStatement15: 26198031 false ) 
	#(231 2 #reduceActionForCaseBlock1: 29672449 false ) 
	#(232 1 #reduceActionForModuleItemList1: 29856769 false ) 
	#(402 6 #reduceActionForEnumDeclaration4: 54895620 false ) 
	#(447 1 #liftFirstValue: 62831619 false ) 
	#(445 1 #reduceActionForModuleBody1: 62656514 false ) 
	#(446 1 #reduceActionForModuleItemList1: 62704641 false ) 
	#(447 1 #liftFirstValue: 62831617 false ) 
	#(447 1 #liftFirstValue: 62831618 false ) 
	#(455 6 #reduceActionForAmbientModuleDeclaration1: 64665601 false ) 
	#(454 2 #reduceActionForExportNamespaceElement2: 63893508 false ) 
	#(454 2 #reduceActionForExportNamespaceElement2: 63893514 false ) 
	#(454 2 #reduceActionForExportNamespaceElement2: 63893520 false ) 
	#(454 2 #reduceActionForExportNamespaceElement2: 63893506 false ) 
	#(454 2 #reduceActionForExportNamespaceElement2: 63893510 false ) 
	#(454 2 #reduceActionForExportNamespaceElement2: 63893512 false ) 
	#(454 2 #reduceActionForExportNamespaceElement2: 63893516 false ) 
	#(454 2 #reduceActionForExportNamespaceElement2: 63893518 false ) 
	#(451 5 #reduceActionForNamespaceDeclaration1: 63538177 false ) 
	#(453 2 #reduceActionForModuleItemList2: 63766530 false ) 
	#(406 1 #liftFirstValue: 55286785 false ) 
	#(405 3 #reduceActionForEnumMember2: 55181314 false ) 
	#(404 3 #reduceActionForNamespaceName2: 55089154 false ) 
	#(380 6 #reduceActionForTypeAliasDeclaration2: 49018882 false ) 
	#(243 6 #reduceActionForFunctionExpression3: 30950403 false ) 
	#(276 6 #reduceActionForClassDeclaration6: 35810310 false ) 
	#(276 6 #reduceActionForClassDeclaration7: 35810311 false ) 
	#(276 6 #reduceActionForClassDeclaration10: 35810314 false ) 
	#(276 6 #reduceActionForClassDeclaration11: 35810315 false ) 
	#(377 5 #reduceActionForConstructSignature2: 48419842 false ) 
	#(377 5 #reduceActionForConstructSignature3: 48419843 false ) 
	#(372 5 #reduceActionForCallSignature4: 45611012 false ) 
	#(366 6 #reduceActionForConstructorType1: 44952577 false ) 
	#(365 6 #reduceActionForFunctionType2: 44772354 false ) 
	#(210 6 #reduceActionForArrayBindingPattern9: 24558601 false ) 
	#(216 6 #reduceActionForBindingElement13: 25398285 false ) 
	#(216 6 #reduceActionForBindingElement7: 25398279 false ) 
	#(376 1 #liftFirstValue: 47740929 false ) 
	#(376 1 #liftFirstValue: 47740930 false ) 
	#(398 4 #reduceActionForMemberVariableDeclaration5: 53911557 false ) 
	#(398 4 #reduceActionForMemberVariableDeclaration2: 53911554 false ) 
	#(398 4 #reduceActionForMemberVariableDeclaration3: 53911555 false ) 
	#(399 4 #reduceActionForMemberFunctionDeclaration5: 54115333 false ) 
	#(400 4 #reduceActionForMemberAccessorDeclaration4: 54528004 false ) 
	#(400 4 #reduceActionForMemberAccessorDeclaration4: 54528008 false ) 
	#(398 4 #reduceActionForMemberVariableDeclaration9: 53911561 false ) 
	#(244 7 #reduceActionForFunctionExpression1: 31162369 false ) 
	#(265 1 #reduceActionForModuleBody1: 33975297 false ) 
	#(335 0 #reduceActionForSwitchToJSXTextOrDefault21: 41964545 true ) 
	#(329 4 #reduceActionForJSXChild3: 41485315 false ) 
	#(310 7 #reduceActionForJSXSelfClosingElement2: 39630850 false ) 
	#(244 7 #reduceActionForFunctionExpression4: 31162372 false ) 
	#(222 7 #reduceActionForIterationStatement1: 26198017 false ) 
	#(222 7 #reduceActionForIterationStatement4: 26198020 false ) 
	#(222 7 #reduceActionForIterationStatement5: 26198021 false ) 
	#(222 7 #reduceActionForIterationStatement19: 26198035 false ) 
	#(222 7 #reduceActionForIterationStatement22: 26198038 false ) 
	#(222 7 #reduceActionForIterationStatement7: 26198023 false ) 
	#(222 7 #reduceActionForIterationStatement16: 26198032 false ) 
	#(222 7 #reduceActionForIterationStatement17: 26198033 false ) 
	#(222 7 #reduceActionForIterationStatement21: 26198037 false ) 
	#(222 7 #reduceActionForIterationStatement24: 26198040 false ) 
	#(221 7 #reduceActionForIfStatement1: 25907201 false ) 
	#(234 2 #reduceActionForDefaultClause1: 30035969 false ) 
	#(231 3 #reduceActionForCaseBlock2: 29672450 false ) 
	#(232 2 #reduceActionForModuleItemList2: 29856770 false ) 
	#(231 3 #reduceActionForCaseBlock3: 29672451 false ) 
	#(239 5 #reduceActionForCatch1: 30584833 false ) 
	#(449 2 #reduceActionForAmbientPropertyMemberDeclaration1: 63151105 false ) 
	#(444 6 #reduceActionForAmbientClassDeclaration1: 62450689 false ) 
	#(446 2 #reduceActionForModuleItemList2: 62704642 false ) 
	#(243 7 #reduceActionForFunctionExpression1: 30950401 false ) 
	#(243 7 #reduceActionForFunctionExpression4: 30950404 false ) 
	#(276 7 #reduceActionForClassDeclaration8: 35810312 false ) 
	#(276 7 #reduceActionForClassDeclaration12: 35810316 false ) 
	#(378 6 #reduceActionForIndexSignature2: 48612354 false ) 
	#(378 6 #reduceActionForIndexSignature2: 48612353 false ) 
	#(377 6 #reduceActionForConstructSignature4: 48419844 false ) 
	#(366 7 #reduceActionForConstructorType2: 44952578 false ) 
	#(273 8 #reduceActionForAsyncFunctionExpression1: 35447809 false ) 
	#(270 1 #reduceActionForModuleBody1: 34941953 false ) 
	#(384 2 #reduceActionForTypedPropertySetParameterList1: 50390017 false ) 
	#(260 6 #reduceActionForMethodDefinition7: 32630791 false ) 
	#(398 5 #reduceActionForMemberVariableDeclaration6: 53911558 false ) 
	#(398 5 #reduceActionForMemberVariableDeclaration7: 53911559 false ) 
	#(399 5 #reduceActionForMemberFunctionDeclaration6: 54115334 false ) 
	#(398 5 #reduceActionForMemberVariableDeclaration4: 53911556 false ) 
	#(398 5 #reduceActionForMemberVariableDeclaration13: 53911565 false ) 
	#(398 5 #reduceActionForMemberVariableDeclaration10: 53911562 false ) 
	#(398 5 #reduceActionForMemberVariableDeclaration11: 53911563 false ) 
	#(399 5 #reduceActionForMemberFunctionDeclaration7: 54115335 false ) 
	#(264 8 #reduceActionForGeneratorExpression1: 33739777 false ) 
	#(244 8 #reduceActionForFunctionExpression2: 31162370 false ) 
	#(329 5 #reduceActionForJSXChild4: 41485316 false ) 
	#(322 5 #reduceActionForJSXSpreadAttribute1: 40824833 false ) 
	#(222 8 #reduceActionForIterationStatement6: 26198022 false ) 
	#(222 8 #reduceActionForIterationStatement11: 26198027 false ) 
	#(222 8 #reduceActionForIterationStatement23: 26198039 false ) 
	#(222 8 #reduceActionForIterationStatement20: 26198036 false ) 
	#(222 8 #reduceActionForIterationStatement8: 26198024 false ) 
	#(222 8 #reduceActionForIterationStatement9: 26198025 false ) 
	#(222 8 #reduceActionForIterationStatement18: 26198034 false ) 
	#(222 8 #reduceActionForIterationStatement25: 26198041 false ) 
	#(222 8 #reduceActionForIterationStatement27: 26198043 false ) 
	#(233 3 #reduceActionForCaseClause1: 29929473 false ) 
	#(234 3 #reduceActionForDefaultClause2: 30035970 false ) 
	#(231 4 #reduceActionForCaseBlock5: 29672453 false ) 
	#(231 4 #reduceActionForCaseBlock4: 29672452 false ) 
	#(449 3 #reduceActionForAmbientPropertyMemberDeclaration3: 63151107 false ) 
	#(449 3 #reduceActionForAmbientPropertyMemberDeclaration2: 63151106 false ) 
	#(449 3 #reduceActionForAmbientPropertyMemberDeclaration9: 63151113 false ) 
	#(449 3 #reduceActionForAmbientPropertyMemberDeclaration5: 63151109 false ) 
	#(444 7 #reduceActionForAmbientClassDeclaration2: 62450690 false ) 
	#(263 8 #reduceActionForGeneratorExpression1: 33503233 false ) 
	#(243 8 #reduceActionForFunctionExpression2: 30950402 false ) 
	#(432 8 #reduceActionForImportRequireDeclaration1: 59020289 false ) 
	#(272 8 #reduceActionForAsyncFunctionExpression1: 35197953 false ) 
	#(269 9 #reduceActionForAsyncGeneratorExpression1: 34667521 false ) 
	#(273 9 #reduceActionForAsyncFunctionExpression2: 35447810 false ) 
	#(260 7 #reduceActionForMethodDefinition5: 32630789 false ) 
	#(260 7 #reduceActionForMethodDefinition1: 32630785 false ) 
	#(396 6 #reduceActionForConstructorDeclaration3: 53270531 false ) 
	#(398 6 #reduceActionForMemberVariableDeclaration8: 53911560 false ) 
	#(399 6 #reduceActionForMemberFunctionDeclaration1: 54115329 false ) 
	#(398 6 #reduceActionForMemberVariableDeclaration14: 53911566 false ) 
	#(398 6 #reduceActionForMemberVariableDeclaration15: 53911567 false ) 
	#(399 6 #reduceActionForMemberFunctionDeclaration8: 54115336 false ) 
	#(398 6 #reduceActionForMemberVariableDeclaration12: 53911564 false ) 
	#(264 9 #reduceActionForGeneratorExpression2: 33739778 false ) 
	#(313 9 #reduceActionForJSXFragment1: 40118273 false ) 
	#(312 6 #reduceActionForJSXClosingElement1: 39958529 false ) 
	#(222 9 #reduceActionForIterationStatement12: 26198028 false ) 
	#(222 9 #reduceActionForIterationStatement13: 26198029 false ) 
	#(222 9 #reduceActionForIterationStatement10: 26198026 false ) 
	#(222 9 #reduceActionForIterationStatement26: 26198042 false ) 
	#(233 4 #reduceActionForCaseClause2: 29929474 false ) 
	#(231 5 #reduceActionForCaseBlock6: 29672454 false ) 
	#(449 4 #reduceActionForAmbientPropertyMemberDeclaration4: 63151108 false ) 
	#(449 4 #reduceActionForAmbientPropertyMemberDeclaration10: 63151114 false ) 
	#(449 4 #reduceActionForAmbientPropertyMemberDeclaration7: 63151111 false ) 
	#(449 4 #reduceActionForAmbientPropertyMemberDeclaration6: 63151110 false ) 
	#(449 4 #reduceActionForAmbientPropertyMemberDeclaration11: 63151115 false ) 
	#(263 9 #reduceActionForGeneratorExpression2: 33503234 false ) 
	#(268 9 #reduceActionForAsyncGeneratorExpression1: 34392065 false ) 
	#(272 9 #reduceActionForAsyncFunctionExpression2: 35197954 false ) 
	#(269 10 #reduceActionForAsyncGeneratorExpression2: 34667522 false ) 
	#(262 8 #reduceActionForGeneratorMethod1: 33287169 false ) 
	#(271 8 #reduceActionForAsyncMethod1: 34978817 false ) 
	#(260 8 #reduceActionForMethodDefinition6: 32630790 false ) 
	#(399 7 #reduceActionForMemberFunctionDeclaration2: 54115330 false ) 
	#(396 7 #reduceActionForConstructorDeclaration4: 53270532 false ) 
	#(398 7 #reduceActionForMemberVariableDeclaration16: 53911568 false ) 
	#(399 7 #reduceActionForMemberFunctionDeclaration3: 54115331 false ) 
	#(326 5 #reduceActionForJSXChild4: 41222146 false ) 
	#(222 10 #reduceActionForIterationStatement14: 26198030 false ) 
	#(448 5 #reduceActionForAmbientConstructorDeclaration1: 62944257 false ) 
	#(449 5 #reduceActionForAmbientPropertyMemberDeclaration8: 63151112 false ) 
	#(449 5 #reduceActionForAmbientPropertyMemberDeclaration12: 63151116 false ) 
	#(268 10 #reduceActionForAsyncGeneratorExpression2: 34392066 false ) 
	#(267 9 #reduceActionForAsyncGeneratorMethod1: 34139137 false ) 
	#(382 9 #reduceActionForGetAccessor1: 49719297 false ) 
	#(383 9 #reduceActionForSetAccessor2: 49925122 false ) 
	#(396 8 #reduceActionForConstructorDeclaration1: 53270529 false ) 
	#(399 8 #reduceActionForMemberFunctionDeclaration4: 54115332 false ) 
	#(383 10 #reduceActionForSetAccessor1: 49925121 false ) 
	#(383 10 #reduceActionForSetAccessor1: 49925123 false ) 
	#(396 9 #reduceActionForConstructorDeclaration2: 53270530 false )
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
	^ #('<at>' '<leftParen>' '<rightParen>' '<leftBrace>' '<rightBrace>' '<leftBracket>' '<rightBracket>' '<semicolon>' '<slash>' '<slashEqual>' '<lt>' '<ltLt>' '<ltLtEq>' '<gt>' '<gtGt>' '<gtGtEq>' '<gtGtGtEq>' '<gtGtGt>' '<eqGt>' '<ltEq>' '<gtEq>' '<period>' '<eq>' '<eqEq>' '<eqEqEq>' '<star>' '<starStar>' '<starEq>' '<percentEq>' '<ampEq>' '<upEq>' '<barEq>' '<minusEq>' '<plusEq>' '<plus>' '<plusPlus>' '<minus>' '<minusMinus>' '<tilde>' '<amp>' '<ampAmp>' '<question>' '<questionDot>' '<questionQuestion>' '<percent>' '<bar>' '<barBar>' '<up>' '<bang>' '<bangEq>' '<bangEqEq>' '<as>' '<async>' '<await>' '<break>' '<case>' '<catch>' '<class>' '<abstract>' '<const>' '<constructor>' '<continue>' '<debugger>' '<declare>' '<default>' '<delete>' '<do>' '<else>' '<enum>' '<export>' '<extends>' '<false>' '<finally>' '<for>' '<from>' '<function>' '<get>' '<if>' '<import>' '<in>' '<infer>' '<implements>' '<instanceof>' '<interface>' '<keyof>' '<let>' '<module>' '<namespace>' '<new>' '<null>' '<numeric>' '<of>' '<private>' '<protected>' '<public>' '<return>' '<set>' '<static>' '<string>' '<super>' '<switch>' '<target>' '<this>' '<throw>' '<true>' '<try>' '<type>' '<typeof>' '<var>' '<void>' '<while>' '<with>' '<yield>' '<dotDotDot>' '<comma>' '<colon>' '<comment>' '<identifier>' '<identifierName>' '<whitespace>' '<string_literal>' '<numeric_literal>' '<regular_expression>' '<patternToken>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_tail>' '<jsxLT>' '<JSXIdentifier>' '<JSXText>' 'B e g i n' 'goal' 'Identifier' 'IdentifierName' 'PrimaryExpression' 'ParenthesizedExpression' 'Literal' 'ArrayLiteral' 'ElementList' 'Elision' 'SpreadElement' 'ObjectLiteral' 'ValidationNotArrowFunction' 'PropertyDefinitionList' 'PropertyDefinition' 'PropertyName' 'LiteralPropertyName' 'ComputedPropertyName' 'CoverInitializedName' 'Initializer' 'TemplateLiteral' 'StartTemplateLiteral' 'TemplateSpans' 'TemplateMiddleList' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'NewTarget' 'NewExpression' 'CallExpression' 'SuperCall' 'ImportCall' 'Arguments' 'ArgumentList' 'OptionalExpression' 'OptionalChain' 'OptionalRest' 'OptionalFirst' 'LeftHandSideExpression' 'UpdateExpression' 'UnaryExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'MultiplicativeOperator' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'CoalesceExpression' 'CoalesceExpressionHead' 'ShortCircuitExpression' 'ConditionalExpression' 'AssignmentExpression' 'AssignmentOperator' 'Expression' 'Statement' 'Declaration' 'HoistableDeclaration' 'BreakableStatement' 'BlockStatement' 'Block' 'StatementList' 'StatementListItem' 'StartStatementListItem' 'LexicalDeclaration' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableStatement' 'VariableDeclarationList' 'VariableDeclaration' 'BindingPattern' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingRestProperty' 'BindingPropertyList' 'BindingElementList' 'BindingElisionElement' 'BindingProperty' 'BindingElement' 'SingleNameBinding' 'BindingRestElement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'IterationStatement' 'ForDeclaration' 'ForBinding' 'ContinueStatement' 'BreakStatement' 'CheckEOL' 'ReturnStatement' 'WithStatement' 'SwitchStatement' 'CaseBlock' 'CaseClauses' 'CaseClause' 'DefaultClause' 'LabelledStatement' 'LabeledItem' 'ThrowStatement' 'TryStatement' 'Catch' 'Finally' 'CatchParameter' 'DebuggerStatement' 'FunctionDeclaration' 'FunctionExpression' 'UniqueFormalParameters' 'FormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalParameter' 'FunctionBody' 'FunctionStatementList' 'ArrowFunction' 'ArrowParameters' 'ArrowParameterDeclaration' 'ConciseBody' 'ExpressionBody' 'ArrowFormalParameters' 'AsyncArrowFunction' 'AsyncConciseBody' 'MethodDefinition' 'PropertySetParameterList' 'GeneratorMethod' 'GeneratorDeclaration' 'GeneratorExpression' 'GeneratorBody' 'YieldExpression' 'AsyncGeneratorMethod' 'AsyncGeneratorDeclaration' 'AsyncGeneratorExpression' 'AsyncGeneratorBody' 'AsyncMethod' 'AsyncFunctionDeclaration' 'AsyncFunctionExpression' 'AsyncFunctionBody' 'AwaitExpression' 'ClassDeclaration' 'ClassExpression' 'ClassTail' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'Script' 'ScriptBody' 'Module' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ImportDeclaration' 'ImportClause' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'FromClause' 'ImportsList' 'ImportSpecifier' 'ModuleSpecifier' 'ImportedBinding' 'ExportDeclaration' 'ExportFromClause' 'NamedExports' 'ExportsList' 'ExportSpecifier' 'NullLiteral' 'BooleanLiteral' 'StringLiteral' 'NumericLiteral' 'RegularExpressionLiteral' 'JSXElement' 'JSXSelfClosingElement' 'JSXOpeningElement' 'JSXClosingElement' 'JSXFragment' 'JSXElementName' 'JSXNamespacedName' 'JSXMemberExpression' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')' '(<JSXIdentifier> ''identifier'' <period> ''periodToken'')+' 'JSXAttributes' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')' '(JSXSpreadAttribute ''attribute'' | JSXAttribute ''attribute'')+' 'JSXSpreadAttribute' 'JSXAttribute' 'JSXAttributeName' 'JSXAttributeInitializer' 'JSXAttributeValue' 'JSXChildren' 'JSXChild ''item'' *' 'JSXChild' 'JSXChildExpression' 'SwitchToJSX' 'SwitchToJSXText' 'StartJSXText' 'SwitchToJSXTextOrDefault1' 'SwitchToJSXTextOrDefault2' 'SwitchToDefault' 'TypeParameters' 'TypeParameterList' 'TypeParameter' 'Constraint' 'TypeArguments' 'TypeArgumentList' 'TypeArgument' 'Type' 'UnionOrIntersectionOrPrimaryType' 'IntersectionOrPrimaryType' 'PrefixType' 'PrimaryType' 'LiteralType' 'ParenthesizedType' 'PredefinedType' 'TypeReference' 'TypeName' 'NamespaceName' 'ObjectType' 'TypeBody' 'TypeMemberList' 'TypeMember' 'ArrayType' 'TupleType' 'TupleElementTypes' 'TupleElementType' 'UnionType' 'IntersectionType' 'FunctionType' 'ConstructorType' 'TypeQuery' 'TypeQueryExpression' 'ThisType' 'PropertySignature' 'TypeAnnotation' 'CallSignature' 'DecoratorExpression ''decorator''*' 'TSIdentifierOrBindingPattern' 'AccessibilityModifier' 'BindingIdentifierOrPattern' 'ConstructSignature' 'IndexSignature' 'MethodSignature' 'TypeAliasDeclaration' 'TypeCallSignature' 'GetAccessor' 'SetAccessor' 'TypedPropertySetParameterList' 'SimpleVariableDeclaration' 'DestructuringVariableDeclaration' 'SimpleLexicalBinding' 'DestructuringLexicalBinding' 'InterfaceDeclaration' 'InterfaceExtendsClause' 'ClassOrInterfaceTypeList' 'ClassOrInterfaceType' 'ClassExtendsClause' 'ClassType' 'ImplementsClause' 'ConstructorDeclaration' 'PropertyMemberDeclaration' 'MemberVariableDeclaration' 'MemberFunctionDeclaration' 'MemberAccessorDeclaration' 'IndexMemberDeclaration' 'EnumDeclaration' 'EnumBody' 'EnumMemberList' 'EnumMember' 'EnumValue' 'NamespaceDeclaration' 'IdentifierPath' 'NamespaceBody' 'NamespaceElements' 'NamespaceElement' 'ExportNamespaceElement' 'ImportAliasDeclaration' 'EntityName' 'SourceFile' 'ImplementationSourceFile' 'DeclarationSourceFile' 'ImplementationScript' 'ImplementationScriptElements' 'ImplementationScriptElement' 'ImplementationElement' 'DeclarationScript' 'DeclarationScriptElements' 'DeclarationScriptElement' 'DeclarationElement' 'ImplementationModule' 'ImplementationModuleElements' 'ImplementationModuleElement' 'DeclarationModule' 'DeclarationModuleElements' 'DeclarationModuleElement' 'ImportRequireDeclaration' 'ExportImplementationElement' 'ExportDeclarationElement' 'ExportDefaultImplementationElement' 'ExportDefaultDeclarationElement' 'ExportListDeclaration' 'ExportAssignment' 'AmbientDeclaration' 'AmbientVariableDeclaration' 'AmbientBindingList' 'AmbientBinding' 'AmbientFunctionDeclaration' 'AmbientClassDeclaration' 'AmbientClassBody' 'AmbientClassBodyElements' 'AmbientClassBodyElement' 'AmbientConstructorDeclaration' 'AmbientPropertyMemberDeclaration' 'AmbientEnumDeclaration' 'AmbientNamespaceDeclaration' 'AmbientNamespaceBody' 'AmbientNamespaceElements' 'AmbientNamespaceElement' 'AmbientModuleDeclaration' 'DecoratorExpression' '<require>' '<starStarEq>' '<ts>' 'E O F' 'error')
]

{ #category : #generated }
JSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSModuleNode #JSModuleNode #JSNameExpressionNode #JSNameExpressionNode #JSExpressionNode #JSExpressionNode #JSLiteralNode #JSArrayLiteralNode #OrderedCollection #OrderedCollection #JSSpreadExpressionNode #JSObjectLiteralNode nil #OrderedCollection #JSProgramNode #JSProgramNode #JSNameExpressionNode #JSComputedPropertyNameNode #JSPropertyAssignmentNode #OrderedCollection #JSTemplateLiteralNode #ByteSymbol #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #JSNewTargetExpressionNode #JSExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSImportCallExpressionNode #OrderedCollection #OrderedCollection #JSOptionalExpressionNode #OrderedCollection #JSOptionalNode #JSOptionalNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSBinaryExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #SmaCCToken #JSExpressionNode #JSStatementNode #JSProgramNode #JSProgramNode #JSStatementNode #JSBlockStatementNode #JSBlockStatementNode #OrderedCollection #JSStatementNode #ByteSymbol #JSLexicalDeclarationNode #SmaCCToken #OrderedCollection #JSProgramNode #JSVariableStatementNode #OrderedCollection #JSProgramNode #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #JSBindingRestPropertyNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #OrderedCollection #JSProgramNode #JSContinueStatementNode #JSBreakStatementNode nil #JSReturnStatementNode #JSWithStatementNode #JSSwitchStatementNode #OrderedCollection #OrderedCollection #JSCaseClauseNode #JSDefaultClauseNode #JSLabelledStatementNode #JSStatementNode #JSThrowStatementNode #JSTryStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #JSDebuggerStatementNode #JSProgramNode #JSFunctionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #JSProgramNode #OrderedCollection #OrderedCollection #JSArrowFunctionNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #JSExpressionNode #OrderedCollection #JSAsyncArrowFunctionNode #OrderedCollection #JSMethodDefinitionNode #JSProgramNode #JSGeneratorMethodDefinitionNode #JSGeneratorFunctionNode #JSGeneratorFunctionNode #OrderedCollection #JSYieldExpressionNode #JSAsyncGeneratorMethodDefinitionNode #JSAsyncGeneratorFunctionNode #JSAsyncGeneratorFunctionNode #OrderedCollection #JSAsyncMethodDefinitionNode #JSAsyncFunctionNode #JSAsyncFunctionNode #OrderedCollection #JSAwaitExpressionNode #JSClassExpressionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSScriptNode #OrderedCollection #JSModuleNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportDeclarationNode #OrderedCollection #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #OrderedCollection #OrderedCollection #JSImportSpecifierNode #SmaCCToken #JSNameExpressionNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSExportSpecifierNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSRegularExpressionLiteralNode #JSExpressionNode #JSXSelfClosingElementNode #JSXOpeningElementNode #JSXClosingElementNode #JSXFragmentNode #JSProgramNode #JSXNamespacedNameNode #JSXMemberExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #JSXSpreadAttributeNode #JSXAttributeNode #JSProgramNode #OrderedCollection #JSExpressionNode #OrderedCollection #OrderedCollection #JSExpressionNode #JSExpressionNode nil nil #ByteSymbol #Object #Object #ByteSymbol #JSTypeParametersNode #OrderedCollection #JSTypeParameterNode #OrderedCollection #JSTypeArgumentsNode #OrderedCollection #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSTypeNode #JSLiteralTypeNode #JSTypeNode #JSVoidTypeNode #JSTypeReferenceNode #JSTypeNameNode #OrderedCollection #JSObjectTypeNode #OrderedCollection #OrderedCollection #JSProgramNode #JSArrayTypeNode #JSTupleTypeNode #OrderedCollection #JSTypeNode #JSUnionTypeNode #JSIntersectionTypeNode #JSFunctionTypeNode #JSConstructorTypeNode #JSTypeQueryNode #JSTypeQueryExpressionNode #JSThisTypeNode #JSPropertySignatureNode #OrderedCollection #JSCallSignatureNode #OrderedCollection #JSProgramNode #SmaCCToken #JSProgramNode #JSConstructSignatureNode #JSIndexSignatureNode #JSMethodSignatureNode #JSTypeAliasDeclarationNode #OrderedCollection #JSGetMethodDefinitionNode #JSSetMethodDefinitionNode #JSTypedParameterNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSVariableDeclarationNode #JSVariablePatternDeclarationNode #JSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSTypeReferenceNode #OrderedCollection #JSConstructorDeclarationNode #JSProgramNode #JSMemberVariableDeclarationNode #JSMemberFunctionDeclarationNode #JSMemberAccessorDeclarationNode #JSIndexMemberDeclarationNode #JSEnumDeclarationNode #OrderedCollection #OrderedCollection #JSEnumMemberNode #JSExpressionNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSExportNamespaceElementNode #JSImportAliasDeclarationNode #OrderedCollection #JSTSSourceFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSProgramNode #JSImportRequireDeclarationNode #JSExportImplementationElementNode #JSExportDeclarationElementNode #JSExportDefaultImplementationElementNode #JSExportDefaultDeclarationElementNode #JSExportListDeclarationNode #JSExportAssignmentNode #JSAmbientDeclarationNode #JSLexicalDeclarationNode #OrderedCollection #JSVariableDeclarationNode #JSEmptyFunctionNode #JSClassExpressionNode #OrderedCollection #OrderedCollection #JSProgramNode #JSConstructorDeclarationNode #JSProgramNode #JSEnumDeclarationNode #JSNamespaceDeclarationNode #OrderedCollection #OrderedCollection #JSExportNamespaceElementNode #JSAmbientModuleDeclarationNode #JSDecoratorExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 37 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 7 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 0 49 0 133 0 81 0 199 0 57 0 200 0 81 0 201 0 65 0 202 0 49 1 29 0 73 1 30 0 77 1 31 0 81 1 32 0 81 1 33 0 81 1 43 0 6 1 203 0 10 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 1 101 0 188 1 101 0 189 1 101 0 191 0 245 0 244 1 101 0 252 1 113 0 253 1 117 0 254 1 121 1 1 1 101 1 2 0 245 1 8 1 101 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 2 9 0 192 2 9 0 195 2 9 0 196 2 9 0 197 2 9 0 205 2 9 0 219 2 9 0 220 2 9 0 221 2 9 0 222 2 9 0 225 2 9 0 226 2 9 0 228 2 9 0 229 2 9 0 230 2 9 0 235 2 9 0 237 2 9 0 238 2 9 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 2 81 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 2 89 1 27 2 93 1 28 0 6 1 203 0 26 1 204] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 37 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 7 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 0 81 0 199 0 57 0 200 0 81 0 201 0 65 0 202 2 97 1 29 0 73 1 30 0 77 1 31 0 81 1 32 0 81 1 33 0 81 1 43 0 6 1 203 0 10 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 2 101 0 58 2 105 0 59 2 109 0 60 1 209 0 62 1 213 0 63 2 113 0 64 0 137 0 66 1 217 0 67 2 117 0 69 2 121 0 70 1 157 0 72 1 221 0 74 2 125 0 76 1 225 0 78 2 129 0 79 2 133 0 84 0 65 0 86 2 137 0 88 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 2 141 0 107 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 2 213 0 192 2 213 0 195 2 213 0 196 2 213 0 197 2 213 0 201 0 65 0 202 2 213 0 205 2 213 0 219 2 213 0 220 2 213 0 221 2 213 0 222 2 213 0 225 2 213 0 226 2 213 0 228 2 213 0 229 2 213 0 230 2 213 0 235 2 213 0 237 2 213 0 238 2 213 0 242 2 213 0 243 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 2 213 1 7 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 2 213 1 20 0 245 1 21 2 165 1 33 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 2 169 1 124 2 173 1 133 2 213 1 146 2 181 1 151 2 185 1 157 2 189 1 159 2 193 1 160 2 197 1 161 2 201 1 162 2 205 1 163 2 209 1 164 2 213 1 165 2 217 1 166 2 221 1 167 2 225 1 168 2 229 1 169 2 233 1 170 2 237 1 171 2 241 1 172 2 245 1 173 2 249 1 174 2 253 1 175 2 241 1 176 2 241 1 177 2 253 1 178 2 241 1 179 2 253 1 180 3 21 1 181 3 25 1 182 3 29 1 183 3 33 1 199 3 37 1 203 0 19 1 204] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 3 97 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 3 97 1 109 3 97 1 110 3 113 1 111 3 113 1 113] 
#[0 0 46 0 4 0 6 0 118 1 203] 
#[1 3 177 0 4 3 181 0 26 3 185 0 53 3 189 0 58 2 105 0 59 0 65 0 60 3 193 0 65 3 197 0 76 0 65 0 86 1 245 0 109 3 201 0 193 3 201 0 194 3 201 0 201 0 65 0 202 3 213 0 205 3 201 0 243 3 201 1 7 3 201 1 12 3 201 1 16 3 201 1 20 3 237 1 44 3 241 1 45 3 245 1 203] 
#[1 3 249 0 4 3 253 0 26 0 185 0 118 4 21 0 121 4 9 0 134 4 5 1 34 4 9 1 35 4 13 1 36 4 17 1 37 4 21 1 41 4 9 1 42 4 21 1 50] 
#[0 0 50 0 4 0 6 0 118 1 203] 
#[0 0 0 1 204] 
#[0 0 54 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 4 33 0 192 4 33 0 195 4 33 0 196 4 33 0 197 4 33 0 205 4 33 0 219 4 33 0 220 4 33 0 221 4 33 0 222 4 33 0 225 4 33 0 226 4 33 0 228 4 33 0 229 4 33 0 230 4 33 0 235 4 33 0 237 4 33 0 238 4 33 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 0 58 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 60 0 62 0 63 0 65 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 4 45 0 134 4 49 0 203 4 53 0 204 4 57 0 208 4 57 0 209 4 57 0 210 4 53 1 131 4 53 1 132 4 77 1 203] 
#[0 0 62 1 204] 
#[0 0 66 1 204] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 37 0 70 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 7 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 4 81 0 199 0 57 0 200 4 81 0 201 0 65 0 202 4 81 1 32 4 81 1 33 4 81 1 43 0 6 1 203 0 70 1 204] 
#[0 0 74 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 0 78 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 0 82 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 86 0 3 0 23 0 4 4 85 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 4 89 0 114 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 4 93 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 4 97 0 188 4 97 0 189 4 97 0 191 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 0 245 0 244 4 117 0 245 4 121 0 246 4 125 0 247 4 129 0 248 4 133 0 249 4 97 0 252 1 113 0 253 1 117 0 254 1 121 1 1 4 97 1 2 0 245 1 8 4 97 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 137 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 4 141 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 4 145 0 114 4 149 0 115 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 4 153 0 140 4 157 0 141 4 161 0 142 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 4 165 0 188 4 165 0 189 0 245 0 244 4 165 0 252 1 113 0 253 1 117 0 254 1 121 1 1 4 165 1 2 0 245 1 8 4 165 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 4 185 0 171 4 185 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 185 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 4 193 0 171 4 193 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 193 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 4 197 0 171 4 197 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 197 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 4 201 0 171 4 201 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 201 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 4 205 0 171 4 205 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 205 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 4 209 0 171 4 209 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 209 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 213 0 2 4 217 0 76 0 185 0 118 4 221 0 134 4 225 0 253 1 117 0 254 1 121 1 1 4 229 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 4 233 0 171 4 233 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 4 233 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 237 0 4 4 241 0 71 0 185 0 118 4 245 0 134 4 249 1 22 4 253 1 23 5 1 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 5 5 0 171 5 5 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 5 5 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[0 0 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 9 0 2 5 13 0 26 0 185 0 118 5 17 0 134] 
#[0 5 21 0 2] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 5 25 0 22 4 173 0 53 0 133 0 58 1 157 0 72 0 145 0 76 0 153 0 89 1 153 0 90 5 29 0 100 0 165 0 103 1 157 0 105 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 5 33 0 134 5 33 0 136 5 33 0 137 5 33 0 138 5 33 0 139 5 33 0 143 0 233 0 144 5 33 0 152 0 241 0 153 5 33 0 156 5 33 0 157 5 33 0 158 5 33 0 159 5 37 0 160 5 33 0 244 5 33 1 8 5 33 1 13 5 33 1 17 5 33 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 5 33 1 52 5 33 1 53 5 33 1 54 1 181 1 55 5 33 1 57 1 189 1 75 5 41 1 203] 
#[0 0 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 45 0 2 5 49 0 6 5 53 0 22 5 57 0 164 5 61 1 203] 
#[0 0 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 5 65 0 171 5 65 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 5 65 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 5 69 0 171 5 69 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 5 69 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 0 93 0 2 0 106 0 3 0 14 0 4 0 106 0 5 0 97 0 6 0 106 0 7 0 106 0 8 5 73 0 26 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 106 0 92 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 106 0 115 0 106 0 116 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 106 0 127 0 106 0 128 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 5 77 0 188 5 77 0 189 0 245 0 244 5 77 0 252 1 113 0 253 1 117 0 254 1 121 1 1 5 77 1 2 0 245 1 8 5 77 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203 0 106 1 204] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 71 0 75 0 80 0 82 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 0 130 1 202 1 203 1 204] 
#[0 0 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 130 0 14 5 81 1 76] 
#[1 0 134 0 2 0 134 0 3 0 134 0 5 0 134 0 6 0 134 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 18 0 138 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 80 0 134 0 83 0 134 0 92 0 134 0 115 0 134 0 116 0 134 0 125 0 134 0 126 0 134 0 127 0 134 0 128 0 134 1 202 0 134 1 203 0 134 1 204] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 85 0 4] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 89 0 126] 
#[1 5 45 0 2 0 166 0 3 0 166 0 4 0 166 0 5 5 93 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 18 0 166 0 20 0 166 0 21 5 97 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 38 0 166 0 40 0 166 0 41 0 166 0 42 5 101 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 47 0 166 0 48 0 166 0 50 0 166 0 51 0 166 0 52 0 166 0 80 0 166 0 83 0 166 0 92 0 166 0 115 0 166 0 116 0 201 0 125 0 18 0 126 0 166 0 127 0 166 0 128 5 105 0 152 0 241 0 153 5 109 0 164 5 113 0 167 0 166 1 202 5 61 1 203 0 166 1 204] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 182 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 202 1 204] 
#[1 5 45 0 2 0 186 0 3 0 186 0 4 0 186 0 5 5 117 0 6 0 186 0 7 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 11 0 186 0 12 0 186 0 13 0 186 0 14 0 186 0 15 0 186 0 16 0 186 0 17 0 186 0 18 0 186 0 20 0 186 0 21 5 121 0 22 0 186 0 23 0 186 0 24 0 186 0 25 0 186 0 26 0 186 0 27 0 186 0 28 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 0 186 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 40 0 186 0 41 0 186 0 42 5 101 0 43 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 47 0 186 0 48 0 186 0 50 0 186 0 51 0 186 0 52 0 186 0 80 0 186 0 83 0 186 0 92 0 186 0 115 0 186 0 116 0 201 0 125 0 18 0 126 0 186 0 127 0 186 0 128 5 125 0 152 0 241 0 153 5 129 0 164 5 133 0 167 0 186 1 202 5 61 1 203 0 186 1 204] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 0 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 15 0 198 0 16 0 198 0 17 0 198 0 18 0 198 0 20 0 198 0 21 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 40 0 198 0 41 0 198 0 42 5 101 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 48 0 198 0 50 0 198 0 51 0 198 0 52 0 198 0 80 0 198 0 83 0 198 0 92 0 198 0 115 0 198 0 116 0 198 0 127 0 198 0 128 5 137 0 167 0 198 1 202 0 198 1 204] 
#[1 0 202 0 3 0 202 0 5 0 202 0 7 0 202 0 8 0 202 0 9 5 201 0 10 0 202 0 11 0 202 0 12 5 201 0 13 0 202 0 14 0 202 0 15 5 201 0 16 5 201 0 17 0 202 0 18 0 202 0 20 0 202 0 21 5 201 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 5 201 0 28 5 201 0 29 5 201 0 30 5 201 0 31 5 201 0 32 5 201 0 33 5 201 0 34 0 202 0 35 5 189 0 36 0 202 0 37 5 193 0 38 0 202 0 40 0 202 0 41 0 202 0 42 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 47 0 202 0 48 0 202 0 50 0 202 0 51 5 197 0 52 0 202 0 80 0 202 0 83 0 202 0 92 0 202 0 115 0 202 0 116 0 202 0 127 0 202 0 128 5 201 0 190 5 201 1 202 0 202 1 204] 
#[0 0 206 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 210 0 3 0 210 0 5 0 210 0 7 0 210 0 8 0 210 0 9 0 210 0 11 0 210 0 12 0 210 0 14 0 210 0 15 0 210 0 18 0 210 0 20 0 210 0 21 0 210 0 24 0 210 0 25 0 210 0 26 5 209 0 27 0 210 0 35 0 210 0 37 0 210 0 40 0 210 0 41 0 210 0 42 0 210 0 44 0 210 0 45 0 210 0 46 0 210 0 47 0 210 0 48 0 210 0 50 0 210 0 51 0 210 0 80 0 210 0 83 0 210 0 92 0 210 0 115 0 210 0 116 0 210 0 127 0 210 0 128 0 210 1 204] 
#[0 0 214 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 218 0 3 0 218 0 5 0 218 0 7 0 218 0 8 5 225 0 9 0 218 0 11 0 218 0 12 0 218 0 14 0 218 0 15 0 218 0 18 0 218 0 20 0 218 0 21 0 218 0 24 0 218 0 25 5 225 0 26 0 218 0 35 0 218 0 37 0 218 0 40 0 218 0 41 0 218 0 42 0 218 0 44 5 225 0 45 0 218 0 46 0 218 0 47 0 218 0 48 0 218 0 50 0 218 0 51 0 218 0 80 0 218 0 83 0 218 0 92 0 218 0 115 0 218 0 116 0 218 0 127 0 218 0 128 5 225 0 175 0 218 1 204] 
#[1 0 222 0 3 0 222 0 5 0 222 0 7 0 222 0 8 0 222 0 11 0 222 0 12 0 222 0 14 0 222 0 15 0 222 0 18 0 222 0 20 0 222 0 21 0 222 0 24 0 222 0 25 5 229 0 35 5 233 0 37 0 222 0 40 0 222 0 41 0 222 0 42 0 222 0 44 0 222 0 46 0 222 0 47 0 222 0 48 0 222 0 50 0 222 0 51 0 222 0 80 0 222 0 83 0 222 0 92 0 222 0 115 0 222 0 116 0 222 0 127 0 222 0 128 0 222 1 204] 
#[1 0 226 0 3 0 226 0 5 0 226 0 7 0 226 0 8 0 226 0 11 5 237 0 12 0 226 0 14 5 241 0 15 5 245 0 18 0 226 0 20 0 226 0 21 0 226 0 24 0 226 0 25 0 226 0 40 0 226 0 41 0 226 0 42 0 226 0 44 0 226 0 46 0 226 0 47 0 226 0 48 0 226 0 50 0 226 0 51 0 226 0 80 0 226 0 83 0 226 0 92 0 226 0 115 0 226 0 116 0 226 0 127 0 226 0 128 0 226 1 204] 
#[1 0 230 0 3 0 230 0 5 0 230 0 7 0 230 0 8 5 249 0 11 5 253 0 14 6 1 0 20 6 5 0 21 0 230 0 24 0 230 0 25 0 230 0 40 0 230 0 41 0 230 0 42 0 230 0 44 0 230 0 46 0 230 0 47 0 230 0 48 0 230 0 50 0 230 0 51 6 9 0 80 6 13 0 83 0 230 0 92 0 230 0 115 0 230 0 116 0 230 0 127 0 230 0 128 0 230 1 204] 
#[1 0 234 0 3 0 234 0 5 0 234 0 7 0 234 0 8 6 17 0 24 6 21 0 25 0 234 0 40 0 234 0 41 0 234 0 42 0 234 0 44 0 234 0 46 0 234 0 47 0 234 0 48 6 25 0 50 6 29 0 51 0 234 0 92 0 234 0 115 0 234 0 116 0 234 0 127 0 234 0 128 0 234 1 204] 
#[1 0 238 0 3 0 238 0 5 0 238 0 7 0 238 0 8 6 33 0 40 0 238 0 41 0 238 0 42 0 238 0 44 0 238 0 46 0 238 0 47 0 238 0 48 0 238 0 92 0 238 0 115 0 238 0 116 0 238 0 127 0 238 0 128 0 238 1 204] 
#[1 0 242 0 3 0 242 0 5 0 242 0 7 0 242 0 8 0 242 0 41 0 242 0 42 0 242 0 44 0 242 0 46 0 242 0 47 6 37 0 48 0 242 0 92 0 242 0 115 0 242 0 116 0 242 0 127 0 242 0 128 0 242 1 204] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 0 246 0 41 0 246 0 42 0 250 0 44 6 41 0 46 0 246 0 47 0 246 0 92 0 246 0 115 0 246 0 116 0 246 0 127 0 246 0 128 0 246 1 204] 
#[1 0 254 0 3 0 254 0 5 0 254 0 7 0 254 0 8 6 45 0 41 0 254 0 42 0 254 0 47 0 254 0 92 0 254 0 115 0 254 0 116 0 254 0 127 0 254 0 128 0 254 1 204] 
#[1 1 2 0 3 1 2 0 5 1 2 0 7 1 2 0 8 1 2 0 42 6 49 0 47 1 2 0 92 1 2 0 115 1 2 0 116 1 2 0 127 1 2 0 128 1 2 1 204] 
#[1 1 6 0 3 1 6 0 5 1 6 0 7 1 6 0 8 1 6 0 42 1 10 0 44 1 6 0 92 1 6 0 115 1 6 0 116 1 6 0 127 1 6 0 128 1 6 1 204] 
#[0 6 53 0 44] 
#[1 1 14 0 3 1 14 0 5 1 14 0 7 1 14 0 8 6 57 0 42 1 14 0 92 1 14 0 115 1 14 0 116 1 14 0 127 1 14 0 128 1 14 1 204] 
#[0 1 18 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 1 22 0 3 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[1 6 61 0 115 0 0 1 204] 
#[0 1 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 30 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 6 65 0 19] 
#[0 1 34 0 19] 
#[0 1 38 0 19] 
#[0 1 42 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 1 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 50 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 62 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[1 1 98 0 4 1 98 0 129 1 98 0 131 6 69 1 77] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 6 73 0 129] 
#[1 6 77 0 2 6 81 0 11 6 85 0 76 6 89 1 81 6 93 1 125] 
#[1 0 6 0 2 0 6 0 4 6 97 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 101 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 0 6 1 203] 
#[0 1 106 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 1 110 0 8 1 110 0 118 6 105 0 227] 
#[1 1 110 0 8 1 110 0 118 6 109 0 227] 
#[0 6 113 0 8] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 6 117 0 192 6 117 0 195 6 117 0 196 6 117 0 197 6 117 0 205 6 117 0 219 6 117 0 220 6 117 0 221 6 117 0 222 6 117 0 225 6 117 0 226 6 117 0 228 6 117 0 229 6 117 0 230 6 117 0 235 6 117 0 237 6 117 0 238 6 117 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 6 121 0 2 6 125 0 54] 
#[0 6 129 0 2] 
#[1 1 110 0 2 1 110 0 4 1 110 0 6 1 110 0 8 1 110 0 35 1 110 0 36 1 110 0 37 1 110 0 38 1 110 0 39 1 110 0 49 1 110 0 53 1 110 0 54 1 110 0 58 1 110 0 66 1 110 0 72 1 110 0 76 1 110 0 79 1 110 0 89 1 110 0 90 1 110 0 100 1 110 0 103 1 110 0 105 1 110 0 108 1 110 0 110 1 110 0 113 1 110 0 118 1 110 0 121 1 110 0 122 1 110 0 123 1 110 0 125 1 110 0 126 1 110 0 129 6 133 0 227 1 110 1 203] 
#[0 6 137 0 2] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 6 141 0 188 6 141 0 189 6 141 0 191 0 245 0 244 6 141 0 252 1 113 0 253 1 117 0 254 1 121 1 1 6 141 1 2 0 245 1 8 6 141 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 1 197 0 4 6 145 0 197] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 6 149 0 134 6 153 0 206 6 157 0 207 6 161 0 208 6 161 0 209 6 161 0 210 6 165 1 203] 
#[0 6 169 0 2] 
#[0 6 173 0 2] 
#[1 0 110 0 2 0 110 0 6 0 110 0 8 0 110 0 9 0 110 0 10 0 110 0 11 0 110 0 12 0 110 0 13 0 110 0 14 0 110 0 15 0 110 0 16 0 110 0 17 0 110 0 18 0 110 0 19 0 110 0 20 0 110 0 21 0 110 0 22 0 110 0 23 0 110 0 24 0 110 0 25 0 110 0 26 0 110 0 27 0 110 0 28 0 110 0 29 0 110 0 30 0 110 0 31 0 110 0 32 0 110 0 33 0 110 0 34 0 110 0 35 0 110 0 36 0 110 0 37 0 110 0 38 0 110 0 40 0 110 0 41 0 110 0 42 0 110 0 43 0 110 0 44 0 110 0 45 0 110 0 46 0 110 0 47 0 110 0 48 0 110 0 50 0 110 0 51 0 110 0 52 0 110 0 80 0 110 0 83 0 110 0 115 6 177 0 116 0 110 0 125 0 110 0 126 0 110 1 202 0 110 1 203] 
#[1 6 181 0 8 6 61 0 115] 
#[0 0 0 1 204] 
#[0 1 114 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 118 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 122 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 126 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 130 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 134 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 138 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 142 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 146 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 150 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 154 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 158 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 162 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 166 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 170 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 174 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 178 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 2 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 185 0 199 0 57 0 200 6 185 0 201 0 65 0 202 0 6 1 203 1 182 1 204] 
#[0 1 186 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 60 0 62 0 63 0 65 0 66 0 67 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 0 0 1 204] 
#[0 1 190 1 204] 
#[0 0 0 1 204] 
#[1 4 237 0 4 4 241 0 71 0 185 0 118 6 189 0 134 6 193 1 22 4 253 1 23 5 1 1 203] 
#[0 6 197 0 58] 
#[1 0 46 0 4 0 46 0 6 6 201 0 69 0 46 0 118 0 46 1 203] 
#[1 6 205 0 58 6 209 0 60 2 117 0 69 6 213 0 76 6 217 0 86 6 221 0 87 6 225 0 88 6 229 0 109 6 249 1 146 6 237 1 184 6 241 1 187 6 245 1 188 6 249 1 194 6 253 1 195] 
#[1 0 185 0 118 7 1 0 134] 
#[1 3 177 0 4 7 5 0 23 7 9 0 26 3 189 0 58 2 105 0 59 2 109 0 60 7 13 0 64 7 17 0 65 2 117 0 69 3 197 0 76 7 21 0 79 2 133 0 84 0 65 0 86 2 137 0 88 2 141 0 107 1 245 0 109 7 25 0 201 0 65 0 202 7 29 0 205 7 33 0 243 7 37 1 7 7 41 1 20 7 45 1 33 7 49 1 45 7 53 1 124 7 57 1 133 7 61 1 146 7 65 1 151 7 69 1 157 7 73 1 183 7 77 1 203] 
#[1 7 81 0 2 7 85 0 26 0 185 0 118 7 89 0 134] 
#[1 5 21 0 2 3 249 0 4 3 253 0 26 0 185 0 118 4 21 0 121 7 93 0 134 4 5 1 34 4 9 1 35 4 13 1 36 4 17 1 37 4 21 1 41 4 9 1 42 4 21 1 50] 
#[1 0 185 0 118 7 97 0 134] 
#[1 0 185 0 118 7 101 0 134 7 105 1 152] 
#[1 0 185 0 118 7 109 0 134] 
#[0 1 194 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 198 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 202 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 206 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 210 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 1 214 0 2 1 214 0 4 1 214 0 6 1 214 0 8 1 214 0 35 1 214 0 36 1 214 0 37 1 214 0 38 1 214 0 39 1 214 0 49 1 214 0 53 1 214 0 54 1 214 0 55 1 214 0 58 1 214 0 59 1 214 0 60 1 214 0 62 1 214 0 63 0 27 0 64 1 214 0 66 1 214 0 67 1 214 0 69 0 27 0 70 1 214 0 72 1 214 0 74 1 214 0 76 1 214 0 78 0 27 0 79 0 27 0 84 1 214 0 86 0 27 0 88 1 214 0 89 1 214 0 90 1 214 0 96 1 214 0 100 1 214 0 101 1 214 0 103 1 214 0 104 1 214 0 105 1 214 0 106 0 27 0 107 1 214 0 108 1 214 0 109 1 214 0 110 1 214 0 111 1 214 0 112 1 214 0 113 1 214 0 118 1 214 0 121 1 214 0 122 1 214 0 123 1 214 0 125 1 214 0 126 1 214 0 129 1 214 1 203 0 27 1 204] 
#[1 1 222 0 2 1 222 0 4 1 222 0 6 1 222 0 8 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 38 1 222 0 39 1 222 0 49 1 222 0 53 1 222 0 54 1 222 0 55 1 222 0 58 1 222 0 59 1 222 0 60 1 222 0 62 1 222 0 63 0 31 0 64 1 222 0 66 1 222 0 67 1 222 0 69 0 31 0 70 1 222 0 72 1 222 0 74 1 222 0 76 1 222 0 78 0 31 0 79 0 31 0 84 1 222 0 86 0 31 0 88 1 222 0 89 1 222 0 90 1 222 0 96 1 222 0 100 1 222 0 101 1 222 0 103 1 222 0 104 1 222 0 105 1 222 0 106 0 31 0 107 1 222 0 108 1 222 0 109 1 222 0 110 1 222 0 111 1 222 0 112 1 222 0 113 1 222 0 118 1 222 0 121 1 222 0 122 1 222 0 123 1 222 0 125 1 222 0 126 1 222 0 129 1 222 1 203 0 31 1 204] 
#[1 1 230 0 2 1 230 0 4 1 230 0 6 1 230 0 8 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 49 1 230 0 53 1 230 0 54 1 230 0 55 1 230 0 58 1 230 0 59 1 230 0 60 1 230 0 62 1 230 0 63 0 35 0 64 1 230 0 66 1 230 0 67 1 230 0 69 0 35 0 70 1 230 0 72 1 230 0 74 1 230 0 76 1 230 0 78 0 35 0 79 0 35 0 84 1 230 0 86 0 35 0 88 1 230 0 89 1 230 0 90 1 230 0 96 1 230 0 100 1 230 0 101 1 230 0 103 1 230 0 104 1 230 0 105 1 230 0 106 0 35 0 107 1 230 0 108 1 230 0 109 1 230 0 110 1 230 0 111 1 230 0 112 1 230 0 113 1 230 0 118 1 230 0 121 1 230 0 122 1 230 0 123 1 230 0 125 1 230 0 126 1 230 0 129 1 230 1 203 0 35 1 204] 
#[0 1 238 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 1 242 0 2 1 242 0 4 1 242 0 6 1 242 0 8 1 242 0 35 1 242 0 36 1 242 0 37 1 242 0 38 1 242 0 39 1 242 0 49 1 242 0 53 1 242 0 54 1 242 0 55 1 242 0 58 1 242 0 59 1 242 0 60 1 242 0 62 1 242 0 63 0 39 0 64 1 242 0 66 1 242 0 67 1 242 0 69 0 39 0 70 1 242 0 72 1 242 0 74 1 242 0 76 1 242 0 78 0 39 0 79 0 39 0 84 1 242 0 86 0 39 0 88 1 242 0 89 1 242 0 90 1 242 0 96 1 242 0 100 1 242 0 101 1 242 0 103 1 242 0 104 1 242 0 105 1 242 0 106 0 39 0 107 1 242 0 108 1 242 0 109 1 242 0 110 1 242 0 111 1 242 0 112 1 242 0 113 1 242 0 118 1 242 0 121 1 242 0 122 1 242 0 123 1 242 0 125 1 242 0 126 1 242 0 129 1 242 1 203 0 39 1 204] 
#[1 0 43 0 2 0 43 0 4 0 43 0 6 0 43 0 8 0 43 0 35 0 43 0 36 0 43 0 37 0 43 0 38 0 43 0 39 0 43 0 49 0 43 0 53 0 43 0 54 0 43 0 55 0 43 0 58 0 43 0 59 0 43 0 60 0 43 0 62 0 43 0 63 0 47 0 64 0 43 0 66 0 43 0 67 0 43 0 69 0 47 0 70 0 43 0 72 0 43 0 74 0 43 0 76 0 43 0 78 0 47 0 79 0 47 0 84 0 43 0 86 0 47 0 88 0 43 0 89 0 43 0 90 0 43 0 96 0 43 0 100 0 43 0 101 0 43 0 103 0 43 0 104 0 43 0 105 0 43 0 106 0 47 0 107 0 43 0 108 0 43 0 109 0 43 0 110 0 43 0 111 0 43 0 112 0 43 0 113 0 43 0 118 0 43 0 121 0 43 0 122 0 43 0 123 0 43 0 125 0 43 0 126 0 43 0 129 0 43 1 203 0 47 1 204] 
#[0 0 0 1 204] 
#[0 2 6 1 204] 
#[0 2 10 1 204] 
#[0 2 14 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 2 101 0 58 2 105 0 59 2 109 0 60 1 209 0 62 1 213 0 63 2 113 0 64 0 137 0 66 1 217 0 67 2 117 0 69 1 157 0 72 1 221 0 74 2 125 0 76 1 225 0 78 7 113 0 79 2 133 0 84 0 65 0 86 2 137 0 88 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 2 141 0 107 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 7 133 0 192 7 133 0 195 7 133 0 196 7 133 0 197 7 133 0 201 0 65 0 202 7 133 0 205 7 133 0 219 7 133 0 220 7 133 0 221 7 133 0 222 7 133 0 225 7 133 0 226 7 133 0 228 7 133 0 229 7 133 0 230 7 133 0 235 7 133 0 237 7 133 0 238 7 133 0 242 7 133 0 243 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 7 133 1 7 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 7 133 1 20 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 7 133 1 124 7 133 1 133 7 133 1 146 7 133 1 151 7 133 1 157 7 133 1 164 7 133 1 165 7 133 1 183 7 133 1 199 3 37 1 203 2 18 1 204] 
#[0 2 22 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 51 0 2 0 51 0 4 0 51 0 6 0 51 0 8 0 51 0 35 0 51 0 36 0 51 0 37 0 51 0 38 0 51 0 39 0 51 0 49 0 51 0 53 0 51 0 54 0 51 0 55 0 51 0 58 0 51 0 59 0 51 0 60 0 51 0 62 0 51 0 63 0 51 0 64 0 51 0 66 0 51 0 67 0 51 0 69 2 26 0 70 0 51 0 72 0 51 0 74 0 51 0 76 0 51 0 78 0 51 0 79 0 51 0 84 0 51 0 86 0 51 0 88 0 51 0 89 0 51 0 90 0 51 0 96 0 51 0 100 0 51 0 101 0 51 0 103 0 51 0 104 0 51 0 105 0 51 0 106 0 51 0 107 0 51 0 108 0 51 0 109 0 51 0 110 0 51 0 111 0 51 0 112 0 51 0 113 0 51 0 118 0 51 0 121 0 51 0 122 0 51 0 123 0 51 0 125 0 51 0 126 0 51 0 129 0 51 1 203 0 51 1 204] 
#[0 2 34 1 204] 
#[1 2 113 0 64 7 149 0 79 2 133 0 84 2 137 0 88 2 141 0 107 7 169 1 124 7 169 1 133 7 169 1 151 7 169 1 157 7 169 1 168 7 169 1 169 7 169 1 183 7 169 1 199 2 38 1 204] 
#[0 2 42 0 64 0 79 0 84 0 88 0 107 1 204] 
#[1 0 55 0 64 2 50 0 70 0 55 0 79 0 55 0 84 0 55 0 88 0 55 0 107 0 55 1 204] 
#[0 2 54 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 2 101 0 58 2 105 0 59 2 109 0 60 1 209 0 62 1 213 0 63 7 13 0 64 0 137 0 66 1 217 0 67 2 117 0 69 7 185 0 70 1 157 0 72 1 221 0 74 2 125 0 76 1 225 0 78 2 129 0 79 2 133 0 84 0 65 0 86 2 137 0 88 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 2 141 0 107 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 7 201 0 192 7 201 0 195 7 201 0 196 7 201 0 197 7 201 0 201 0 65 0 202 7 201 0 205 7 201 0 219 7 201 0 220 7 201 0 221 7 201 0 222 7 201 0 225 7 201 0 226 7 201 0 228 7 201 0 229 7 201 0 230 7 201 0 235 7 201 0 237 7 201 0 238 7 201 0 242 7 201 0 243 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 7 201 1 7 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 7 201 1 20 0 245 1 21 7 201 1 33 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 7 201 1 124 7 201 1 133 7 201 1 146 7 201 1 151 7 193 1 157 7 201 1 165 7 201 1 172 7 201 1 176 7 201 1 177 7 201 1 179 7 201 1 181 7 201 1 182 7 201 1 183 3 37 1 203 2 58 1 204] 
#[0 2 62 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 66 1 204] 
#[1 2 70 0 5 7 13 0 64 7 213 0 70 7 21 0 79 2 133 0 84 2 137 0 88 2 141 0 107 7 225 1 33 7 225 1 124 7 225 1 133 7 225 1 151 7 225 1 157 7 225 1 169 7 225 1 175 7 225 1 178 7 225 1 180 7 225 1 181 7 225 1 182 7 225 1 183 2 70 1 204] 
#[0 2 74 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 78 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 82 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 86 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 90 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 94 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 2 98 0 2 2 98 0 4 2 98 0 6 2 98 0 8 2 98 0 35 2 98 0 36 2 98 0 37 2 98 0 38 2 98 0 39 2 98 0 49 2 98 0 53 2 98 0 54 2 98 0 55 2 98 0 58 2 98 0 59 2 98 0 60 2 98 0 62 2 98 0 63 0 59 0 64 2 98 0 66 2 98 0 67 2 98 0 69 0 59 0 70 2 98 0 72 2 98 0 74 2 98 0 76 2 98 0 78 0 59 0 79 0 59 0 84 2 98 0 86 0 59 0 88 2 98 0 89 2 98 0 90 2 98 0 96 2 98 0 100 2 98 0 101 2 98 0 103 2 98 0 104 2 98 0 105 2 98 0 106 0 59 0 107 2 98 0 108 2 98 0 109 2 98 0 110 2 98 0 111 2 98 0 112 2 98 0 113 2 98 0 118 2 98 0 121 2 98 0 122 2 98 0 123 2 98 0 125 2 98 0 126 2 98 0 129 2 98 1 203 0 59 1 204] 
#[1 2 106 0 2 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 35 2 106 0 36 2 106 0 37 2 106 0 38 2 106 0 39 2 106 0 49 2 106 0 53 2 106 0 54 2 106 0 55 2 106 0 58 2 106 0 59 2 106 0 60 2 106 0 62 2 106 0 63 0 63 0 64 2 106 0 66 2 106 0 67 2 106 0 69 0 63 0 70 2 106 0 72 2 106 0 74 2 106 0 76 2 106 0 78 0 63 0 79 0 63 0 84 2 106 0 86 0 63 0 88 2 106 0 89 2 106 0 90 2 106 0 96 2 106 0 100 2 106 0 101 2 106 0 103 2 106 0 104 2 106 0 105 2 106 0 106 0 63 0 107 2 106 0 108 2 106 0 109 2 106 0 110 2 106 0 111 2 106 0 112 2 106 0 113 2 106 0 118 2 106 0 121 2 106 0 122 2 106 0 123 2 106 0 125 2 106 0 126 2 106 0 129 2 106 1 203 0 63 1 204] 
#[1 2 114 0 2 2 114 0 4 2 114 0 6 2 114 0 8 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 38 2 114 0 39 2 114 0 49 2 114 0 53 2 114 0 54 2 114 0 55 2 114 0 58 2 114 0 59 2 114 0 60 2 114 0 62 2 114 0 63 0 67 0 64 2 114 0 66 2 114 0 67 2 114 0 69 0 67 0 70 2 114 0 72 2 114 0 74 2 114 0 76 2 114 0 78 0 67 0 79 0 67 0 84 2 114 0 86 0 67 0 88 2 114 0 89 2 114 0 90 2 114 0 96 2 114 0 100 2 114 0 101 2 114 0 103 2 114 0 104 2 114 0 105 2 114 0 106 0 67 0 107 2 114 0 108 2 114 0 109 2 114 0 110 2 114 0 111 2 114 0 112 2 114 0 113 2 114 0 118 2 114 0 121 2 114 0 122 2 114 0 123 2 114 0 125 2 114 0 126 2 114 0 129 2 114 1 203 0 67 1 204] 
#[1 2 122 0 2 2 122 0 4 2 122 0 6 2 122 0 8 2 122 0 35 2 122 0 36 2 122 0 37 2 122 0 38 2 122 0 39 2 122 0 49 2 122 0 53 2 122 0 54 2 122 0 55 2 122 0 58 2 122 0 59 2 122 0 60 2 122 0 62 2 122 0 63 0 71 0 64 2 122 0 66 2 122 0 67 2 122 0 69 2 122 0 72 2 122 0 74 2 122 0 76 2 122 0 78 0 71 0 79 0 71 0 84 2 122 0 86 0 71 0 88 2 122 0 89 2 122 0 90 2 122 0 96 2 122 0 100 2 122 0 101 2 122 0 103 2 122 0 104 2 122 0 105 2 122 0 106 0 71 0 107 2 122 0 108 2 122 0 109 2 122 0 110 2 122 0 111 2 122 0 112 2 122 0 113 2 122 0 118 2 122 0 121 2 122 0 122 2 122 0 123 2 122 0 125 2 122 0 126 2 122 0 129 2 122 1 203 0 71 1 204] 
#[1 0 75 0 1 6 77 0 2 6 81 0 11 2 130 0 58 2 130 0 59 7 241 0 76 6 89 1 81 7 245 1 117 6 93 1 125 7 249 1 200] 
#[1 3 41 0 2 0 86 0 3 7 253 0 4 8 1 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 4 89 0 114 0 185 0 118 3 85 0 121 3 89 0 122 8 5 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 8 9 0 246 4 125 0 247 4 129 0 248 4 133 0 249 3 85 1 50 3 89 1 51 3 93 1 81 8 13 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 8 13 1 109 8 13 1 110 3 113 1 111 3 113 1 113 8 17 1 203] 
#[1 8 21 0 2 8 25 0 5 8 29 0 6 3 53 0 11 8 33 0 89 8 37 0 119 8 57 0 121 8 61 0 122 8 45 0 135 8 45 0 147 8 45 0 148 8 45 0 149 8 57 1 50 8 61 1 51 8 65 1 81 8 69 1 100 8 73 1 101 8 77 1 102 8 77 1 114 8 77 1 116 8 77 1 121 8 77 1 122 8 77 1 123] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 8 109 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 8 105 1 105 8 109 1 106 3 101 1 107 3 105 1 108 8 109 1 109 8 109 1 110 3 113 1 111 3 113 1 113] 
#[1 0 185 0 118 8 113 0 134 8 117 1 82 8 121 1 83] 
#[1 8 125 0 2 3 45 0 4 3 49 0 6 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 8 129 1 92 8 129 1 93 8 129 1 94 8 129 1 95 8 129 1 96 3 133 1 97 3 137 1 98 8 129 1 99 8 129 1 103 8 129 1 104 8 129 1 111 8 129 1 113] 
#[1 8 125 0 2 3 45 0 4 3 49 0 6 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 8 133 1 92 8 133 1 93 8 133 1 94 8 133 1 95 8 133 1 96 3 133 1 97 3 137 1 98 8 133 1 99 8 133 1 103 8 133 1 104 8 133 1 111 8 133 1 113] 
#[1 8 137 0 2 3 53 0 11 8 141 1 81] 
#[0 2 134 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 0 185 0 118 8 145 0 134 8 149 1 112] 
#[0 2 138 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 2 142 0 3 2 142 0 4 2 142 0 5 2 142 0 6 2 142 0 7 2 142 0 8 2 142 0 9 2 142 0 11 2 142 0 12 2 142 0 14 2 142 0 15 2 142 0 18 2 142 0 19 2 142 0 20 2 142 0 21 2 146 0 22 2 142 0 23 2 142 0 24 2 142 0 25 2 142 0 26 2 142 0 27 2 142 0 35 2 142 0 37 2 142 0 40 2 142 0 41 2 142 0 42 2 142 0 44 2 142 0 45 2 142 0 46 2 142 0 47 2 142 0 48 2 142 0 50 2 142 0 51 2 142 0 61 2 142 0 80 2 142 0 82 2 142 0 83 2 142 0 92 2 142 0 93 2 142 0 94 2 142 0 95 2 142 0 98 2 142 0 115 2 142 0 116 2 142 0 119 2 142 0 121 2 142 0 122 2 142 0 127 2 142 0 128 2 142 1 204] 
#[0 2 150 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 154 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 8 153 0 2] 
#[0 0 0 1 204] 
#[1 2 158 0 3 2 158 0 4 2 158 0 5 2 158 0 6 2 158 0 7 2 158 0 8 2 158 0 9 2 158 0 11 2 158 0 12 2 158 0 14 2 158 0 15 2 158 0 18 2 158 0 19 2 158 0 20 2 158 0 21 2 158 0 23 2 158 0 24 2 158 0 25 2 158 0 26 2 158 0 27 2 158 0 35 2 158 0 37 2 158 0 40 2 158 0 41 2 158 0 42 2 158 0 44 2 158 0 45 0 79 0 46 2 158 0 47 2 158 0 48 2 158 0 50 2 158 0 51 2 158 0 61 2 158 0 80 2 158 0 83 2 158 0 92 2 158 0 93 2 158 0 94 2 158 0 95 2 158 0 98 2 158 0 115 2 158 0 116 2 158 0 119 2 158 0 121 2 158 0 122 2 158 0 127 2 158 0 128 2 158 1 204] 
#[1 2 162 0 3 2 162 0 4 2 162 0 5 2 162 0 6 2 162 0 7 2 162 0 8 2 162 0 9 2 162 0 11 2 162 0 12 2 162 0 14 2 162 0 15 2 162 0 18 2 162 0 19 2 162 0 20 2 162 0 21 2 162 0 23 2 162 0 24 2 162 0 25 2 162 0 26 2 162 0 27 2 162 0 35 2 162 0 37 0 83 0 40 2 162 0 41 2 162 0 42 2 162 0 44 2 162 0 45 2 162 0 46 2 162 0 47 2 162 0 48 2 162 0 50 2 162 0 51 2 162 0 61 2 162 0 80 2 162 0 83 2 162 0 92 2 162 0 93 2 162 0 94 2 162 0 95 2 162 0 98 2 162 0 115 2 162 0 116 2 162 0 119 2 162 0 121 2 162 0 122 2 162 0 127 2 162 0 128 2 162 1 204] 
#[0 2 166 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 2 170 0 3 2 170 0 4 2 170 0 5 0 87 0 6 2 170 0 7 2 170 0 8 2 170 0 9 2 170 0 11 2 170 0 12 2 170 0 14 2 170 0 15 2 170 0 18 2 170 0 19 2 170 0 20 2 170 0 21 2 170 0 23 2 170 0 24 2 170 0 25 2 170 0 26 2 170 0 27 2 170 0 35 2 170 0 37 2 170 0 40 2 170 0 41 2 170 0 42 2 170 0 44 2 170 0 45 2 170 0 46 2 170 0 47 2 170 0 48 2 170 0 50 2 170 0 51 2 170 0 61 2 170 0 80 2 170 0 83 2 170 0 92 2 170 0 93 2 170 0 94 2 170 0 95 2 170 0 98 2 170 0 115 2 170 0 116 2 170 0 119 2 170 0 121 2 170 0 122 2 170 0 127 2 170 0 128 8 165 0 227 2 170 1 204] 
#[0 2 174 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 178 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 182 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 186 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 1 110 0 3 1 110 0 4 1 110 0 5 1 110 0 6 1 110 0 7 1 110 0 8 1 110 0 9 1 110 0 11 1 110 0 12 1 110 0 14 1 110 0 15 1 110 0 18 1 110 0 19 1 110 0 20 1 110 0 21 1 110 0 23 1 110 0 24 1 110 0 25 1 110 0 26 1 110 0 27 1 110 0 35 1 110 0 37 1 110 0 40 1 110 0 41 1 110 0 42 1 110 0 44 1 110 0 45 1 110 0 46 1 110 0 47 1 110 0 48 1 110 0 50 1 110 0 51 1 110 0 61 1 110 0 80 1 110 0 82 1 110 0 83 1 110 0 92 1 110 0 93 1 110 0 94 1 110 0 95 1 110 0 98 1 110 0 115 1 110 0 116 1 110 0 119 1 110 0 121 1 110 0 122 1 110 0 127 1 110 0 128 8 169 0 227 1 110 1 204] 
#[0 8 173 0 22] 
#[0 2 190 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 194 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 198 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 202 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 206 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 210 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 214 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 218 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 2 222 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 8 177 0 5 8 181 0 119 8 185 1 46 8 189 1 47] 
#[1 8 193 0 52 2 226 0 75] 
#[0 8 197 0 76] 
#[1 4 237 0 4 4 241 0 71 0 185 0 118 8 201 0 134 8 205 1 22 4 253 1 23 5 1 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 8 209 0 188 8 209 0 189 0 245 0 244 8 209 0 252 1 113 0 253 1 117 0 254 1 121 1 1 8 209 1 2 0 245 1 8 8 209 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 8 213 0 2 8 217 0 26 0 185 0 118 8 221 0 134] 
#[0 2 230 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 234 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 238 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 242 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 246 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 250 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 254 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 3 2 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 3 6 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 8 225 0 75 8 229 1 38] 
#[1 8 233 0 8 3 10 0 75] 
#[1 0 75 0 1 2 130 0 58 2 130 0 59 8 237 0 60 2 117 0 69 8 241 0 76 2 133 0 84 2 141 0 107 7 245 1 117 8 245 1 124 8 249 1 133 8 253 1 146 7 249 1 200] 
#[1 9 1 0 5 0 185 0 118 9 5 0 119 9 17 0 134 9 9 1 39 9 13 1 40 9 17 1 42] 
#[0 9 21 0 52] 
#[0 3 14 0 5 0 75 0 115] 
#[1 8 225 0 75 9 25 1 38] 
#[1 3 18 0 75 9 29 0 115] 
#[0 3 22 0 75] 
#[0 3 26 0 75] 
#[0 9 33 0 8] 
#[0 3 30 0 75 0 115] 
#[0 3 34 0 8] 
#[0 3 38 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 60 0 62 0 63 0 65 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 9 37 0 5 9 41 0 6 9 45 0 114 0 185 0 118 8 37 0 119 8 57 0 121 8 61 0 122 9 49 0 134 9 53 0 135 9 53 0 147 9 53 0 148 9 53 0 149 9 57 0 211 9 61 0 212 9 65 0 215 9 65 0 217 8 57 1 50 8 61 1 51 9 73 1 203] 
#[1 4 37 0 4 4 41 0 6 9 77 0 7 4 89 0 114 4 149 0 115 0 185 0 118 9 49 0 134 9 81 0 141 4 101 0 208 4 101 0 209 4 101 0 210 9 85 0 213 9 89 0 214 9 93 0 216 9 93 0 217 9 97 0 218 8 17 1 203] 
#[1 3 42 0 8 9 101 0 23 3 42 0 115 9 105 0 151] 
#[1 9 109 0 8 9 113 0 115] 
#[0 3 46 0 8 0 115] 
#[1 9 101 0 23 9 117 0 151] 
#[0 3 50 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 3 54 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 3 58 0 8 0 115] 
#[0 3 62 0 8 0 115] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 9 121 0 134 9 125 0 208 9 125 0 209 9 125 0 210] 
#[0 3 66 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 23 0 4 4 85 0 6 9 129 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 9 133 0 114 4 149 0 115 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 4 93 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 4 153 0 140 9 137 0 141 4 161 0 142 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 4 165 0 188 4 165 0 189 4 101 0 208 4 101 0 209 4 101 0 210 9 85 0 213 9 89 0 214 9 93 0 216 9 93 0 217 9 97 0 218 0 245 0 244 4 165 0 252 1 113 0 253 1 117 0 254 1 121 1 1 4 165 1 2 0 245 1 8 4 165 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 137 1 203] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 9 141 0 134 9 145 0 208 9 145 0 209 9 145 0 210] 
#[1 0 134 0 2 0 91 0 3 0 134 0 6 0 91 0 7 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 18 0 138 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 95 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 80 0 134 0 83 0 91 0 115 0 134 0 125 0 134 0 126 9 149 0 151 0 134 1 202 0 134 1 203] 
#[1 9 153 0 3 6 61 0 115] 
#[1 3 74 0 3 3 74 0 5 3 74 0 7 9 101 0 23 3 74 0 115 9 157 0 151] 
#[0 3 78 0 3 0 115] 
#[0 3 82 0 3 0 5 0 7 0 115] 
#[0 3 86 0 3] 
#[0 9 161 0 3] 
#[0 3 90 0 3] 
#[1 3 94 0 3 9 165 0 115] 
#[0 3 98 0 3] 
#[0 3 102 0 3 0 115] 
#[1 2 130 0 1 6 77 0 2 2 130 0 4 2 130 0 6 6 81 0 11 2 130 0 42 6 85 0 76 0 99 0 93 0 103 0 94 0 107 0 95 2 130 0 103 2 130 0 116 0 111 0 118 9 181 0 134 6 89 1 81 9 185 1 117 9 189 1 119 6 93 1 125] 
#[0 3 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 9 193 0 188 9 193 0 189 0 245 0 244 9 193 0 252 1 113 0 253 1 117 0 254 1 121 1 1 9 193 1 2 0 245 1 8 9 193 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 3 110 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 114 0 115 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[1 9 197 0 7 4 149 0 115 9 201 0 141] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 9 205 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 4 145 0 114 9 209 0 115 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 9 213 0 142 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 9 217 0 188 9 217 0 189 0 245 0 244 9 217 0 252 1 113 0 253 1 117 0 254 1 121 1 1 9 217 1 2 0 245 1 8 9 217 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 3 114 0 7 0 115] 
#[0 3 118 0 7 0 115] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 4 97 0 188 4 97 0 189 4 97 0 191 0 245 0 244 4 97 0 252 1 113 0 253 1 117 0 254 1 121 1 1 4 97 1 2 0 245 1 8 4 97 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 4 217 0 76] 
#[0 0 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 202 0 3 0 202 0 5 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 11 0 202 0 12 0 202 0 14 0 202 0 15 0 202 0 18 0 202 0 20 0 202 0 21 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 35 5 189 0 36 0 202 0 37 5 193 0 38 0 202 0 40 0 202 0 41 0 202 0 42 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 47 0 202 0 48 0 202 0 50 0 202 0 51 5 197 0 52 0 202 0 80 0 202 0 83 0 202 0 92 0 202 0 115 0 202 0 116 0 202 0 127 0 202 0 128 0 202 1 204] 
#[0 3 122 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 9 221 0 11 6 85 0 76] 
#[0 3 126 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 3 130 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 3 134 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 3 138 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 3 142 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 4 117 0 245 4 121 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 9 225 0 2 9 229 0 26 0 185 0 118 9 233 0 134] 
#[0 0 138 0 19] 
#[0 9 237 0 19] 
#[1 6 77 0 2 3 53 0 11 6 89 1 81 6 93 1 125] 
#[0 3 146 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 9 241 0 5 9 41 0 6 9 245 0 8 9 249 0 26 9 253 0 53 10 1 0 77 10 5 0 97 10 9 0 98 8 37 0 119 8 57 0 121 8 61 0 122 10 13 0 135 10 13 0 147 10 13 0 148 10 13 0 149 10 41 1 4 10 41 1 6 10 41 1 11 10 41 1 15 10 33 1 24 10 37 1 25 10 41 1 26 8 57 1 50 8 61 1 51 10 41 1 126 10 41 1 127 10 53 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 4 173 0 53 0 133 0 58 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 10 57 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 10 57 0 170 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 5 41 1 203] 
#[1 4 237 0 4 4 241 0 71 10 61 1 22 4 253 1 23 5 1 1 203] 
#[0 3 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 65 0 4] 
#[1 10 69 0 71 10 73 0 82 10 77 1 137 10 81 1 139] 
#[0 3 154 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 10 85 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 10 89 0 2 0 185 0 118 10 93 0 134] 
#[0 10 97 0 2] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 101 0 188 10 101 0 189 0 245 0 244 10 101 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 101 1 2 0 245 1 8 10 101 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 10 105 0 102] 
#[1 5 49 0 6 5 53 0 22] 
#[1 5 45 0 2 0 166 0 3 0 166 0 4 0 166 0 5 5 93 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 18 0 166 0 20 0 166 0 21 5 97 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 38 0 166 0 40 0 166 0 41 0 166 0 42 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 47 0 166 0 48 0 166 0 50 0 166 0 51 0 166 0 52 0 166 0 80 0 166 0 83 0 166 0 92 0 166 0 115 0 166 0 116 0 201 0 125 0 18 0 126 0 166 0 127 0 166 0 128 5 105 0 152 0 241 0 153 10 109 0 164 0 166 1 202 5 61 1 203 0 166 1 204] 
#[0 3 158 0 3 0 4 0 5 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 202 1 204] 
#[0 6 85 0 76] 
#[1 0 93 0 2 10 113 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 10 117 0 114 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 10 121 0 165 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 125 0 188 10 125 0 189 0 245 0 244 10 125 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 125 1 2 0 245 1 8 10 125 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 129 0 188 10 129 0 189 10 129 0 191 0 245 0 244 10 129 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 129 1 2 0 245 1 8 10 129 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 10 133 0 119] 
#[0 3 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 10 137 0 11 10 141 1 85] 
#[0 3 166 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 3 170 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 145 0 188 10 145 0 189 0 245 0 244 10 145 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 145 1 2 0 245 1 8 10 145 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 3 174 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 10 149 0 14] 
#[1 10 153 0 5 9 41 0 6 9 249 0 26 9 253 0 53 10 1 0 77 10 5 0 97 10 157 0 114 0 185 0 118 8 37 0 119 8 57 0 121 8 61 0 122 10 161 0 134 10 173 0 135 10 165 0 145 10 169 0 146 10 173 0 147 10 173 0 148 10 173 0 149 10 169 0 150 10 169 1 4 10 169 1 6 10 169 1 11 10 169 1 15 8 57 1 50 8 61 1 51 10 169 1 126 10 169 1 127 10 185 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 189 0 188 10 189 0 189 10 189 0 191 0 245 0 244 10 189 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 189 1 2 0 245 1 8 10 189 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 193 0 188 10 193 0 189 10 193 0 191 0 245 0 244 10 193 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 193 1 2 0 245 1 8 10 193 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 10 197 0 119] 
#[1 5 45 0 2 10 201 0 6 10 205 0 119 0 201 0 125 0 18 0 126 10 209 0 152 0 241 0 153 10 213 0 164 10 217 0 169 5 61 1 203] 
#[0 3 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 3 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 45 0 2 3 186 0 3 3 186 0 4 3 186 0 5 10 221 0 6 3 186 0 7 3 186 0 8 3 186 0 9 3 186 0 10 3 186 0 11 3 186 0 12 3 186 0 13 3 186 0 14 3 186 0 15 3 186 0 16 3 186 0 17 3 186 0 18 3 186 0 20 3 186 0 21 10 225 0 22 3 186 0 23 3 186 0 24 3 186 0 25 3 186 0 26 3 186 0 27 3 186 0 28 3 186 0 29 3 186 0 30 3 186 0 31 3 186 0 32 3 186 0 33 3 186 0 34 3 186 0 35 3 186 0 36 3 186 0 37 3 186 0 38 3 186 0 40 3 186 0 41 3 186 0 42 3 186 0 43 3 186 0 44 3 186 0 45 3 186 0 46 3 186 0 47 3 186 0 48 3 186 0 50 3 186 0 51 3 186 0 52 3 186 0 80 3 186 0 83 3 186 0 92 3 186 0 115 3 186 0 116 0 201 0 125 0 18 0 126 3 186 0 127 3 186 0 128 10 229 0 152 0 241 0 153 10 233 0 164 10 237 0 168 3 186 1 202 5 61 1 203 3 186 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 241 0 188 10 241 0 189 10 241 0 191 0 245 0 244 10 241 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 241 1 2 0 245 1 8 10 241 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 10 245 0 119] 
#[0 3 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 3 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 5 45 0 2 3 198 0 3 3 198 0 4 3 198 0 5 10 221 0 6 3 198 0 7 3 198 0 8 3 198 0 9 3 198 0 10 3 198 0 11 3 198 0 12 3 198 0 13 3 198 0 14 3 198 0 15 3 198 0 16 3 198 0 17 3 198 0 18 3 198 0 20 3 198 0 21 10 225 0 22 3 198 0 23 3 198 0 24 3 198 0 25 3 198 0 26 3 198 0 27 3 198 0 28 3 198 0 29 3 198 0 30 3 198 0 31 3 198 0 32 3 198 0 33 3 198 0 34 3 198 0 35 3 198 0 36 3 198 0 37 3 198 0 38 3 198 0 40 3 198 0 41 3 198 0 42 3 198 0 43 3 198 0 44 3 198 0 45 3 198 0 46 3 198 0 47 3 198 0 48 3 198 0 50 3 198 0 51 3 198 0 52 3 198 0 80 3 198 0 83 3 198 0 92 3 198 0 115 3 198 0 116 0 201 0 125 0 18 0 126 3 198 0 127 3 198 0 128 10 229 0 152 0 241 0 153 10 233 0 164 10 237 0 168 3 198 1 202 5 61 1 203 3 198 1 204] 
#[1 5 45 0 2 3 202 0 3 3 202 0 4 3 202 0 5 10 221 0 6 3 202 0 7 3 202 0 8 3 202 0 9 3 202 0 10 3 202 0 11 3 202 0 12 3 202 0 13 3 202 0 14 3 202 0 15 3 202 0 16 3 202 0 17 3 202 0 18 3 202 0 20 3 202 0 21 10 225 0 22 3 202 0 23 3 202 0 24 3 202 0 25 3 202 0 26 3 202 0 27 3 202 0 28 3 202 0 29 3 202 0 30 3 202 0 31 3 202 0 32 3 202 0 33 3 202 0 34 3 202 0 35 3 202 0 36 3 202 0 37 3 202 0 38 3 202 0 40 3 202 0 41 3 202 0 42 3 202 0 43 3 202 0 44 3 202 0 45 3 202 0 46 3 202 0 47 3 202 0 48 3 202 0 50 3 202 0 51 3 202 0 52 3 202 0 80 3 202 0 83 3 202 0 92 3 202 0 115 3 202 0 116 0 201 0 125 0 18 0 126 3 202 0 127 3 202 0 128 10 229 0 152 0 241 0 153 10 233 0 164 10 237 0 168 3 202 1 202 5 61 1 203 3 202 1 204] 
#[0 3 206 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 210 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 214 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 218 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 222 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 226 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 230 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 234 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 238 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 242 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 246 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 250 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 3 254 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 4 2 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 10 249 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 253 0 188 10 253 0 189 0 245 0 244 10 253 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 253 1 2 0 245 1 8 10 253 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 4 6 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 11 1 0 173 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[0 4 10 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 4 14 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 4 18 0 2 0 4 0 6 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 11 5 0 173 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 11 9 0 173 11 9 0 174 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 11 13 0 173 11 13 0 174 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 11 17 0 176 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 11 21 0 176 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 11 25 0 176 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 11 29 0 177 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 11 33 0 177 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 11 37 0 177 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 11 41 0 177 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 11 45 0 177 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 11 49 0 177 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 11 53 0 178 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 11 57 0 178 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 11 61 0 178 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 11 65 0 178 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 11 69 0 179 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 11 73 0 180 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 11 77 0 181 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 11 81 0 182 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 11 85 0 182 11 89 0 183 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 11 93 0 182 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 97 0 188 11 97 0 189 0 245 0 244 11 97 0 252 1 113 0 253 1 117 0 254 1 121 1 1 11 97 1 2 0 245 1 8 11 97 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 101 0 188 11 101 0 189 0 245 0 244 11 101 0 252 1 113 0 253 1 117 0 254 1 121 1 1 11 101 1 2 0 245 1 8 11 101 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 115 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 117 0 188 11 117 0 189 0 245 0 244 11 117 0 252 1 113 0 253 1 117 0 254 11 113 0 255 11 117 1 0 1 121 1 1 11 117 1 2 0 245 1 8 11 117 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 4 22 0 4 4 22 0 129 4 22 0 131 11 121 1 71 11 125 1 72] 
#[1 11 129 0 130 11 133 1 58 11 133 1 59 11 133 1 60 11 145 1 61 11 149 1 62] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 11 153 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 11 157 0 134 3 85 1 50 3 89 1 51 3 93 1 81 8 117 1 82 8 121 1 83 11 161 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 11 161 1 109 11 161 1 110 3 113 1 111 3 113 1 113] 
#[1 6 77 0 2 3 53 0 11 0 185 0 118 11 165 0 134 6 89 1 81 11 169 1 125] 
#[0 11 173 0 2] 
#[0 4 26 0 19] 
#[0 4 30 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 2 0 6 0 4 11 177 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 185 0 199 0 57 0 200 6 185 0 201 0 65 0 202 0 6 1 203] 
#[1 11 181 0 8 0 185 0 118 11 185 0 134] 
#[1 11 189 0 8 0 185 0 118 11 193 0 134] 
#[0 4 34 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 11 197 0 111] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 11 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 11 221 0 60 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 11 221 0 86 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 11 205 0 109 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 11 209 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 11 209 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 213 0 188 11 213 0 189 11 213 0 191 11 217 0 201 11 221 0 202 11 225 0 223 0 245 0 244 11 213 0 252 1 113 0 253 1 117 0 254 1 121 1 1 11 213 1 2 0 245 1 8 11 213 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 11 229 0 2] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 233 0 188 11 233 0 189 11 233 0 191 0 245 0 244 11 233 0 252 1 113 0 253 1 117 0 254 1 121 1 1 11 233 1 2 0 245 1 8 11 233 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 11 237 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 241 0 188 11 241 0 189 11 241 0 191 0 245 0 244 11 241 0 252 1 113 0 253 1 117 0 254 1 121 1 1 11 241 1 2 0 245 1 8 11 241 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 11 245 0 188 11 245 0 189 11 245 0 191 0 245 0 244 11 245 0 252 1 113 0 253 1 117 0 254 1 121 1 1 11 245 1 2 0 245 1 8 11 245 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 11 249 0 8 6 61 0 115] 
#[1 11 253 0 57 12 1 0 73 12 5 0 239 12 9 0 240] 
#[1 4 38 0 8 9 101 0 23 4 38 0 92 4 38 0 115 12 13 0 151] 
#[1 12 17 0 8 12 21 0 115] 
#[0 4 42 0 8 0 115] 
#[1 9 101 0 23 12 25 0 151] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 12 29 0 134 12 33 0 208 12 33 0 209 12 33 0 210 12 37 1 129 12 41 1 130] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 12 45 0 188 12 45 0 189 12 45 0 191 0 245 0 244 12 45 0 252 1 113 0 253 1 117 0 254 1 121 1 1 12 45 1 2 0 245 1 8 12 45 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 12 49 0 188 12 49 0 189 12 49 0 191 0 245 0 244 12 49 0 252 1 113 0 253 1 117 0 254 1 121 1 1 12 49 1 2 0 245 1 8 12 49 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 12 57 0 192 12 57 0 195 12 57 0 196 12 57 0 197 12 57 0 205 12 57 0 219 12 57 0 220 12 57 0 221 12 57 0 222 12 57 0 225 12 57 0 226 12 57 0 228 12 57 0 229 12 57 0 230 12 57 0 235 12 57 0 236 12 57 0 237 12 57 0 238 12 57 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 4 46 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 50 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 60 0 62 0 63 0 65 0 66 0 67 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 237 0 4 4 241 0 71 12 61 1 22 4 253 1 23 5 1 1 203] 
#[1 0 119 0 2 4 54 0 4 4 54 0 5 0 119 0 6 0 119 0 8 3 150 0 9 3 150 0 10 3 150 0 11 3 150 0 12 3 150 0 13 3 150 0 14 3 150 0 15 3 150 0 16 3 150 0 17 3 150 0 18 3 150 0 20 3 150 0 21 3 150 0 22 3 150 0 23 3 150 0 24 3 150 0 25 3 150 0 26 3 150 0 27 3 150 0 28 3 150 0 29 3 150 0 30 3 150 0 31 3 150 0 32 3 150 0 33 3 150 0 34 0 119 0 35 0 119 0 36 0 119 0 37 0 119 0 38 4 54 0 39 3 150 0 40 3 150 0 41 3 150 0 42 3 150 0 43 3 150 0 44 3 150 0 45 3 150 0 46 3 150 0 47 3 150 0 48 4 54 0 49 3 150 0 50 3 150 0 51 3 150 0 52 4 54 0 53 4 54 0 54 4 54 0 55 4 54 0 58 4 54 0 59 4 54 0 60 4 54 0 62 4 54 0 63 4 54 0 64 4 54 0 66 4 54 0 67 4 54 0 69 4 54 0 70 4 54 0 72 4 54 0 74 4 54 0 76 4 54 0 78 4 54 0 79 3 150 0 80 3 150 0 83 4 54 0 84 4 54 0 86 4 54 0 88 4 54 0 89 4 54 0 90 4 54 0 96 4 54 0 100 4 54 0 101 4 54 0 103 4 54 0 104 4 54 0 105 4 54 0 106 4 54 0 107 4 54 0 108 4 54 0 109 4 54 0 110 4 54 0 111 4 54 0 112 4 54 0 113 3 150 0 115 4 54 0 118 4 54 0 121 4 54 0 122 4 54 0 123 0 119 0 125 0 119 0 126 4 54 0 129 3 150 1 202 0 119 1 203 4 54 1 204] 
#[1 4 237 0 4 4 241 0 71 0 185 0 118 12 65 0 134 12 69 1 22 4 253 1 23 5 1 1 203] 
#[1 0 185 0 118 12 73 0 134] 
#[1 0 185 0 118 12 77 0 134] 
#[1 6 201 0 69 0 185 0 118 12 81 0 134 12 85 1 185 12 89 1 186] 
#[1 0 185 0 118 12 93 0 134] 
#[1 0 185 0 118 12 81 0 134 12 97 1 185 12 89 1 186] 
#[0 12 101 0 121 1 50] 
#[1 0 185 0 118 7 101 0 134 12 105 1 152] 
#[1 0 185 0 118 12 81 0 134 12 109 1 185 12 89 1 186] 
#[0 4 58 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 62 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 66 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 70 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 74 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 78 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 113 0 4] 
#[1 0 185 0 118 12 117 0 134] 
#[1 8 225 0 75 12 121 1 38] 
#[1 6 205 0 58 6 209 0 60 2 117 0 69 6 213 0 76 6 217 0 86 6 225 0 88 6 229 0 109 6 249 1 146 6 237 1 184 6 241 1 187 6 245 1 188 6 249 1 194 6 253 1 195] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 12 125 0 58 2 105 0 59 0 137 0 66 1 157 0 72 12 129 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 12 133 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 12 137 0 188 12 137 0 189 12 141 0 243 0 245 0 244 12 137 0 252 1 113 0 253 1 117 0 254 1 121 1 1 12 137 1 2 12 145 1 7 0 245 1 8 12 137 1 10 0 245 1 13 0 245 1 17 1 33 1 19 12 149 1 20 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 12 153 1 187 12 157 1 188 3 37 1 203] 
#[1 3 249 0 4 3 253 0 26 0 185 0 118 4 21 0 121 12 161 0 134 4 5 1 34 4 9 1 35 4 13 1 36 4 17 1 37 4 21 1 41 4 9 1 42 4 21 1 50] 
#[0 4 82 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 86 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 90 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 94 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 98 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 102 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 12 165 0 8 8 225 0 75 12 169 1 38] 
#[1 4 106 0 2 4 106 0 4 4 106 0 6 4 106 0 8 4 106 0 35 4 106 0 36 4 106 0 37 4 106 0 38 4 106 0 39 4 106 0 49 4 106 0 53 4 106 0 54 4 106 0 55 4 106 0 58 4 106 0 59 4 106 0 60 4 106 0 62 4 106 0 63 0 123 0 64 4 106 0 66 4 106 0 67 4 106 0 69 0 123 0 70 4 106 0 72 4 106 0 74 4 106 0 76 4 106 0 78 0 123 0 79 0 123 0 84 4 106 0 86 0 123 0 88 4 106 0 89 4 106 0 90 4 106 0 96 4 106 0 100 4 106 0 101 4 106 0 103 4 106 0 104 4 106 0 105 4 106 0 106 0 123 0 107 4 106 0 108 4 106 0 109 4 106 0 110 4 106 0 111 4 106 0 112 4 106 0 113 4 106 0 118 4 106 0 121 4 106 0 122 4 106 0 123 4 106 0 125 4 106 0 126 4 106 0 129 4 106 1 203 0 123 1 204] 
#[1 4 114 0 2 4 114 0 4 4 114 0 6 4 114 0 8 4 114 0 35 4 114 0 36 4 114 0 37 4 114 0 38 4 114 0 39 4 114 0 49 4 114 0 53 4 114 0 54 4 114 0 55 4 114 0 58 4 114 0 59 4 114 0 60 4 114 0 62 4 114 0 63 0 127 0 64 4 114 0 66 4 114 0 67 4 114 0 69 0 127 0 70 4 114 0 72 4 114 0 74 4 114 0 76 4 114 0 78 0 127 0 79 0 127 0 84 4 114 0 86 0 127 0 88 4 114 0 89 4 114 0 90 4 114 0 96 4 114 0 100 4 114 0 101 4 114 0 103 4 114 0 104 4 114 0 105 4 114 0 106 0 127 0 107 4 114 0 108 4 114 0 109 4 114 0 110 4 114 0 111 4 114 0 112 4 114 0 113 4 114 0 118 4 114 0 121 4 114 0 122 4 114 0 123 4 114 0 125 4 114 0 126 4 114 0 129 4 114 1 203 0 127 1 204] 
#[0 4 122 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 126 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 130 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 4 134 0 2 4 134 0 4 4 134 0 6 4 134 0 8 4 134 0 35 4 134 0 36 4 134 0 37 4 134 0 38 4 134 0 39 4 134 0 49 4 134 0 53 4 134 0 54 4 134 0 55 4 134 0 58 4 134 0 59 4 134 0 60 4 134 0 62 4 134 0 63 0 131 0 64 4 134 0 66 4 134 0 67 4 134 0 69 0 131 0 70 4 134 0 72 4 134 0 74 4 134 0 76 4 134 0 78 0 131 0 79 0 131 0 84 4 134 0 86 0 131 0 88 4 134 0 89 4 134 0 90 4 134 0 96 4 134 0 100 4 134 0 101 4 134 0 103 4 134 0 104 4 134 0 105 4 134 0 106 0 131 0 107 4 134 0 108 4 134 0 109 4 134 0 110 4 134 0 111 4 134 0 112 4 134 0 113 4 134 0 118 4 134 0 121 4 134 0 122 4 134 0 123 4 134 0 125 4 134 0 126 4 134 0 129 4 134 1 203 0 131 1 204] 
#[1 0 75 0 1 2 130 0 58 2 130 0 59 8 241 0 76 7 245 1 117 7 249 1 200] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 12 173 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 12 177 0 2 0 185 0 118 12 181 0 134] 
#[0 12 185 0 2] 
#[1 12 189 0 23 3 14 0 75 3 14 0 115] 
#[1 3 45 0 4 3 53 0 11 12 193 0 71 12 197 1 81 12 201 1 99 12 205 1 134] 
#[0 4 142 0 4 0 22] 
#[1 12 209 0 4 12 213 0 22] 
#[1 3 53 0 11 12 217 0 23 12 221 1 81] 
#[1 5 21 0 2 0 185 0 118 12 225 0 134] 
#[0 1 222 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 230 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 242 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 1 250 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 146 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 30 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 114 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 122 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 185 0 118 12 225 0 134] 
#[0 1 226 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 1 234 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 1 246 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 2 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 4 150 0 64 0 79 0 84 0 88 0 107 1 204] 
#[0 2 46 0 64 0 79 0 84 0 88 0 107 1 204] 
#[0 2 118 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 126 0 64 0 79 0 84 0 88 0 107 1 204] 
#[1 3 177 0 4 7 5 0 23 7 9 0 26 3 189 0 58 2 105 0 59 2 109 0 60 7 13 0 64 12 229 0 65 2 117 0 69 3 197 0 76 0 41 0 79 2 133 0 84 0 65 0 86 2 137 0 88 2 141 0 107 1 245 0 109 7 25 0 201 0 65 0 202 7 29 0 205 7 33 0 243 7 37 1 7 7 41 1 20 7 45 1 33 7 49 1 45 12 233 1 124 12 237 1 133 7 61 1 146 7 65 1 151 12 241 1 183 7 77 1 203] 
#[0 1 214 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 0 43 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 26 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 154 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 98 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 2 106 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 177 0 4 7 5 0 23 7 9 0 26 7 13 0 64 12 245 0 65 7 149 0 79 2 133 0 84 2 141 0 107 7 49 1 45 12 249 1 124 12 253 1 133 7 69 1 157 13 1 1 183] 
#[0 1 218 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 50 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 4 158 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 102 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 2 110 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 4 173 0 53 0 133 0 58 1 157 0 72 0 145 0 76 0 149 0 79 13 5 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 13 9 0 134 13 13 0 136 13 13 0 137 13 13 0 138 13 13 0 139 13 13 0 143 0 233 0 144 13 13 0 152 0 241 0 153 13 13 0 156 13 13 0 157 13 13 0 158 13 13 0 159 13 17 0 161 13 17 0 162 13 17 0 163 13 13 0 244 13 13 1 8 13 13 1 13 13 13 1 17 13 13 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 13 13 1 52 13 13 1 53 13 13 1 54 1 181 1 55 13 13 1 57 1 189 1 75 5 41 1 203] 
#[1 13 21 0 2 3 53 0 11 0 185 0 118 13 25 0 134 13 29 1 81 13 33 1 116 13 37 1 125] 
#[1 7 237 0 1 13 41 0 58 13 45 0 59 13 49 1 200] 
#[1 2 130 0 1 2 130 0 58 2 130 0 59 13 53 1 117] 
#[1 8 21 0 2 13 57 0 5 8 29 0 6 3 53 0 11 8 33 0 89 9 45 0 114 0 185 0 118 8 37 0 119 8 57 0 121 8 61 0 122 9 49 0 134 13 61 0 135 13 61 0 147 13 61 0 148 13 61 0 149 9 57 0 211 9 61 0 212 9 65 0 215 9 65 0 217 8 57 1 50 8 61 1 51 8 65 1 81 8 69 1 100 8 73 1 101 8 77 1 102 8 77 1 114 8 77 1 116 8 77 1 121 8 77 1 122 8 77 1 123 9 73 1 203] 
#[1 3 41 0 2 7 253 0 4 8 1 0 6 9 77 0 7 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 4 89 0 114 4 149 0 115 0 185 0 118 3 85 0 121 3 89 0 122 8 5 0 134 9 81 0 141 4 101 0 208 4 101 0 209 4 101 0 210 9 85 0 213 9 89 0 214 9 93 0 216 9 93 0 217 9 97 0 218 3 85 1 50 3 89 1 51 3 93 1 81 8 109 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 8 105 1 105 8 109 1 106 3 101 1 107 3 105 1 108 8 109 1 109 8 109 1 110 3 113 1 111 3 113 1 113 8 17 1 203] 
#[1 0 135 0 3 0 135 0 5 2 142 0 6 0 135 0 7 2 142 0 8 2 142 0 11 2 146 0 22 9 101 0 23 2 142 0 40 2 142 0 46 0 135 0 115 9 149 0 151] 
#[0 13 65 0 3] 
#[0 13 69 0 3] 
#[1 2 130 0 1 2 130 0 4 2 130 0 6 2 130 0 42 0 99 0 93 0 103 0 94 0 107 0 95 2 130 0 103 2 130 0 116 0 111 0 118 9 181 0 134 9 185 1 117 9 189 1 119] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 13 73 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 4 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 98 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 119 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 13 77 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 13 81 0 188 13 81 0 189 0 245 0 244 13 81 0 252 1 113 0 253 1 117 0 254 1 121 1 1 13 81 1 2 0 245 1 8 13 81 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 13 85 0 2 3 53 0 11 13 89 1 81] 
#[0 4 166 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 4 170 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[1 8 21 0 2 4 174 0 5 4 174 0 8 3 53 0 11 13 93 0 42 4 174 0 115 13 97 0 116 8 65 1 81 13 101 1 115 13 105 1 116] 
#[0 4 178 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 4 182 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 4 186 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 4 190 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 13 109 0 2] 
#[0 13 113 0 5] 
#[1 4 194 0 5 13 117 0 8 13 121 0 115] 
#[0 4 198 0 5 0 8 0 115] 
#[0 4 202 0 5 0 8 0 115] 
#[0 4 206 0 5 0 8 0 115] 
#[0 4 210 0 5 0 8 0 115] 
#[0 4 214 0 5 0 8 0 115] 
#[0 4 218 0 5 0 8 0 115] 
#[0 4 222 0 7 0 115] 
#[1 13 125 0 7 13 129 0 115] 
#[0 4 226 0 7 0 115] 
#[1 4 230 0 14 13 133 0 71 4 230 0 115 13 137 1 84] 
#[1 13 141 0 14 13 145 0 115] 
#[0 4 234 0 14 0 115] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 8 13 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 8 13 1 109 8 13 1 110 3 113 1 111 3 113 1 113] 
#[1 4 238 0 3 4 238 0 4 4 238 0 5 0 139 0 6 4 238 0 7 4 238 0 8 4 238 0 9 4 238 0 11 4 238 0 12 4 238 0 14 4 238 0 15 4 238 0 18 4 238 0 19 4 238 0 20 4 238 0 21 4 238 0 23 4 238 0 24 4 238 0 25 4 238 0 26 4 238 0 27 4 238 0 35 4 238 0 37 4 238 0 40 4 238 0 41 4 238 0 42 4 238 0 44 4 238 0 45 4 238 0 46 4 238 0 47 4 238 0 48 4 238 0 50 4 238 0 51 4 238 0 61 4 238 0 80 4 238 0 83 4 238 0 92 4 238 0 93 4 238 0 94 4 238 0 95 4 238 0 98 4 238 0 115 4 238 0 116 4 238 0 119 4 238 0 121 4 238 0 122 4 238 0 127 4 238 0 128 8 165 0 227 4 238 1 204] 
#[1 4 242 0 3 4 242 0 4 4 242 0 5 0 143 0 6 4 242 0 7 4 242 0 8 4 242 0 9 4 242 0 11 4 242 0 12 4 242 0 14 4 242 0 15 4 242 0 18 4 242 0 19 4 242 0 20 4 242 0 21 4 242 0 23 4 242 0 24 4 242 0 25 4 242 0 26 4 242 0 27 4 242 0 35 4 242 0 37 4 242 0 40 4 242 0 41 4 242 0 42 4 242 0 44 4 242 0 45 4 242 0 46 4 242 0 47 4 242 0 48 4 242 0 50 4 242 0 51 4 242 0 61 4 242 0 80 4 242 0 83 4 242 0 92 4 242 0 93 4 242 0 94 4 242 0 95 4 242 0 98 4 242 0 115 4 242 0 116 4 242 0 119 4 242 0 121 4 242 0 122 4 242 0 127 4 242 0 128 8 165 0 227 4 242 1 204] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 13 149 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 13 153 0 2] 
#[0 4 246 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 4 250 0 3 4 250 0 4 4 250 0 5 4 250 0 6 4 250 0 7 4 250 0 8 4 250 0 9 4 250 0 11 4 250 0 12 4 250 0 14 4 250 0 15 4 250 0 18 4 250 0 19 4 250 0 20 4 250 0 21 13 157 0 22 4 250 0 23 4 250 0 24 4 250 0 25 4 250 0 26 4 250 0 27 4 250 0 35 4 250 0 37 4 250 0 40 4 250 0 41 4 250 0 42 4 250 0 44 4 250 0 45 4 250 0 46 4 250 0 47 4 250 0 48 4 250 0 50 4 250 0 51 4 250 0 61 4 250 0 80 4 250 0 83 4 250 0 92 4 250 0 93 4 250 0 94 4 250 0 95 4 250 0 98 4 250 0 115 4 250 0 116 4 250 0 119 4 250 0 121 4 250 0 122 4 250 0 127 4 250 0 128 4 250 1 204] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 13 161 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 8 125 0 2 3 45 0 4 3 49 0 6 3 57 0 81 3 61 0 85 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 13 165 1 90 13 165 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 13 165 1 108 3 113 1 111 3 113 1 113] 
#[1 8 125 0 2 3 45 0 4 3 49 0 6 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 13 169 1 92 13 169 1 93 13 169 1 94 13 169 1 95 13 169 1 96 3 133 1 97 3 137 1 98 13 169 1 99 13 169 1 103 13 169 1 104 13 169 1 111 13 169 1 113] 
#[0 13 173 0 6] 
#[1 4 254 0 3 4 254 0 4 4 254 0 5 4 254 0 6 4 254 0 7 4 254 0 8 4 254 0 9 0 147 0 11 4 254 0 12 4 254 0 14 4 254 0 15 4 254 0 18 4 254 0 19 4 254 0 20 4 254 0 21 4 254 0 23 4 254 0 24 4 254 0 25 4 254 0 26 4 254 0 27 4 254 0 35 4 254 0 37 4 254 0 40 4 254 0 41 4 254 0 42 4 254 0 44 4 254 0 45 4 254 0 46 4 254 0 47 4 254 0 48 4 254 0 50 4 254 0 51 4 254 0 61 4 254 0 80 4 254 0 82 4 254 0 83 4 254 0 92 4 254 0 93 4 254 0 94 4 254 0 95 4 254 0 98 4 254 0 115 4 254 0 116 4 254 0 119 4 254 0 121 4 254 0 122 4 254 0 127 4 254 0 128 13 177 1 85 4 254 1 204] 
#[1 0 185 0 118 13 181 0 134] 
#[0 5 2 0 8 0 75] 
#[1 5 6 0 5 13 185 0 52 5 6 0 115] 
#[1 13 189 0 5 13 193 0 115] 
#[0 5 10 0 5 0 115] 
#[0 13 197 0 119] 
#[1 13 201 0 2 13 205 0 26 0 185 0 118 13 209 0 134] 
#[1 4 237 0 4 4 241 0 71 13 213 1 22 4 253 1 23 5 1 1 203] 
#[0 4 54 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 217 0 8] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 13 221 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 13 225 0 2 0 185 0 118 13 229 0 134] 
#[0 13 233 0 2] 
#[0 13 237 0 121 1 41 1 50] 
#[0 13 241 0 8] 
#[0 5 14 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 201 0 69] 
#[1 13 21 0 2 3 53 0 11 0 185 0 118 13 245 0 134 13 29 1 81 13 33 1 116 13 249 1 125] 
#[0 5 18 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 5 22 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 5 26 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 5 30 0 75] 
#[0 13 253 0 52] 
#[1 14 1 0 5 14 5 0 115] 
#[0 5 34 0 5 0 115] 
#[0 5 38 0 5 0 115] 
#[1 0 185 0 118 14 9 0 134 14 9 1 42] 
#[0 14 13 0 8] 
#[1 3 249 0 4 3 253 0 26 14 17 1 36 14 21 1 37] 
#[0 5 42 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 5 46 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 13 81 0 188 13 81 0 189 0 245 0 244 13 81 0 252 1 113 0 253 1 117 0 254 1 121 1 1 13 81 1 2 0 245 1 8 13 81 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 185 0 118 14 25 0 134] 
#[1 3 70 0 3 3 70 0 5 3 70 0 7 9 101 0 23 3 70 0 115 9 149 0 151] 
#[0 14 29 0 116] 
#[0 14 33 0 5] 
#[1 14 37 0 5 14 41 0 115] 
#[0 5 50 0 5 0 115] 
#[0 5 54 0 5 0 115] 
#[1 9 189 0 93 9 189 0 94 9 189 0 95 0 185 0 118 9 181 0 134 9 189 1 119] 
#[0 5 58 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 4 37 0 4 4 41 0 6 14 45 0 7 4 89 0 114 9 209 0 115 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 14 49 0 216 14 49 0 217 14 53 0 218 8 17 1 203] 
#[1 14 57 0 7 14 61 0 115] 
#[0 5 62 0 7 0 115] 
#[0 5 66 0 7 0 115] 
#[0 14 65 0 7] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 14 69 0 188 14 69 0 189 0 245 0 244 14 69 0 252 1 113 0 253 1 117 0 254 1 121 1 1 14 69 1 2 0 245 1 8 14 69 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 5 70 0 8 0 115] 
#[0 5 74 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 4 45 0 134 14 73 0 204 4 57 0 208 4 57 0 209 4 57 0 210 14 73 1 131 14 73 1 132 4 77 1 203] 
#[0 5 78 0 8 0 115] 
#[1 13 97 0 116 14 77 1 115] 
#[1 13 97 0 116 14 81 1 115] 
#[1 3 106 0 2 0 151 0 3 3 106 0 6 0 151 0 7 3 106 0 9 3 106 0 10 3 106 0 11 3 106 0 12 3 106 0 13 3 106 0 14 3 106 0 15 3 106 0 16 3 106 0 17 3 106 0 18 3 106 0 20 3 106 0 21 3 106 0 22 0 151 0 23 3 106 0 24 3 106 0 25 3 106 0 26 3 106 0 27 3 106 0 28 3 106 0 29 3 106 0 30 3 106 0 31 3 106 0 32 3 106 0 33 3 106 0 34 3 106 0 35 3 106 0 36 3 106 0 37 3 106 0 38 3 106 0 40 3 106 0 41 3 106 0 42 3 106 0 43 3 106 0 44 3 106 0 45 3 106 0 46 3 106 0 47 3 106 0 48 3 106 0 50 3 106 0 51 3 106 0 52 3 106 0 80 3 106 0 83 0 151 0 115 3 106 0 125 3 106 0 126 3 106 1 202 3 106 1 203] 
#[1 0 93 0 2 0 23 0 4 4 85 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 14 85 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 9 193 0 188 9 193 0 189 9 145 0 208 9 145 0 209 9 145 0 210 0 245 0 244 9 193 0 252 1 113 0 253 1 117 0 254 1 121 1 1 9 193 1 2 0 245 1 8 9 193 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 23 0 4 4 85 0 6 14 89 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 9 133 0 114 9 209 0 115 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 4 93 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 9 213 0 142 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 9 217 0 188 9 217 0 189 4 101 0 208 4 101 0 209 4 101 0 210 14 49 0 216 14 49 0 217 14 53 0 218 0 245 0 244 9 217 0 252 1 113 0 253 1 117 0 254 1 121 1 1 9 217 1 2 0 245 1 8 9 217 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 137 1 203] 
#[1 5 82 0 3 5 82 0 7 13 97 0 116 14 93 1 115] 
#[0 5 86 0 3 0 7] 
#[0 5 90 0 3 0 5 0 7 0 115] 
#[0 5 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 98 0 3 0 5 0 7 0 115] 
#[0 5 102 0 19] 
#[1 5 106 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 14 101 0 216 14 101 0 217 14 97 0 218 14 97 0 248 14 101 0 249 8 17 1 203] 
#[0 5 110 0 3 0 4 0 5 0 6 0 7 0 23 0 42 0 61 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 1 203] 
#[0 5 114 0 3 0 4 0 5 0 6 0 7 0 23 0 42 0 61 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 1 203] 
#[0 5 118 0 3 0 4 0 5 0 6 0 7 0 23 0 42 0 61 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 1 203] 
#[1 14 105 0 42 13 97 0 116 14 109 1 115] 
#[1 7 237 0 1 4 37 0 4 4 41 0 6 5 122 0 42 14 129 0 93 14 129 0 94 14 129 0 95 14 113 0 103 5 122 0 116 0 185 0 118 14 125 0 134 14 125 0 208 14 125 0 209 14 125 0 210 14 125 1 118 14 129 1 119 13 49 1 200] 
#[1 0 185 0 118 14 133 0 134] 
#[0 5 126 0 5 0 7 0 115] 
#[0 5 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 14 137 0 7 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 4 145 0 114 9 209 0 115 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 14 141 0 142 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 14 145 0 188 14 145 0 189 0 245 0 244 14 145 0 252 1 113 0 253 1 117 0 254 1 121 1 1 14 145 1 2 0 245 1 8 14 145 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 5 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 138 0 2 0 4 0 6 0 7 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 58 0 66 0 72 0 76 0 79 0 89 0 90 0 100 0 103 0 105 0 108 0 110 0 113 0 114 0 115 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 5 142 0 7 0 115] 
#[0 5 146 0 7 0 115] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 11 161 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 11 161 1 109 11 161 1 110 3 113 1 111 3 113 1 113] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 14 149 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 14 153 0 2 0 185 0 118 14 157 0 134] 
#[0 14 161 0 2] 
#[1 0 93 0 2 0 155 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 14 169 0 188 14 169 0 189 0 245 0 244 14 169 0 252 1 113 0 253 1 117 0 254 14 169 1 0 1 121 1 1 14 169 1 2 14 173 1 3 0 245 1 8 14 169 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 5 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 202 1 203 1 204] 
#[0 5 154 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 14 177 0 135 14 177 0 147 14 177 0 148 14 177 0 149 8 57 1 50 8 61 1 51] 
#[1 9 41 0 6 14 181 0 26 8 37 0 119 8 57 0 121 8 61 0 122 14 185 0 135 14 185 0 147 14 185 0 148 14 185 0 149 8 57 1 50 8 61 1 51] 
#[1 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 14 189 0 135 14 189 0 147 14 189 0 148 14 189 0 149 8 57 1 50 8 61 1 51] 
#[1 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 14 193 0 135 14 193 0 147 14 193 0 148 14 193 0 149 8 57 1 50 8 61 1 51] 
#[1 9 41 0 6 9 249 0 26 9 253 0 53 10 1 0 77 10 5 0 97 8 37 0 119 8 57 0 121 8 61 0 122 10 13 0 135 10 13 0 147 10 13 0 148 10 13 0 149 14 197 1 4 14 197 1 6 14 197 1 11 14 197 1 15 8 57 1 50 8 61 1 51 14 197 1 126 14 197 1 127 10 185 1 203] 
#[0 14 201 0 2] 
#[0 5 158 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 5 162 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 5 166 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 5 170 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 205 0 5] 
#[1 5 174 0 5 9 41 0 6 9 245 0 8 9 249 0 26 9 253 0 53 10 1 0 77 10 5 0 97 10 9 0 98 8 37 0 119 8 57 0 121 8 61 0 122 10 13 0 135 10 13 0 147 10 13 0 148 10 13 0 149 14 209 1 4 14 209 1 6 14 209 1 11 14 209 1 15 14 209 1 26 8 57 1 50 8 61 1 51 14 209 1 126 14 209 1 127 10 53 1 203] 
#[0 5 178 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 5 182 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 5 186 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[1 2 130 0 1 0 159 0 6 2 130 0 61 14 213 0 77 2 130 0 93 2 130 0 94 2 130 0 95 14 217 0 97 2 130 0 98 0 163 0 119 0 167 0 121 0 171 0 122 14 221 0 135 14 221 0 147 14 221 0 148 14 221 0 149 8 57 1 50 8 61 1 51 14 225 1 117 14 229 1 122 14 233 1 140 14 237 1 141 14 237 1 142 14 237 1 143 14 237 1 144 14 253 1 145 2 130 1 203] 
#[0 5 190 0 4] 
#[0 5 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 15 1 0 5 9 41 0 6 9 245 0 8 9 249 0 26 9 253 0 53 10 1 0 77 10 5 0 97 10 9 0 98 8 37 0 119 8 57 0 121 8 61 0 122 10 13 0 135 10 13 0 147 10 13 0 148 10 13 0 149 10 41 1 4 10 41 1 6 10 41 1 11 10 41 1 15 15 5 1 24 10 37 1 25 10 41 1 26 8 57 1 50 8 61 1 51 10 41 1 126 10 41 1 127 10 53 1 203] 
#[1 0 185 0 118 3 81 0 134 15 13 1 96 3 133 1 97 3 137 1 98 15 13 1 138] 
#[1 0 185 0 118 3 81 0 134 15 25 1 96 3 133 1 97 3 137 1 98 15 21 1 135 15 25 1 136] 
#[1 10 73 0 82 15 29 1 139] 
#[0 5 198 0 4] 
#[0 15 33 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 15 37 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 15 41 0 2] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 15 45 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 15 49 0 3] 
#[0 5 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 15 53 0 188 15 53 0 189 0 245 0 244 15 53 0 252 1 113 0 253 1 117 0 254 1 121 1 1 15 53 1 2 0 245 1 8 15 53 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 15 57 0 3 15 61 0 115] 
#[0 5 214 0 3 0 115] 
#[1 15 65 0 7 6 61 0 115] 
#[0 5 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 15 69 1 86 15 73 1 87 15 73 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 15 73 1 109 15 73 1 110 3 113 1 111 3 113 1 113] 
#[0 15 81 0 2] 
#[0 5 222 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 1 98 0 4 1 98 0 129 1 98 0 131 15 85 1 77] 
#[0 5 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 15 89 0 188 15 89 0 189 0 245 0 244 15 89 0 252 1 113 0 253 1 117 0 254 1 121 1 1 15 89 1 2 0 245 1 8 15 89 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 5 230 0 5 9 101 0 23 5 230 0 115 15 93 0 151] 
#[1 15 97 0 5 15 101 0 115] 
#[0 5 234 0 5 0 115] 
#[1 14 201 0 2 15 105 0 116] 
#[0 5 238 0 5 0 115] 
#[0 5 242 0 5 0 115] 
#[1 9 41 0 6 14 213 0 77 14 217 0 97 8 37 0 119 8 57 0 121 8 61 0 122 14 221 0 135 14 221 0 147 14 221 0 148 14 221 0 149 8 57 1 50 8 61 1 51] 
#[1 6 61 0 115 15 109 0 127 15 113 0 128 15 117 0 154 15 121 0 155] 
#[1 15 125 0 7 6 61 0 115] 
#[0 5 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 15 129 0 188 15 129 0 189 15 129 0 191 0 245 0 244 15 129 0 252 1 113 0 253 1 117 0 254 1 121 1 1 15 129 1 2 0 245 1 8 15 129 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 5 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 5 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 6 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 6 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 15 133 0 188 15 133 0 189 15 133 0 191 0 245 0 244 15 133 0 252 1 113 0 253 1 117 0 254 1 121 1 1 15 133 1 2 0 245 1 8 15 133 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 15 137 0 119] 
#[0 6 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 6 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 6 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 15 141 0 7 6 61 0 115] 
#[0 6 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 15 145 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 15 145 1 109 15 145 1 110 3 113 1 111 3 113 1 113] 
#[0 6 26 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 6 30 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 6 34 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 6 38 0 3 6 38 0 5 6 38 0 7 6 38 0 8 5 225 0 9 6 38 0 11 6 38 0 12 6 38 0 14 6 38 0 15 6 38 0 18 6 38 0 20 6 38 0 21 6 38 0 24 6 38 0 25 5 225 0 26 6 38 0 35 6 38 0 37 6 38 0 40 6 38 0 41 6 38 0 42 6 38 0 44 5 225 0 45 6 38 0 46 6 38 0 47 6 38 0 48 6 38 0 50 6 38 0 51 6 38 0 80 6 38 0 83 6 38 0 92 6 38 0 115 6 38 0 116 6 38 0 127 6 38 0 128 5 225 0 175 6 38 1 204] 
#[1 6 42 0 3 6 42 0 5 6 42 0 7 6 42 0 8 5 225 0 9 6 42 0 11 6 42 0 12 6 42 0 14 6 42 0 15 6 42 0 18 6 42 0 20 6 42 0 21 6 42 0 24 6 42 0 25 5 225 0 26 6 42 0 35 6 42 0 37 6 42 0 40 6 42 0 41 6 42 0 42 6 42 0 44 5 225 0 45 6 42 0 46 6 42 0 47 6 42 0 48 6 42 0 50 6 42 0 51 6 42 0 80 6 42 0 83 6 42 0 92 6 42 0 115 6 42 0 116 6 42 0 127 6 42 0 128 5 225 0 175 6 42 1 204] 
#[1 6 46 0 3 6 46 0 5 6 46 0 7 6 46 0 8 6 46 0 11 6 46 0 12 6 46 0 14 6 46 0 15 6 46 0 18 6 46 0 20 6 46 0 21 6 46 0 24 6 46 0 25 5 229 0 35 5 233 0 37 6 46 0 40 6 46 0 41 6 46 0 42 6 46 0 44 6 46 0 46 6 46 0 47 6 46 0 48 6 46 0 50 6 46 0 51 6 46 0 80 6 46 0 83 6 46 0 92 6 46 0 115 6 46 0 116 6 46 0 127 6 46 0 128 6 46 1 204] 
#[1 6 50 0 3 6 50 0 5 6 50 0 7 6 50 0 8 6 50 0 11 6 50 0 12 6 50 0 14 6 50 0 15 6 50 0 18 6 50 0 20 6 50 0 21 6 50 0 24 6 50 0 25 5 229 0 35 5 233 0 37 6 50 0 40 6 50 0 41 6 50 0 42 6 50 0 44 6 50 0 46 6 50 0 47 6 50 0 48 6 50 0 50 6 50 0 51 6 50 0 80 6 50 0 83 6 50 0 92 6 50 0 115 6 50 0 116 6 50 0 127 6 50 0 128 6 50 1 204] 
#[1 6 54 0 3 6 54 0 5 6 54 0 7 6 54 0 8 6 54 0 11 6 54 0 12 6 54 0 14 6 54 0 15 6 54 0 18 6 54 0 20 6 54 0 21 6 54 0 24 6 54 0 25 5 229 0 35 5 233 0 37 6 54 0 40 6 54 0 41 6 54 0 42 6 54 0 44 6 54 0 46 6 54 0 47 6 54 0 48 6 54 0 50 6 54 0 51 6 54 0 80 6 54 0 83 6 54 0 92 6 54 0 115 6 54 0 116 6 54 0 127 6 54 0 128 6 54 1 204] 
#[1 6 58 0 3 6 58 0 5 6 58 0 7 6 58 0 8 6 58 0 11 5 237 0 12 6 58 0 14 5 241 0 15 5 245 0 18 6 58 0 20 6 58 0 21 6 58 0 24 6 58 0 25 6 58 0 40 6 58 0 41 6 58 0 42 6 58 0 44 6 58 0 46 6 58 0 47 6 58 0 48 6 58 0 50 6 58 0 51 6 58 0 80 6 58 0 83 6 58 0 92 6 58 0 115 6 58 0 116 6 58 0 127 6 58 0 128 6 58 1 204] 
#[1 6 62 0 3 6 62 0 5 6 62 0 7 6 62 0 8 6 62 0 11 5 237 0 12 6 62 0 14 5 241 0 15 5 245 0 18 6 62 0 20 6 62 0 21 6 62 0 24 6 62 0 25 6 62 0 40 6 62 0 41 6 62 0 42 6 62 0 44 6 62 0 46 6 62 0 47 6 62 0 48 6 62 0 50 6 62 0 51 6 62 0 80 6 62 0 83 6 62 0 92 6 62 0 115 6 62 0 116 6 62 0 127 6 62 0 128 6 62 1 204] 
#[1 6 66 0 3 6 66 0 5 6 66 0 7 6 66 0 8 6 66 0 11 5 237 0 12 6 66 0 14 5 241 0 15 5 245 0 18 6 66 0 20 6 66 0 21 6 66 0 24 6 66 0 25 6 66 0 40 6 66 0 41 6 66 0 42 6 66 0 44 6 66 0 46 6 66 0 47 6 66 0 48 6 66 0 50 6 66 0 51 6 66 0 80 6 66 0 83 6 66 0 92 6 66 0 115 6 66 0 116 6 66 0 127 6 66 0 128 6 66 1 204] 
#[1 6 70 0 3 6 70 0 5 6 70 0 7 6 70 0 8 6 70 0 11 5 237 0 12 6 70 0 14 5 241 0 15 5 245 0 18 6 70 0 20 6 70 0 21 6 70 0 24 6 70 0 25 6 70 0 40 6 70 0 41 6 70 0 42 6 70 0 44 6 70 0 46 6 70 0 47 6 70 0 48 6 70 0 50 6 70 0 51 6 70 0 80 6 70 0 83 6 70 0 92 6 70 0 115 6 70 0 116 6 70 0 127 6 70 0 128 6 70 1 204] 
#[1 6 74 0 3 6 74 0 5 6 74 0 7 6 74 0 8 6 74 0 11 5 237 0 12 6 74 0 14 5 241 0 15 5 245 0 18 6 74 0 20 6 74 0 21 6 74 0 24 6 74 0 25 6 74 0 40 6 74 0 41 6 74 0 42 6 74 0 44 6 74 0 46 6 74 0 47 6 74 0 48 6 74 0 50 6 74 0 51 6 74 0 80 6 74 0 83 6 74 0 92 6 74 0 115 6 74 0 116 6 74 0 127 6 74 0 128 6 74 1 204] 
#[1 6 78 0 3 6 78 0 5 6 78 0 7 6 78 0 8 6 78 0 11 5 237 0 12 6 78 0 14 5 241 0 15 5 245 0 18 6 78 0 20 6 78 0 21 6 78 0 24 6 78 0 25 6 78 0 40 6 78 0 41 6 78 0 42 6 78 0 44 6 78 0 46 6 78 0 47 6 78 0 48 6 78 0 50 6 78 0 51 6 78 0 80 6 78 0 83 6 78 0 92 6 78 0 115 6 78 0 116 6 78 0 127 6 78 0 128 6 78 1 204] 
#[1 6 82 0 3 6 82 0 5 6 82 0 7 6 82 0 8 5 249 0 11 5 253 0 14 6 1 0 20 6 5 0 21 6 82 0 24 6 82 0 25 6 82 0 40 6 82 0 41 6 82 0 42 6 82 0 44 6 82 0 46 6 82 0 47 6 82 0 48 6 82 0 50 6 82 0 51 6 9 0 80 6 13 0 83 6 82 0 92 6 82 0 115 6 82 0 116 6 82 0 127 6 82 0 128 6 82 1 204] 
#[1 6 86 0 3 6 86 0 5 6 86 0 7 6 86 0 8 5 249 0 11 5 253 0 14 6 1 0 20 6 5 0 21 6 86 0 24 6 86 0 25 6 86 0 40 6 86 0 41 6 86 0 42 6 86 0 44 6 86 0 46 6 86 0 47 6 86 0 48 6 86 0 50 6 86 0 51 6 9 0 80 6 13 0 83 6 86 0 92 6 86 0 115 6 86 0 116 6 86 0 127 6 86 0 128 6 86 1 204] 
#[1 6 90 0 3 6 90 0 5 6 90 0 7 6 90 0 8 5 249 0 11 5 253 0 14 6 1 0 20 6 5 0 21 6 90 0 24 6 90 0 25 6 90 0 40 6 90 0 41 6 90 0 42 6 90 0 44 6 90 0 46 6 90 0 47 6 90 0 48 6 90 0 50 6 90 0 51 6 9 0 80 6 13 0 83 6 90 0 92 6 90 0 115 6 90 0 116 6 90 0 127 6 90 0 128 6 90 1 204] 
#[1 6 94 0 3 6 94 0 5 6 94 0 7 6 94 0 8 5 249 0 11 5 253 0 14 6 1 0 20 6 5 0 21 6 94 0 24 6 94 0 25 6 94 0 40 6 94 0 41 6 94 0 42 6 94 0 44 6 94 0 46 6 94 0 47 6 94 0 48 6 94 0 50 6 94 0 51 6 9 0 80 6 13 0 83 6 94 0 92 6 94 0 115 6 94 0 116 6 94 0 127 6 94 0 128 6 94 1 204] 
#[1 6 98 0 3 6 98 0 5 6 98 0 7 6 98 0 8 6 17 0 24 6 21 0 25 6 98 0 40 6 98 0 41 6 98 0 42 6 98 0 44 6 98 0 46 6 98 0 47 6 98 0 48 6 25 0 50 6 29 0 51 6 98 0 92 6 98 0 115 6 98 0 116 6 98 0 127 6 98 0 128 6 98 1 204] 
#[1 6 102 0 3 6 102 0 5 6 102 0 7 6 102 0 8 6 33 0 40 6 102 0 41 6 102 0 42 6 102 0 44 6 102 0 46 6 102 0 47 6 102 0 48 6 102 0 92 6 102 0 115 6 102 0 116 6 102 0 127 6 102 0 128 6 102 1 204] 
#[1 6 106 0 3 6 106 0 5 6 106 0 7 6 106 0 8 6 106 0 41 6 106 0 42 6 106 0 44 6 106 0 46 6 106 0 47 6 37 0 48 6 106 0 92 6 106 0 115 6 106 0 116 6 106 0 127 6 106 0 128 6 106 1 204] 
#[1 6 110 0 3 6 110 0 5 6 110 0 7 6 110 0 8 6 110 0 41 6 110 0 42 6 41 0 46 6 110 0 47 6 110 0 92 6 110 0 115 6 110 0 116 6 110 0 127 6 110 0 128 6 110 1 204] 
#[1 0 246 0 3 0 246 0 5 0 246 0 7 0 246 0 8 0 246 0 41 0 246 0 42 6 41 0 46 0 246 0 47 0 246 0 92 0 246 0 115 0 246 0 116 0 246 0 127 0 246 0 128 0 246 1 204] 
#[1 6 114 0 3 6 114 0 5 6 114 0 7 6 114 0 8 6 45 0 41 6 114 0 42 6 114 0 47 6 114 0 92 6 114 0 115 6 114 0 116 6 114 0 127 6 114 0 128 6 114 1 204] 
#[1 6 118 0 3 6 118 0 5 6 118 0 7 6 118 0 8 6 118 0 42 6 118 0 44 6 41 0 46 6 118 0 92 6 118 0 115 6 118 0 116 6 118 0 127 6 118 0 128 6 118 1 204] 
#[0 15 149 0 116] 
#[0 6 122 0 3 0 7 0 8 0 115 0 116 0 127 0 128 1 204] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 15 157 0 250 15 161 0 251 0 6 1 203] 
#[0 6 130 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 6 134 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 6 138 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 22 0 129 15 165 1 56 15 169 1 75] 
#[1 6 142 0 4 0 175 0 129 15 173 0 131 15 181 1 53 15 181 1 54 1 181 1 55 15 181 1 73 1 189 1 75 15 185 1 80] 
#[1 6 150 0 4 6 150 0 9 6 150 0 14 15 189 0 22 15 193 0 116 6 150 0 130] 
#[1 6 142 0 4 15 197 0 9 0 130 0 14 15 201 0 130 15 229 1 59 15 209 1 63 15 213 1 64 15 217 1 65 15 213 1 66 15 213 1 67 15 229 1 68 15 233 1 76 15 237 1 80] 
#[0 6 154 0 4 0 9 0 14 0 130] 
#[0 6 158 0 4 0 9 0 14 0 130] 
#[0 6 162 0 130] 
#[1 15 241 0 130 15 245 1 61] 
#[0 15 249 0 3] 
#[1 2 142 0 6 2 142 0 11 0 179 0 14 2 146 0 22 2 142 0 40 2 142 0 46 13 133 0 71 4 230 0 115 13 137 1 84] 
#[0 15 253 0 14] 
#[1 6 77 0 2 3 53 0 11 6 89 1 81 16 1 1 125] 
#[0 16 5 0 4] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 16 9 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 6 166 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 170 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 16 13 0 8] 
#[0 6 174 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 16 17 0 8] 
#[0 16 21 0 2] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 16 25 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 16 29 0 188 16 29 0 189 16 29 0 191 0 245 0 244 16 29 0 252 1 113 0 253 1 117 0 254 1 121 1 1 16 29 1 2 0 245 1 8 16 29 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 16 33 0 134 16 37 0 206 16 41 0 207 16 45 0 208 16 45 0 209 16 45 0 210 16 49 0 224 6 165 1 203] 
#[1 0 202 0 8 0 202 0 9 5 201 0 10 0 202 0 11 0 202 0 12 5 201 0 13 0 202 0 14 0 202 0 15 5 201 0 16 5 201 0 17 0 202 0 18 0 202 0 20 0 202 0 21 5 201 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 5 201 0 28 5 201 0 29 5 201 0 30 5 201 0 31 5 201 0 32 5 201 0 33 5 201 0 34 0 202 0 35 5 189 0 36 0 202 0 37 5 193 0 38 0 202 0 40 0 202 0 41 0 202 0 42 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 47 0 202 0 48 0 202 0 50 0 202 0 51 5 197 0 52 0 183 0 80 0 202 0 83 16 57 0 92 0 202 0 115 5 201 0 190 5 201 1 202] 
#[1 16 61 0 8 6 61 0 115] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 16 65 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 16 69 0 188 16 69 0 189 16 69 0 191 0 245 0 244 16 69 0 252 1 113 0 253 1 117 0 254 1 121 1 1 16 69 1 2 0 245 1 8 16 69 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 16 73 0 134 4 49 0 203 4 53 0 204 16 77 0 208 16 77 0 209 16 77 0 210 16 81 0 224 4 53 1 131 4 53 1 132 4 77 1 203] 
#[1 16 85 0 80 16 89 0 92] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 4 173 0 53 0 133 0 58 16 101 0 60 1 157 0 72 0 145 0 76 0 149 0 79 16 101 0 86 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 16 93 0 109 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 16 97 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 16 97 0 170 16 101 0 202 16 105 0 223 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 5 41 1 203] 
#[1 16 109 0 3 6 61 0 115] 
#[0 6 178 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 16 113 0 8 6 61 0 115] 
#[1 16 117 0 3 6 61 0 115] 
#[0 6 182 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 16 121 0 2 1 197 0 4 16 125 0 197] 
#[1 1 197 0 4 16 129 0 197] 
#[1 6 186 0 2 6 186 0 4 6 186 0 5 6 186 0 6 6 186 0 8 6 186 0 35 6 186 0 36 6 186 0 37 6 186 0 38 6 186 0 39 6 186 0 49 6 186 0 53 6 186 0 54 6 186 0 55 6 186 0 56 6 186 0 58 6 186 0 59 6 186 0 60 6 186 0 62 6 186 0 63 6 186 0 64 6 186 0 65 6 186 0 66 6 186 0 67 6 186 0 68 6 186 0 69 6 186 0 70 6 186 0 72 12 1 0 73 6 186 0 74 6 186 0 76 6 186 0 78 6 186 0 79 6 186 0 84 6 186 0 86 6 186 0 88 6 186 0 89 6 186 0 90 6 186 0 96 6 186 0 100 6 186 0 101 6 186 0 103 6 186 0 104 6 186 0 105 6 186 0 106 6 186 0 107 6 186 0 108 6 186 0 109 6 186 0 110 6 186 0 111 6 186 0 112 6 186 0 113 6 186 0 118 6 186 0 121 6 186 0 122 6 186 0 123 6 186 0 125 6 186 0 126 6 186 0 129 16 133 0 240 6 186 1 203 6 186 1 204] 
#[0 6 190 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 194 0 8 0 92 0 115] 
#[0 6 198 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 6 149 0 134 16 137 0 207 6 161 0 208 6 161 0 209 6 161 0 210 6 165 1 203] 
#[0 6 202 0 8 0 92 0 115] 
#[1 13 97 0 116 16 141 1 115] 
#[1 13 97 0 116 16 145 1 115] 
#[0 6 206 0 8 0 92 0 115] 
#[0 6 210 0 8 0 92 0 115] 
#[1 16 149 0 3 6 61 0 115] 
#[1 16 153 0 3 6 61 0 115] 
#[0 6 214 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 218 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 187 0 2 6 222 0 4 6 222 0 5 0 187 0 6 0 187 0 8 5 194 0 9 5 194 0 10 5 194 0 11 5 194 0 12 5 194 0 13 5 194 0 14 5 194 0 15 5 194 0 16 5 194 0 17 5 194 0 18 5 194 0 20 5 194 0 21 5 194 0 22 5 194 0 23 5 194 0 24 5 194 0 25 5 194 0 26 5 194 0 27 5 194 0 28 5 194 0 29 5 194 0 30 5 194 0 31 5 194 0 32 5 194 0 33 5 194 0 34 0 187 0 35 0 187 0 36 0 187 0 37 0 187 0 38 6 222 0 39 5 194 0 40 5 194 0 41 5 194 0 42 5 194 0 43 5 194 0 44 5 194 0 45 5 194 0 46 5 194 0 47 5 194 0 48 6 222 0 49 5 194 0 50 5 194 0 51 5 194 0 52 6 222 0 53 6 222 0 54 6 222 0 55 6 222 0 58 6 222 0 59 6 222 0 60 6 222 0 62 6 222 0 63 6 222 0 64 6 222 0 66 6 222 0 67 6 222 0 69 6 222 0 70 6 222 0 72 6 222 0 74 6 222 0 76 6 222 0 78 6 222 0 79 5 194 0 80 5 194 0 83 6 222 0 84 6 222 0 86 6 222 0 88 6 222 0 89 6 222 0 90 6 222 0 96 6 222 0 100 6 222 0 101 6 222 0 103 6 222 0 104 6 222 0 105 6 222 0 106 6 222 0 107 6 222 0 108 6 222 0 109 6 222 0 110 6 222 0 111 6 222 0 112 6 222 0 113 5 194 0 115 6 222 0 118 6 222 0 121 6 222 0 122 6 222 0 123 0 187 0 125 0 187 0 126 6 222 0 129 5 194 1 202 0 187 1 203 6 222 1 204] 
#[1 4 237 0 4 4 241 0 71 16 157 1 22 4 253 1 23 5 1 1 203] 
#[0 6 226 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 16 161 0 4] 
#[1 3 53 0 11 4 241 0 71 16 165 1 23 16 169 1 81 5 1 1 203] 
#[1 6 230 0 8 6 230 0 115 13 97 0 116 16 173 1 115] 
#[1 16 177 0 8 16 181 0 115] 
#[0 6 234 0 8 0 115] 
#[1 8 21 0 2 3 53 0 11 8 65 1 81 16 185 1 116] 
#[1 16 189 0 8 16 181 0 115] 
#[0 16 193 0 4] 
#[1 16 197 0 4 12 213 0 22] 
#[1 16 201 0 8 16 181 0 115] 
#[1 16 205 0 5 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 16 209 0 135 16 209 0 147 16 209 0 148 16 209 0 149 8 57 1 50 8 61 1 51 16 213 1 147 16 217 1 148 16 221 1 149] 
#[0 16 225 0 8] 
#[0 16 229 0 8] 
#[1 4 237 0 4 4 241 0 71 0 185 0 118 16 233 0 134 6 193 1 22 4 253 1 23 5 1 1 203] 
#[1 7 81 0 2 7 85 0 26 0 185 0 118 16 237 0 134] 
#[1 0 134 0 2 0 134 0 6 0 191 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 18 0 138 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 80 0 134 0 83 0 134 0 125 0 134 0 126 0 134 1 202 0 134 1 203] 
#[0 16 245 0 8] 
#[0 6 238 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 242 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 246 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 6 250 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 6 254 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 16 249 0 23 3 14 0 75 3 14 0 115] 
#[0 7 2 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 16 253 0 8] 
#[0 17 1 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 17 5 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 17 9 0 2] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 17 13 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 0 185 0 118 17 17 0 134 17 21 1 98 17 25 1 158 17 29 1 201] 
#[1 0 185 0 118 3 81 0 134 17 33 1 96 3 133 1 97 3 137 1 98 17 33 1 136] 
#[1 3 45 0 4 12 193 0 71 17 37 1 99 17 41 1 134] 
#[0 7 6 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 45 0 4 17 45 1 99] 
#[1 0 93 0 2 0 15 0 4 7 10 0 5 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 2 101 0 58 2 105 0 59 2 109 0 60 1 209 0 62 1 213 0 63 7 13 0 64 0 137 0 66 1 217 0 67 2 117 0 69 17 49 0 70 1 157 0 72 1 221 0 74 2 125 0 76 1 225 0 78 7 113 0 79 2 133 0 84 0 65 0 86 2 137 0 88 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 2 141 0 107 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 17 97 0 192 17 97 0 195 17 97 0 196 17 97 0 197 17 97 0 201 0 65 0 202 17 97 0 205 17 97 0 219 17 97 0 220 17 97 0 221 17 97 0 222 17 97 0 225 17 97 0 226 17 97 0 228 17 97 0 229 17 97 0 230 17 97 0 235 17 97 0 237 17 97 0 238 17 97 0 242 17 97 0 243 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 17 97 1 7 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 17 97 1 20 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 17 97 1 124 17 97 1 133 17 97 1 146 17 97 1 151 17 89 1 153 17 93 1 154 17 97 1 155 17 97 1 156 17 97 1 157 17 97 1 183 3 37 1 203] 
#[1 0 185 0 118 17 113 0 134] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 17 117 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 17 117 1 109 17 117 1 110 3 113 1 111 3 113 1 113] 
#[0 17 121 0 23] 
#[0 16 249 0 23] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 2 101 0 58 2 105 0 59 0 137 0 66 1 157 0 72 2 125 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 12 137 0 188 12 137 0 189 12 141 0 243 0 245 0 244 12 137 0 252 1 113 0 253 1 117 0 254 1 121 1 1 12 137 1 2 12 145 1 7 0 245 1 8 12 137 1 10 0 245 1 13 0 245 1 17 1 33 1 19 12 149 1 20 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 3 37 1 203] 
#[0 4 106 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 114 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 4 134 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 6 205 0 58 6 213 0 76 0 185 0 118 17 125 0 134 12 153 1 187 12 157 1 188] 
#[0 4 110 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 4 118 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 4 138 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 5 25 0 22 4 173 0 53 0 133 0 58 1 157 0 72 0 145 0 76 13 5 0 89 1 153 0 90 5 29 0 100 0 165 0 103 1 157 0 105 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 17 129 0 134 17 129 0 136 17 129 0 137 17 129 0 138 17 129 0 139 17 129 0 143 0 233 0 144 17 129 0 152 0 241 0 153 17 129 0 156 17 129 0 157 17 129 0 158 17 129 0 159 17 129 0 244 17 129 1 8 17 129 1 13 17 129 1 17 17 129 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 17 129 1 52 17 129 1 53 17 129 1 54 1 181 1 55 17 129 1 57 1 189 1 75 5 41 1 203] 
#[1 7 14 0 1 0 134 0 2 7 14 0 4 0 195 0 6 0 134 0 22 7 14 0 42 7 14 0 58 7 14 0 59 7 14 0 61 7 14 0 93 7 14 0 94 7 14 0 95 7 14 0 98 7 14 0 103 7 14 0 116 7 14 0 118 7 14 0 119 7 14 0 121 7 14 0 122 0 134 0 125 0 134 0 126 0 195 1 203] 
#[1 5 45 0 2 5 93 0 6 5 97 0 22 0 201 0 125 0 18 0 126 5 105 0 152 0 241 0 153 5 109 0 164 5 61 1 203] 
#[1 7 18 0 1 5 45 0 2 7 18 0 4 0 199 0 6 5 121 0 22 7 18 0 42 7 18 0 58 7 18 0 59 7 18 0 61 7 18 0 93 7 18 0 94 7 18 0 95 7 18 0 98 7 18 0 103 7 18 0 116 7 18 0 118 7 18 0 119 7 18 0 121 7 18 0 122 0 201 0 125 0 18 0 126 5 125 0 152 0 241 0 153 5 129 0 164 0 203 1 203] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 17 133 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 13 21 0 2 3 53 0 11 13 29 1 81 17 137 1 116 17 141 1 125] 
#[0 17 145 0 2] 
#[0 17 149 0 8] 
#[0 17 153 0 4] 
#[1 3 53 0 11 0 185 0 118 17 157 0 134 17 161 1 81] 
#[0 17 165 0 58] 
#[0 7 22 0 1 0 4 0 6 0 42 0 58 0 59 0 61 0 93 0 94 0 95 0 98 0 103 0 116 0 118 0 119 0 121 0 122 1 203] 
#[1 7 237 0 1 17 169 0 58 17 173 0 59 13 49 1 200] 
#[1 0 207 0 3 0 207 0 5 4 162 0 6 0 207 0 7 4 162 0 8 5 46 0 23 4 162 0 40 4 162 0 46 0 207 0 115] 
#[1 8 21 0 2 4 174 0 5 4 174 0 8 3 53 0 11 13 93 0 42 4 174 0 115 17 177 0 116 8 65 1 81 13 101 1 115 13 105 1 116] 
#[0 17 181 0 19] 
#[0 7 26 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 17 185 0 3] 
#[1 0 134 0 2 0 134 0 6 0 134 0 7 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 18 0 138 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 80 0 134 0 83 17 189 0 116 0 134 0 125 0 134 0 126 0 134 1 202 0 134 1 203] 
#[0 17 193 0 7] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 17 197 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 17 201 0 2] 
#[1 8 21 0 2 7 30 0 5 7 30 0 8 3 53 0 11 7 30 0 115 13 97 0 116 8 65 1 81 17 205 1 115 17 209 1 116] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 17 213 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 17 213 1 109 17 213 1 110 3 113 1 111 3 113 1 113] 
#[0 7 34 0 5 0 8 0 115] 
#[0 7 38 0 5 0 8 0 115] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 17 217 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 7 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 54 0 55 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 98 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 119 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 203 1 204] 
#[1 8 21 0 2 7 46 0 5 8 29 0 6 3 53 0 11 8 33 0 89 8 37 0 119 8 57 0 121 8 61 0 122 8 45 0 135 8 45 0 147 8 45 0 148 8 45 0 149 8 57 1 50 8 61 1 51 8 65 1 81 17 221 1 102 17 221 1 114 17 221 1 116 17 221 1 121 17 221 1 122 17 221 1 123] 
#[1 8 21 0 2 7 50 0 5 8 29 0 6 3 53 0 11 8 33 0 89 8 37 0 119 8 57 0 121 8 61 0 122 8 45 0 135 8 45 0 147 8 45 0 148 8 45 0 149 8 57 1 50 8 61 1 51 8 65 1 81 17 225 1 102 17 225 1 114 17 225 1 116 17 225 1 121 17 225 1 122 17 225 1 123] 
#[0 7 54 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 17 229 0 7 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 17 233 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 17 233 1 106 3 101 1 107 3 105 1 108 17 233 1 109 17 233 1 110 3 113 1 111 3 113 1 113] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 17 237 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 17 237 1 109 17 237 1 110 3 113 1 111 3 113 1 113] 
#[0 7 58 0 14 0 115] 
#[0 7 62 0 2 0 4 0 23 0 71 1 203] 
#[1 0 185 0 118 8 113 0 134 17 241 1 83] 
#[0 17 245 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 17 249 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 0 185 0 118 17 253 0 134] 
#[0 18 1 0 3] 
#[1 7 66 0 3 7 66 0 4 7 66 0 5 7 66 0 6 7 66 0 7 7 66 0 8 7 66 0 9 7 66 0 11 7 66 0 12 7 66 0 14 7 66 0 15 7 66 0 18 7 66 0 19 7 66 0 20 7 66 0 21 7 66 0 23 7 66 0 24 7 66 0 25 7 66 0 26 7 66 0 27 7 66 0 35 7 66 0 37 0 211 0 40 7 66 0 41 7 66 0 42 7 66 0 44 7 66 0 45 7 66 0 46 7 66 0 47 7 66 0 48 7 66 0 50 7 66 0 51 7 66 0 61 7 66 0 80 7 66 0 83 7 66 0 92 7 66 0 93 7 66 0 94 7 66 0 95 7 66 0 98 7 66 0 115 7 66 0 116 7 66 0 119 7 66 0 121 7 66 0 122 7 66 0 127 7 66 0 128 7 66 1 204] 
#[1 7 70 0 3 7 70 0 4 7 70 0 5 0 215 0 6 7 70 0 7 7 70 0 8 7 70 0 9 7 70 0 11 7 70 0 12 7 70 0 14 7 70 0 15 7 70 0 18 7 70 0 19 7 70 0 20 7 70 0 21 7 70 0 23 7 70 0 24 7 70 0 25 7 70 0 26 7 70 0 27 7 70 0 35 7 70 0 37 7 70 0 40 7 70 0 41 7 70 0 42 7 70 0 44 7 70 0 45 7 70 0 46 7 70 0 47 7 70 0 48 7 70 0 50 7 70 0 51 7 70 0 61 7 70 0 80 7 70 0 83 7 70 0 92 7 70 0 93 7 70 0 94 7 70 0 95 7 70 0 98 7 70 0 115 7 70 0 116 7 70 0 119 7 70 0 121 7 70 0 122 7 70 0 127 7 70 0 128 8 165 0 227 7 70 1 204] 
#[0 18 5 0 7] 
#[0 7 74 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 82 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 7 78 0 3 7 78 0 4 7 78 0 5 7 78 0 6 7 78 0 7 7 78 0 8 7 78 0 9 7 78 0 11 7 78 0 12 7 78 0 14 7 78 0 15 7 78 0 18 7 78 0 19 7 78 0 20 7 78 0 21 7 82 0 22 7 78 0 23 7 78 0 24 7 78 0 25 7 78 0 26 7 78 0 27 7 78 0 35 7 78 0 37 7 78 0 40 7 78 0 41 7 78 0 42 7 78 0 44 7 78 0 45 7 78 0 46 7 78 0 47 7 78 0 48 7 78 0 50 7 78 0 51 7 78 0 61 7 78 0 80 7 78 0 82 7 78 0 83 7 78 0 92 7 78 0 93 7 78 0 94 7 78 0 95 7 78 0 98 7 78 0 115 7 78 0 116 7 78 0 119 7 78 0 121 7 78 0 122 7 78 0 127 7 78 0 128 7 78 1 204] 
#[0 18 9 0 119] 
#[0 7 86 0 8 0 75] 
#[1 18 13 0 5 8 181 0 119 18 17 1 47] 
#[0 7 90 0 75] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 18 21 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 18 25 0 2 0 185 0 118 18 29 0 134] 
#[0 18 33 0 2] 
#[0 6 222 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 7 94 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 18 37 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 18 41 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 18 45 0 2] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 18 49 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 7 98 0 8] 
#[0 7 102 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 13 21 0 2 3 53 0 11 13 29 1 81 17 137 1 116 18 53 1 125] 
#[0 18 57 0 4] 
#[1 0 185 0 118 18 61 0 134 18 61 1 42] 
#[0 7 106 0 75] 
#[1 18 65 0 5 0 185 0 118 9 5 0 119 9 17 0 134 18 69 1 40 9 17 1 42] 
#[0 7 110 0 75] 
#[0 7 114 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 7 118 0 75] 
#[0 7 122 0 75] 
#[0 7 126 0 5] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 18 73 0 216 18 73 0 217 8 17 1 203] 
#[0 7 130 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 7 134 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 18 77 0 5 9 41 0 6 9 45 0 114 0 185 0 118 8 37 0 119 8 57 0 121 8 61 0 122 9 49 0 134 9 53 0 135 9 53 0 147 9 53 0 148 9 53 0 149 18 81 0 211 18 85 0 215 18 85 0 217 8 57 1 50 8 61 1 51 9 73 1 203] 
#[0 7 138 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 7 142 0 7 0 115] 
#[0 18 89 0 7] 
#[0 7 146 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 4 37 0 4 4 41 0 6 18 93 0 7 4 89 0 114 4 149 0 115 0 185 0 118 9 49 0 134 18 97 0 141 4 101 0 208 4 101 0 209 4 101 0 210 18 101 0 214 9 93 0 216 9 93 0 217 18 105 0 218 8 17 1 203] 
#[0 7 150 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 7 154 0 3 0 5 0 7 0 8 0 92 0 115] 
#[0 7 158 0 8 0 115] 
#[1 7 162 0 8 9 101 0 23 7 162 0 115 18 109 0 151] 
#[1 7 166 0 8 9 101 0 23 7 166 0 115 18 113 0 151] 
#[1 0 134 0 2 0 134 0 6 0 219 0 7 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 18 0 138 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 34 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 40 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 80 0 134 0 83 0 134 0 115 13 97 0 116 0 134 0 125 0 134 0 126 14 93 1 115 0 134 1 202 0 134 1 203] 
#[1 5 134 0 2 0 223 0 3 5 134 0 6 0 223 0 7 5 134 0 9 5 134 0 10 5 134 0 11 5 134 0 12 5 134 0 13 5 134 0 14 5 134 0 15 5 134 0 16 5 134 0 17 5 134 0 18 5 134 0 20 5 134 0 21 5 134 0 22 0 223 0 23 5 134 0 24 5 134 0 25 5 134 0 26 5 134 0 27 5 134 0 28 5 134 0 29 5 134 0 30 5 134 0 31 5 134 0 32 5 134 0 33 5 134 0 34 5 134 0 35 5 134 0 36 5 134 0 37 5 134 0 38 5 134 0 40 5 134 0 41 5 134 0 42 5 134 0 43 5 134 0 44 5 134 0 45 5 134 0 46 5 134 0 47 5 134 0 48 5 134 0 50 5 134 0 51 5 134 0 52 5 134 0 80 5 134 0 83 0 223 0 115 5 134 0 125 5 134 0 126 5 134 1 202 5 134 1 203] 
#[0 7 170 0 3 0 7] 
#[0 7 174 0 3] 
#[0 7 178 0 3 0 115] 
#[0 7 182 0 3 0 5 0 7 0 115] 
#[1 7 186 0 3 7 186 0 5 7 186 0 7 9 101 0 23 7 186 0 115 18 117 0 151] 
#[0 7 190 0 3 0 5 0 7 0 23 0 42 0 115 0 116] 
#[0 7 194 0 3 0 5 0 7 0 23 0 42 0 115 0 116] 
#[0 7 198 0 3 0 5 0 7 0 23 0 42 0 115 0 116] 
#[1 18 121 0 42 13 97 0 116 18 125 1 115] 
#[1 5 122 0 3 4 37 0 4 5 122 0 5 4 41 0 6 5 122 0 7 5 122 0 23 5 122 0 42 14 113 0 103 5 122 0 115 5 122 0 116 0 185 0 118 18 129 0 134 18 129 0 208 18 129 0 209 18 129 0 210 18 129 1 118] 
#[1 7 202 0 3 7 202 0 5 7 202 0 7 9 101 0 23 18 133 0 42 7 202 0 115 13 97 0 116 18 137 0 151 18 141 1 115] 
#[0 7 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 7 210 0 7 0 115] 
#[0 7 214 0 7 0 115] 
#[0 18 145 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 18 149 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 18 153 0 2] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 18 157 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 18 161 0 250 15 161 0 251 18 165 1 18 0 6 1 203] 
#[0 7 218 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 7 222 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 18 169 0 2] 
#[1 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 18 173 0 135 18 173 0 147 18 173 0 148 18 173 0 149 8 57 1 50 8 61 1 51] 
#[0 18 177 0 2] 
#[0 18 181 0 2] 
#[0 18 185 0 2] 
#[0 7 226 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 18 189 0 245 4 121 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 7 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 202 1 203 1 204] 
#[0 7 234 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 18 193 0 135 18 193 0 147 18 193 0 148 18 193 0 149 8 57 1 50 8 61 1 51] 
#[1 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 18 197 0 135 18 197 0 147 18 197 0 148 18 197 0 149 8 57 1 50 8 61 1 51] 
#[1 6 77 0 2 3 53 0 11 6 89 1 81 18 201 1 125] 
#[1 7 237 0 1 9 41 0 6 18 205 0 61 18 217 0 93 18 217 0 94 18 217 0 95 18 209 0 98 8 37 0 119 8 57 0 121 8 61 0 122 18 213 0 135 18 213 0 147 18 213 0 148 18 213 0 149 8 57 1 50 8 61 1 51 18 217 1 119 18 221 1 126 18 225 1 127 13 49 1 200 18 229 1 203] 
#[0 18 233 0 8] 
#[0 7 238 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 7 242 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 7 246 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 7 250 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 7 254 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 8 2 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 8 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 202 1 203 1 204] 
#[0 18 237 0 5] 
#[0 8 10 0 82] 
#[0 8 14 0 82] 
#[0 8 18 0 4 0 115] 
#[1 8 22 0 4 18 241 0 115] 
#[0 8 26 0 4 0 115] 
#[0 8 30 0 4] 
#[0 18 245 0 4] 
#[0 18 249 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 18 253 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 19 1 0 3] 
#[0 8 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 8 38 0 3 0 115] 
#[0 8 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 19 5 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 19 9 0 114 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 13 0 188 19 13 0 189 0 245 0 244 19 13 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 13 1 2 0 245 1 8 19 13 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 8 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 19 17 0 14 19 21 0 115] 
#[0 8 50 0 14 0 115] 
#[0 8 54 0 14 0 115] 
#[1 0 93 0 2 19 25 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 10 117 0 114 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 19 29 0 165 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 10 125 0 188 10 125 0 189 0 245 0 244 10 125 0 252 1 113 0 253 1 117 0 254 1 121 1 1 10 125 1 2 0 245 1 8 10 125 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 4 22 0 4 4 22 0 129 4 22 0 131 19 33 1 71 11 125 1 72] 
#[0 8 58 0 5 0 115] 
#[0 8 62 0 5 0 115] 
#[0 8 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 19 37 0 5 9 41 0 6 9 249 0 26 9 253 0 53 10 1 0 77 10 5 0 97 10 157 0 114 0 185 0 118 8 37 0 119 8 57 0 121 8 61 0 122 10 161 0 134 10 173 0 135 19 41 0 146 10 173 0 147 10 173 0 148 10 173 0 149 19 41 0 150 19 41 1 4 19 41 1 6 19 41 1 11 19 41 1 15 8 57 1 50 8 61 1 51 19 41 1 126 19 41 1 127 10 185 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 45 0 188 19 45 0 189 0 245 0 244 19 45 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 45 1 2 0 245 1 8 19 45 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 49 0 188 19 49 0 189 19 49 0 191 0 245 0 244 19 49 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 49 1 2 0 245 1 8 19 49 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 8 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 8 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 19 53 0 127 19 57 0 128] 
#[0 8 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 19 61 0 7 6 61 0 115] 
#[1 19 65 0 7 6 61 0 115] 
#[0 8 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 8 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 8 90 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 69 0 188 19 69 0 189 0 245 0 244 19 69 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 69 1 2 0 245 1 8 19 69 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 6 0 2 0 6 0 4 8 94 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 185 0 199 0 57 0 200 6 185 0 201 0 65 0 202 0 6 1 203] 
#[0 19 73 0 5] 
#[0 8 98 0 5] 
#[0 8 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[0 19 77 0 129] 
#[0 8 106 0 4 0 129 0 131] 
#[0 8 110 0 4 0 129 0 131] 
#[0 8 114 0 4 0 129 0 131] 
#[0 19 81 0 4] 
#[0 8 118 0 130] 
#[0 19 85 0 130] 
#[1 8 122 0 14 19 89 1 78] 
#[1 8 126 0 4 8 126 0 9 8 126 0 14 8 126 0 23 15 193 0 116 8 126 0 130] 
#[0 8 130 0 4 0 9 0 14 0 23 0 130] 
#[1 19 93 0 9 0 130 0 14 19 97 1 76] 
#[0 8 134 0 4 0 9 0 14 0 130] 
#[1 6 142 0 4 8 138 0 9 8 138 0 14 15 201 0 130 15 229 1 59 19 101 1 64 19 101 1 66 19 101 1 67 15 229 1 68 15 237 1 80] 
#[0 8 142 0 4 0 9 0 14 0 130] 
#[0 8 146 0 4 0 9 0 14 0 130] 
#[1 8 150 0 4 8 150 0 9 8 150 0 14 19 105 0 23 8 150 0 130 19 109 1 69] 
#[0 19 113 0 14] 
#[0 19 117 0 4] 
#[1 8 154 0 4 8 154 0 9 8 154 0 14 15 189 0 22 8 154 0 130] 
#[0 8 158 0 130] 
#[1 13 97 0 116 19 121 1 115] 
#[1 4 169 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 4 173 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 245 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 4 181 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 4 181 0 170 19 125 0 171 19 125 0 172 0 245 0 244 0 245 1 8 0 245 1 13 0 245 1 17 19 125 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 4 189 1 203] 
#[0 19 129 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 19 133 0 250 15 161 0 251 0 6 1 203] 
#[0 19 137 0 3] 
#[0 8 162 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 166 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 141 0 188 19 141 0 189 19 141 0 191 0 245 0 244 19 141 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 141 1 2 0 245 1 8 19 141 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 19 145 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 149 0 188 19 149 0 189 19 149 0 191 0 245 0 244 19 149 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 149 1 2 0 245 1 8 19 149 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 19 153 0 8 6 61 0 115] 
#[1 4 38 0 8 9 101 0 23 8 170 0 80 4 38 0 92 4 38 0 115 12 13 0 151] 
#[1 19 157 0 8 12 21 0 115] 
#[1 4 42 0 8 19 161 0 92 4 42 0 115] 
#[1 9 101 0 23 8 174 0 80 12 25 0 151] 
#[0 19 165 0 80] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 169 0 188 19 169 0 189 19 169 0 191 0 245 0 244 19 169 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 169 1 2 0 245 1 8 19 169 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 173 0 188 19 173 0 189 0 245 0 244 19 173 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 173 1 2 0 245 1 8 19 173 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 19 177 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 181 0 188 19 181 0 189 19 181 0 191 0 245 0 244 19 181 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 181 1 2 0 245 1 8 19 181 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 19 185 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 189 0 188 19 189 0 189 19 189 0 191 0 245 0 244 19 189 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 189 1 2 0 245 1 8 19 189 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 19 193 0 8 6 61 0 115] 
#[1 3 42 0 8 9 101 0 23 8 170 0 80 8 170 0 92 3 42 0 115 9 105 0 151] 
#[1 9 101 0 23 8 174 0 80 8 174 0 92 9 117 0 151] 
#[0 8 178 0 80 0 92] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 197 0 188 19 197 0 189 19 197 0 191 0 245 0 244 19 197 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 197 1 2 0 245 1 8 19 197 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 201 0 188 19 201 0 189 0 245 0 244 19 201 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 201 1 2 0 245 1 8 19 201 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 6 149 0 134 19 205 0 207 6 161 0 208 6 161 0 209 6 161 0 210 6 165 1 203] 
#[0 19 209 0 92] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 16 81 0 134 16 81 0 208 16 81 0 209 16 81 0 210 16 81 0 224] 
#[0 19 221 0 92] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 19 225 0 192 19 225 0 195 19 225 0 196 19 225 0 197 19 225 0 205 19 225 0 219 19 225 0 220 19 225 0 221 19 225 0 222 19 225 0 225 19 225 0 226 19 225 0 228 19 225 0 229 19 225 0 230 19 225 0 235 19 225 0 237 19 225 0 238 19 225 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 8 182 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 19 229 0 4 19 233 0 231] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 19 245 0 134 19 245 0 208 19 245 0 209 19 245 0 210 19 245 0 241] 
#[0 8 186 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 190 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 194 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 198 0 8 0 115] 
#[1 8 202 0 8 9 101 0 23 8 202 0 92 8 202 0 115 19 249 0 151] 
#[1 9 101 0 23 19 253 0 151] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 20 1 0 192 20 1 0 195 20 1 0 196 20 1 0 197 20 1 0 205 20 1 0 219 20 1 0 220 20 1 0 221 20 1 0 222 20 1 0 225 20 1 0 226 20 1 0 228 20 1 0 229 20 1 0 230 20 1 0 235 20 1 0 237 20 1 0 238 20 1 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 20 5 0 192 20 5 0 195 20 5 0 196 20 5 0 197 20 5 0 205 20 5 0 219 20 5 0 220 20 5 0 221 20 5 0 222 20 5 0 225 20 5 0 226 20 5 0 228 20 5 0 229 20 5 0 230 20 5 0 235 20 5 0 237 20 5 0 238 20 5 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 8 206 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 20 9 0 5 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 16 209 0 135 16 209 0 147 16 209 0 148 16 209 0 149 8 57 1 50 8 61 1 51 20 13 1 147 16 217 1 148 16 221 1 149] 
#[0 20 17 0 4] 
#[1 4 241 0 71 20 21 1 23 5 1 1 203] 
#[0 8 210 0 8 0 115] 
#[0 8 214 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 185 0 118 12 81 0 134 20 25 1 186] 
#[0 20 29 0 8] 
#[0 8 218 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 38 0 5 7 13 0 64 7 213 0 70 7 21 0 79 2 133 0 84 2 137 0 88 2 141 0 107 2 253 1 33 2 253 1 124 2 253 1 133 2 253 1 151 2 253 1 157 2 253 1 169 20 33 1 173 2 249 1 174 2 253 1 175 2 253 1 178 2 253 1 180 2 253 1 181 2 253 1 182 2 253 1 183] 
#[1 8 222 0 5 6 205 0 58 20 37 0 60 2 117 0 69 20 41 0 70 6 213 0 76 7 149 0 79 2 133 0 84 20 45 0 86 6 225 0 88 6 229 0 109 20 49 0 201 0 65 0 202 20 53 1 133 20 73 1 146 20 57 1 157 20 61 1 184 20 65 1 187 20 69 1 188 20 73 1 194 20 77 1 195 20 81 1 196 20 85 1 197 20 89 1 198] 
#[0 8 226 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 230 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 8 234 0 5 20 93 0 23 8 234 0 115] 
#[0 20 97 0 5] 
#[1 8 238 0 5 20 101 0 115] 
#[0 8 242 0 5 0 115] 
#[0 8 246 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 8 250 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 237 0 4 3 53 0 11 4 241 0 71 12 61 1 22 20 105 1 23 16 169 1 81 5 1 1 203] 
#[1 20 109 0 2 3 53 0 11 8 65 1 81 16 185 1 116] 
#[0 8 254 0 5 0 64 0 70 0 79 0 84 0 88 0 107 1 204] 
#[0 9 2 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 185 0 118 17 17 0 134 17 21 1 98 17 25 1 158] 
#[0 9 6 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 20 113 0 4] 
#[0 20 117 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 20 121 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 20 125 0 3] 
#[0 2 146 0 8 0 22] 
#[1 9 10 0 8 20 129 0 22] 
#[0 20 133 0 8] 
#[0 20 137 0 2] 
#[0 9 14 0 4] 
#[0 9 18 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 45 0 4 20 141 1 99] 
#[0 9 22 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 189 0 58 2 105 0 59 2 109 0 60 7 13 0 64 2 117 0 69 3 197 0 76 7 149 0 79 2 133 0 84 0 65 0 86 2 137 0 88 2 141 0 107 1 245 0 109 20 145 0 201 0 65 0 202 20 149 0 205 20 153 0 243 20 157 1 7 20 161 1 20 20 165 1 124 20 169 1 133 20 173 1 146 20 177 1 151 20 181 1 157 20 185 1 183 7 77 1 203] 
#[0 9 26 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 30 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 34 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 38 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 42 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 46 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 50 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 54 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 58 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 20 189 0 5] 
#[1 0 93 0 2 0 15 0 4 9 62 0 5 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 2 101 0 58 2 105 0 59 2 109 0 60 1 209 0 62 1 213 0 63 7 13 0 64 0 137 0 66 1 217 0 67 2 117 0 69 17 49 0 70 1 157 0 72 1 221 0 74 2 125 0 76 1 225 0 78 7 113 0 79 2 133 0 84 0 65 0 86 2 137 0 88 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 2 141 0 107 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 20 193 0 192 20 193 0 195 20 193 0 196 20 193 0 197 20 193 0 201 0 65 0 202 20 193 0 205 20 193 0 219 20 193 0 220 20 193 0 221 20 193 0 222 20 193 0 225 20 193 0 226 20 193 0 228 20 193 0 229 20 193 0 230 20 193 0 235 20 193 0 237 20 193 0 238 20 193 0 242 20 193 0 243 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 20 193 1 7 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 20 193 1 20 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 20 193 1 124 20 193 1 133 20 193 1 146 20 193 1 151 20 193 1 155 20 193 1 156 20 193 1 157 20 193 1 183 3 37 1 203] 
#[0 9 66 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 70 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 74 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 78 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 9 82 0 4 0 22] 
#[0 20 197 0 8] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 20 201 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 20 201 1 109 20 201 1 110 3 113 1 111 3 113 1 113] 
#[0 16 241 0 8] 
#[1 5 45 0 2 5 93 0 6 5 97 0 22 0 201 0 125 0 18 0 126 5 105 0 152 0 241 0 153 10 109 0 164 5 61 1 203] 
#[0 20 205 0 3] 
#[0 20 209 0 8] 
#[0 20 213 0 4] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 20 217 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 9 86 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 20 221 0 250 15 161 0 251 0 6 1 203] 
#[1 3 53 0 11 20 225 1 81] 
#[1 4 237 0 4 4 241 0 71 20 229 1 22 4 253 1 23 5 1 1 203] 
#[1 3 53 0 11 0 185 0 118 20 233 0 134 20 237 1 81] 
#[1 4 237 0 4 4 241 0 71 0 185 0 118 20 241 0 134 20 245 1 22 4 253 1 23 5 1 1 203] 
#[0 20 249 0 58] 
#[1 3 41 0 2 7 253 0 4 8 1 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 8 5 0 134 4 101 0 208 4 101 0 209 4 101 0 210 18 73 0 216 18 73 0 217 3 85 1 50 3 89 1 51 3 93 1 81 17 213 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 17 213 1 109 17 213 1 110 3 113 1 111 3 113 1 113 8 17 1 203] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 20 253 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 20 253 1 109 20 253 1 110 3 113 1 111 3 113 1 113] 
#[1 9 90 0 4 9 90 0 5 9 90 0 8 9 90 0 115 13 97 0 116 21 1 1 115] 
#[1 21 5 0 91 21 9 0 99] 
#[0 9 94 0 2 0 5 0 8 0 11 0 23 0 42 0 115 0 116] 
#[0 21 13 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 21 17 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 9 98 0 5 0 8 0 115] 
#[0 9 102 0 5 0 8 0 115] 
#[0 9 106 0 3 0 4 0 5 0 6 0 7 0 8 0 19 0 23 0 61 0 92 0 93 0 94 0 95 0 98 0 115 0 119 0 121 0 122] 
#[0 21 21 0 3] 
#[0 9 110 0 5 0 8 0 115] 
#[0 9 114 0 5 0 8 0 115] 
#[0 9 118 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 9 122 0 7 0 115] 
#[0 9 126 0 14 0 115] 
#[0 9 130 0 14 0 115] 
#[0 21 25 0 19] 
#[0 21 29 0 3] 
#[0 9 134 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 21 33 0 19] 
#[0 9 138 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 9 142 0 5 0 115] 
#[0 9 146 0 8 0 75] 
#[0 9 150 0 5 0 115] 
#[0 21 37 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 21 41 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 21 45 0 2] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 21 49 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 21 53 0 4] 
#[0 21 57 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 21 61 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 21 65 0 3] 
#[0 21 69 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 21 73 0 250 15 161 0 251 0 6 1 203] 
#[0 9 154 0 5 0 115] 
#[0 9 158 0 75] 
#[0 9 162 0 5 0 115] 
#[0 9 166 0 5 0 115] 
#[0 9 170 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 21 77 0 5] 
#[0 9 174 0 5 0 115] 
#[0 9 178 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 9 182 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[1 4 37 0 4 4 41 0 6 21 81 0 7 4 89 0 114 9 209 0 115 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 14 49 0 216 14 49 0 217 21 85 0 218 8 17 1 203] 
#[0 9 186 0 7 0 115] 
#[0 21 89 0 7] 
#[0 9 190 0 8 0 115] 
#[0 9 194 0 8 0 115] 
#[0 9 198 0 3 0 5 0 7 0 115] 
#[1 9 202 0 3 9 202 0 5 9 202 0 7 9 202 0 115 13 97 0 116 21 93 1 115] 
#[1 9 206 0 3 9 206 0 5 9 206 0 7 9 101 0 23 9 206 0 115 21 97 0 151] 
#[1 9 210 0 3 9 210 0 5 9 210 0 7 9 101 0 23 21 101 0 42 9 210 0 115 13 97 0 116 21 105 0 151 21 109 1 115] 
#[0 9 214 0 3 0 5 0 7 0 115] 
#[0 9 218 0 3 0 5 0 7 0 115] 
#[1 9 222 0 3 9 222 0 5 9 222 0 7 9 101 0 23 9 222 0 115 21 113 0 151] 
#[0 21 117 0 4] 
#[0 21 121 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 21 125 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 21 129 0 3] 
#[0 9 226 0 5] 
#[0 21 133 0 5] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 21 137 0 245 4 121 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 21 141 0 2] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 21 145 0 245 4 121 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 21 149 0 3] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 21 157 0 216 21 157 0 217 21 157 0 249 21 157 1 5 8 17 1 203] 
#[0 21 161 0 3] 
#[0 21 165 0 2] 
#[0 21 169 0 2] 
#[0 21 173 0 4] 
#[0 21 177 0 2] 
#[1 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 21 181 0 135 21 181 0 147 21 181 0 148 21 181 0 149 8 57 1 50 8 61 1 51 21 185 1 126 21 189 1 127 18 229 1 203] 
#[1 8 21 0 2 21 193 0 8 3 53 0 11 9 101 0 23 13 97 0 116 21 197 0 151 8 65 1 81 21 201 1 115 21 205 1 116] 
#[1 9 41 0 6 21 209 0 61 21 213 0 98 8 37 0 119 8 57 0 121 8 61 0 122 21 217 0 135 21 217 0 147 21 217 0 148 21 217 0 149 8 57 1 50 8 61 1 51 21 221 1 126 21 225 1 127 18 229 1 203] 
#[0 9 230 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 9 234 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 14 213 0 77 14 217 0 97] 
#[0 9 238 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 9 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 80 0 83 0 84 0 86 0 88 0 89 0 90 0 92 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 115 0 116 0 118 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 202 1 203 1 204] 
#[1 0 185 0 118 3 81 0 134 21 229 1 96 3 133 1 97 3 137 1 98 21 229 1 136] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 21 233 0 250 15 161 0 251 0 6 1 203] 
#[0 21 237 0 4] 
#[0 21 241 0 3] 
#[0 21 245 0 4] 
#[0 9 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 21 249 0 188 21 249 0 189 0 245 0 244 21 249 0 252 1 113 0 253 1 117 0 254 1 121 1 1 21 249 1 2 0 245 1 8 21 249 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 9 250 0 3 0 115] 
#[0 9 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 82 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 21 253 1 87 21 253 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 21 253 1 109 21 253 1 110 3 113 1 111 3 113 1 113] 
#[0 10 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 22 1 0 3 22 5 0 115] 
#[0 22 9 0 129] 
#[0 10 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 10 0 5 0 115] 
#[0 10 14 0 5 0 115] 
#[1 6 61 0 115 10 18 0 127 10 18 0 128] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 13 0 188 22 13 0 189 22 13 0 191 0 245 0 244 22 13 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 13 1 2 0 245 1 8 22 13 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 10 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 10 34 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 10 38 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 22 17 0 9] 
#[1 0 93 0 2 0 14 0 4 0 130 0 5 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 4 145 0 114 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 22 29 0 142 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 29 0 188 22 29 0 189 0 245 0 244 22 29 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 29 1 2 0 245 1 8 22 29 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 22 29 1 74 1 189 1 75 22 33 1 76 1 193 1 203] 
#[0 10 42 0 4 0 9 0 14 0 23 0 130] 
#[0 22 37 0 14] 
#[1 8 122 0 14 22 41 1 78] 
#[0 22 45 0 14] 
#[0 10 46 0 4 0 9 0 14 0 130] 
#[1 6 142 0 4 22 49 0 121 0 11 0 129 22 49 1 50 22 61 1 53 22 61 1 54 1 181 1 55 22 61 1 57 22 61 1 70 1 189 1 75 22 65 1 80] 
#[0 10 50 0 4 0 9 0 14 0 130] 
#[0 10 54 0 4 0 129 0 131] 
#[1 4 145 0 114 22 69 0 142] 
#[0 10 58 0 4 0 19] 
#[0 10 62 0 3 0 5 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 20 0 21 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 80 0 83 0 92 0 115 0 116 0 127 0 128 1 204] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 22 73 0 250 15 161 0 251 0 6 1 203] 
#[0 22 77 0 5] 
#[1 10 66 0 4 10 66 0 19 13 97 0 116 22 81 1 115] 
#[1 22 85 0 3 6 61 0 115] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 22 89 0 192 22 89 0 195 22 89 0 196 22 89 0 197 22 89 0 205 22 89 0 219 22 89 0 220 22 89 0 221 22 89 0 222 22 89 0 225 22 89 0 226 22 89 0 228 22 89 0 229 22 89 0 230 22 89 0 235 22 89 0 237 22 89 0 238 22 89 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 22 93 0 3 6 61 0 115] 
#[1 0 93 0 2 22 97 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 101 0 188 22 101 0 189 22 101 0 191 0 245 0 244 22 101 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 101 1 2 0 245 1 8 22 101 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 22 105 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 109 0 188 22 109 0 189 22 109 0 191 0 245 0 244 22 109 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 109 1 2 0 245 1 8 22 109 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 113 0 188 22 113 0 189 0 245 0 244 22 113 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 113 1 2 0 245 1 8 22 113 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 117 0 188 22 117 0 189 22 117 0 191 0 245 0 244 22 117 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 117 1 2 0 245 1 8 22 117 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 22 121 0 3 6 61 0 115] 
#[0 22 125 0 3] 
#[1 0 93 0 2 22 129 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 133 0 188 22 133 0 189 22 133 0 191 0 245 0 244 22 133 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 133 1 2 0 245 1 8 22 133 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 22 137 0 8 6 61 0 115] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 22 141 0 192 22 141 0 195 22 141 0 196 22 141 0 197 22 141 0 205 22 141 0 219 22 141 0 220 22 141 0 221 22 141 0 222 22 141 0 225 22 141 0 226 22 141 0 228 22 141 0 229 22 141 0 230 22 141 0 235 22 141 0 237 22 141 0 238 22 141 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 22 145 0 3 6 61 0 115] 
#[1 0 93 0 2 22 149 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 153 0 188 22 153 0 189 22 153 0 191 0 245 0 244 22 153 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 153 1 2 0 245 1 8 22 153 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 22 157 0 3 6 61 0 115] 
#[0 22 161 0 3] 
#[0 22 165 0 92] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 169 0 188 22 169 0 189 0 245 0 244 22 169 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 169 1 2 0 245 1 8 22 169 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 8 170 0 92] 
#[0 8 174 0 92] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 22 173 0 188 22 173 0 189 0 245 0 244 22 173 0 252 1 113 0 253 1 117 0 254 1 121 1 1 22 173 1 2 0 245 1 8 22 173 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 10 70 0 2 10 70 0 4 10 70 0 5 10 70 0 6 10 70 0 8 10 70 0 35 10 70 0 36 10 70 0 37 10 70 0 38 10 70 0 39 10 70 0 49 10 70 0 53 10 70 0 54 10 70 0 55 10 70 0 56 10 70 0 58 10 70 0 59 10 70 0 60 10 70 0 62 10 70 0 63 10 70 0 64 10 70 0 65 10 70 0 66 10 70 0 67 22 177 0 68 10 70 0 69 10 70 0 70 10 70 0 72 10 70 0 74 10 70 0 76 10 70 0 78 10 70 0 79 10 70 0 84 10 70 0 86 10 70 0 88 10 70 0 89 10 70 0 90 10 70 0 96 10 70 0 100 10 70 0 101 10 70 0 103 10 70 0 104 10 70 0 105 10 70 0 106 10 70 0 107 10 70 0 108 10 70 0 109 10 70 0 110 10 70 0 111 10 70 0 112 10 70 0 113 10 70 0 118 10 70 0 121 10 70 0 122 10 70 0 123 10 70 0 125 10 70 0 126 10 70 0 129 10 70 1 203 10 70 1 204] 
#[1 22 181 0 5 22 185 0 56 22 189 0 65 22 193 0 232 22 197 0 233 22 201 0 234] 
#[0 10 74 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 78 0 3] 
#[0 10 82 0 3] 
#[0 22 205 0 3] 
#[0 10 86 0 8 0 92 0 115] 
#[0 10 90 0 8 0 92 0 115] 
#[0 10 94 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 98 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 102 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 22 209 0 5] 
#[1 10 106 0 5 8 29 0 6 22 213 0 61 22 225 0 93 22 225 0 94 22 225 0 95 22 217 0 98 8 37 0 119 8 57 0 121 8 61 0 122 22 221 0 135 22 221 0 147 22 221 0 148 22 221 0 149 8 57 1 50 8 61 1 51 22 225 1 119 22 241 1 122 22 233 1 189 22 237 1 190 22 241 1 191 22 241 1 192 22 241 1 193] 
#[0 22 253 0 4] 
#[0 10 110 0 8 0 115] 
#[0 10 114 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 23 1 0 5] 
#[1 0 46 0 4 0 46 0 6 6 201 0 69 0 227 0 118 12 81 0 134 12 85 1 185 12 89 1 186 0 46 1 203] 
#[1 6 205 0 58 20 37 0 60 2 117 0 69 6 213 0 76 7 149 0 79 2 133 0 84 20 45 0 86 6 225 0 88 6 229 0 109 23 5 0 201 0 65 0 202 23 9 1 133 23 29 1 146 23 13 1 157 23 17 1 184 23 21 1 187 23 25 1 188 23 29 1 194 23 33 1 195] 
#[1 0 50 0 4 0 50 0 6 0 231 0 118 12 81 0 134 12 97 1 185 12 89 1 186 0 50 1 203] 
#[0 10 118 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 122 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 126 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 130 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 134 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 138 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 142 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 10 146 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 23 37 0 5] 
#[1 10 150 0 5 6 205 0 58 20 37 0 60 2 117 0 69 20 41 0 70 6 213 0 76 7 149 0 79 2 133 0 84 20 45 0 86 6 225 0 88 6 229 0 109 20 49 0 201 0 65 0 202 20 53 1 133 20 73 1 146 20 57 1 157 20 61 1 184 20 65 1 187 20 69 1 188 20 73 1 194 20 77 1 195 23 41 1 198] 
#[0 10 154 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 23 49 0 188 23 49 0 189 0 245 0 244 23 49 0 252 1 113 0 253 1 117 0 254 1 121 1 1 23 49 1 2 0 245 1 8 23 49 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 23 49 1 150 1 193 1 203] 
#[0 10 158 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 10 162 0 5 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 16 209 0 135 16 209 0 147 16 209 0 148 16 209 0 149 8 57 1 50 8 61 1 51 23 53 1 149] 
#[0 23 57 0 4] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 23 61 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 23 65 0 250 15 161 0 251 0 6 1 203] 
#[0 23 69 0 4] 
#[0 23 73 0 3] 
#[0 23 77 0 4] 
#[1 0 185 0 118 23 81 0 134] 
#[0 10 166 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 23 85 0 121 1 50] 
#[0 10 170 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 174 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 178 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 182 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 186 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 190 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 194 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 198 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 202 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 206 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 210 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 214 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 218 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 10 222 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203] 
#[0 10 226 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 23 89 0 8] 
#[1 9 90 0 8 13 97 0 116 23 93 1 115] 
#[0 10 230 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 23 97 0 250 15 161 0 251 0 6 1 203] 
#[0 23 101 0 3] 
#[0 23 105 0 5] 
#[1 4 237 0 4 4 241 0 71 23 109 1 22 4 253 1 23 5 1 1 203] 
#[0 10 234 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 3 53 0 11 23 113 1 81] 
#[1 4 237 0 4 4 241 0 71 23 117 1 22 4 253 1 23 5 1 1 203] 
#[1 4 237 0 4 4 241 0 71 23 121 1 22 4 253 1 23 5 1 1 203] 
#[0 10 238 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 237 0 4 4 241 0 71 0 185 0 118 23 125 0 134 23 129 1 22 4 253 1 23 5 1 1 203] 
#[0 10 242 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 10 246 0 4 0 5 0 8 0 115] 
#[0 23 133 0 7] 
#[0 23 137 0 7] 
#[1 10 250 0 5 10 250 0 8 10 250 0 115 13 97 0 116 23 141 1 115] 
#[0 23 145 0 3] 
#[1 10 254 0 4 10 254 0 5 10 254 0 8 10 254 0 115 13 97 0 116 23 149 1 115] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 23 153 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 23 153 1 109 23 153 1 110 3 113 1 111 3 113 1 113] 
#[0 23 157 0 19] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 23 161 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 23 161 1 109 23 161 1 110 3 113 1 111 3 113 1 113] 
#[0 23 165 0 4] 
#[0 23 169 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 23 173 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 23 177 0 3] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 23 181 0 250 15 161 0 251 0 6 1 203] 
#[0 23 185 0 4] 
#[0 23 189 0 3] 
#[0 23 193 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 23 197 0 250 15 161 0 251 0 6 1 203] 
#[0 23 201 0 5] 
#[0 11 2 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 11 6 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 23 205 0 7] 
#[0 11 10 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 11 14 0 3 0 5 0 7 0 115] 
#[0 11 18 0 3 0 5 0 7 0 115] 
#[1 11 22 0 3 11 22 0 5 11 22 0 7 11 22 0 115 13 97 0 116 23 209 1 115] 
#[0 11 26 0 3 0 5 0 7 0 115] 
#[1 11 30 0 3 11 30 0 5 11 30 0 7 9 101 0 23 11 30 0 115 23 213 0 151] 
#[0 11 34 0 3 0 5 0 7 0 115] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 18 161 0 250 15 161 0 251 23 217 1 18 0 6 1 203] 
#[0 23 221 0 4] 
#[0 23 225 0 3] 
#[0 23 229 0 4] 
#[0 11 38 0 3 0 5 0 7 0 8 0 92 0 115 0 116 0 127 0 128 1 204] 
#[0 23 233 0 3] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 23 237 0 245 4 121 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[0 23 241 0 3] 
#[0 23 245 0 4] 
#[0 11 42 0 3] 
#[0 23 249 0 3] 
#[0 23 253 0 4] 
#[0 24 1 0 3] 
#[1 4 37 0 4 4 41 0 6 0 185 0 118 24 5 0 134 24 9 0 208 24 9 0 209 24 9 0 210 24 13 0 216 24 13 0 217 24 13 0 249 24 13 1 5 24 17 1 120 24 21 1 128 8 17 1 203] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 25 0 250 15 161 0 251 0 6 1 203] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 24 29 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 8 21 0 2 24 33 0 8 3 53 0 11 9 101 0 23 13 97 0 116 24 37 0 151 8 65 1 81 24 41 1 115 24 45 1 116] 
#[0 11 46 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 11 50 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 11 54 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 24 49 0 8] 
#[1 24 53 0 8 9 101 0 23 24 57 0 151] 
#[1 24 61 0 4 24 65 0 8] 
#[0 24 69 0 2] 
#[1 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 24 73 0 135 24 73 0 147 24 73 0 148 24 73 0 149 8 57 1 50 8 61 1 51 24 77 1 126 24 81 1 127 18 229 1 203] 
#[1 8 21 0 2 24 85 0 8 3 53 0 11 9 101 0 23 13 97 0 116 24 89 0 151 8 65 1 81 24 93 1 115 24 97 1 116] 
#[0 11 58 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 11 62 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 11 66 0 4 0 115] 
#[0 24 101 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 105 0 250 15 161 0 251 24 109 1 9 0 6 1 203] 
#[0 24 113 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 117 0 250 15 161 0 251 0 6 1 203] 
#[0 11 70 0 3 0 115] 
#[0 11 74 0 14 0 115] 
#[0 11 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 58 0 59 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 103 0 115 0 116 0 118 0 119 0 121 0 122 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 19 9 0 114 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 19 13 0 188 19 13 0 189 0 245 0 244 19 13 0 252 1 113 0 253 1 117 0 254 1 121 1 1 19 13 1 2 0 245 1 8 19 13 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 24 121 0 9] 
#[1 6 61 0 115 11 82 0 127 11 82 0 128] 
#[1 11 129 0 130 24 125 1 58 24 125 1 59 24 125 1 60 11 145 1 61 11 149 1 62] 
#[0 11 86 0 5] 
#[0 11 90 0 5] 
#[1 0 130 0 5 24 129 1 76] 
#[0 24 133 0 5] 
#[0 11 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[0 24 137 0 14] 
#[0 11 98 0 4 0 129 0 131] 
#[0 11 102 0 4 0 9 0 14 0 130] 
#[0 11 106 0 4 0 9 0 14 0 130] 
#[0 11 110 0 4 0 9 0 14 0 130] 
#[0 11 114 0 4 0 9 0 14 0 130] 
#[0 24 141 0 4] 
#[1 0 22 0 5 24 145 1 75] 
#[0 24 149 0 5] 
#[0 11 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 11 122 0 4 0 19] 
#[0 24 153 0 8] 
#[0 11 126 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 157 0 192 24 157 0 195 24 157 0 196 24 157 0 197 24 157 0 205 24 157 0 219 24 157 0 220 24 157 0 221 24 157 0 222 24 157 0 225 24 157 0 226 24 157 0 228 24 157 0 229 24 157 0 230 24 157 0 235 24 157 0 237 24 157 0 238 24 157 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 161 0 192 24 161 0 195 24 161 0 196 24 161 0 197 24 161 0 205 24 161 0 219 24 161 0 220 24 161 0 221 24 161 0 222 24 161 0 225 24 161 0 226 24 161 0 228 24 161 0 229 24 161 0 230 24 161 0 235 24 161 0 237 24 161 0 238 24 161 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 24 165 0 3 6 61 0 115] 
#[1 0 93 0 2 24 169 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 24 173 0 188 24 173 0 189 24 173 0 191 0 245 0 244 24 173 0 252 1 113 0 253 1 117 0 254 1 121 1 1 24 173 1 2 0 245 1 8 24 173 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 24 177 0 8 6 61 0 115] 
#[0 24 181 0 3] 
#[1 24 185 0 3 6 61 0 115] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 189 0 192 24 189 0 195 24 189 0 196 24 189 0 197 24 189 0 205 24 189 0 219 24 189 0 220 24 189 0 221 24 189 0 222 24 189 0 225 24 189 0 226 24 189 0 228 24 189 0 229 24 189 0 230 24 189 0 235 24 189 0 237 24 189 0 238 24 189 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 193 0 192 24 193 0 195 24 193 0 196 24 193 0 197 24 193 0 205 24 193 0 219 24 193 0 220 24 193 0 221 24 193 0 222 24 193 0 225 24 193 0 226 24 193 0 228 24 193 0 229 24 193 0 230 24 193 0 235 24 193 0 237 24 193 0 238 24 193 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 197 0 192 24 197 0 195 24 197 0 196 24 197 0 197 24 197 0 205 24 197 0 219 24 197 0 220 24 197 0 221 24 197 0 222 24 197 0 225 24 197 0 226 24 197 0 228 24 197 0 229 24 197 0 230 24 197 0 235 24 197 0 237 24 197 0 238 24 197 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 24 201 0 3 6 61 0 115] 
#[1 0 93 0 2 24 205 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 24 209 0 188 24 209 0 189 24 209 0 191 0 245 0 244 24 209 0 252 1 113 0 253 1 117 0 254 1 121 1 1 24 209 1 2 0 245 1 8 24 209 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 11 130 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 213 0 192 24 213 0 195 24 213 0 196 24 213 0 197 24 213 0 205 24 213 0 219 24 213 0 220 24 213 0 221 24 213 0 222 24 213 0 225 24 213 0 226 24 213 0 228 24 213 0 229 24 213 0 230 24 213 0 235 24 213 0 237 24 213 0 238 24 213 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 217 0 192 24 217 0 195 24 217 0 196 24 217 0 197 24 217 0 205 24 217 0 219 24 217 0 220 24 217 0 221 24 217 0 222 24 217 0 225 24 217 0 226 24 217 0 228 24 217 0 229 24 217 0 230 24 217 0 235 24 217 0 237 24 217 0 238 24 217 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 24 221 0 3 6 61 0 115] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 225 0 192 24 225 0 195 24 225 0 196 24 225 0 197 24 225 0 205 24 225 0 219 24 225 0 220 24 225 0 221 24 225 0 222 24 225 0 225 24 225 0 226 24 225 0 228 24 225 0 229 24 225 0 230 24 225 0 235 24 225 0 237 24 225 0 238 24 225 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 229 0 192 24 229 0 195 24 229 0 196 24 229 0 197 24 229 0 205 24 229 0 219 24 229 0 220 24 229 0 221 24 229 0 222 24 229 0 225 24 229 0 226 24 229 0 228 24 229 0 229 24 229 0 230 24 229 0 235 24 229 0 237 24 229 0 238 24 229 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 24 233 0 188 24 233 0 189 0 245 0 244 24 233 0 252 1 113 0 253 1 117 0 254 1 121 1 1 24 233 1 2 0 245 1 8 24 233 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 24 237 0 3] 
#[0 24 241 0 3] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 24 245 0 192 24 245 0 195 24 245 0 196 24 245 0 197 24 245 0 205 24 245 0 219 24 245 0 220 24 245 0 221 24 245 0 222 24 245 0 225 24 245 0 226 24 245 0 228 24 245 0 229 24 245 0 230 24 245 0 235 24 245 0 237 24 245 0 238 24 245 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 11 134 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 24 249 0 188 24 249 0 189 24 249 0 191 0 245 0 244 24 249 0 252 1 113 0 253 1 117 0 254 1 121 1 1 24 249 1 2 0 245 1 8 24 249 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 24 253 0 116] 
#[1 25 1 0 5 22 185 0 56 22 189 0 65 25 5 0 233 25 9 0 234] 
#[0 11 138 0 5 0 56 0 65] 
#[1 25 13 0 5 22 185 0 56 25 17 0 232 22 197 0 233] 
#[1 1 197 0 4 25 21 0 197] 
#[0 11 142 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 25 25 0 2] 
#[1 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 25 29 0 135 25 29 0 147 25 29 0 148 25 29 0 149 8 57 1 50 8 61 1 51] 
#[1 8 21 0 2 25 33 0 8 3 53 0 11 13 97 0 116 8 65 1 81 25 37 1 115 25 41 1 116] 
#[1 9 41 0 6 25 45 0 98 8 37 0 119 8 57 0 121 8 61 0 122 25 49 0 135 25 49 0 147 25 49 0 148 25 49 0 149 8 57 1 50 8 61 1 51] 
#[0 11 146 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 25 53 0 5] 
#[1 11 150 0 5 8 29 0 6 22 213 0 61 22 225 0 93 22 225 0 94 22 225 0 95 22 217 0 98 8 37 0 119 8 57 0 121 8 61 0 122 22 221 0 135 22 221 0 147 22 221 0 148 22 221 0 149 8 57 1 50 8 61 1 51 22 225 1 119 25 57 1 122 25 57 1 191 25 57 1 192 25 57 1 193] 
#[0 11 154 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 11 158 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 11 162 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[1 10 106 0 5 8 29 0 6 22 213 0 61 22 225 0 93 22 225 0 94 22 225 0 95 22 217 0 98 8 37 0 119 8 57 0 121 8 61 0 122 22 221 0 135 22 221 0 147 22 221 0 148 22 221 0 149 8 57 1 50 8 61 1 51 22 225 1 119 22 241 1 122 25 61 1 189 22 237 1 190 22 241 1 191 22 241 1 192 22 241 1 193] 
#[0 11 166 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 11 170 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 174 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 178 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 182 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 186 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 190 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 194 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 198 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 202 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 11 206 0 5 0 58 0 60 0 69 0 70 0 76 0 79 0 84 0 86 0 88 0 109] 
#[0 11 210 0 5 0 115] 
#[0 11 214 0 5 0 115] 
#[0 11 218 0 5 0 115] 
#[1 0 235 0 5 8 29 0 6 9 245 0 8 9 249 0 26 9 253 0 53 22 213 0 61 10 1 0 77 22 225 0 93 22 225 0 94 22 225 0 95 10 5 0 97 25 65 0 98 8 37 0 119 8 57 0 121 8 61 0 122 25 69 0 135 25 69 0 147 25 69 0 148 25 69 0 149 10 41 1 4 10 41 1 6 10 41 1 11 10 41 1 15 15 5 1 24 10 37 1 25 10 41 1 26 8 57 1 50 8 61 1 51 22 225 1 119 22 241 1 122 10 41 1 126 10 41 1 127 22 233 1 189 22 237 1 190 22 241 1 191 22 241 1 192 22 241 1 193 10 53 1 203] 
#[0 25 73 0 3] 
#[0 25 77 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 105 0 250 15 161 0 251 25 81 1 9 0 6 1 203] 
#[0 25 85 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 89 0 250 15 161 0 251 0 6 1 203] 
#[0 7 82 0 8 0 22] 
#[0 25 93 0 3] 
#[0 11 222 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 10 58 0 4 10 246 0 8] 
#[0 25 97 0 5] 
#[1 10 66 0 4 10 254 0 8 13 97 0 116 25 101 1 115] 
#[1 0 239 0 2 11 226 0 4 11 226 0 5 0 239 0 6 0 239 0 8 11 118 0 9 11 118 0 10 11 118 0 11 11 118 0 12 11 118 0 13 11 118 0 14 11 118 0 15 11 118 0 16 11 118 0 17 11 118 0 18 11 118 0 20 11 118 0 21 11 118 0 22 11 118 0 23 11 118 0 24 11 118 0 25 11 118 0 26 11 118 0 27 11 118 0 28 11 118 0 29 11 118 0 30 11 118 0 31 11 118 0 32 11 118 0 33 11 118 0 34 0 239 0 35 0 239 0 36 0 239 0 37 0 239 0 38 11 226 0 39 11 118 0 40 11 118 0 41 11 118 0 42 11 118 0 43 11 118 0 44 11 118 0 45 11 118 0 46 11 118 0 47 11 118 0 48 11 226 0 49 11 118 0 50 11 118 0 51 11 118 0 52 11 226 0 53 11 226 0 54 11 226 0 55 11 226 0 58 11 226 0 59 11 226 0 60 11 226 0 62 11 226 0 63 11 226 0 64 11 226 0 66 11 226 0 67 11 226 0 69 11 226 0 70 11 226 0 72 11 226 0 74 11 226 0 76 11 226 0 78 11 226 0 79 11 118 0 80 11 118 0 83 11 226 0 84 11 226 0 86 11 226 0 88 11 226 0 89 11 226 0 90 11 226 0 96 11 226 0 100 11 226 0 101 11 226 0 103 11 226 0 104 11 226 0 105 11 226 0 106 11 226 0 107 11 226 0 108 11 226 0 109 11 226 0 110 11 226 0 111 11 226 0 112 11 226 0 113 11 118 0 115 11 226 0 118 11 226 0 121 11 226 0 122 11 226 0 123 0 239 0 125 0 239 0 126 11 226 0 129 11 118 1 202 0 239 1 203 11 226 1 204] 
#[0 11 230 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 237 0 4 4 241 0 71 25 105 1 22 4 253 1 23 5 1 1 203] 
#[0 11 234 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 11 238 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 4 237 0 4 4 241 0 71 25 109 1 22 4 253 1 23 5 1 1 203] 
#[0 11 242 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 13 97 0 116 25 113 1 115] 
#[1 13 97 0 116 25 117 1 115] 
#[0 11 246 0 5 0 8 0 115] 
#[1 11 250 0 5 11 250 0 8 11 250 0 115 13 97 0 116 25 121 1 115] 
#[0 11 254 0 4 0 5 0 8 0 115] 
#[0 12 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 3 41 0 2 3 45 0 4 3 49 0 6 3 53 0 11 3 57 0 81 3 61 0 85 3 65 0 89 3 69 0 103 3 73 0 108 3 77 0 110 0 185 0 118 3 85 0 121 3 89 0 122 3 81 0 134 3 85 1 50 3 89 1 51 3 93 1 81 25 125 1 88 3 101 1 89 3 105 1 90 3 105 1 91 3 113 1 92 3 113 1 93 3 113 1 94 3 113 1 95 3 113 1 96 3 133 1 97 3 137 1 98 3 113 1 99 3 113 1 103 3 113 1 104 3 101 1 107 3 105 1 108 25 125 1 109 25 125 1 110 3 113 1 111 3 113 1 113] 
#[0 12 6 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 18 161 0 250 15 161 0 251 25 129 1 18 0 6 1 203] 
#[0 25 133 0 4] 
#[0 25 137 0 3] 
#[0 25 141 0 4] 
#[0 25 145 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 105 0 250 15 161 0 251 25 149 1 9 0 6 1 203] 
#[0 25 153 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 157 0 250 15 161 0 251 0 6 1 203] 
#[0 25 161 0 5] 
#[0 11 226 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 10 0 3 0 5 0 7 0 23 0 42 0 80 0 92 0 115 0 116] 
#[0 12 14 0 3 0 5 0 7 0 115] 
#[0 12 18 0 3 0 5 0 7 0 115] 
#[0 25 165 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 169 0 250 15 161 0 251 25 173 1 14 0 6 1 203] 
#[0 25 177 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 18 161 0 250 15 161 0 251 25 181 1 18 0 6 1 203] 
#[0 25 185 0 4] 
#[0 25 189 0 3] 
#[0 25 193 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 197 0 250 15 161 0 251 0 6 1 203] 
#[0 25 201 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 205 0 250 15 161 0 251 0 6 1 203] 
#[1 13 97 0 116 25 209 1 115] 
#[1 3 70 0 3 9 101 0 23 12 22 0 116 9 149 0 151] 
#[1 3 74 0 3 9 101 0 23 12 26 0 116 9 157 0 151] 
#[0 25 213 0 3] 
#[1 13 97 0 116 25 217 1 115] 
#[0 25 221 0 3] 
#[0 25 225 0 5] 
#[0 25 229 0 3] 
#[0 12 30 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 25 233 0 8] 
#[1 25 237 0 8 9 101 0 23 25 241 0 151] 
#[1 25 245 0 4 25 249 0 8] 
#[0 12 34 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 38 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 25 253 0 8] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 26 1 0 250 15 161 0 251 0 6 1 203] 
#[0 12 42 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 26 5 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 8 21 0 2 26 9 0 8 3 53 0 11 9 101 0 23 13 97 0 116 26 13 0 151 8 65 1 81 26 17 1 115 26 21 1 116] 
#[0 12 46 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 50 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 54 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 26 25 0 8] 
#[1 26 29 0 8 9 101 0 23 26 33 0 151] 
#[1 26 37 0 4 26 41 0 8] 
#[0 12 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 12 62 0 5] 
#[0 26 45 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 105 0 250 15 161 0 251 26 49 1 9 0 6 1 203] 
#[0 26 53 0 5] 
#[1 12 66 0 14 26 57 1 79] 
#[1 12 66 0 14 26 61 1 79] 
#[0 26 65 0 5] 
#[0 12 70 0 4 0 129 0 131] 
#[0 12 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[1 0 93 0 2 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 26 69 0 188 26 69 0 189 0 245 0 244 26 69 0 252 1 113 0 253 1 117 0 254 1 121 1 1 26 69 1 2 0 245 1 8 26 69 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 26 73 0 5] 
#[0 12 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 12 82 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 86 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 90 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 77 0 192 26 77 0 195 26 77 0 196 26 77 0 197 26 77 0 205 26 77 0 219 26 77 0 220 26 77 0 221 26 77 0 222 26 77 0 225 26 77 0 226 26 77 0 228 26 77 0 229 26 77 0 230 26 77 0 235 26 77 0 237 26 77 0 238 26 77 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 81 0 192 26 81 0 195 26 81 0 196 26 81 0 197 26 81 0 205 26 81 0 219 26 81 0 220 26 81 0 221 26 81 0 222 26 81 0 225 26 81 0 226 26 81 0 228 26 81 0 229 26 81 0 230 26 81 0 235 26 81 0 237 26 81 0 238 26 81 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 26 85 0 3 6 61 0 115] 
#[1 0 93 0 2 26 89 0 3 0 14 0 4 0 97 0 6 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 0 133 0 58 0 137 0 66 1 157 0 72 0 145 0 76 0 149 0 79 0 153 0 89 1 153 0 90 0 161 0 100 0 165 0 103 1 157 0 105 0 173 0 108 0 177 0 110 0 181 0 113 0 185 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 26 93 0 188 26 93 0 189 26 93 0 191 0 245 0 244 26 93 0 252 1 113 0 253 1 117 0 254 1 121 1 1 26 93 1 2 0 245 1 8 26 93 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 97 0 192 26 97 0 195 26 97 0 196 26 97 0 197 26 97 0 205 26 97 0 219 26 97 0 220 26 97 0 221 26 97 0 222 26 97 0 225 26 97 0 226 26 97 0 228 26 97 0 229 26 97 0 230 26 97 0 235 26 97 0 237 26 97 0 238 26 97 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 101 0 192 26 101 0 195 26 101 0 196 26 101 0 197 26 101 0 205 26 101 0 219 26 101 0 220 26 101 0 221 26 101 0 222 26 101 0 225 26 101 0 226 26 101 0 228 26 101 0 229 26 101 0 230 26 101 0 235 26 101 0 237 26 101 0 238 26 101 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 12 94 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 98 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 102 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 105 0 192 26 105 0 195 26 105 0 196 26 105 0 197 26 105 0 205 26 105 0 219 26 105 0 220 26 105 0 221 26 105 0 222 26 105 0 225 26 105 0 226 26 105 0 228 26 105 0 229 26 105 0 230 26 105 0 235 26 105 0 237 26 105 0 238 26 105 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 109 0 192 26 109 0 195 26 109 0 196 26 109 0 197 26 109 0 205 26 109 0 219 26 109 0 220 26 109 0 221 26 109 0 222 26 109 0 225 26 109 0 226 26 109 0 228 26 109 0 229 26 109 0 230 26 109 0 235 26 109 0 237 26 109 0 238 26 109 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 26 113 0 3 6 61 0 115] 
#[0 12 106 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 110 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 117 0 192 26 117 0 195 26 117 0 196 26 117 0 197 26 117 0 205 26 117 0 219 26 117 0 220 26 117 0 221 26 117 0 222 26 117 0 225 26 117 0 226 26 117 0 228 26 117 0 229 26 117 0 230 26 117 0 235 26 117 0 237 26 117 0 238 26 117 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 12 114 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 118 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 26 121 0 3] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 125 0 192 26 125 0 195 26 125 0 196 26 125 0 197 26 125 0 205 26 125 0 219 26 125 0 220 26 125 0 221 26 125 0 222 26 125 0 225 26 125 0 226 26 125 0 228 26 125 0 229 26 125 0 230 26 125 0 235 26 125 0 237 26 125 0 238 26 125 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 26 129 0 192 26 129 0 195 26 129 0 196 26 129 0 197 26 129 0 205 26 129 0 219 26 129 0 220 26 129 0 221 26 129 0 222 26 129 0 225 26 129 0 226 26 129 0 228 26 129 0 229 26 129 0 230 26 129 0 235 26 129 0 237 26 129 0 238 26 129 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 12 122 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 6 61 0 115 26 133 0 116] 
#[1 0 6 0 2 0 6 0 4 12 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 12 126 0 56 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 26 137 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 0 6 1 203] 
#[0 12 130 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 134 0 5 0 56 0 65] 
#[1 26 141 0 5 22 185 0 56 26 145 0 232 22 197 0 233] 
#[0 12 138 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 26 149 0 5 22 185 0 56 25 5 0 233] 
#[0 12 142 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 26 153 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 8 21 0 2 26 157 0 8 3 53 0 11 13 97 0 116 8 65 1 81 26 161 1 115 26 165 1 116] 
#[0 12 146 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 26 169 0 8] 
#[0 26 173 0 8] 
#[1 9 41 0 6 8 37 0 119 8 57 0 121 8 61 0 122 26 177 0 135 26 177 0 147 26 177 0 148 26 177 0 149 8 57 1 50 8 61 1 51] 
#[1 8 21 0 2 26 181 0 8 3 53 0 11 13 97 0 116 8 65 1 81 26 185 1 115 26 189 1 116] 
#[0 12 150 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 154 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 26 193 0 5] 
#[1 9 41 0 6 9 249 0 26 9 253 0 53 10 1 0 77 10 5 0 97 8 37 0 119 8 57 0 121 8 61 0 122 26 197 0 135 26 197 0 147 26 197 0 148 26 197 0 149 14 197 1 4 14 197 1 6 14 197 1 11 14 197 1 15 8 57 1 50 8 61 1 51 14 197 1 126 14 197 1 127 10 185 1 203] 
#[1 26 201 0 2 25 33 0 8 3 53 0 11 13 97 0 116 8 65 1 81 25 37 1 115 25 41 1 116] 
#[1 23 77 0 4 9 90 0 8 13 97 0 116 21 1 1 115] 
#[1 0 243 0 2 12 158 0 4 12 158 0 5 0 243 0 6 0 243 0 8 12 58 0 9 12 58 0 10 12 58 0 11 12 58 0 12 12 58 0 13 12 58 0 14 12 58 0 15 12 58 0 16 12 58 0 17 12 58 0 18 12 58 0 20 12 58 0 21 12 58 0 22 12 58 0 23 12 58 0 24 12 58 0 25 12 58 0 26 12 58 0 27 12 58 0 28 12 58 0 29 12 58 0 30 12 58 0 31 12 58 0 32 12 58 0 33 12 58 0 34 0 243 0 35 0 243 0 36 0 243 0 37 0 243 0 38 12 158 0 39 12 58 0 40 12 58 0 41 12 58 0 42 12 58 0 43 12 58 0 44 12 58 0 45 12 58 0 46 12 58 0 47 12 58 0 48 12 158 0 49 12 58 0 50 12 58 0 51 12 58 0 52 12 158 0 53 12 158 0 54 12 158 0 55 12 158 0 58 12 158 0 59 12 158 0 60 12 158 0 62 12 158 0 63 12 158 0 64 12 158 0 66 12 158 0 67 12 158 0 69 12 158 0 70 12 158 0 72 12 158 0 74 12 158 0 76 12 158 0 78 12 158 0 79 12 58 0 80 12 58 0 83 12 158 0 84 12 158 0 86 12 158 0 88 12 158 0 89 12 158 0 90 12 158 0 96 12 158 0 100 12 158 0 101 12 158 0 103 12 158 0 104 12 158 0 105 12 158 0 106 12 158 0 107 12 158 0 108 12 158 0 109 12 158 0 110 12 158 0 111 12 158 0 112 12 158 0 113 12 58 0 115 12 158 0 118 12 158 0 121 12 158 0 122 12 158 0 123 0 243 0 125 0 243 0 126 12 158 0 129 12 58 1 202 0 243 1 203 12 158 1 204] 
#[0 26 205 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 105 0 250 15 161 0 251 26 209 1 9 0 6 1 203] 
#[0 26 213 0 5] 
#[0 26 217 0 8] 
#[1 0 247 0 2 12 162 0 4 12 162 0 5 0 247 0 6 0 247 0 8 12 78 0 9 12 78 0 10 12 78 0 11 12 78 0 12 12 78 0 13 12 78 0 14 12 78 0 15 12 78 0 16 12 78 0 17 12 78 0 18 12 78 0 20 12 78 0 21 12 78 0 22 12 78 0 23 12 78 0 24 12 78 0 25 12 78 0 26 12 78 0 27 12 78 0 28 12 78 0 29 12 78 0 30 12 78 0 31 12 78 0 32 12 78 0 33 12 78 0 34 0 247 0 35 0 247 0 36 0 247 0 37 0 247 0 38 12 162 0 39 12 78 0 40 12 78 0 41 12 78 0 42 12 78 0 43 12 78 0 44 12 78 0 45 12 78 0 46 12 78 0 47 12 78 0 48 12 162 0 49 12 78 0 50 12 78 0 51 12 78 0 52 12 162 0 53 12 162 0 54 12 162 0 55 12 162 0 58 12 162 0 59 12 162 0 60 12 162 0 62 12 162 0 63 12 162 0 64 12 162 0 66 12 162 0 67 12 162 0 69 12 162 0 70 12 162 0 72 12 162 0 74 12 162 0 76 12 162 0 78 12 162 0 79 12 78 0 80 12 78 0 83 12 162 0 84 12 162 0 86 12 162 0 88 12 162 0 89 12 162 0 90 12 162 0 96 12 162 0 100 12 162 0 101 12 162 0 103 12 162 0 104 12 162 0 105 12 162 0 106 12 162 0 107 12 162 0 108 12 162 0 109 12 162 0 110 12 162 0 111 12 162 0 112 12 162 0 113 12 78 0 115 12 162 0 118 12 162 0 121 12 162 0 122 12 162 0 123 0 247 0 125 0 247 0 126 12 162 0 129 12 78 1 202 0 247 1 203 12 162 1 204] 
#[1 11 122 0 4 11 254 0 8] 
#[0 12 166 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 170 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 174 0 5 0 6 0 8 0 61 0 93 0 94 0 95 0 98 0 115 0 119 0 121 0 122] 
#[0 12 178 0 5 0 6 0 8 0 61 0 93 0 94 0 95 0 98 0 115 0 119 0 121 0 122] 
#[0 12 182 0 5 0 8 0 115] 
#[0 12 186 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 35 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 61 0 80 0 83 0 92 0 93 0 94 0 95 0 98 0 115 0 116 0 119 0 121 0 122 0 127 0 128 1 204] 
#[0 26 221 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 169 0 250 15 161 0 251 26 225 1 14 0 6 1 203] 
#[0 26 229 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 18 161 0 250 15 161 0 251 26 233 1 18 0 6 1 203] 
#[0 12 158 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 26 237 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 105 0 250 15 161 0 251 26 241 1 9 0 6 1 203] 
#[0 26 245 0 5] 
#[0 12 162 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 12 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 12 194 0 5] 
#[0 26 249 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 169 0 250 15 161 0 251 26 253 1 14 0 6 1 203] 
#[0 27 1 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 24 105 0 250 15 161 0 251 27 5 1 9 0 6 1 203] 
#[0 27 9 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 18 161 0 250 15 161 0 251 27 13 1 18 0 6 1 203] 
#[0 27 17 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 27 21 0 250 15 161 0 251 0 6 1 203] 
#[0 27 25 0 5] 
#[0 27 29 0 4] 
#[1 13 97 0 116 27 33 1 115] 
#[0 12 198 0 3] 
#[1 27 37 0 4 13 97 0 116 27 41 1 115] 
#[0 12 202 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[1 27 45 0 4 27 49 0 8] 
#[0 12 206 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 210 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 53 0 8] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 27 57 0 250 15 161 0 251 0 6 1 203] 
#[0 12 214 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 218 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 61 0 5] 
#[0 27 65 0 3] 
#[0 12 222 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 69 0 8] 
#[1 27 73 0 8 9 101 0 23 27 77 0 151] 
#[1 27 81 0 4 27 85 0 8] 
#[0 12 226 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 230 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 89 0 8] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 27 93 0 250 15 161 0 251 0 6 1 203] 
#[0 12 234 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 12 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 27 97 0 5] 
#[0 12 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 27 101 0 14] 
#[0 27 105 0 14] 
#[0 12 246 0 4 0 129 0 131] 
#[1 0 22 0 5 27 109 1 75] 
#[0 12 250 0 4 0 9 0 14 0 130] 
#[0 12 254 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 2 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 27 113 0 192 27 113 0 195 27 113 0 196 27 113 0 197 27 113 0 205 27 113 0 219 27 113 0 220 27 113 0 221 27 113 0 222 27 113 0 225 27 113 0 226 27 113 0 228 27 113 0 229 27 113 0 230 27 113 0 235 27 113 0 237 27 113 0 238 27 113 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 27 117 0 192 27 117 0 195 27 117 0 196 27 117 0 197 27 117 0 205 27 117 0 219 27 117 0 220 27 117 0 221 27 117 0 222 27 117 0 225 27 117 0 226 27 117 0 228 27 117 0 229 27 117 0 230 27 117 0 235 27 117 0 237 27 117 0 238 27 117 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[1 27 121 0 3 6 61 0 115] 
#[0 13 6 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 10 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 14 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 18 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 27 125 0 192 27 125 0 195 27 125 0 196 27 125 0 197 27 125 0 205 27 125 0 219 27 125 0 220 27 125 0 221 27 125 0 222 27 125 0 225 27 125 0 226 27 125 0 228 27 125 0 229 27 125 0 230 27 125 0 235 27 125 0 237 27 125 0 238 27 125 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 13 22 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 27 129 0 192 27 129 0 195 27 129 0 196 27 129 0 197 27 129 0 205 27 129 0 219 27 129 0 220 27 129 0 221 27 129 0 222 27 129 0 225 27 129 0 226 27 129 0 228 27 129 0 229 27 129 0 230 27 129 0 235 27 129 0 237 27 129 0 238 27 129 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 13 26 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 30 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 2 0 6 0 4 13 34 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 13 34 0 56 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 13 34 0 65 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 27 133 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 0 6 1 203] 
#[1 0 6 0 2 0 6 0 4 13 38 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 13 38 0 56 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 185 0 199 0 57 0 200 6 185 0 201 0 65 0 202 0 6 1 203] 
#[0 13 42 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 27 137 0 5 22 185 0 56 25 5 0 233] 
#[0 13 46 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 27 141 0 3] 
#[0 13 50 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 27 145 0 8] 
#[0 27 149 0 8] 
#[0 13 54 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 58 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[1 8 21 0 2 27 153 0 8 3 53 0 11 13 97 0 116 8 65 1 81 27 157 1 115 27 161 1 116] 
#[0 13 62 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 27 165 0 8] 
#[0 27 169 0 8] 
#[0 13 66 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 26 201 0 2 26 157 0 8 3 53 0 11 13 97 0 116 8 65 1 81 26 161 1 115 26 165 1 116] 
#[1 0 86 0 3 4 37 0 4 4 41 0 6 4 89 0 114 0 185 0 118 9 49 0 134 4 101 0 208 4 101 0 209 4 101 0 210 4 133 0 216 4 133 0 217 4 129 0 218 18 189 0 245 27 173 0 246 4 125 0 247 4 129 0 248 4 133 0 249 8 17 1 203] 
#[1 0 251 0 2 13 70 0 4 13 70 0 5 0 251 0 6 0 251 0 8 12 238 0 9 12 238 0 10 12 238 0 11 12 238 0 12 12 238 0 13 12 238 0 14 12 238 0 15 12 238 0 16 12 238 0 17 12 238 0 18 12 238 0 20 12 238 0 21 12 238 0 22 12 238 0 23 12 238 0 24 12 238 0 25 12 238 0 26 12 238 0 27 12 238 0 28 12 238 0 29 12 238 0 30 12 238 0 31 12 238 0 32 12 238 0 33 12 238 0 34 0 251 0 35 0 251 0 36 0 251 0 37 0 251 0 38 13 70 0 39 12 238 0 40 12 238 0 41 12 238 0 42 12 238 0 43 12 238 0 44 12 238 0 45 12 238 0 46 12 238 0 47 12 238 0 48 13 70 0 49 12 238 0 50 12 238 0 51 12 238 0 52 13 70 0 53 13 70 0 54 13 70 0 55 13 70 0 58 13 70 0 59 13 70 0 60 13 70 0 62 13 70 0 63 13 70 0 64 13 70 0 66 13 70 0 67 13 70 0 69 13 70 0 70 13 70 0 72 13 70 0 74 13 70 0 76 13 70 0 78 13 70 0 79 12 238 0 80 12 238 0 83 13 70 0 84 13 70 0 86 13 70 0 88 13 70 0 89 13 70 0 90 13 70 0 96 13 70 0 100 13 70 0 101 13 70 0 103 13 70 0 104 13 70 0 105 13 70 0 106 13 70 0 107 13 70 0 108 13 70 0 109 13 70 0 110 13 70 0 111 13 70 0 112 13 70 0 113 12 238 0 115 13 70 0 118 13 70 0 121 13 70 0 122 13 70 0 123 0 251 0 125 0 251 0 126 13 70 0 129 12 238 1 202 0 251 1 203 13 70 1 204] 
#[0 27 177 0 5] 
#[1 0 255 0 2 13 74 0 4 13 74 0 5 0 255 0 6 0 255 0 8 12 242 0 9 12 242 0 10 12 242 0 11 12 242 0 12 12 242 0 13 12 242 0 14 12 242 0 15 12 242 0 16 12 242 0 17 12 242 0 18 12 242 0 20 12 242 0 21 12 242 0 22 12 242 0 23 12 242 0 24 12 242 0 25 12 242 0 26 12 242 0 27 12 242 0 28 12 242 0 29 12 242 0 30 12 242 0 31 12 242 0 32 12 242 0 33 12 242 0 34 0 255 0 35 0 255 0 36 0 255 0 37 0 255 0 38 13 74 0 39 12 242 0 40 12 242 0 41 12 242 0 42 12 242 0 43 12 242 0 44 12 242 0 45 12 242 0 46 12 242 0 47 12 242 0 48 13 74 0 49 12 242 0 50 12 242 0 51 12 242 0 52 13 74 0 53 13 74 0 54 13 74 0 55 13 74 0 58 13 74 0 59 13 74 0 60 13 74 0 62 13 74 0 63 13 74 0 64 13 74 0 66 13 74 0 67 13 74 0 69 13 74 0 70 13 74 0 72 13 74 0 74 13 74 0 76 13 74 0 78 13 74 0 79 12 242 0 80 12 242 0 83 13 74 0 84 13 74 0 86 13 74 0 88 13 74 0 89 13 74 0 90 13 74 0 96 13 74 0 100 13 74 0 101 13 74 0 103 13 74 0 104 13 74 0 105 13 74 0 106 13 74 0 107 13 74 0 108 13 74 0 109 13 74 0 110 13 74 0 111 13 74 0 112 13 74 0 113 12 242 0 115 13 74 0 118 13 74 0 121 13 74 0 122 13 74 0 123 0 255 0 125 0 255 0 126 13 74 0 129 12 242 1 202 0 255 1 203 13 74 1 204] 
#[0 13 78 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 82 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 27 181 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 169 0 250 15 161 0 251 27 185 1 14 0 6 1 203] 
#[0 27 189 0 5] 
#[0 13 70 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 27 193 0 5] 
#[0 13 74 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 27 197 0 5] 
#[0 13 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 27 201 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 25 169 0 250 15 161 0 251 27 205 1 14 0 6 1 203] 
#[0 27 209 0 5] 
#[0 13 94 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 27 213 0 5] 
#[0 13 98 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 27 217 0 250 15 161 0 251 0 6 1 203] 
#[0 27 221 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 27 225 0 250 15 161 0 251 0 6 1 203] 
#[0 27 229 0 4] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 27 233 0 250 15 161 0 251 0 6 1 203] 
#[0 13 102 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 106 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 237 0 5] 
#[0 13 110 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 27 241 0 4 27 245 0 8] 
#[0 13 114 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 118 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 27 249 0 8] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 27 253 0 250 15 161 0 251 0 6 1 203] 
#[0 13 122 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 126 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 1 0 5] 
#[0 13 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 13 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 130 1 202 1 203 1 204] 
#[0 13 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 0 129 0 130 0 131 1 202 1 203 1 204] 
#[0 28 5 0 5] 
#[0 13 142 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 146 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 93 0 2 0 15 0 4 0 97 0 6 1 201 0 8 0 101 0 35 0 105 0 36 0 109 0 37 0 113 0 38 0 117 0 39 0 121 0 49 0 125 0 53 0 129 0 54 1 205 0 55 0 133 0 58 1 209 0 62 1 213 0 63 0 137 0 66 1 217 0 67 1 157 0 72 1 221 0 74 0 145 0 76 1 225 0 78 0 149 0 79 0 153 0 89 1 153 0 90 1 229 0 96 0 161 0 100 1 233 0 101 0 165 0 103 1 237 0 104 1 157 0 105 1 241 0 106 0 173 0 108 1 245 0 109 0 177 0 110 1 249 0 111 1 253 0 112 0 181 0 113 2 1 0 118 1 161 0 121 1 165 0 122 0 197 0 123 0 201 0 125 0 18 0 126 0 11 0 129 0 209 0 134 0 245 0 136 0 245 0 137 0 245 0 138 0 245 0 139 0 245 0 143 0 233 0 144 0 245 0 152 0 241 0 153 0 245 0 156 0 245 0 157 0 245 0 158 0 245 0 159 1 25 0 160 1 9 0 161 1 9 0 162 1 9 0 163 1 21 0 166 1 25 0 170 1 33 0 171 1 33 0 172 1 41 0 173 1 41 0 174 1 45 0 176 1 49 0 177 1 53 0 178 1 57 0 179 1 61 0 180 1 65 0 181 1 69 0 182 1 73 0 183 1 77 0 184 1 81 0 185 1 85 0 186 1 89 0 187 2 5 0 188 2 5 0 189 2 5 0 191 28 9 0 192 28 9 0 195 28 9 0 196 28 9 0 197 28 9 0 205 28 9 0 219 28 9 0 220 28 9 0 221 28 9 0 222 28 9 0 225 28 9 0 226 28 9 0 228 28 9 0 229 28 9 0 230 28 9 0 235 28 9 0 237 28 9 0 238 28 9 0 242 0 245 0 244 2 5 0 252 1 113 0 253 1 117 0 254 1 121 1 1 2 5 1 2 0 245 1 8 2 5 1 10 0 245 1 13 0 245 1 17 1 33 1 19 0 245 1 21 1 153 1 48 1 157 1 49 1 161 1 50 1 165 1 51 0 245 1 52 0 245 1 53 0 245 1 54 1 181 1 55 0 245 1 57 1 189 1 75 1 193 1 203] 
#[0 13 150 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 154 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[1 0 6 0 2 0 6 0 4 13 158 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 13 158 0 56 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 13 158 0 65 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 6 185 0 199 0 57 0 200 6 185 0 201 0 65 0 202 0 6 1 203] 
#[0 13 162 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 28 13 0 8] 
#[0 13 166 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 170 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 174 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 28 17 0 8] 
#[0 28 21 0 8] 
#[0 13 178 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 182 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 1 3 0 3] 
#[1 1 7 0 2 13 186 0 4 13 186 0 5 1 7 0 6 1 7 0 8 13 130 0 9 13 130 0 10 13 130 0 11 13 130 0 12 13 130 0 13 13 130 0 14 13 130 0 15 13 130 0 16 13 130 0 17 13 130 0 18 13 130 0 20 13 130 0 21 13 130 0 22 13 130 0 23 13 130 0 24 13 130 0 25 13 130 0 26 13 130 0 27 13 130 0 28 13 130 0 29 13 130 0 30 13 130 0 31 13 130 0 32 13 130 0 33 13 130 0 34 1 7 0 35 1 7 0 36 1 7 0 37 1 7 0 38 13 186 0 39 13 130 0 40 13 130 0 41 13 130 0 42 13 130 0 43 13 130 0 44 13 130 0 45 13 130 0 46 13 130 0 47 13 130 0 48 13 186 0 49 13 130 0 50 13 130 0 51 13 130 0 52 13 186 0 53 13 186 0 54 13 186 0 55 13 186 0 58 13 186 0 59 13 186 0 60 13 186 0 62 13 186 0 63 13 186 0 64 13 186 0 66 13 186 0 67 13 186 0 69 13 186 0 70 13 186 0 72 13 186 0 74 13 186 0 76 13 186 0 78 13 186 0 79 13 130 0 80 13 130 0 83 13 186 0 84 13 186 0 86 13 186 0 88 13 186 0 89 13 186 0 90 13 186 0 96 13 186 0 100 13 186 0 101 13 186 0 103 13 186 0 104 13 186 0 105 13 186 0 106 13 186 0 107 13 186 0 108 13 186 0 109 13 186 0 110 13 186 0 111 13 186 0 112 13 186 0 113 13 130 0 115 13 186 0 118 13 186 0 121 13 186 0 122 13 186 0 123 1 7 0 125 1 7 0 126 13 186 0 129 13 130 1 202 1 7 1 203 13 186 1 204] 
#[0 13 190 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 28 25 0 5] 
#[0 13 194 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 186 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 59 0 60 0 62 0 63 0 64 0 66 0 67 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 80 0 83 0 92 0 115 0 116 0 125 0 126 0 127 0 128 1 202 1 203 1 204] 
#[0 13 202 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 29 0 5] 
#[0 13 206 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 13 210 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 33 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 28 37 0 250 15 161 0 251 0 6 1 203] 
#[0 28 41 0 5] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 28 45 0 250 15 161 0 251 0 6 1 203] 
#[0 28 49 0 5] 
#[0 13 214 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[1 0 6 0 2 0 6 0 4 6 126 0 5 0 6 0 6 0 6 0 8 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 49 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 58 0 65 0 60 0 6 0 62 0 6 0 63 0 6 0 66 0 6 0 67 0 6 0 72 0 6 0 74 0 6 0 76 0 6 0 78 0 6 0 79 0 65 0 86 0 6 0 89 0 6 0 90 0 6 0 96 0 6 0 100 0 6 0 101 0 6 0 103 0 6 0 104 0 6 0 105 0 6 0 106 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 118 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 129 15 153 0 198 2 85 0 199 0 57 0 200 2 85 0 201 0 65 0 202 28 53 0 250 15 161 0 251 0 6 1 203] 
#[0 13 218 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 222 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 57 0 5] 
#[0 13 226 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 13 230 0 4 0 9 0 14 0 130] 
#[0 13 234 0 2 0 4 0 5 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 74 0 76 0 78 0 79 0 84 0 86 0 88 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 238 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 242 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 246 0 5 0 6 0 61 0 93 0 94 0 95 0 98 0 119 0 121 0 122] 
#[0 13 250 0 2 0 4 0 6 0 8 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 55 0 58 0 60 0 62 0 63 0 66 0 67 0 70 0 72 0 74 0 76 0 78 0 79 0 86 0 89 0 90 0 96 0 100 0 101 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 118 0 121 0 122 0 123 0 125 0 126 0 129 1 203 1 204] 
#[0 13 254 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 2 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 61 0 5] 
#[0 14 6 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 28 65 0 5] 
#[0 14 10 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 28 69 0 5] 
#[0 14 14 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203] 
#[0 14 18 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 22 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 115 0 119 0 121 0 122 1 203] 
#[0 14 26 0 5 0 6 0 8 0 26 0 53 0 77 0 97 0 98 0 119 0 121 0 122 1 203]
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
		and: [ nodeStack isEmpty
				and: [ currentToken value = '#'
						and: [ currentToken startPosition = 1 and: [ scanner stream peek = $! ] ] ] ])
		ifTrue: [ "Handle the #!/program/to/run lines"
			scanner stream
				upToAny:
					{Character cr.
					Character lf}.
			scanner comments add: (1 to: scanner position).
			currentToken := nil.
			self getNextToken.
			^ self actionsForCurrentToken ].
	(actions isEmpty and: [ self canInsertSemicolon ])
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
JSParser >> reduceActionForAmbientPropertyMemberDeclaration1: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result name: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration2: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration3: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result staticToken: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration4: nodes [
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
JSParser >> reduceActionForAmbientPropertyMemberDeclaration5: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration6: nodes [
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
JSParser >> reduceActionForAmbientPropertyMemberDeclaration7: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result modifier: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAmbientPropertyMemberDeclaration8: nodes [
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
JSParser >> reduceActionForBindingElement10: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result variable: (nodes at: 3).
	result questionMarkToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement11: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result variable: (nodes at: 3).
	result questionMarkToken: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement12: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result modifier: (nodes at: 3).
	result variable: (nodes at: 4).
	result questionMarkToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement13: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result modifier: (nodes at: 3).
	result variable: (nodes at: 4).
	result questionMarkToken: (nodes at: 5).
	result colonToken: ((nodes at: 6) at: 1).
	result type: ((nodes at: 6) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement2: nodes [
	| result |
	result := JSVariablePatternDeclarationNode new.
	result pattern: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement4: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result variable: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement5: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result variable: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement6: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result modifier: (nodes at: 3).
	result variable: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement7: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result modifier: (nodes at: 3).
	result variable: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement8: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result modifier: (nodes at: 3).
	result variable: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement9: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result modifier: (nodes at: 3).
	result variable: (nodes at: 4).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
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
JSParser >> reduceActionForClassDeclaration10: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNode: (nodes at: 2) to: result decorators.
	result addNodes: (nodes at: 3) to: result decorators.
	result classToken: (nodes at: 4).
	result name: (nodes at: 5).
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration11: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNode: (nodes at: 2) to: result decorators.
	result addNodes: (nodes at: 3) to: result decorators.
	result abstract: (nodes at: 4).
	result classToken: (nodes at: 5).
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration12: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNode: (nodes at: 2) to: result decorators.
	result addNodes: (nodes at: 3) to: result decorators.
	result abstract: (nodes at: 4).
	result classToken: (nodes at: 5).
	result name: (nodes at: 6).
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration3: nodes [
	| result |
	result := JSClassExpressionNode new.
	result abstract: (nodes at: 1).
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration4: nodes [
	| result |
	result := JSClassExpressionNode new.
	result abstract: (nodes at: 1).
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration5: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result classToken: (nodes at: 3).
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration6: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result classToken: (nodes at: 3).
	result name: (nodes at: 4).
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration7: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result abstract: (nodes at: 3).
	result classToken: (nodes at: 4).
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration8: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNodes: (nodes at: 2) to: result decorators.
	result abstract: (nodes at: 3).
	result classToken: (nodes at: 4).
	result name: (nodes at: 5).
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassDeclaration9: nodes [
	| result |
	result := JSClassExpressionNode new.
	result addNode: (nodes at: 2) to: result decorators.
	result addNodes: (nodes at: 3) to: result decorators.
	result classToken: (nodes at: 4).
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
	result addNodes: (nodes at: 1) to: result decorators.
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
JSParser >> reduceActionForConstructorDeclaration2: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result constructorToken: (nodes at: 3).
	result leftParen: (nodes at: 4).
	result restParameter: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result parameters.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result rightParen: (nodes at: 6).
	result leftBrace: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result statements.
	result rightBrace: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConstructorDeclaration3: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
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
JSParser >> reduceActionForConstructorDeclaration4: nodes [
	| result |
	result := JSConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result constructorToken: (nodes at: 3).
	result leftParen: (nodes at: 4).
	result restParameter: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result parameters.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result rightParen: (nodes at: 6).
	result semicolon: (nodes at: 7).
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
JSParser >> reduceActionForDecoratorExpression2: nodes [
	| result |
	result := JSDecoratorExpressionNode new.
	result atToken: (nodes at: 1).
	result expression: (nodes at: 2).
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
JSParser >> reduceActionForDestructuringLexicalBinding1: nodes [
	| result |
	result := JSVariablePatternDeclarationNode new.
	result pattern: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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
	result identifier: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result names.
	result addTokens: ((nodes at: 4) at: 2) to: result periodTokens.
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
	result addNodes: (nodes at: 1) to: result decorators.
	result accessor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration2: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result accessor: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration3: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result accessor: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberAccessorDeclaration4: nodes [
	| result |
	result := JSMemberAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result staticToken: (nodes at: 3).
	result accessor: (nodes at: 4).
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
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result statements.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration2: nodes [
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration3: nodes [
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration4: nodes [
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration5: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result signature: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration6: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration7: nodes [
	| result |
	result := JSMemberFunctionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result signature: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberFunctionDeclaration8: nodes [
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

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration10: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration11: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration12: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration13: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result staticToken: (nodes at: 3).
	result name: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration14: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result staticToken: (nodes at: 3).
	result name: (nodes at: 4).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration15: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result staticToken: (nodes at: 3).
	result name: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration16: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result staticToken: (nodes at: 3).
	result name: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result equalToken: ((nodes at: 6) at: 1).
	result value: ((nodes at: 6) at: 2).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration1: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration2: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result equalToken: ((nodes at: 3) at: 1).
	result value: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration3: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration4: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration5: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration6: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration7: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result colonToken: ((nodes at: 4) at: 1).
	result type: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberVariableDeclaration8: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
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
JSParser >> reduceActionForMemberVariableDeclaration9: nodes [
	| result |
	result := JSMemberVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result modifier: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
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
	result leftBrace: (nodes at: 2).
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectLiteral2: nodes [
	| result |
	result := JSObjectLiteralNode new.
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result definitions.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
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
JSParser >> reduceActionForValidationNotArrowFunction1: nodes [
	| token |
	nodeStack notEmpty
		ifTrue: [ token := nodeStack last.
			((token isKindOf: SmaCCToken)
				and: [ token ids includes: scanner eqGtId ])
				ifTrue: [ self killState ] ].
	^ nil
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
